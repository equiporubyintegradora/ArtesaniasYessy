class TamanosProductos < ActiveRecord::Migration
  def change
    create_table :tamanos_productos do |t|
      t.integer :tamano
      t.integer :id_producto

      t.timestamps null: false
    end
  end
end
