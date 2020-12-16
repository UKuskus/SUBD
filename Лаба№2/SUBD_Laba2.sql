CREATE TABLE [dbo].[Магазин](
[Код магазину] [INTEGER] NOT NULL,
[Назва] NVARCHAR(30) NOT NULL,
[Сайт] NVARCHAR(35) NOT NULL,
[Номер техпідтримки] INTEGER NOT NULL,
[E-mail] VARCHAR(30) NOT NULL,
PRIMARY KEY ([Код магазину])
);
CREATE TABLE [dbo].[Товар](
[Код товару] INTEGER NOT NULL,
[Назва] nvarchar(30) NOT NULL,
[Бренд] nvarchar(20) NOT NULL,
[Колір] nvarchar(19) NOT NULL,
[Розмір] varchar(5) NOT NULL,
[Вартість] MONEY NOT NULL,
[Класифікація] nvarchar(13)NOT NULL,
PRIMARY KEY ([Код товару])
);
CREATE TABLE [dbo].[Консультант](
[Код консультанта] [integer] NOT NULL,
[Прізвище] nvarchar(20) NOT NULL,
[Ім'я] nvarchar(20) NOT NULL,
[По батькові] nvarchar(24),
[Дата народження] DATE NOT NULL,
[Номер телефону] integer NOT NULL,
[Стать] nvarchar(8) NOT NULL,
PRIMARY KEY ([Код консультанта])
); 
CREATE TABLE [dbo].[Дизайнер товару](
[Код дизайнера товару] integer NOT NULL,
[Прізвище] nvarchar(20) NOT NULL,
[Ім'я] nvarchar(20) NOT NULL,
[По батькові] nvarchar(24),
[Дата народження] DATE NOT NULL,
[Громадянство] nvarchar(26) NOT NULL,
PRIMARY KEY ([Код дизайнера товару])
);
CREATE TABLE [dbo].[Клієнт](
[Код клієнта] INTEGER NOT NULL,
[Прізвище] NVARCHAR(20) NOT NULL,
[Ім’я] NVARCHAR(20) NOT NULL,
[По батькові] NVARCHAR(24),
[Дата народження] DATE NOT NULL,
[Стать] NVARCHAR(8) NOT NULL,
[Місто] NVARCHAR(25) NOT NULL,
[Вулиця] NVARCHAR(25) NOT NULL,
[Номер будинку] NVARCHAR(4) NOT NULL,
[Телефон] INTEGER NOT NULL,
PRIMARY KEY ([Код клієнта])
);
CREATE TABLE [dbo].[Замовлення](
[Код замовлення] INTEGER NOT NULL,
[Код товару] INTEGER NOT NULL,
[Код клієнта] INTEGER NOT NULL,
[Код магазину] INTEGER NOT NULL,
[Код консультанта] INTEGER NOT NULL,
[Код дизайнера товару] INTEGER NOT NULL,
[Кількість товару] INTEGER NOT NULL,
[Дата замовлення] DATE NOT NULL,
PRIMARY KEY ([Код замовлення]),
FOREIGN KEY ([Код товару]) 
REFERENCES [dbo].[Товар]([Код товару]) 
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код клієнта])
REFERENCES [dbo].[Клієнт]([Код клієнта])
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код консультанта])
REFERENCES [dbo].[Консультант]([Код консультанта])
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код дизайнера товару])
REFERENCES [dbo].[Дизайнер товару]([Код дизайнера товару])
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код магазину])
REFERENCES [dbo].[Магазин]([Код магазину])
ON DELETE CASCADE ON UPDATE CASCADE
);
