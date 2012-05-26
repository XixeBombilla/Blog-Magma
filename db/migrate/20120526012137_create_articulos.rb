class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.string :autor
      t.string :descripcion
      t.references :tema

      t.timestamps
    end
    add_index :articulos, :tema_id
  end
end
