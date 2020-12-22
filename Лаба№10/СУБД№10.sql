CREATE PROCEDURE Procedure_5 AS
SELECT Прізвище,[Ім'я],[Стать],[Номер телефону]
FROM Консультант;

EXEC Procedure_5;


CREATE FUNCTION FUNCTION0(@cost money, @count as int)
RETURNS money
AS
	BEGIN
	if(@cost<0 and @count<0)
		return 0
	Return (@cost*@count)
END;

Select [Код замовлення], dbo.FUNCTION0(Вартість, [Кількість товару]) as [Загальна вартість]
FROM [Clother_Shop_Catalog].[dbo].Замовлення
INNER JOIN Товар ON Замовлення.[Код товару]= Товар.[Код товару];


Select [Код замовлення],Вартість*[Кількість товару] as [Загальна вартість]
FROM Замовлення
INNER JOIN Товар ON Замовлення.[Код товару] = Товар.[Код товару];

