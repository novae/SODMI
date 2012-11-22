class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nc
      t.string :nombre
      t.string :email
      t.string :password
      t.float :avance

      t.timestamps
    end
  end
end
