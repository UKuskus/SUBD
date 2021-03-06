SET SHOWPLAN_ALL ON;
GO
SELECT [Клієнт].[Прізвище],[Клієнт].[Ім’я],[Клієнт].[По батькові],[Клієнт].[Місто],
[Клієнт].[Вулиця],[Клієнт].[Номер будинку],[Замовлення].[Код замовлення],[Замовлення].[Код клієнта],
[Замовлення].[Код клієнта],[Замовлення].[Код консультанта],[Замовлення].[Код магазину],
[Замовлення].[Код товару],[Замовлення].[Кількість товару],[Замовлення].[Дата замовлення],Товар.[Назва],Товар.[Вартість]
FROM (Клієнт INNER JOIN Замовлення ON Замовлення.[Код клієнта]=Клієнт.[Код клієнта])
INNER JOIN Товар ON Товар.[Код товару]=Замовлення.[Код товару]
WHERE Вулиця = ANY (SELECT Вулиця FROM Клієнт )
AND Місто LIKE N'Л%' 
AND  MONTH([Дата замовлення]) BETWEEN 1 AND 12;
GO
SET SHOWPLAN_ALL OFF;



SET SHOWPLAN_ALL ON;
GO
SELECT *
FROM [Clother_Shop_Catalog].[dbo].Замовлення, [Clother_Shop_Catalog].[dbo].Клієнт, [Clother_Shop_Catalog].[dbo].Товар
WHERE Вулиця IN (SELECT Вулиця FROM [Clother_Shop_Catalog].[dbo].Клієнт)
AND Замовлення.[Код клієнта]=Клієнт.[Код клієнта]
AND Товар.[Код товару]=Замовлення.[Код товару]
AND Місто LIKE N'Л%' 
AND  MONTH([Дата замовлення]) BETWEEN 1 AND 12;
GO
SET SHOWPLAN_ALL OFF;
