class AddAvatarToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :avatar, :string
  end
end
