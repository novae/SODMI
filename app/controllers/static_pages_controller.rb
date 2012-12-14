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
    @id=Array.new
    gon.id=@id
    @sentencia=Array.new
    gon.sentencia=@sentencia
    @sentencias=Leccion4::DetalleEjercicios.all.to_a.shuffle
    
    @sentencias.each do |p|
      gon.id << p.IdModulo
      gon.sentencia << p.Linea
    end
    @ejercicio=Leccion4::DetalleEjercicios.all.to_a.shuffle
    gon.lineas_ejercicios=Leccion4::DetalleEjercicios.all
    gon.problema= Leccion4::LeccionHelper::Enuciados_Ejercicios 
  end
 
  
end
