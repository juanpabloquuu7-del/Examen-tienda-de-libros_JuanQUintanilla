CREATE DATABASE biblioteca1;

use biblioteca1

create Table autor(
    codigo_autor int primary key auto_increment,
    nombre_autor varchar(20)
);

create table libro(
    codigo_libro int primary key,
    isbn int unique,
    codigo_autor int not NULL,
    foreign key (codigo_autor) REFERENCES autor(codigo_autor),
    editorial VARCHAR(20),
    fecha_publi varchar(100),
    categoria varchar(20),
    stock int
);

create table cliente(
    codigo_cliente int PRIMARY KEY,
    nombre_cliente VARCHAR(20),
    email VARCHAR(20)
);

create table autor_libro(
    codigo_autor int PRIMARY KEY,
    codigo_libro int not NULL,
    Foreign Key (codigo_autor) REFERENCES autor (codigo_autor),
    Foreign Key (codigo_libro) REFERENCES libro (codigo_libro) 
);

create table pedidos(
    codigo_pedido int PRIMARY KEY,
    codigo_cliente int not null,
    codigo_libro int not null,
    Foreign Key (codigo_cliente) REFERENCES cliente (codigo_cliente),
    Foreign Key (codigo_libro) REFERENCES libro (codigo_libro),
    precio decimal,
    direccion VARCHAR(100)
);

create table transacciones(
    codigo_pedido int PRIMARY KEY,
    Foreign Key (codigo_pedido) REFERENCES pedidos (codigo_pedido) ,
    metodo_pago varchar(20),
    monto FLOAT
);
