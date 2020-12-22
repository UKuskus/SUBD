SELECT *
INTO [Clother_Shop_Catalog].[dbo].[Client_B]
FROM [Clother_Shop_Catalog].[dbo].[Клієнт]


SELECT * FROM [Clother_Shop_Catalog].[dbo].[Client_A]
UNION SELECT * FROM [Clother_Shop_Catalog].[dbo].[Client_B]


SELECT * FROM [Clother_Shop_Catalog].[dbo].[Client_A]
INTERSECT  SELECT * FROM [Clother_Shop_Catalog].[dbo].[Client_B]


SELECT * FROM [Client_A]
WHERE [Client_A].[Код клієнта] NOT IN (SELECT [Код клієнта] FROM [Client_B]);


SELECT * FROM [Client_A]
CROSS JOIN [Client_B];
