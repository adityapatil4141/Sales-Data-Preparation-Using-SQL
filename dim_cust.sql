SELECT c.CustomerKey as CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.firstname as [First Name]
      --,[MiddleName]
      ,c.lastname as [Last Name]
	  ,c.firstname + ' ' + lastname as [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.gender When 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.datefirstpurchase as DateFirstPurchase
      --,[CommuteDistance]
	  ,g.city as [Customer City]
FROM dbo.DimCustomer as c
LEFT JOIN dbo.DimGeography as g ON g.geographykey = c.geographykey
order by CustomerKey ASC