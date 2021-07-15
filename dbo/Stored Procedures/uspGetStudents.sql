CREATE PROCEDURE [dbo].[uspGetStudents]
AS
BEGIN

  SELECT Student.StudentID, Student.FirstName, Student.LastName, Student.BirthDate, Student.MaritalStatus, Student.Gender, Student.Race, Student.GraduationDate, 
         Student.MajorID, Student.Major2ID, Student.MinorID, Student.HousingStatus, Student.[FullTime/PartTime], Student.LegacyStatus, Student.TransferFlag, 
         Student.[Current], StudentContact.Address1, StudentContact.Address2, StudentContact.City, StudentContact.State, StudentContact.ZipCode, StudentContact.Country, 
         StudentContact.PhoneNumber, StudentContact.EmailAddress, FinancialAidType.AidType
   FROM  StudentContact 
  RIGHT OUTER JOIN Student 
   LEFT OUTER JOIN FinancialAidType 
  INNER JOIN FinancialAid 
     ON FinancialAidType.AidTypeID = FinancialAid.AidTypeID 
     ON Student.StudentID = FinancialAid.StudentID 
     ON StudentContact.ContactID = Student.ContactID
  WHERE Student.StudentID IS NOT NULL
    AND Student.StudentID <> 1880
    AND Student.FirstName <> 'Bob'

END