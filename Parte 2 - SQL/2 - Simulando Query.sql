USE [Testes QUOD];

SELECT
      [Produto],
      [Categoria],
      SUM(CAST([Quantidade] AS FLOAT) * CAST([Pre�o] AS FLOAT)) AS Total_vendas
FROM dbo.data_clean
GROUP BY
      [Produto],
      [Categoria]
ORDER BY
      Total_vendas DESC;
