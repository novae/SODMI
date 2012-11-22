class AddRememberTokenToAlumnos < ActiveRecord::Migration
  def change
      add_column :alumnos, :remember_token, :string
    add_index  :alumnos, :remember_token
  end
end
