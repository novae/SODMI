module SessionsAlumnoHelper

    def sign_in(alumno)
    cookies.permanent[:remember_token] = alumno.remember_token
    current_alumno = alumno
  end
  
  def signed_in_alumno?
    !current_alumno.nil?
  end
  def current_alumno=(alumno)
    @current_alumno = alumno
  end

  def current_alumno
    @current_alumno ||= Alumno.find_by_remember_token(cookies[:remember_token])
  end
  
   def sign_out
    current_alumno = nil
    cookies.delete(:remember_token) 
  end
end
  