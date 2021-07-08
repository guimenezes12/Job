
CREATE DATABASE PRODUTOSTORE
go


use PRODUTOSTORE

CREATE TABLE tblCategoriaProduto (
 Id int identity (1,1)primary key,
 Nome VARCHAR (250) not null,
 Descricao VARCHAR(250) not null,
 ativo bit not null
 )


  CREATE TABLE tblProduto (
Id int identity (1,1) primary key,
 Nome VARCHAR (250) not null ,
 Descrição VARCHAR(250) not null,
 Ativo bit not null,
 Perecivel bit not null,
 CatergoriaID int not null
 CONSTRAINT fk_CatergoriaID FOREIGN KEY (CatergoriaID)
 REFERENCES tblCategoriaProduto (Id) 
 );

 


insert into tblCategoriaProduto (Nome,Descricao,ativo) values ('Eletrônico','Eletrodomésticos',1)

insert into tblCategoriaProduto (Nome,Descricao,ativo) values ('Informática','Produtos para Informática',1)

insert into tblCategoriaProduto (Nome,Descricao,ativo) values ('Celulares','Aparelhos e acessórios',1)

insert into tblCategoriaProduto (Nome,Descricao,ativo) values ('Moda','Artigos para vestuário em geral',1)

insert into tblCategoriaProduto (Nome,Descricao,ativo) values ('Livros','Livros',1)


