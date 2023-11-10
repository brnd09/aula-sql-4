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
values
(1, 'produto A', 5, 10.00),
(2, 'produto B', 3, 20.00),
(3, 'produto A', 2, 10.00),
(4, 'produto C', 7, 15.00),
(5, 'produto B', 4, 20.00),
(6, 'produto A', 3, 10.00);

-- Exercício 1: Calcule o valor total de vendas considerando a quantidade vendida e o preço unitário de cada produto.
select sum(quantidade*preco_unit) as total_vendido from vendas;

-- Exercício 2: Determine a média dos preços unitários de todos os produtos.
select round(avg(preco_unit),2) as media from vendas;

-- Exercício 3: Liste o nome de cada produto e o valor total obtido com suas vendas, considerando a quantidade e o preço unitário.
select produto, sum(quantidade*preco_unit) as valor_total from vendas group by produto;

-- Exercício 4: Encontre o nome do produto que foi mais vendido, ou seja, tem a maior quantidade total vendida
select produto from vendas group by produto order by sum(quantidade) desc limit 1;

-- Exercício 5: Calcule o valor médio das vendas para cada produto.
select produto, round(avg(preco_unit*quantidade),2) as media_de_vendas from vendas group by produto;

-- Exercício 6: Conte quantos produtos diferentes foram vendidos.
select count(distinct produto) as produtos_que_foram_vendidos from vendas;

-- Exercício 7: Encontre o nome do produto que possui o preço unitário mais alto.
select produto as produto_unitario_com_o_valor_mais_alto from vendas order by preco_unit desc limit 1;

-- Exercício 8: Liste o nome de cada produto e o valor total obtido com suas vendas, considerando a quantidade e o preço unitário, mas apenas
-- para produtos vendidos em quantidades maiores ou iguais a 4.

-- Exercício 9: Calcule a média dos preços unitários dos produtos para cada produto.

-- Exercício 10: Liste o nome de cada produto e o valor total obtido com suas vendas, considerando a quantidade e o preço unitário, mas apenas
-- para produtos com preço unitário médio acima de 12.00.




