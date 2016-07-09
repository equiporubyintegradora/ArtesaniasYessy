class AddForeingKeysTotamanosProductos < ActiveRecord::Migration
  def self.up
    execute "alter table tamanos_productos
             add foreign key (tamano) references tamanos(id),
             add foreign key (id) references productos(id)"
  end
end
