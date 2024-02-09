SELECT 
	   p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
--      ,[ProductSubcategoryKey]
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
--      ,p.[SpanishProductName]
--      ,[FrenchProductName]
--    ,[StandardCost]
--      ,[FinishedGoodsFlag]
      ,p.[Color] as [ProuctColor]
--      ,[SafetyStockLevel]
--      ,[ReorderPoint]
--      ,[ListPrice]
      ,p.[Size] AS [ProductSize]
--      ,[SizeRange]
--      ,[Weight]
--      ,[DaysToManufacture]
      ,p.[ProductLine] AS productline
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
      ,p.[ModelName] AS [Product Model Name]
--      ,[LargePhoto]
      ,p.[EnglishDescription] AS [Product Description]
--      ,[FrenchDescription]
--      ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--      ,[StartDate]
--      ,[EndDate]
      ,ISNULL(p.[Status],'outdated') AS [Product Statue] -- if column has 'Null' written it will fill it as 'outdated'
  FROM [dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey=p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory as pc ON ps.ProductCategoryKey=pc.ProductCategoryKey
  order by
  p.ProductKey asc