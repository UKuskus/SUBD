CREATE TABLE [dbo].[�������](
[��� ��������] [INTEGER] NOT NULL,
[�����] NVARCHAR(30) NOT NULL,
[����] NVARCHAR(35) NOT NULL,
[����� �����������] INTEGER NOT NULL,
[E-mail] VARCHAR(30) NOT NULL,
PRIMARY KEY ([��� ��������])
);
CREATE TABLE [dbo].[�����](
[��� ������] INTEGER NOT NULL,
[�����] nvarchar(30) NOT NULL,
[�����] nvarchar(20) NOT NULL,
[����] nvarchar(19) NOT NULL,
[�����] varchar(5) NOT NULL,
[�������] MONEY NOT NULL,
[������������] nvarchar(13)NOT NULL,
PRIMARY KEY ([��� ������])
);
CREATE TABLE [dbo].[�����������](
[��� ������������] [integer] NOT NULL,
[�������] nvarchar(20) NOT NULL,
[��'�] nvarchar(20) NOT NULL,
[�� �������] nvarchar(24),
[���� ����������] DATE NOT NULL,
[����� ��������] integer NOT NULL,
[�����] nvarchar(8) NOT NULL,
PRIMARY KEY ([��� ������������])
); 
CREATE TABLE [dbo].[�������� ������](
[��� ��������� ������] integer NOT NULL,
[�������] nvarchar(20) NOT NULL,
[��'�] nvarchar(20) NOT NULL,
[�� �������] nvarchar(24),
[���� ����������] DATE NOT NULL,
[������������] nvarchar(26) NOT NULL,
PRIMARY KEY ([��� ��������� ������])
);
CREATE TABLE [dbo].[�볺��](
[��� �볺���] INTEGER NOT NULL,
[�������] NVARCHAR(20) NOT NULL,
[���] NVARCHAR(20) NOT NULL,
[�� �������] NVARCHAR(24),
[���� ����������] DATE NOT NULL,
[�����] NVARCHAR(8) NOT NULL,
[̳���] NVARCHAR(25) NOT NULL,
[������] NVARCHAR(25) NOT NULL,
[����� �������] NVARCHAR(4) NOT NULL,
[�������] INTEGER NOT NULL,
PRIMARY KEY ([��� �볺���])
);
CREATE TABLE [dbo].[����������](
[��� ����������] INTEGER NOT NULL,
[��� ������] INTEGER NOT NULL,
[��� �볺���] INTEGER NOT NULL,
[��� ��������] INTEGER NOT NULL,
[��� ������������] INTEGER NOT NULL,
[��� ��������� ������] INTEGER NOT NULL,
[ʳ������ ������] INTEGER NOT NULL,
[���� ����������] DATE NOT NULL,
PRIMARY KEY ([��� ����������]),
FOREIGN KEY ([��� ������]) 
REFERENCES [dbo].[�����]([��� ������]) 
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� �볺���])
REFERENCES [dbo].[�볺��]([��� �볺���])
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ������������])
REFERENCES [dbo].[�����������]([��� ������������])
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ��������� ������])
REFERENCES [dbo].[�������� ������]([��� ��������� ������])
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ��������])
REFERENCES [dbo].[�������]([��� ��������])
ON DELETE CASCADE ON UPDATE CASCADE
);
