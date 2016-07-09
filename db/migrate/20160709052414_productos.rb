class Productos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :fotografia
      t.string :producto, index: true, null: false
      t.string :descripcion, null: false
      t.integer :tamano, null: false
      t.integer :largo, null: false
      t.integer :alto, null: false
      t.integer :ancho, null: false
      t.integer :diseno, null: false
      t.decimal :precio,  precision: 8, scale: 2, null: false
      t.integer :existencia, null: false
      t.integer :categoria, null: false
      t.decimal :preciomayoreo,  precision: 8, scale: 2, null: false
      t.integer :piezasmayoreo, null: false
      t.decimal :preciomenudeo,  precision: 8, scale: 2, null: false
      t.integer :piezasmenudeo, null: false

      t.integer :id_producto

      t.timestamps null: false
    end
  end
end
