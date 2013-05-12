class CreateMuseums < ActiveRecord::Migration
  def change
    create_table :museums do |t|
      t.string :nombre
      t.string :direccion
      t.text :descripcion
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
