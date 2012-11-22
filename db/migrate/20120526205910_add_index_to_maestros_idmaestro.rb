class AddIndexToMaestrosIdmaestro < ActiveRecord::Migration
  def change
    add_index :maestros, :idmaestro, unique: true
  end
end
