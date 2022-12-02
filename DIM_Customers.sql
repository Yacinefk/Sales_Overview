--Clean DIM Customer Table
SELECT c.CustomerKey AS Customer_Key
      ,c.FirstName AS FirstName
      ,c.LastName AS LastName
      ,c.FirstName + ' ' + c.LastName AS FullName
      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,c.DateFirstPurchase AS DateFirstPurchase
      ,g.City AS CustomerCity
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
       LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g
	   ON g.GeographyKey = c.GeographyKey
  ORDER BY Customer_Key 
