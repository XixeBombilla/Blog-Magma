class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.references :articulo
      t.string :usuario
      t.text :comentario

      t.timestamps
    end
    add_index :coments, :articulo_id
  end
end
