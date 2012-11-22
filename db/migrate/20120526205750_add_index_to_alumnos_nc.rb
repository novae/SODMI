class AddIndexToAlumnosNc < ActiveRecord::Migration
  def change
    add_index :alumnos, :nc, unique: true
  end
end
