class UsuarioMailer < ActionMailer::Base

  
 def registration_confirmation(usuario)
    mail(:to => usuario.email, :subject => "Registro de "+usuario.nombre, :from => "sodmiwebmaster@gmail.com")
  end
  
 def correo(datos)
   @datos=datos
   mail(:to => "sodmiwebmaster@gmail.com", :subject=> "Mensaje acerca de la Plataforma SODMI de: "+datos[0].to_s, :from=>datos[1])
 end 
end
