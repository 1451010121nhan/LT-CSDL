USE ONLINE_SHOP
GO
--CAU 1: PROCEDUCE TINH TONG 2 SO A VA B (kieu so nguyen)
IF OBJECT_ID('USP_CAU1', 'P') IS NOT NULL
	DROP PROC USP_CAU1
GO	
CREATE PROC USP_CAU1
	@a INT = 0,
	@b INT = 0
AS
	RETURN (@a + @b)
GO


DECLARE @x INT = 2, @y INT = 5, @tong INT =0
EXEC @tong = USP_CAU1 @x, @y
print @tong

--CAU 2: PROCEDUCE TINH TONG 2 SO A VA B (kieu so THUC)
IF OBJECT_ID('USP_CAU2', 'P') IS NOT NULL
	DROP PROC USP_CAU2
GO	
CREATE PROC USP_CAU2
	@a FLOAT = 0,
	@b FLOAT = 0,
	@tong FLOAT OUT  -- OUTPUT
AS
	SET @tong = @a + @b
GO


DECLARE @x FLOAT = 2.2, @y FLOAT = 5.3, @tong FLOAT
EXEC USP_CAU2 @x, @y, @tong OUT
print CAST(@x AS VARCHAR )+ ' + ' +
		CAST(@y AS VARCHAR) + ' = ' +
		CAST(@tong AS VARCHAR)