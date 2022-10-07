use bd2;
-- criação
CREATE TABLE categorias(
id int(11) primary key auto_increment,
nome varchar(255) not null
);

CREATE TABLE produtos (
id int(11) primary key auto_increment,
nome varchar(255) not null,
valor float not null,
categoria_id int(11) not null,
foreign key (categoria_id) references categorias (id)
);

insert into categorias (nome) values ('Produto de Limpeza');
insert into categorias (nome) values ('Papelaria');

select * from categorias;

insert into produtos (nome, valor, categoria_id) values ('Detergente', 10.20, 1);
insert into produtos (nome, valor, categoria_id) values ('Caneta', 5.10, 2);
insert into produtos (nome, valor, categoria_id) values ('Mouse', 100.00, 3);

select * from produtos;
