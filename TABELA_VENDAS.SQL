--: venda_seq 
CREATE TABLE venda(
    venda_id        INTEGER NOT NULL DEFAULT nextval('venda_seq'),
    vendedor        VARCHAR(50) NOT NULL,
    produto         VARCHAR(50) NOT NULL,
    quantidade      INTEGER NOT NULL,
    valor_unitario  NUMERIC(10,2) NOT NULL,
    CONSTRAINT venda_pk PRIMARY KEY (venda_id)
);


create sequence venda_seq start with 1 increment by 1;

select nextval('venda_seq');
select currval('venda_seq');


--Massa de dados:Sequence
insert into venda (vendedor, produto, quantidade, valor_unitario)
values
('Ana',    'Notebook', 1, 3500.00),
('Ana',    'Mouse',    10, 80.00),
('Ana',    'Teclado',  2, 150.00),
('Ana',    'Monitor',  1, 1200.00),
('Carlos', 'Notebook', 2, 3500.00),
('Carlos', 'Mouse',    3, 80.00),
('Carlos', 'Teclado',  1, 150.00),
('Carlos', 'Monitor',  2, 1200.00),
('Bruna',  'Notebook', 1, 3500.00),
('Bruna',  'Mouse',    6, 80.00),
('Bruna',  'Teclado',  2, 150.00),
('Bruna',  'Monitor',  3, 1200.00),
('Diego',  'Notebook', 1, 3500.00),
('Diego',  'Mouse',    4, 80.00),
('Diego',  'Teclado',  1, 150.00),
('Diego',  'Monitor',  1, 1200.00),
('Diego',  'Notebook', 1, 3500.00),
('Elisa',  'Notebook', 2, 3500.00),
('Elisa',  'Mouse',    2, 80.00),
('Elisa',  'Teclado',  3, 150.00),
('Elisa',  'Monitor',  2, 1200.00),
('Vivialdo','Impressora', 3, 4000.00),
('Vivialdo','Monitor', 10, 1200.00);

select *from venda v;
 
select count(*) as total_venda
from venda v;

select sum(quantidade) as qtde_prod_vendido
from venda as v;

select avg(quantidade) as valor_total
from venda as v;

select sum(v.quantidade * v.valor_unitario) as faturamento_total
from venda as v;

select avg(v.valor_unitario ) as preço_medio
from venda as v;


select max(v.valor_unitario) as valor_max,
min(v.valor_unitario) as valor_min
from venda as v;

select min(v.valor_unitario) as valor_minimo
from venda as v;

select *from venda v;

select vendedor  v, 
produto v 
from venda v ;

select vendedor v, produto v
from venda v
where v.quantidade  <5 ;

select count(*) as total
from venda v;

select *from venda v;



