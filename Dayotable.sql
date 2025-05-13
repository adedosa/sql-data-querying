--create customers TABLE
CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	City VARCHAR(50),
	Email VARCHAR(100)
);

--insert sample data into the customers table 
INSERT INTO Customers(CustomerID, FirstName, LastName, City, Email) VALUES
(1, 'John','Doe', 'New York', 'john.doe@yahoo.com'),
(2, 'Jane', 'Smith', 'Los Angeles', 'jane.smith@example.com'),
(3, 'Robert', 'Jones', 'Chicago', 'robert.jones@example.com'),
(4, 'Mary', 'Brown', 'Houston', 'mary.brown@example.com'),
(5, 'Michael', 'Davis', 'Phoenix', 'michael.davis@example.com'),
(6, 'Jennifer', 'Wilson', 'New York', 'jennifer.wilson@example.com'),
(7, 'David', 'Garcia', 'Los Angeles', 'david.garcia@example.com'),
(8, 'Linda', 'Rodriguez', 'Chicago', 'linda.rodriguez@example.com'),
(9, 'Christopher', 'Williams', 'Houston', 'christopher.williams@example.com'),
(10, 'Angela', 'Garcia', 'Phoenix', 'angela.garcia@example.com');

-- Create Orders table
CREATE TABLE Orders(
	OrderID INT PRIMARY KEY,
	CustomerID INT,
	OrderDate DATE,
	TotalAmount DECIMAL(10, 2),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
	);

-- Insert sample data into the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(101, 1, '2024-01-15', 25.50),
(102, 1, '2024-02-20', 199.99),
(103, 2, '2024-01-10', 45.00),
(104, 3, '2024-03-01', 75.20),
(105, 4, '2024-02-28', 120.00),
(106, 5, '2024-03-15', 30.00),
(107, 6, '2024-01-22', 85.40),
(108, 7, '2024-02-18', 210.00),
(109, 8, '2024-03-05', 60.00),
(110, 9, '2024-01-29', 95.00),
(111, 10, '2024-02-10', 140.00),
(112, 10, '2024-03-22', 110.00);