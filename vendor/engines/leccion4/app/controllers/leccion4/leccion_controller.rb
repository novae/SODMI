require_dependency "leccion4/application_controller"

module Leccion4
  class LeccionController < ApplicationController
    def leccionIyC
       @id=Array.new
    gon.id=@id
    @sentencia=Array.new
    gon.sentencia=@sentencia
    @sentencias=DetalleEjercicios.all.to_a.shuffle
    
    @sentencias.each do |p|
      gon.id << p.IdModulo
      gon.sentencia << p.Linea
    end
    @ejercicio=DetalleEjercicios.all.to_a.shuffle
    gon.lineas_ejercicios=DetalleEjercicios.all
    gon.problema= LeccionHelper::Enuciados_Ejercicios 
    end
  
    def estructurasSecuenciales
    end
  
    def estructurasIterativas
    end
  
    def estructurasSelectivas
    end
  
    def introduccion
    end
    
    def evaluacionInicial
    end
  end
end
