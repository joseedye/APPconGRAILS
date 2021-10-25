package Usuarios

class TipoUsuario 
{
    int id
    String nombre
    
    /*Decirnos el tipo de información que puede de almacenar */
    static constraints = {
        id(nullable:false, blank:false)
        nombre(nullable:false, blank:false)
    }
    /*Mapeo a la base  de atos */
    static mapping = {
        table 'tipo_usuario'
        id column: 'id'
        nombre column: 'nombre'
    }
    String toString()
    {
        "${nombre}"
    }
   
}

