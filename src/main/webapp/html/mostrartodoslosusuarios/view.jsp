<%@page
	import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@page import="java.util.Collection"%>
<%@page import="com.liferay.portal.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.talefonica.talentum.MostrarTodosLosUsuarios"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<portlet:defineObjects />

<h1>Lista de Usuarios</h1>

<%--Aquí recogo la lista de usuarios que he creado en el portlet --%>
<%
	List<User> usuarios = (List<User>) request.getAttribute(MostrarTodosLosUsuarios.USUARIOS);
%>

<%--=usuarios --%>

<%-- El mio${usuarios}--%>

<%--Ahora tengo que pintar los resultados en una tabla --%>

<table class="yui3-datatable-table table">
	<thead class="yui3-datatable-table columns">
		<tr>
			<th class="yui3-datatable-header yui3-datatable-first-header yui3-datatable-col-name">ID Usuario</th>
			<th class="yui3-datatable-header yui3-datatable-first-header yui3-datatable-col-name">Nombre</th>
		</tr>
	</thead>
	<tbody class="yui3-datatable-data">
		<c:forEach items="<%=usuarios%>" var="usuario">
			<tr>
				<td>${usuario.userId}</td>
				<td>${usuario.fullName}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>






