package com.talefonica.talentum;

import java.io.IOException;
import java.util.List;

import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.model.User;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class MostrarTodosLosUsuarios
 */
public class MostrarTodosLosUsuarios extends MVCPortlet {

	public static final String USUARIOS = "usuarios";
	public static final String DIRECCION_VISTA = "/html/mostrartodoslosusuarios/view.jsp";

	@Override
	public void doView(RenderRequest renderRequest, RenderResponse renderResponse)
			throws IOException, PortletException {

		try {
			// recogo todos los usuarios
			int usersCount = UserLocalServiceUtil.getUsersCount();
			List<User> listaUsuarios = UserLocalServiceUtil.getUsers(0, usersCount);
			// se lo pongo como atributo a la renderRequest
			renderRequest.setAttribute(USUARIOS, listaUsuarios);
			// se lo mando a la vista para pintar
			include(DIRECCION_VISTA, renderRequest, renderResponse);
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
