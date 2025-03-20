-- Add primary key constraint to SalesmanId in Salesman table (Already defined in table creation)
ALTER TABLE Salesman ADD CONSTRAINT PK_Salesman PRIMARY KEY (SalesmanId);

-- Add default constraint for City column in Salesman table
ALTER TABLE Salesman ADD CONSTRAINT DF_City DEFAULT 'Unknown' FOR City;

-- Add foreign key constraint for SalesmanId in Customer table
ALTER TABLE Customer ADD CONSTRAINT FK_Customer_Salesman FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId);

-- Add NOT NULL constraint to CustomerName column in Customer table
ALTER TABLE Customer ALTER COLUMN CustomerName VARCHAR(100) NOT NULL;
