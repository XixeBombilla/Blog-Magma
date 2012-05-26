class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :nombre
      t.string :propietario

      t.timestamps
    end
  end
end
