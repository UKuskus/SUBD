CREATE TRIGGER Del_Insert
ON [Clother_Shop_Catalog].[dbo].[Client_A]
AFTER DELETE
AS
INSERT INTO [Clother_Shop_Catalog].[dbo].[Client_B]
SELECT*
FROM DELETED;

DELETE FROM [Clother_Shop_Catalog].[dbo].[Client_A]
WHERE[Код клієнта]=4;



CREATE TRIGGER UD_Del
ON [Clother_Shop_Catalog].[dbo].[Client_B]
AFTER UPDATE
AS
DELETE FROM [Clother_Shop_Catalog].[dbo].[Client_A] WHERE [Client_A].Місто=(SELECT Місто FROM DELETED);


UPDATE [Clother_Shop_Catalog].[dbo].[Client_B] SET Місто=N'Рівне' WHERE [Код клієнта]=4; 



CREATE TRIGGER Insert_Insert
ON [Clother_Shop_Catalog].[dbo].[Client_A]
AFTER INSERT
AS
INSERT INTO [Clother_Shop_Catalog].[dbo].[Client_B]([Код клієнта]
      ,inserted.[Прізвище]
      ,inserted.[Ім’я]
      ,inserted.[По батькові]
      ,inserted.[Дата народження]
      ,inserted.[Стать]
      ,inserted.[Місто]
      ,inserted.[Вулиця]
      ,inserted.[Номер будинку]
      ,inserted.[Телефон])
SELECT inserted.[Код клієнта]
      ,inserted.[Прізвище]
      ,inserted.[Ім’я]
      ,inserted.[По батькові]
      ,inserted.[Дата народження]
      ,inserted.[Стать]
      ,inserted.[Місто]
      ,inserted.[Вулиця]
      ,inserted.[Номер будинку]
      ,inserted.[Телефон]
FROM Inserted;

INSERT INTO [Clother_Shop_Catalog].[dbo].[Client_A] VALUES (8,N'Бачурин',N'Василь',N'Іванович','2021-01-01',N'Чоловіча',N'Суми',N'Антоновича',5,394750516); 
