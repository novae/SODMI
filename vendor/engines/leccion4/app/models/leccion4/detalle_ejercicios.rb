module Leccion4
  class DetalleEjercicios < ActiveRecord::Base
    attr_accessible :Ejercicio, :IdModulo, :Linea, :Orden
  end
end
