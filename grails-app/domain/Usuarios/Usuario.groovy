package Usuarios
class Usuario 
{
    String correo
    String contrasena
    String nombres
    String apellidos
    String genero
    Date fecha_nacimiento
    TipoUsuario tipo_usuario
    
    
    
    static mappedBy = [tipo_usuario:"id"]
    
    static constraints = {
        correo(unique:true, nullable:false, blank:false,email:true)
        contrasena(nullable:false, blank:false,password:true)
        nombres(nullable:false, blank:false)
        apellidos(nullable:false, blank:false)
        genero inList: ['F', 'M']
        fecha_nacimiento(nullable:false, blank:false)
        tipo_usuario(nullable:false)
       
    }
    static mapping ={
        table 'usuario'
        correo column: 'email'
        contrasena column: 'contrasena'
        nombres column:'nombres'
        apellidos column:  'apellidos'
        genero column: 'genero'
        fecha_nacimiento column: 'fecha_nacimiento'
        tipo_usuario colum: 'id_tipo'
    }
    
}
