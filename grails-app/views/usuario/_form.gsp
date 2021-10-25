<%@ page import="Usuarios.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="usuario.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" required="" value="${usuarioInstance?.correo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contrasena', 'error')} required">
	<label for="contrasena">
		<g:message code="usuario.contrasena.label" default="Contrasena" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="contrasena" required="" value="${usuarioInstance?.contrasena}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="usuario.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" required="" value="${usuarioInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="usuario.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" required="" value="${usuarioInstance?.apellidos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="usuario.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="genero" from="${usuarioInstance.constraints.genero.inList}" required="" value="${usuarioInstance?.genero}" valueMessagePrefix="usuario.genero"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fecha_nacimiento', 'error')} required">
	<label for="fecha_nacimiento">
		<g:message code="usuario.fecha_nacimiento.label" default="Fechanacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha_nacimiento" precision="day"  value="${usuarioInstance?.fecha_nacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tipo_usuario', 'error')} required">
	<label for="tipo_usuario">
		<g:message code="usuario.tipo_usuario.label" default="Tipousuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipo_usuario" name="tipo_usuario.id" from="${Usuarios.TipoUsuario.list()}" optionKey="id" required="" value="${usuarioInstance?.tipo_usuario?.id}" class="many-to-one"/>

</div>

