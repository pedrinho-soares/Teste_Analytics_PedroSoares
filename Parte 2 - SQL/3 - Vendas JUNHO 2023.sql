--OBSERVAÇÃO: O EMAIL DO TESTE PEDIA PARA ANALISAR OS PRODUTOS QUE MENOS TIVERAM VENDAS EM JUNHO 2024
--MAS A TABELA FOI GERADA APENAS DO ANO DE 2023 COMO ORDENADO, VOU CONSIDERAR ESSA QUERY E LEVAR COMO JUNHO DE 2023, ACREDITO QUE FOI UM ERRO.

USE [Testes QUOD];

SELECT
      [Produto],
      [Categoria],
      SUM(
          CAST([Quantidade] AS FLOAT) *  
          CAST([Preço] AS FLOAT)      
      ) AS Total_vendas                -- Soma o total das vendas e renomeia a coluna como Total_vendas
FROM dbo.data_clean
WHERE 
      [Data] BETWEEN '2023-06-01' AND '2023-06-30'
GROUP BY
      [Produto],
      [Categoria]

 --Ordena do menor para o maior total de vendas
ORDER BY
      Total_vendas ASC;
