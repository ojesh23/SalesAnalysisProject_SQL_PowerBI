/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  c.customerkey AS CustomerKey, 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c.firstname AS [First Name], 
  --[MiddleName], 
  c.lastname AS [Last Name],
  c.firstname + ' ' + lastname AS [Full Name],
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.datefirstpurchase AS [DateFirstPurchase],
  --[CommuteDistance]
  g.city as [Customer City] --Joined in Customer City from Geography Table
FROM 
  dbo.dimcustomer AS c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey
ORDER BY 
	CustomerKey ASC -- Ordered list by CustomerKey