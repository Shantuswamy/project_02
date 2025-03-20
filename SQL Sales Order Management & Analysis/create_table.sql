-- Create Salesman Table
CREATE TABLE Salesman (
    SalesmanId INT PRIMARY KEY,
    SalesmanName VARCHAR(100),
    City VARCHAR(100),
    Commission DECIMAL(5,2)
);

-- Create Customer Table
CREATE TABLE Customer (
    CustomerId INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    City VARCHAR(100),
    SalesmanId INT,
    FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    OrderDate DATE,
    PurchaseAmount DECIMAL(10,2),
    CustomerId INT,
    SalesmanId INT,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId)
);
