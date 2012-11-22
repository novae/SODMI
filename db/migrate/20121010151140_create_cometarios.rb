class CreateCometarios < ActiveRecord::Migration
  def change
    create_table :cometarios do |t|
      t.integer :post_id
      t.string :usuario
      t.text :texto

      t.timestamps
    end
  end
end
