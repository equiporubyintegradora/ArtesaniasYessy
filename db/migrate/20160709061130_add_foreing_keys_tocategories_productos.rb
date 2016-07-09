class AddForeingKeysTocategoriesProductos < ActiveRecord::Migration
  def self.up
    execute "alter table categories_productos
             add foreign key (categoria) references categories(id),
             add foreign key (id) references productos(id)"
  end
end
