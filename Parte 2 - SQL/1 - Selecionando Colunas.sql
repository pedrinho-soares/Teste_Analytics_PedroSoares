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

  ---neste caso temos uma coluna 'Valor total' já pronta pra executar essa função que queremos, 
  --- mas suponhamos que ela não existisse, vamos simular essa query no arquivo "2 - Simulando Query" dentro deste repositório
