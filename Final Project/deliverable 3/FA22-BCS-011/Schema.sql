CREATE DATABASE FinalProject;
use FinalProject

CREATE TABLE Products
(
    ProductID INT,
    ProductName NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY (ProductID)
);


CREATE TABLE Types
(
    TypeID INT,
    TypeName NVARCHAR(100) NOT NULL,
    ProductID INT,
    CONSTRAINT PK_Types PRIMARY KEY (TypeID),
    CONSTRAINT FK_Types_Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    ON DELETE CASCADE
    -- Added DELETE CASCADE for cascading product deletion
);

CREATE TABLE Sizes
(
    SizeID INT,
    SizeNo INT NOT NULL,
    CONSTRAINT PK_Sizes PRIMARY KEY (SizeID)
);

CREATE TABLE TypeSize_details
(
    TypeSizeID INT,
    TypeID INT,
    SizeID INT,
    CONSTRAINT PK_TypeSize_details PRIMARY KEY (TypeSizeID),
    CONSTRAINT FK_TypeSize_details_Types FOREIGN KEY (TypeID) REFERENCES Types(TypeID)
    ON DELETE CASCADE,
    -- Added DELETE CASCADE for cascading type deletion
    CONSTRAINT FK_TypeSize_details_Sizes FOREIGN KEY (SizeID) REFERENCES Sizes(SizeID)
);

CREATE TABLE Suppliers
(
    SupplierID INT,
    SupplierName NVARCHAR(100) NOT NULL,
    SupplierPhone NVARCHAR(20) NOT NULL,
    SupplierEmail NVARCHAR(100) NOT NULL,
    Street NVARCHAR(255) NOT NULL,
    City NVARCHAR(100) NOT NULL,
    State NVARCHAR(100) NOT NULL,
    PostalCode NVARCHAR(20) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Suppliers PRIMARY KEY (SupplierID)
);

CREATE TABLE Customers
(
    CustomerID INT,
    CustomerName NVARCHAR(100) NOT NULL,
    CustomerPhone NVARCHAR(20) NOT NULL,
    CustomerEmail NVARCHAR(100) NOT NULL,
    Street NVARCHAR(255) NOT NULL,
    City NVARCHAR(100) NOT NULL,
    State NVARCHAR(100) NOT NULL,
    PostalCode NVARCHAR(20) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Customers PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders
(
    OrderNo INT,
    CustomerID INT,
    CONSTRAINT PK_Orders PRIMARY KEY (OrderNo),
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
    -- Added DELETE CASCADE for cascading customer deletion
);

CREATE TABLE OrderDetails (
    OrderDetailsID INT PRIMARY KEY,
    OrderNo INT,
    TypeSizeID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderNo) REFERENCES Orders(OrderNo),
    FOREIGN KEY (TypeSizeID) REFERENCES TypeSize_details(TypeSizeID)
);

CREATE TABLE Employees
(
    EmployeeID INT,
    EmployeeName NVARCHAR(100) NOT NULL,
    EmployeePhone NVARCHAR(20) NOT NULL,
    EmployeeEmail NVARCHAR(100) NOT NULL,
    Street NVARCHAR(255) NOT NULL,
    City NVARCHAR(100) NOT NULL,
    State NVARCHAR(100) NOT NULL,
    PostalCode NVARCHAR(20) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Employees PRIMARY KEY (EmployeeID)
);

CREATE TABLE Sales
(
    SaleNo INT,
    EmployeeID INT,
    CONSTRAINT PK_Sales PRIMARY KEY (SaleNo),
    CONSTRAINT FK_Sales_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
    ON DELETE SET NULL
    -- Consider SET NULL instead of CASCADE here
);

CREATE TABLE SalesDetails
(
    SaleDetailsID INT,
    SaleNo INT,
    OrderNo INT,
    Quantity INT NOT NULL,
    TypeSizeID INT,
    SaleDate DATE NOT NULL,
    CONSTRAINT PK_SalesDetails PRIMARY KEY (SaleDetailsID),
    CONSTRAINT FK_SalesDetails_Sales FOREIGN KEY (SaleNo) REFERENCES Sales(SaleNo),
    CONSTRAINT FK_SalesDetails_Orders FOREIGN KEY (OrderNo) REFERENCES Orders(OrderNo),
    CONSTRAINT FK_SalesDetails_TypeSize_details FOREIGN KEY (TypeSizeID) REFERENCES TypeSize_details(TypeSizeID)
);

CREATE TABLE Purchases
(
    PurchaseID INT,
    PurchaseNo INT NOT NULL,
    CONSTRAINT PK_Purchases PRIMARY KEY (PurchaseID)
);

CREATE TABLE Purchasing_Details (
    PurchasingID INT,
    PurchaseID INT,
    SupplierID INT,
    TypeSizeID INT,
    Quantity INT NOT NULL,
    PurchasingDate DATE NOT NULL,
    CONSTRAINT PK_Purchasing_Details PRIMARY KEY (PurchasingID),
    FOREIGN KEY (PurchaseID) REFERENCES Purchases(PurchaseID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (TypeSizeID) REFERENCES TypeSize_details(TypeSizeID)
);

CREATE TABLE PricesDetails
(
    PriceID INT IDENTITY(1,1) PRIMARY KEY,
    TypeSizeID INT,
    PurchasePrice DECIMAL(10, 2) NOT NULL CHECK (PurchasePrice >= 0),
    SellingPrice DECIMAL(10, 2) NOT NULL CHECK (SellingPrice >= 0),
    StartDate DATE NOT NULL,
    EndDate DATE,
    FOREIGN KEY (TypeSizeID) REFERENCES TypeSize_details(TypeSizeID) ON DELETE CASCADE,
    CONSTRAINT chk_prices CHECK (PurchasePrice <= SellingPrice)
);

SELECT * FROM Products
SELECT * FROM Types
SELECT * FROM TypeSize_details
SELECT * FROM Purchases
SELECT * FROM Sales
SELECT * FROM Purchasing_Details
SELECT * FROM SalesDetails
use FinalProject