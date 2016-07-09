class Tamanos < ActiveRecord::Migration
  def change
    create_table :tamanos do |t|
      t.string :tamano, index: true, null: false
      t.string :descripcion, null: false

      t.timestamps null: false
    end
  end
end
