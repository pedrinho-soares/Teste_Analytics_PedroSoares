----------------------------------------------------------------------------------------
--SIMULAÇÃO 1: SELECIONANDO AS COLUNAS PARA VER COMO ESTÁ
use [Teste]

SELECT TOP (1000) [Coluna]
      
      ,[ID]
      ,[Data]
      ,[Produto]
      ,[Tamanho]
      ,[Preço]
      ,[Quantidade]
      ,[Categoria]
      ,[Forma de Pagamento]
      ,[Hora]
      ,[Valor Total]
  FROM [Teste QUOD].[dbo].[data_clean]

  --SIMULAÇÃO 1 FINALIZADA
  ----------------------------------------------------------------------------

  --INICIANDO SIMULAÇÃO 2 - OBJETIVO: IDENTIFICAR OS PRODUTOS MAIS VENDIDOS SOMANDO E MULTIPLICANDO QUANTIDADE VEZES PREÇO

  ---neste caso temos uma coluna 'Valor total' já pronta pra executar essa função que queremos, 
  --- mas suponhamos que ela não existisse, vamos simular essa query no arquivo "2 - Simulando Query", na próxima simulação

  USE [Teste QUOD];

SELECT
      [Produto],
      [Categoria],
	  ---os numeros estão como texto, vamos converte-los para conseguirmos multiplicar
	  -- usarei os comandos SUM para somar, CAST E FLOAT para conversão do tipo de dado 
	SUM(CAST([Quantidade] AS FLOAT) * CAST([Preço] AS FLOAT)) AS Total_vendas
	FROM data_clean
	--Usando group by para agrupar os produtos em categorias
GROUP BY
      [Produto],
      [Categoria]
-- usando order by para ordena-los em ordem decrescente
ORDER BY
      Total_vendas DESC;

	--SIMULAÇÃO 2 FINALIZADA
----------------------------------------------------------------------------------------------------------
	
	-- INICIANDO SIMULAÇÃO 3 - OBJETIVO: IDENTIFICAR OS PRODUTOS QUE MENOS VENDEU EM JUNHO DE 2023

	  --OBSERVAÇÃO: O EMAIL DO TESTE PEDIA PARA ANALISAR OS PRODUTOS QUE MENOS TIVERAM VENDAS EM JUNHO DE 2024
--MAS A TABELA FOI GERADA APENAS DO ANO DE 2023 COMO ORDENADO, VOU CONSIDERAR ESSA QUERY E LEVAR COMO JUNHO DE 2023, ACREDITO QUE FOI UM ERRO.

USE [Teste QUOD];

SELECT
--USANDO O MESMO COMANDO NA SIMULAÇÃO 2 PARA CONVERTER OS NUMEROS E SELECIONAR AS CATEGORIAS QUE QUERO
      [Produto],
      [Categoria],
      SUM(CAST([Quantidade] AS FLOAT) * CAST([Preço] AS FLOAT)) AS Total_vendas                
	  -- Soma o total das vendas e renomeia a coluna como Total_vendas
FROM dbo.data_clean
WHERE --USANDO O COMANDO WHERE PARA FILTRAR APENAS JUNHO
      [Data] BETWEEN '2023-06-01' AND '2023-06-30'
GROUP BY --AGRUPANDO EM CATEGORIAS OS PRODUTOS
      [Produto],
      [Categoria]

 --Ordena do menor para o maior total de vendas
ORDER BY
      Total_vendas ASC;

	--	SIMULAÇÃO 3 FINALIZADA
------------------------------------------------------------------------------------------
