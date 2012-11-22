class SessionsController < ApplicationController

  def create
       maestro = Maestro.find_by_idmaestro(params[:session][:idmaestro])
    if maestro && maestro.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.
      sign_in maestro
      redirect_to maestro
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
 