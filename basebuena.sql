-- Database: artesanias

DROP DATABASE artesanias;

CREATE DATABASE artesanias
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Spanish_Spain.1252'
       LC_CTYPE = 'Spanish_Spain.1252'
       CONNECTION LIMIT = -1;


create table categories(
id_categoria serial primary key not null,
nombre varchar(50) not null,
descripcion varchar(100),
unique (nombre)
);
insert into categories(nombre, descripcion) values('Rana', 'Esta es la categoria para las ranas');
insert into categories(nombre, descripcion) values('Maceta', 'Esta es la categoria para las macetas');


create table tamanos(
id_tamano serial primary key not null,
tamano varchar(50) not null,
descripcion varchar(100),
unique (tamano)
);


create table disenos(
id_diseno serial primary key not null,
diseno varchar(255) not null,
nombre varchar(100) not null,
constraint uc_diseno unique (diseno, nombre)
);

create table productos(
id_producto serial primary key not null,
fotografia varchar(255), 
producto varchar(50) not null, 
tamano int not null, 
diseno int not null,
precio decimal(8,2) not null, 
existencia int not null, 
categoria int not null, 
precioMayoreo decimal(8,2), 
piezasMayoreo int,
precioMenudeo decimal(8,2), 
piezasMenudeo int,
constraint existencia_ck check (existencia > 0)
);


create table categoriesProductos(
id_categoria_producto int,
id_producto_categoria int 
);

create table tamanosProductos(
id_tamano_producto int,
id_producto_tamano int 
);

create table disenosProductos(
id_diseno_producto int,
id_producto_diseno int 
);


alter table tamanosProductos
add foreign key (id_tamano_producto) references tamanos(id_tamano),
add foreign key (id_producto_tamano) references productos(id_producto);

alter table categoriesProductos
add foreign key (id_categoria_producto) references categories(id_categoria),
add foreign key (id_producto_categoria) references productos(id_producto);

alter table disenosProductos
add foreign key (id_diseno_producto) references disenos(id_diseno),
add foreign key (id_producto_diseno) references productos(id_producto);


insert into tamanos(tamano, descripcion) values('No Disponible', 'No existe  tamaño disponible o es el unico tamaño existente');
insert into tamanos(tamano, descripcion) values('Chico', 'Tamaño de pieza chico');
insert into tamanos(tamano, descripcion) values('Mediano', 'Tamaño de pieza mediano');
insert into tamanos(tamano, descripcion) values('Grande', 'Tamaño de pieza grande');
insert into tamanos(tamano, descripcion) values('Extra Grande', 'Tamaño de pieza extra grande');

insert into productos(fotografia, producto,tamano,diseno, precio,existencia, categoria, precioMayoreo,piezasMayoreo,precioMenudeo,piezasMenudeo) 
values(null, 'Rana', 1, 1, 25, 100, 1, 10, 10, 15, 5);


insert into tamanosProductos(id_tamano_producto, id_producto_tamano)
values(1, 1);
insert into categoriesProductos(id_categoria_producto, id_producto_categoria)
values(1, 1);

select * from categories;
select * from tamanos;
select * from disenos;
select * from productos;