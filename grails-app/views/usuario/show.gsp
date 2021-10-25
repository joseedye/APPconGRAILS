
<%@ page import="Usuarios.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="usuario.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${usuarioInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.contrasena}">
				<li class="fieldcontain">
					<span id="contrasena-label" class="property-label"><g:message code="usuario.contrasena.label" default="Contrasena" /></span>
					
						<span class="property-value" aria-labelledby="contrasena-label"><g:fieldValue bean="${usuarioInstance}" field="contrasena"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="usuario.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${usuarioInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="usuario.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${usuarioInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.genero}">
				<li class="fieldcontain">
					<span id="genero-label" class="property-label"><g:message code="usuario.genero.label" default="Genero" /></span>
					
						<span class="property-value" aria-labelledby="genero-label"><g:fieldValue bean="${usuarioInstance}" field="genero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.fecha_nacimiento}">
				<li class="fieldcontain">
					<span id="fecha_nacimiento-label" class="property-label"><g:message code="usuario.fecha_nacimiento.label" default="Fechanacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fecha_nacimiento-label"><g:formatDate date="${usuarioInstance?.fecha_nacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.tipo_usuario}">
				<li class="fieldcontain">
					<span id="tipo_usuario-label" class="property-label"><g:message code="usuario.tipo_usuario.label" default="Tipousuario" /></span>
					
						<span class="property-value" aria-labelledby="tipo_usuario-label"><g:link controller="tipoUsuario" action="show" id="${usuarioInstance?.tipo_usuario?.id}">${usuarioInstance?.tipo_usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
