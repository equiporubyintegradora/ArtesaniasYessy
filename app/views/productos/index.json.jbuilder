json.array!(@producto) do |producto|
  json.extract! producto, :fotografia, :producto, :descripcion, :tamano, :diseno, :precio, :existencia, :categoria, :preciomayoreo, :piezasmayoreo, :preciomenudeo, :piezasmenudeo
  json.url producto_url(producto, format: :json)
end
