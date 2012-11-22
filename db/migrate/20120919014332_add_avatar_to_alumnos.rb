class AddAvatarToAlumnos < ActiveRecord::Migration
  def change
    add_column :alumnos, :avatar, :string
  end
end
