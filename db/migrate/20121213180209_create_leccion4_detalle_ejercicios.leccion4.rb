# This migration comes from leccion4 (originally 20121213005101)
class CreateLeccion4DetalleEjercicios < ActiveRecord::Migration
  def change
    create_table :leccion4_detalle_ejercicios do |t|
      t.integer :IdModulo
      t.integer :Ejercicio
      t.integer :Orden
      t.string :Linea

      t.timestamps
    end
  end
end
