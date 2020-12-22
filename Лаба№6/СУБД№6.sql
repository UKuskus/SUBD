CREATE VIEW [Товар_Плюс] AS SELECT DISTINCT [Код товару],Назва,Бренд,Вартість, Класифікація 
FROM [Clother_Shop_Catalog].[dbo].[Товар];


SELECT *
  	FROM [Clother_Shop_Catalog].[dbo].[Товар_Плюс]
WHERE Вартість >= 30


SELECT * FROM [Clother_Shop_Catalog].[dbo].[Замовлення]
INNER JOIN [Clother_Shop_Catalog].[dbo].Магазин ON Магазин.[Код магазину]=Замовлення.[Код магазину]


SELECT * FROM [Clother_Shop_Catalog].[dbo].Замовлення,[Clother_Shop_Catalog].[dbo].[Товар_Плюс]
WHERE Замовлення.[Код товару] = [Товар_Плюс].[Код товару] AND [Товар_Плюс].[Класифікація] = N'Для жінок'
