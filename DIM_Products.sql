--Clean DIM_Products Table
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode
      ,p.[EnglishProductName] AS Product_Name
	  ,ps.[EnglishProductSubcategoryName] AS ProductSubCategory
	  ,pc.[EnglishProductCategoryName] AS ProductCategory
      ,p.[Color] AS ProductColor
      ,p.[Size] AS ProductSize
      ,p.[ProductLine] AS ProductLine
      ,p.[ModelName] AS ProductModelName
      ,p.[EnglishDescription] AS ProductDescription
      ,ISNULL(p.[Status], 'Outdated') AS ProductStatus
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
       LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps
	   ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	   LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc
	   ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey
