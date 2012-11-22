class StaticPagesController < ApplicationController
  def home
   
  end

  def lumin
  end
  
  def about
  end
  
  def contact
    @arreglo=Array.new(3)
    @arreglo[0]=params[:nombre]
    @arreglo[1]=params[:email]
    @arreglo[2]=params[:mensaje]
    UsuarioMailer.correo(@arreglo).deliver
    if params[:nombre].nil? == false 
    flash[:success] = "Se ha enviado tu correo!"
    end
  end
  def lecciones
    
  end
 
  
end
