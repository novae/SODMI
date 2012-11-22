class SessionsAlumnoController < ApplicationController

  def create
       alumno = Alumno.find_by_nc(params[:session_alumno][:nc])
    if alumno && alumno.authenticate(params[:session_alumno][:password])
      # Inicia Sesion del Usuario y redirige a la pagina del perfil del alumno.
      sign_in alumno
      redirect_to alumno
       flash[:success] = "Bienvenido a SODMI! "
    else
      flash[:error] = 'Usuario o Password  incorrectos'
      redirect_to root_path  
    end
  end

  def destroy
    sign_out 
    redirect_to root_path
  end

end
