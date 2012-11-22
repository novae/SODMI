class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :idmaestro
      t.string :nombre
      t.string :email
      t.string :password 

      t.timestamps
    end
  end
end
