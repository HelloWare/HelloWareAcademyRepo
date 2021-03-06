USE [ShoppingCart]
GO
/****** Object:  StoredProcedure [dbo].[usp_Customer_Insert]    Script Date: 2/9/2017 9:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shawn Shi
-- Create date: 02/09/2017
-- Description:	Insert a row into Customer
-- =============================================
ALTER PROCEDURE [dbo].[usp_Customer_Insert]
	@FirstName VARCHAR(25),
	@LastName VARCHAR(25),
	@Email VARCHAR(50),
	@UserName VARCHAR(25),
	@Password VARCHAR(25),
	@Phone VARCHAR(25),
	@IsActive BIT = 0
AS
BEGIN
	SET NOCOUNT ON;

	INSERT [dbo].[Customer] (FirstName, LastName, Email, UserName, Password, Phone, IsActive)
	VALUES (@FirstName, @LastName, @Email, @UserName, @Password, @Phone, @IsActive)

	RETURN @@IDENTITY
   
END
