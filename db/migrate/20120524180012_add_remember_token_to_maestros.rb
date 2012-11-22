class AddRememberTokenToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :remember_token, :string
    add_index  :maestros, :remember_token
  end
end
