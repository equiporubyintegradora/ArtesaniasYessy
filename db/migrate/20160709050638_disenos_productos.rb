class DisenosProductos < ActiveRecord::Migration
  def change
    create_table :disenos_productos do |t|
      t.integer :diseno
      t.integer :id_producto

      t.timestamps null: false
    end
  end
end
