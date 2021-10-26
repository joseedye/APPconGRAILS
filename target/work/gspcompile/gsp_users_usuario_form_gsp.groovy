import Usuarios.Usuario
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_users_usuario_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/usuario/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'correo', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("usuario.correo.label"),'default':("Correo")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['type':("email"),'name':("correo"),'required':(""),'value':(usuarioInstance?.correo)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'contrasena', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("usuario.contrasena.label"),'default':("Contrasena")],-1)
printHtmlPart(2)
invokeTag('field','g',19,['type':("password"),'name':("contrasena"),'required':(""),'value':(usuarioInstance?.contrasena)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'nombres', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("usuario.nombres.label"),'default':("Nombres")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("nombres"),'required':(""),'value':(usuarioInstance?.nombres)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'apellidos', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("usuario.apellidos.label"),'default':("Apellidos")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("apellidos"),'required':(""),'value':(usuarioInstance?.apellidos)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'genero', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("usuario.genero.label"),'default':("Genero")],-1)
printHtmlPart(2)
invokeTag('select','g',46,['name':("genero"),'from':(usuarioInstance.constraints.genero.inList),'required':(""),'value':(usuarioInstance?.genero),'valueMessagePrefix':("usuario.genero")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'fecha_nacimiento', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("usuario.fecha_nacimiento.label"),'default':("Fechanacimiento")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',55,['name':("fecha_nacimiento"),'precision':("day"),'value':(usuarioInstance?.fecha_nacimiento)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'tipo_usuario', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("usuario.tipo_usuario.label"),'default':("Tipousuario")],-1)
printHtmlPart(2)
invokeTag('select','g',64,['id':("tipo_usuario"),'name':("tipo_usuario.id"),'from':(Usuarios.TipoUsuario.list()),'optionKey':("id"),'required':(""),'value':(usuarioInstance?.tipo_usuario?.id),'class':("many-to-one")],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1635183496757L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
