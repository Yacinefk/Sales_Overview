--Clean FACT_InternetSales Table
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  WHERE LEFT (OrderDateKey,4) >= YEAR(GETDATE()) -2
  ORDER BY OrderDateKey

