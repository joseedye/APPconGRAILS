<%@ page import="Usuarios.TipoUsuario" %>



<div class="fieldcontain ${hasErrors(bean: tipoUsuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="tipoUsuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${tipoUsuarioInstance?.nombre}"/>

</div>

