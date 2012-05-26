class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.string :usuario
      t.text :comentario
      t.references :articulo

      t.timestamps
    end
    add_index :coments, :articulo_id
  end
end
