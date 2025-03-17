SELECT SalesOrderID, OrderDate, TotalDue  
FROM Sales.SalesOrderHeader  
WHERE OrderDate BETWEEN '2011-01-01' AND '2013-12-31';


SELECT FirstName, LastName, 'Customer' AS Role  
FROM Sales.Customer c  
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID  
UNION  ALL
SELECT FirstName, LastName, 'Employee' AS Role  
FROM HumanResources.Employee e  
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID;


SELECT EmailAddress  
FROM Person.EmailAddress  
WHERE EmailAddress LIKE '%er%';
