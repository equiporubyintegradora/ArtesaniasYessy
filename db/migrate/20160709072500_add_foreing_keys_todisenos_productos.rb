class AddForeingKeysTodisenosProductos < ActiveRecord::Migration
  def self.up
    execute "alter table disenos_productos
             add foreign key (diseno) references disenos(id),
             add foreign key (id) references productos(id)"
  end
end
