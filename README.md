#MySQL 

É um sitetema gerenciador de banco de dados relacional (sgbdr), que utiliza o sql padrão..

#Funções do SQL

- Permite o acesso à dados em SGBDR

- Permite definir os dados no BD e manipulá-los

- Pode ser embutido em outras linguagens usando módulos SQL, bibliotecas,etc.(É aplicável no java com spring)

- Permite criar e excluir bancos de dados e tabelas

- Permite a criação de visões (Exibições), Stored Procedures e funções em um banco de dados.

- Permite configurar permições de acesso em tabelas, procedimentos e visões.

#Grupos de comandos

Os comandos SQL podem ser divididos em quatro grupos principais:

- DDL
- DML
- DCL
- DQL

#DDL - DATA DEFINITION LANGUAGE
-----------------------------------------------------------------------------------------
| Comando | Descrição									                                                  |
|---------|-----------------------------------------------------------------------------|
| CREATE  | Cria uma nova tabela, visão ou outro objeto					                        |
|---------|-----------------------------------------------------------------------------|
| ALTER   | Modifica um objeto existente no BD, como uma tabela por exemplo	 	          |     
|---------|-----------------------------------------------------------------------------|
| DROP    | exclui uma tabela inteira, uma exibição de uma tabela ou outro objeto no BD.|
-----------------------------------------------------------------------------------------

os comandos DDL são os comandos de infraestrutura, são os comandos que permitem manipular a estrutura do BD: tabelas colunas e outros objetos.

#DDL - DATA MANIPULATION LANGUAGE
-----------------------------------------------------------------------------------------
| Comando | Descrição									                                                  |
|---------|-----------------------------------------------------------------------------|
| INSERT  | Cria um novo registro (linha) na tABELA					                            |
|---------|-----------------------------------------------------------------------------|
| ALTER   | Modifica ou manipula regsitros	 	         				                          |     
|---------|-----------------------------------------------------------------------------|
| DROP    | exclui um registro inteiro						                                      |
-----------------------------------------------------------------------------------------

Os comandos DML são os comandos de manipulação dos dados, um registro é um conjunto de atributos, por exemplo: em uma tabela tb_funcionario um funcionario é um regsitro, que ocupa uma linha, cada registro deve ter uma PRIMARY KEY exclusiva, que permite sua identificação. E cada registro é formado por um conjunto de atributos (colunas) que o descrevem.

#DCL - DATA CONTROL LANGUAGE
-----------------------------------------------------------------------------------------
| Comando | Descrição									                                                  |
|---------|-----------------------------------------------------------------------------|
| GRANT   | dá privilégios a um usuário do banco de dados                               |
|---------|-----------------------------------------------------------------------------|
| REVOKE  | remove privilégios de um usuário do banco de dados                          |
-----------------------------------------------------------------------------------------

Os comandos DCL são comandos de controle de acesso aos outros comandos e dados do BD, dando ou retirando o privilégio de acessar esses comandos.

#DQL - DATA QUERY LANGUAGE
----------------------------------------------------------------------------------------------	 
| Comando | Descrição									                                                       |
|---------|----------------------------------------------------------------------------------|
| SELECT  | obtem registros especificados de uma ou mais tabélas do banco de dados.(consulta)|
----------------------------------------------------------------------------------------------

Os comandos SQL, neste caso o SELECT, unido a outros sub-comandos permite acesso e consultas nas tabelas, que retornam dados especificos.
