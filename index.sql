create schema cc1m0911;
show databases;
use cc1m0911;

create table if not exists vendas(
venda_id int unique primary key not null,
produto varchar(100),
quantidade int not null,
preco_unit double not null
);

insert into vendas
(venda_id, produto, quantidade, preco_unit)
values(1, 'produto A', 5, 10.00),
(2, 'produto B', 3, 20.00),
(3, 'produto A', 2, 10.00),
(4, 'produto C', 7, 15.00),
(5, 'produto B', 4, 20.00),
(6, 'produto A', 3, 10.00);

select venda_id, sum(quantidade*preco_unit) from vendas group by venda_id;

select avg(preco_unit) from vendas;

select produto, sum(quantidade*preco_unit) from vendas group by produto;
