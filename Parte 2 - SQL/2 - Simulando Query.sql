USE [Teste QUOD];

SELECT
      [Produto],
      [Categoria],
	  ---os numeros estão como texto, vamos converte-los para conseguirmos multiplicar
      SUM(CAST([Quantidade] AS FLOAT) * CAST([Preço] AS FLOAT)) AS Total_vendas
FROM dbo.data_clean
GROUP BY
      [Produto],
      [Categoria]
ORDER BY
      Total_vendas DESC;