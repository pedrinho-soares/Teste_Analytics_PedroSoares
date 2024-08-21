USE [Testes QUOD];

SELECT
      [Produto],
      [Preço],
      [Categoria],
      SUM(CAST([Quantidade] AS FLOAT) * CAST([Preço] AS FLOAT)) AS Total_vendas
FROM dbo.data_clean
GROUP BY
      [Produto],
      [Preço],
      [Categoria]
ORDER BY
      Total_vendas DESC;
