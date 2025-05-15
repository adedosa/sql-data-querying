--1st exercise: Write a SQL query to retrieve the first name, last name, and email address of all customers from the city of 'New York'.
SELECT FirstName, LastName, Email
FROM Customers 
WHERE City = 'New York';

--2nd exercise: Write a SQL query to find the total number of orders placed by each customer. Display the customer's ID and the total number of orders.
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

--3rd exercise: Write a SQL query to retrieve the order ID, order date, and the first name and last name of the customer who placed each order.
SELECT Orders.OrderID, Orders.OrderDate, Customers.FirstName, Customers.LastName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID

--4th exercise: Write a SQL query to find all orders placed between '2024-02-01' and '2024-03-15' (inclusive).  Display the order ID, order date, and total amount for each order.
SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE OrderDate >= '2024-02-01' AND '2024-03-15'

--5th exercise: Write a SQL query to find the customer(s) who placed the order(s) with the highest total amount.  Display the first name, last name, and the highest total amount.
SELECT c.FirstName, c.LastName, o.TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount = (SELECT MAX(TotalAmount) FROM Orders);