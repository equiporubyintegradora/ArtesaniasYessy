class AddNameLastnameToEmpleados < ActiveRecord::Migration
  def change
    add_column :empleados, :name, :string
    add_column :empleados, :lastname, :string
  end
end
