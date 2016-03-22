<%@page import="java.util.Collection"%>
<%@page import="com.liferay.portal.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.talefonica.talentum.MostrarTodosLosUsuarios"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<portlet:defineObjects />

<h1>Lista de Usuarios</h1>

<%
	List<User> usuarios = (List<User>)request.getAttribute(MostrarTodosLosUsuarios.USUARIOS);
%>
<%=usuarios %>
<br/>El mio${usuarios}





