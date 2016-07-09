class Categories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nombre, index: true, null: false
      t.string :descripcion, null: false

      t.timestamps null: false
    end
  end
end
