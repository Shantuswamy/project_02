-- Insert data into Salesman Table
INSERT INTO Salesman (SalesmanId, SalesmanName, City, Commission) VALUES
(1, 'John Doe', 'New York', 15.50),
(2, 'Jane Smith', 'Los Angeles', 12.75),
(3, 'Michael Johnson', 'Chicago', 14.00);

-- Insert data into Customer Table
INSERT INTO Customer (CustomerId, CustomerName, City, SalesmanId) VALUES
(101, 'Alice Brown', 'New York', 1),
(102, 'David Wilson', 'Los Angeles', 2),
(103, 'Emma Davis', 'Chicago', 3);

-- Insert data into Orders Table
INSERT INTO Orders (OrderId, OrderDate, PurchaseAmount, CustomerId, SalesmanId) VALUES
(1001, '2024-03-01', 600.00, 101, 1),
(1002, '2024-03-05', 1200.50, 102, 2),
(1003, '2024-03-10', 450.75, 103, 3);
