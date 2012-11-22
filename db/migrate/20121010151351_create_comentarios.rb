class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :post_id
      t.string :usuario
      t.text :texto

      t.timestamps
    end
  end
end
