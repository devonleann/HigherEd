CREATE PROCEDURE [dbo].[uspGetStudentCountByState]
    @State varchar(50) = ''
AS
DECLARE @count AS INT

SELECT 
	@count = COUNT(s.StudentId) 
FROM 
	Student s 
		INNER JOIN 
	StudentContact sc ON s.ContactID = sc.ContactID
WHERE 
    sc.State = @State

RETURN @count