class Disenos < ActiveRecord::Migration
  def change
    create_table :disenos do |t|
      t.string :diseno, index: true, null: false
      t.string :nombre, null: false

      t.timestamps null: false
    end
  end
end
