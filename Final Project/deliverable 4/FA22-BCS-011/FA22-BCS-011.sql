use FinalProject

-- STORE PROCEDURE FOR ORDERDETAIL TABLE
-- INSERT ORDERDETAIL

-- ALREADY CREATED IN THE SCHEMA GENERATION FILE

-- UPDATE ORDERDETAIL
GO
CREATE PROCEDURE UpdateOrderDetails
    @OrderDetailsID INT,
    @NewQuantity INT
AS
BEGIN
    UPDATE OrderDetails
    SET Quantity = @NewQuantity
    WHERE OrderDetailsID = @OrderDetailsID;
END;

-- DELETE ORDERDETAIL

GO
CREATE PROCEDURE DeleteOrderDetails
    @OrderDetailsID INT
AS
BEGIN
    DELETE FROM OrderDetails
    WHERE OrderDetailsID = @OrderDetailsID;
END;


--STORE PROCEDURES FOR SALESDETAILS TABLE

-- INSERT SALESDETAILS
-- ALREADY CREATED IN THE SCHEMA GENERATION FILE

-- UPDATE SALESDETAILS
GO
CREATE PROCEDURE UpdateSalesDetails
    @SaleDetailsID INT,
    @NewQuantity INT,
    @NewSaleDate DATE
AS
BEGIN
    UPDATE SalesDetails
    SET Quantity = @NewQuantity, SaleDate = @NewSaleDate
    WHERE SaleDetailsID = @SaleDetailsID;
END;

-- DELETE SALESDETAILS
GO
CREATE PROCEDURE DeleteSalesDetails
    @SaleDetailsID INT
AS
BEGIN
    DELETE FROM SalesDetails
    WHERE SaleDetailsID = @SaleDetailsID;
END;


-- STORE PROCEDURE FOR PURCHASE TABLE

-- INSERT PURCHASE

-- ALREADY CREATED IN THE SCHEMA GENERATION FILE

-- UPDATE PURCHASE

GO
CREATE PROCEDURE UpdatePurchasingDetails
    @PurchasingID INT,
    @NewQuantity INT,
    @NewPurchasingDate DATE
AS
BEGIN
    UPDATE Purchasing_Details
    SET Quantity = @NewQuantity, PurchasingDate = @NewPurchasingDate
    WHERE PurchasingID = @PurchasingID;
END;

-- DELETE PURCHASE

GO
CREATE PROCEDURE DeletePurchasingDetails
    @PurchasingID INT
AS
BEGIN
    DELETE FROM Purchasing_Details
    WHERE PurchasingID = @PurchasingID;
END;


-- OrderDetail History Table and Trigger

CREATE TABLE OrderDetailHistory
(
    OrderDetailHistoryID INT IDENTITY(1, 1) PRIMARY KEY,
    OrderDetailID INT,
    -- Foreign key to OrderDetails(OrderDetailsID)
    OrderNo INT,
    -- Redundant for easy referencing (from OrderDetails)
    TypeSizeID INT,
    -- Redundant for easy referencing (from OrderDetails)
    Quantity INT NOT NULL,
    ChangeType NVARCHAR(10) NOT NULL CHECK (ChangeType IN ('Update', 'Delete')),
    ChangeDate DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (OrderDetailID) REFERENCES OrderDetails(OrderDetailsID)
);


SELECT *
FROM OrderDetails

UPDATE OrderDetails
SET Quantity = 15
WHERE OrderDetailsID = 1;


-- Trigger for OrderDetails
GO
CREATE TRIGGER OrderDetailHistoryTrigger
ON OrderDetails
AFTER UPDATE, DELETE
AS
BEGIN
    DECLARE @ChangeType NVARCHAR(10);

    -- Handle DELETE
    IF EXISTS (SELECT *
        FROM DELETED) AND NOT EXISTS (SELECT *
        FROM INSERTED)
    BEGIN
        SET @ChangeType = 'Delete';
        INSERT INTO OrderDetailHistory
            (OrderDetailID, OrderNo, TypeSizeID, Quantity, ChangeType, ChangeDate)
        SELECT OrderDetailsID, OrderNo, TypeSizeID, Quantity, @ChangeType, GETDATE()
        FROM DELETED;
    END

    -- Handle UPDATE (since UPDATE fires both DELETE and INSERT)
    IF EXISTS (SELECT *
        FROM DELETED) AND EXISTS (SELECT *
        FROM INSERTED)
    BEGIN
        SET @ChangeType = 'Update';
        INSERT INTO OrderDetailHistory
            (OrderDetailID, OrderNo, TypeSizeID, Quantity, ChangeType, ChangeDate)
        SELECT OrderDetailsID, OrderNo, TypeSizeID, Quantity, @ChangeType, GETDATE()
        FROM DELETED;
    END
END;

SELECT *
FROM OrderDetailHistory


-- SalesDetails History Table and Trigger


CREATE TABLE SalesDetailsHistory
(
    SalesDetailsHistoryID INT IDENTITY(1, 1) PRIMARY KEY,
    SaleDetailsID INT,
    -- Foreign key to SalesDetails(SaleDetailsID)
    SaleNo INT,
    -- Redundant for easy referencing (from SalesDetails)
    OrderNo INT,
    -- Redundant for easy referencing (from SalesDetails)
    Quantity INT NOT NULL,
    TypeSizeID INT,
    -- Redundant for easy referencing (from SalesDetails)
    SaleDate DATE NOT NULL,
    ChangeType NVARCHAR(10) NOT NULL CHECK (ChangeType IN ('Update', 'Delete')),
    ChangeDate DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (SaleDetailsID) REFERENCES SalesDetails(SaleDetailsID)
);


GO
CREATE TRIGGER SalesDetailsHistoryTrigger
ON SalesDetails
AFTER UPDATE, DELETE
AS
BEGIN
    DECLARE @ChangeType NVARCHAR(10);

    -- Handle DELETE
    IF EXISTS (SELECT *
        FROM DELETED) AND NOT EXISTS (SELECT *
        FROM INSERTED)
    BEGIN
        SET @ChangeType = 'Delete';
        INSERT INTO SalesDetailsHistory
            (SaleDetailsID, SaleNo, OrderNo, Quantity, TypeSizeID, SaleDate, ChangeType, ChangeDate)
        SELECT SaleDetailsID, SaleNo, OrderNo, Quantity, TypeSizeID, SaleDate, @ChangeType, GETDATE()
        FROM DELETED;
    END

    -- Handle UPDATE (since UPDATE fires both DELETE and INSERT)
    IF EXISTS (SELECT *
        FROM DELETED) AND EXISTS (SELECT *
        FROM INSERTED)
    BEGIN
        SET @ChangeType = 'Update';
        INSERT INTO SalesDetailsHistory
            (SaleDetailsID, SaleNo, OrderNo, Quantity, TypeSizeID, SaleDate, ChangeType, ChangeDate)
        SELECT SaleDetailsID, SaleNo, OrderNo, Quantity, TypeSizeID, SaleDate, @ChangeType, GETDATE()
        FROM DELETED;
    END
END;


-- Purchasing Details History Table and Trigger

CREATE TABLE Purchasing_DetailsHistory
(
    PurchasingDetailsHistoryID INT IDENTITY(1, 1) PRIMARY KEY,
    PurchasingID INT,
    -- Foreign key to Purchasing_Details(PurchasingID)
    PurchaseID INT,
    -- Redundant for easy referencing (from Purchasing_Details)
    SupplierID INT,
    -- Redundant for easy referencing (from Purchasing_Details)
    TypeSizeID INT,
    -- Redundant for easy referencing (from Purchasing_Details)
    Quantity INT NOT NULL,
    PurchasingDate DATE NOT NULL,
    ChangeType NVARCHAR(10) NOT NULL CHECK (ChangeType IN ('Update', 'Delete')),
    ChangeDate DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (PurchasingID) REFERENCES Purchasing_Details(PurchasingID)
);


GO
CREATE TRIGGER PurchasingDetailsHistoryTrigger
ON Purchasing_Details
AFTER UPDATE, DELETE
AS
BEGIN
    DECLARE @ChangeType NVARCHAR(10);

    -- Handle DELETE
    IF EXISTS (SELECT *
        FROM DELETED) AND NOT EXISTS (SELECT *
        FROM INSERTED)
    BEGIN
        SET @ChangeType = 'Delete';
        INSERT INTO Purchasing_DetailsHistory
            (PurchasingID, PurchaseID, SupplierID, TypeSizeID, Quantity, PurchasingDate, ChangeType, ChangeDate)
        SELECT PurchasingID, PurchaseID, SupplierID, TypeSizeID, Quantity, PurchasingDate, @ChangeType, GETDATE()
        FROM DELETED;
    END

    -- Handle UPDATE (since UPDATE fires both DELETE and INSERT)
    IF EXISTS (SELECT *
        FROM DELETED) AND EXISTS (SELECT *
        FROM INSERTED)
    BEGIN
        SET @ChangeType = 'Update';
        INSERT INTO Purchasing_DetailsHistory
            (PurchasingID, PurchaseID, SupplierID, TypeSizeID, Quantity, PurchasingDate, ChangeType, ChangeDate)
        SELECT PurchasingID, PurchaseID, SupplierID, TypeSizeID, Quantity, PurchasingDate, @ChangeType, GETDATE()
        FROM DELETED;
    END
END;


-- REPORTS

-- Report 1: Get all the products with their prices and profit margins
SELECT
    pd.TypeSizeID,
    t.TypeName,
    s.SizeNo,
    pd.PurchasePrice,
    pd.SellingPrice
FROM
    PricesDetails pd
    JOIN
    TypeSize_details tsd ON pd.TypeSizeID = tsd.TypeSizeID
    JOIN
    Types t ON tsd.TypeID = t.TypeID
    JOIN
    Sizes s ON tsd.SizeID = s.SizeID
WHERE
    pd.EndDate IS NULL;


-- Report 2: Get all the products with their total purchased and sold quantities
WITH
    LatestPrices
    AS
    (
        SELECT
            TypeSizeID,
            PurchasePrice,
            SellingPrice
        FROM
            PricesDetails
        WHERE
        EndDate IS NULL
    ),
    PurchasingTotals
    AS
    (
        SELECT
            pd.TypeSizeID,
            SUM(pd.Quantity) AS TotalPurchasedQuantity
        FROM
            Purchasing_Details pd
        GROUP BY
        pd.TypeSizeID
    ),
    SalesTotals
    AS
    (
        SELECT
            sd.TypeSizeID,
            SUM(sd.Quantity) AS TotalSoldQuantity
        FROM
            SalesDetails sd
        GROUP BY
        sd.TypeSizeID
    )
SELECT
    tsd.TypeSizeID,
    t.TypeName,
    s.SizeNo,
    lp.PurchasePrice,
    lp.SellingPrice,
    pt.TotalPurchasedQuantity,
    st.TotalSoldQuantity,
    (lp.SellingPrice - lp.PurchasePrice) AS ProfitMarginPerUnit,
    ((lp.SellingPrice - lp.PurchasePrice) * st.TotalSoldQuantity) AS TotalProfit
FROM
    TypeSize_details tsd
    JOIN
    Types t ON tsd.TypeID = t.TypeID
    JOIN
    Sizes s ON tsd.SizeID = s.SizeID
    JOIN
    LatestPrices lp ON tsd.TypeSizeID = lp.TypeSizeID
    LEFT JOIN
    PurchasingTotals pt ON tsd.TypeSizeID = pt.TypeSizeID
    LEFT JOIN
    SalesTotals st ON tsd.TypeSizeID = st.TypeSizeID;

SELECT *
from OrderDetails


-- STORE PROCEDURE FOR GETTING ORDER DETAILS WITH PRODUCT INFO
GO
CREATE PROCEDURE GetOrderDetailsWithProductInfo
AS
BEGIN
    SELECT
        o.OrderNo,
        c.CustomerName,
        p.ProductName,
        t.TypeName,
        ts.SizeNo,
        od.Quantity
    FROM Orders o
        INNER JOIN OrderDetails od ON o.OrderNo = od.OrderNo
        INNER JOIN TypeSize_details tsd ON od.TypeSizeID = tsd.TypeSizeID
        INNER JOIN Types t ON tsd.TypeID = t.TypeID
        INNER JOIN Products p ON t.ProductID = p.ProductID
        INNER JOIN Customers c ON o.CustomerID = c.CustomerID
        INNER JOIN Sizes ts ON tsd.SizeID = ts.SizeID
    ORDER BY o.OrderNo;
END;
GO

-- Execute the stored procedure
EXEC GetOrderDetailsWithProductInfo;


-- STORE PROCEDURE FOR GETTING SALES DETAILS WITH PRODUCT INFO

GO
CREATE PROCEDURE GetSalesDetailsWithEmployeeInfo
AS
BEGIN
    SELECT
        sd.SaleDetailsID,
        s.SaleNo,
        e.EmployeeName,
        o.OrderNo,
        c.CustomerName,
        sd.Quantity,
        ts.SizeNo,
        sd.SaleDate
    FROM SalesDetails sd
        INNER JOIN Sales s ON sd.SaleNo = s.SaleNo
        INNER JOIN Employees e ON s.EmployeeID = e.EmployeeID
        INNER JOIN Orders o ON sd.OrderNo = o.OrderNo
        INNER JOIN Customers c ON o.CustomerID = c.CustomerID
        INNER JOIN TypeSize_details tsd ON sd.TypeSizeID = tsd.TypeSizeID
        INNER JOIN Sizes ts ON tsd.SizeID = ts.SizeID
    ORDER BY sd.SaleDetailsID;
END;
GO

-- Execute the stored procedure
EXEC GetSalesDetailsWithEmployeeInfo;

-- STORE PROCEDURE FOR GETTING PURCHASING DETAILS WITH SUPPLIER INFO

GO
CREATE PROCEDURE GetPurchasingDetailsWithSupplierInfo
AS
BEGIN
    SELECT
        pd.PurchasingID,
        p.PurchaseNo,
        s.SupplierName,
        s.SupplierPhone,
        ts.SizeNo,
        pd.Quantity,
        pd.PurchasingDate
    FROM Purchasing_Details pd
        INNER JOIN Purchases p ON pd.PurchaseID = p.PurchaseID
        INNER JOIN Suppliers s ON pd.SupplierID = s.SupplierID
        INNER JOIN TypeSize_details tsd ON pd.TypeSizeID = tsd.TypeSizeID
        INNER JOIN Sizes ts ON tsd.SizeID = ts.SizeID
    ORDER BY pd.PurchasingID;
END;
GO

-- Execute the stored procedure
EXEC GetPurchasingDetailsWithSupplierInfo;




-- Complex Views

-- View 1: Get all the products with their total purchased and sold quantities



GO
CREATE VIEW Monthly_Sales_Trend_Report
AS
    SELECT
        YEAR(SD.SaleDate) AS SaleYear,
        MONTH(SD.SaleDate) AS SaleMonth,
        SUM(SD.Quantity * PD.SellingPrice) AS MonthlyRevenue
    FROM
        SalesDetails SD
        JOIN
        PricesDetails PD ON SD.TypeSizeID = PD.TypeSizeID
    GROUP BY
    YEAR(SD.SaleDate),
    MONTH(SD.SaleDate);
GO
SELECT *
from Monthly_Sales_Trend_Report

GO
CREATE VIEW Employee_Sales_Performance_Report
AS
    SELECT
        E.EmployeeID,
        E.EmployeeName,
        SUM(SD.Quantity * PD.SellingPrice) AS TotalSalesRevenue
    FROM
        Employees E
        JOIN
        Sales S ON E.EmployeeID = S.EmployeeID
        JOIN
        SalesDetails SD ON S.SaleNo = SD.SaleNo
        JOIN
        PricesDetails PD ON SD.TypeSizeID = PD.TypeSizeID
    GROUP BY
    E.EmployeeID,
    E.EmployeeName;

GO

SELECT *
FROM Employee_Sales_Performance_Report






--Denormalized table 

use FinalProject

drop table DenormalizedReport


CREATE TABLE DenormalizedReport
(
    OrderNo INT,
    CustomerID INT,
    CustomerName NVARCHAR(100),
    CustomerPhone NVARCHAR(20),
    CustomerEmail NVARCHAR(100),
    CustomerStreet NVARCHAR(255),
    CustomerCity NVARCHAR(100),
    CustomerState NVARCHAR(100),
    CustomerPostalCode NVARCHAR(20),
    CustomerCountry NVARCHAR(100),
    ProductID INT,
    ProductName NVARCHAR(100),
    TypeID INT,
    TypeName NVARCHAR(100),
    SizeID INT,
    SizeNo INT,
    SupplierID INT,
    SupplierName NVARCHAR(100),
    SupplierPhone NVARCHAR(20),
    SupplierEmail NVARCHAR(100),
    SupplierStreet NVARCHAR(255),
    SupplierCity NVARCHAR(100),
    SupplierState NVARCHAR(100),
    SupplierPostalCode NVARCHAR(20),
    SupplierCountry NVARCHAR(100),
    EmployeeID INT,
    EmployeeName NVARCHAR(100),
    EmployeePhone NVARCHAR(20),
    EmployeeEmail NVARCHAR(100),
    EmployeeStreet NVARCHAR(255),
    EmployeeCity NVARCHAR(100),
    EmployeeState NVARCHAR(100),
    EmployeePostalCode NVARCHAR(20),
    EmployeeCountry NVARCHAR(100),
    Quantity INT,
    SaleDate DATE,
    PurchaseDate DATE,
    PurchasePrice DECIMAL(10, 2),
    SellingPrice DECIMAL(10, 2)
);

INSERT INTO DenormalizedReport
    (
    OrderNo,
    CustomerID,
    CustomerName,
    CustomerPhone,
    CustomerEmail,
    CustomerStreet,
    CustomerCity,
    CustomerState,
    CustomerPostalCode,
    CustomerCountry,
    ProductID,
    ProductName,
    TypeID,
    TypeName,
    SizeID,
    SizeNo,
    SupplierID,
    SupplierName,
    SupplierPhone,
    SupplierEmail,
    SupplierStreet,
    SupplierCity,
    SupplierState,
    SupplierPostalCode,
    SupplierCountry,
    EmployeeID,
    EmployeeName,
    EmployeePhone,
    EmployeeEmail,
    EmployeeStreet,
    EmployeeCity,
    EmployeeState,
    EmployeePostalCode,
    EmployeeCountry,
    Quantity,
    SaleDate,
    PurchaseDate,
    PurchasePrice,
    SellingPrice
    )
SELECT
    o.OrderNo,
    c.CustomerID,
    c.CustomerName,
    c.CustomerPhone,
    c.CustomerEmail,
    c.Street AS CustomerStreet,
    c.City AS CustomerCity,
    c.State AS CustomerState,
    c.PostalCode AS CustomerPostalCode,
    c.Country AS CustomerCountry,
    p.ProductID,
    p.ProductName,
    t.TypeID,
    t.TypeName,
    s.SizeID,
    s.SizeNo,
    sp.SupplierID,
    sp.SupplierName,
    sp.SupplierPhone,
    sp.SupplierEmail,
    sp.Street AS SupplierStreet,
    sp.City AS SupplierCity,
    sp.State AS SupplierState,
    sp.PostalCode AS SupplierPostalCode,
    sp.Country AS SupplierCountry,
    e.EmployeeID,
    e.EmployeeName,
    e.EmployeePhone,
    e.EmployeeEmail,
    e.Street AS EmployeeStreet,
    e.City AS EmployeeCity,
    e.State AS EmployeeState,
    e.PostalCode AS EmployeePostalCode,
    e.Country AS EmployeeCountry,
    od.Quantity,
    sd.SaleDate,
    pd.PurchasingDate AS PurchaseDate,
    pr.PurchasePrice,
    pr.SellingPrice
FROM
    Orders o
    INNER JOIN Customers c ON o.CustomerID = c.CustomerID
    INNER JOIN OrderDetails od ON o.OrderNo = od.OrderNo
    INNER JOIN TypeSize_details tsd ON od.TypeSizeID = tsd.TypeSizeID
    INNER JOIN Types t ON tsd.TypeID = t.TypeID
    INNER JOIN Products p ON t.ProductID = p.ProductID
    INNER JOIN Sizes s ON tsd.SizeID = s.SizeID
    LEFT JOIN SalesDetails sd ON od.OrderDetailsID = sd.OrderNo
    LEFT JOIN Sales s2 ON sd.SaleNo = s2.SaleNo
    LEFT JOIN Employees e ON s2.EmployeeID = e.EmployeeID
    LEFT JOIN Purchasing_Details pd ON tsd.TypeSizeID = pd.TypeSizeID
    LEFT JOIN Suppliers sp ON pd.SupplierID = sp.SupplierID
    LEFT JOIN PricesDetails pr ON tsd.TypeSizeID = pr.TypeSizeID;


SELECT *
FROM DenormalizedReport;

-- Total Sales by Month and Year
SELECT
    YEAR(SaleDate) AS SaleYear,
    MONTH(SaleDate) AS SaleMonth,
    SUM(Quantity) AS TotalQuantitySold,
    SUM(Quantity * SellingPrice) AS TotalSalesAmount
FROM
    DenormalizedReport
GROUP BY 
    YEAR(SaleDate),
    MONTH(SaleDate)
ORDER BY 
    SaleYear, SaleMonth;
