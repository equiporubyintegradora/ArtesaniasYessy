class CategoriesProductos < ActiveRecord::Migration
  def change
    create_table :categories_productos do |t|
      t.integer :categoria
      t.integer :id_producto

      t.timestamps null: false
     end
  end
end
