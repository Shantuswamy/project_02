-- 1. Insert a new record in Orders table
INSERT INTO Orders (OrderId, OrderDate, PurchaseAmount, CustomerId, SalesmanId)
VALUES (1004, '2024-03-15', 750.00, 102, 2);

-- 2. Fetch customers whose name ends with 'N' and have a purchase amount greater than 500
SELECT CustomerName, PurchaseAmount FROM Customer
JOIN Orders ON Customer.CustomerId = Orders.CustomerId
WHERE CustomerName LIKE '%N' AND PurchaseAmount > 500;

-- 3. Retrieve unique SalesmanId values from two tables using SET operators
SELECT SalesmanId FROM Salesman
UNION
SELECT SalesmanId FROM Customer;

-- Retrieve SalesmanId with duplicates
SELECT SalesmanId FROM Salesman
UNION ALL
SELECT SalesmanId FROM Customer;

-- 4. Display OrderDate, Salesman Name, Customer Name, Commission, City for purchases between 500 and 1500
SELECT Orders.OrderDate, Salesman.SalesmanName, Customer.CustomerName, Salesman.Commission, Salesman.City
FROM Orders
JOIN Salesman ON Orders.SalesmanId = Salesman.SalesmanId
JOIN Customer ON Orders.CustomerId = Customer.CustomerId
WHERE Orders.PurchaseAmount BETWEEN 500 AND 1500;


--5. Fetch all results from Salesman and Orders table using RIGHT JOIN
SELECT Salesman.SalesmanId, Salesman.SalesmanName, Orders.OrderId, Orders.OrderDate, Orders.PurchaseAmount
FROM Salesman
RIGHT JOIN Orders ON Salesman.SalesmanId = Orders.SalesmanId;

