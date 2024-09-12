CREATE DATABASE FinalProject;
use FinalProject

--CLASSIFYING ENTITIES

-- Create the Products table
CREATE TABLE Products
(
    ProductID INT,
    ProductName NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY (ProductID)
);

GO
-- Create the stored procedure for inserting into the Products table
CREATE PROCEDURE InsertProduct
    @ProductID INT,
    @ProductName NVARCHAR(100)
AS
BEGIN
    INSERT INTO Products
        (ProductID, ProductName)
    VALUES
        (@ProductID, @ProductName);
END;


EXEC InsertProduct @ProductID = 1, @ProductName = 'Frame';
EXEC InsertProduct @ProductID = 2, @ProductName = 'Fork';
EXEC InsertProduct @ProductID = 3, @ProductName = 'Headset';
EXEC InsertProduct @ProductID = 4, @ProductName = 'Handlebar';
EXEC InsertProduct @ProductID = 5, @ProductName = 'Stem';
EXEC InsertProduct @ProductID = 6, @ProductName = 'Grips';
EXEC InsertProduct @ProductID = 7, @ProductName = 'Bar Ends';
EXEC InsertProduct @ProductID = 8, @ProductName = 'Brake Levers';
EXEC InsertProduct @ProductID = 9, @ProductName = 'Brakes (Disc)';
EXEC InsertProduct @ProductID = 10, @ProductName = 'Brakes (Rim)';
EXEC InsertProduct @ProductID = 11, @ProductName = 'Brake Pads';
EXEC InsertProduct @ProductID = 12, @ProductName = 'Shifters';
EXEC InsertProduct @ProductID = 13, @ProductName = 'Front Derailleur';
EXEC InsertProduct @ProductID = 14, @ProductName = 'Rear Derailleur';
EXEC InsertProduct @ProductID = 15, @ProductName = 'Chain';
EXEC InsertProduct @ProductID = 16, @ProductName = 'Chainrings';
EXEC InsertProduct @ProductID = 17, @ProductName = 'Crankset';
EXEC InsertProduct @ProductID = 18, @ProductName = 'Bottom Bracket';
EXEC InsertProduct @ProductID = 19, @ProductName = 'Pedals';
EXEC InsertProduct @ProductID = 20, @ProductName = 'Cleats';
EXEC InsertProduct @ProductID = 21, @ProductName = 'Cassette';
EXEC InsertProduct @ProductID = 22, @ProductName = 'Freewheel';
EXEC InsertProduct @ProductID = 23, @ProductName = 'Rear Hub';
EXEC InsertProduct @ProductID = 24, @ProductName = 'Front Hub';
EXEC InsertProduct @ProductID = 25, @ProductName = 'Spokes';
EXEC InsertProduct @ProductID = 26, @ProductName = 'Nipples';
EXEC InsertProduct @ProductID = 27, @ProductName = 'Rims';
EXEC InsertProduct @ProductID = 28, @ProductName = 'Tires';
EXEC InsertProduct @ProductID = 29, @ProductName = 'Tubes';
EXEC InsertProduct @ProductID = 30, @ProductName = 'Valve Stems';
EXEC InsertProduct @ProductID = 31, @ProductName = 'Rim Tape';
EXEC InsertProduct @ProductID = 32, @ProductName = 'Seatpost';
EXEC InsertProduct @ProductID = 33, @ProductName = 'Saddle';
EXEC InsertProduct @ProductID = 34, @ProductName = 'Seatpost Clamp';
EXEC InsertProduct @ProductID = 35, @ProductName = 'Kickstand';
EXEC InsertProduct @ProductID = 36, @ProductName = 'Fenders';
EXEC InsertProduct @ProductID = 37, @ProductName = 'Chain Guard';
EXEC InsertProduct @ProductID = 38, @ProductName = 'Chainstay Protector';
EXEC InsertProduct @ProductID = 39, @ProductName = 'Rear Rack';
EXEC InsertProduct @ProductID = 40, @ProductName = 'Front Rack';
EXEC InsertProduct @ProductID = 41, @ProductName = 'Water Bottle Cage';
EXEC InsertProduct @ProductID = 42, @ProductName = 'Lights (Front)';
EXEC InsertProduct @ProductID = 43, @ProductName = 'Lights (Rear)';
EXEC InsertProduct @ProductID = 44, @ProductName = 'Reflectors';
EXEC InsertProduct @ProductID = 45, @ProductName = 'Bell';
EXEC InsertProduct @ProductID = 46, @ProductName = 'Speedometer';
EXEC InsertProduct @ProductID = 47, @ProductName = 'Mudguards';
EXEC InsertProduct @ProductID = 48, @ProductName = 'Wheel Skewers';
EXEC InsertProduct @ProductID = 49, @ProductName = 'Derailleur Hanger';
EXEC InsertProduct @ProductID = 50, @ProductName = 'Handlebar Tape';

SELECT *
FROM Products

-- Create the Types table
CREATE TABLE Types
(
    TypeID INT,
    TypeName NVARCHAR(100) NOT NULL,
    ProductID INT,
    CONSTRAINT PK_Types PRIMARY KEY (TypeID),
    CONSTRAINT FK_Types_Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


GO
-- Create the stored procedure for inserting into the Types table
CREATE PROCEDURE InsertType
    @TypeID INT,
    @TypeName NVARCHAR(100),
    @ProductID INT
AS
BEGIN
    INSERT INTO Types
        (TypeID, TypeName, ProductID)
    VALUES
        (@TypeID, @TypeName, @ProductID);
END;

EXEC InsertType @TypeID = 1, @TypeName = 'Carbon Fiber', @ProductID = 1;
EXEC InsertType @TypeID = 2, @TypeName = 'Steel', @ProductID = 1;
EXEC InsertType @TypeID = 3, @TypeName = 'Suspension', @ProductID = 2;
EXEC InsertType @TypeID = 4, @TypeName = 'Rigid', @ProductID = 2;
EXEC InsertType @TypeID = 5, @TypeName = 'Threaded', @ProductID = 3;
EXEC InsertType @TypeID = 6, @TypeName = 'Threadless', @ProductID = 3;
EXEC InsertType @TypeID = 7, @TypeName = 'Drop Bar', @ProductID = 4;
EXEC InsertType @TypeID = 8, @TypeName = 'Flat Bar', @ProductID = 4;
EXEC InsertType @TypeID = 9, @TypeName = 'Threaded', @ProductID = 5;
EXEC InsertType @TypeID = 10, @TypeName = 'Threadless', @ProductID = 5;
EXEC InsertType @TypeID = 11, @TypeName = 'Ergonomic', @ProductID = 6;
EXEC InsertType @TypeID = 12, @TypeName = 'Lock-On', @ProductID = 6;
EXEC InsertType @TypeID = 13, @TypeName = 'Rubber', @ProductID = 7;
EXEC InsertType @TypeID = 14, @TypeName = 'Aluminum', @ProductID = 7;
EXEC InsertType @TypeID = 15, @TypeName = 'Hydraulic', @ProductID = 8;
EXEC InsertType @TypeID = 16, @TypeName = 'Mechanical', @ProductID = 8;
EXEC InsertType @TypeID = 17, @TypeName = 'Mechanical', @ProductID = 9;
EXEC InsertType @TypeID = 18, @TypeName = 'Hydraulic', @ProductID = 9;
EXEC InsertType @TypeID = 19, @TypeName = 'Caliper', @ProductID = 10;
EXEC InsertType @TypeID = 20, @TypeName = 'V-Brake', @ProductID = 10;
EXEC InsertType @TypeID = 21, @TypeName = 'Organic', @ProductID = 11;
EXEC InsertType @TypeID = 22, @TypeName = 'Resin', @ProductID = 11;
EXEC InsertType @TypeID = 23, @TypeName = 'Bar-End', @ProductID = 12;
EXEC InsertType @TypeID = 24, @TypeName = 'Integrated', @ProductID = 12;
EXEC InsertType @TypeID = 25, @TypeName = 'Braze-On', @ProductID = 13;
EXEC InsertType @TypeID = 26, @TypeName = 'Clamp-On', @ProductID = 13;
EXEC InsertType @TypeID = 27, @TypeName = 'Short Cage', @ProductID = 14;
EXEC InsertType @TypeID = 28, @TypeName = 'Medium Cage', @ProductID = 14;
EXEC InsertType @TypeID = 29, @TypeName = 'Single-Speed', @ProductID = 15;
EXEC InsertType @TypeID = 30, @TypeName = '8-Speed', @ProductID = 15;
EXEC InsertType @TypeID = 31, @TypeName = 'Round', @ProductID = 16;
EXEC InsertType @TypeID = 32, @TypeName = 'Oval', @ProductID = 16;
EXEC InsertType @TypeID = 33, @TypeName = 'Double', @ProductID = 17;
EXEC InsertType @TypeID = 34, @TypeName = 'Single', @ProductID = 17;
EXEC InsertType @TypeID = 35, @TypeName = 'Press Fit', @ProductID = 18;
EXEC InsertType @TypeID = 36, @TypeName = 'Threaded', @ProductID = 18;
EXEC InsertType @TypeID = 37, @TypeName = 'Platform', @ProductID = 19;
EXEC InsertType @TypeID = 38, @TypeName = 'Flat', @ProductID = 19;
EXEC InsertType @TypeID = 39, @TypeName = '2-Hole', @ProductID = 20;
EXEC InsertType @TypeID = 40, @TypeName = '3-Hole', @ProductID = 20;
EXEC InsertType @TypeID = 41, @TypeName = '9-Speed', @ProductID = 21;
EXEC InsertType @TypeID = 42, @TypeName = '8-Speed', @ProductID = 21;
EXEC InsertType @TypeID = 43, @TypeName = 'Unthreaded', @ProductID = 22;
EXEC InsertType @TypeID = 44, @TypeName = 'Threaded', @ProductID = 22;
EXEC InsertType @TypeID = 45, @TypeName = 'Thru Axle', @ProductID = 23;
EXEC InsertType @TypeID = 46, @TypeName = 'Quick Release', @ProductID = 23;
EXEC InsertType @TypeID = 47, @TypeName = 'Quick Release', @ProductID = 24;
EXEC InsertType @TypeID = 48, @TypeName = 'Thru Axle', @ProductID = 24;
EXEC InsertType @TypeID = 49, @TypeName = 'J-Bend', @ProductID = 25;
EXEC InsertType @TypeID = 50, @TypeName = 'Straight Pull', @ProductID = 25;
EXEC InsertType @TypeID = 51, @TypeName = 'Brass', @ProductID = 26;
EXEC InsertType @TypeID = 52, @TypeName = 'Aluminum', @ProductID = 26;
EXEC InsertType @TypeID = 53, @TypeName = 'Tubular', @ProductID = 27;
EXEC InsertType @TypeID = 54, @TypeName = 'Clincher', @ProductID = 27;
EXEC InsertType @TypeID = 55, @TypeName = 'Clincher', @ProductID = 28;
EXEC InsertType @TypeID = 56, @TypeName = 'Tubular', @ProductID = 28;
EXEC InsertType @TypeID = 57, @TypeName = 'Schrader Valve', @ProductID = 29;
EXEC InsertType @TypeID = 58, @TypeName = 'Presta Valve', @ProductID = 29;
EXEC InsertType @TypeID = 59, @TypeName = 'Medium', @ProductID = 30;
EXEC InsertType @TypeID = 60, @TypeName = 'Short', @ProductID = 30;
EXEC InsertType @TypeID = 61, @TypeName = 'Rubber', @ProductID = 31;
EXEC InsertType @TypeID = 62, @TypeName = 'Cloth', @ProductID = 31;
EXEC InsertType @TypeID = 63, @TypeName = 'Fixed', @ProductID = 32;
EXEC InsertType @TypeID = 64, @TypeName = 'Suspension', @ProductID = 32;
EXEC InsertType @TypeID = 65, @TypeName = 'Racing Saddles', @ProductID = 33;
EXEC InsertType @TypeID = 66, @TypeName = 'Endurance Saddles', @ProductID = 33;
EXEC InsertType @TypeID = 67, @TypeName = 'Quick Release', @ProductID = 34;
EXEC InsertType @TypeID = 68, @TypeName = 'Bolt-On', @ProductID = 34;
EXEC InsertType @TypeID = 69, @TypeName = 'Double', @ProductID = 35;
EXEC InsertType @TypeID = 70, @TypeName = 'Single', @ProductID = 35;
EXEC InsertType @TypeID = 71, @TypeName = 'Clip-On', @ProductID = 36;
EXEC InsertType @TypeID = 72, @TypeName = 'Full', @ProductID = 36;
EXEC InsertType @TypeID = 73, @TypeName = 'Plastic', @ProductID = 37;
EXEC InsertType @TypeID = 74, @TypeName = 'Metal', @ProductID = 37;
EXEC InsertType @TypeID = 75, @TypeName = 'Neoprene', @ProductID = 38;
EXEC InsertType @TypeID = 76, @TypeName = 'Silicone', @ProductID = 38;
EXEC InsertType @TypeID = 77, @TypeName = 'Rear', @ProductID = 39;
EXEC InsertType @TypeID = 78, @TypeName = 'Front', @ProductID = 39;
EXEC InsertType @TypeID = 79, @TypeName = 'Front', @ProductID = 40;
EXEC InsertType @TypeID = 80, @TypeName = 'Lowrider', @ProductID = 40;
EXEC InsertType @TypeID = 81, @TypeName = 'Aluminum', @ProductID = 41;
EXEC InsertType @TypeID = 82, @TypeName = 'Plastic', @ProductID = 41;
EXEC InsertType @TypeID = 83, @TypeName = 'Halogen', @ProductID = 42;
EXEC InsertType @TypeID = 84, @TypeName = 'LED', @ProductID = 42;
EXEC InsertType @TypeID = 85, @TypeName = 'LED', @ProductID = 43;
EXEC InsertType @TypeID = 86, @TypeName = 'Halogen', @ProductID = 43;
EXEC InsertType @TypeID = 87, @TypeName = 'Rear', @ProductID = 44;
EXEC InsertType @TypeID = 88, @TypeName = 'Front', @ProductID = 44;
EXEC InsertType @TypeID = 89, @TypeName = 'Classic', @ProductID = 45;
EXEC InsertType @TypeID = 90, @TypeName = 'Electronic', @ProductID = 45;
EXEC InsertType @TypeID = 91, @TypeName = 'Wireless', @ProductID = 46;
EXEC InsertType @TypeID = 92, @TypeName = 'Wired', @ProductID = 46;
EXEC InsertType @TypeID = 93, @TypeName = 'Full', @ProductID = 47;
EXEC InsertType @TypeID = 94, @TypeName = 'Clip-On', @ProductID = 47;
EXEC InsertType @TypeID = 95, @TypeName = 'Thru Axle', @ProductID = 48;
EXEC InsertType @TypeID = 96, @TypeName = 'Quick Release', @ProductID = 48;
EXEC InsertType @TypeID = 97, @TypeName = 'Replaceable', @ProductID = 49;
EXEC InsertType @TypeID = 98, @TypeName = 'Direct Mount', @ProductID = 49;
EXEC InsertType @TypeID = 99, @TypeName = 'Foam', @ProductID = 50;
EXEC InsertType @TypeID = 100, @TypeName = 'Cork', @ProductID = 50;

SELECT *
FROM Types

-- Create the Sizes table
CREATE TABLE Sizes
(
    SizeID INT,
    SizeNo INT NOT NULL,
    CONSTRAINT PK_Sizes PRIMARY KEY (SizeID)
);

GO
CREATE PROCEDURE InsertSize
    @SizeID INT,
    @SizeNo INT
AS
BEGIN
    INSERT INTO Sizes
        (SizeID, SizeNo)
    VALUES
        (@SizeID, @SizeNo);
END;


EXEC InsertSize @SizeID = 1, @SizeNo = 16;
EXEC InsertSize @SizeID = 2, @SizeNo = 20;
EXEC InsertSize @SizeID = 3, @SizeNo = 24;
EXEC InsertSize @SizeID = 4, @SizeNo = 26;
EXEC InsertSize @SizeID = 5, @SizeNo = 28;
EXEC InsertSize @SizeID = 6, @SizeNo = 29;


select *
from Sizes


--COMPONENT Entities
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

GO
CREATE PROCEDURE InsertSupplier
    @SupplierID INT,
    @SupplierName NVARCHAR(100),
    @SupplierPhone NVARCHAR(20),
    @SupplierEmail NVARCHAR(100),
    @Street NVARCHAR(255),
    @City NVARCHAR(100),
    @State NVARCHAR(100),
    @PostalCode NVARCHAR(20),
    @Country NVARCHAR(100)
AS
BEGIN
    INSERT INTO Suppliers
        (SupplierID, SupplierName, SupplierPhone, SupplierEmail, Street, City, State, PostalCode, Country)
    VALUES
        (@SupplierID, @SupplierName, @SupplierPhone, @SupplierEmail, @Street, @City, @State, @PostalCode, @Country);
END;

EXEC InsertSupplier @SupplierID = 1, @SupplierName = 'Zeeshan', @SupplierPhone = '03016419080', @SupplierEmail = 'zeeshan@gmail.com', @Street = '717 Fifth Ave', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '25179', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 2, @SupplierName = 'Saad', @SupplierPhone = '03635775762', @SupplierEmail = 'saad@gmail.com', @Street = '891 Main St', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '71600', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 3, @SupplierName = 'Rafia', @SupplierPhone = '03771779244', @SupplierEmail = 'rafia@gmail.com', @Street = '497 Fifth Ave', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '69410', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 4, @SupplierName = 'Majid', @SupplierPhone = '03576674026', @SupplierEmail = 'majid@gmail.com', @Street = '640 Fifth Ave', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '61543', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 5, @SupplierName = 'Saima', @SupplierPhone = '03351045962', @SupplierEmail = 'saima@gmail.com', @Street = '606 Third St', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '54059', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 6, @SupplierName = 'Kashif', @SupplierPhone = '03632906205', @SupplierEmail = 'kashif@gmail.com', @Street = '972 Second St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '20741', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 7, @SupplierName = 'Lubna', @SupplierPhone = '03116051307', @SupplierEmail = 'lubna@gmail.com', @Street = '680 Third St', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '72870', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 8, @SupplierName = 'Ahmed', @SupplierPhone = '03387149580', @SupplierEmail = 'ahmed@gmail.com', @Street = '618 Third St', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '46956', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 9, @SupplierName = 'Salman', @SupplierPhone = '03066847353', @SupplierEmail = 'salman@gmail.com', @Street = '743 Park Ave', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '99848', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 10, @SupplierName = 'Kashif', @SupplierPhone = '03598793287', @SupplierEmail = 'kashif@gmail.com', @Street = '907 Second St', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '20734', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 11, @SupplierName = 'Ayesha', @SupplierPhone = '03148693098', @SupplierEmail = 'ayesha@gmail.com', @Street = '861 Second St', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '98097', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 12, @SupplierName = 'Arif', @SupplierPhone = '03153177551', @SupplierEmail = 'arif@gmail.com', @Street = '471 Park Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '23498', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 13, @SupplierName = 'Fareed', @SupplierPhone = '03119471203', @SupplierEmail = 'fareed@gmail.com', @Street = '410 Second St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '39013', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 14, @SupplierName = 'Bushra', @SupplierPhone = '03932065708', @SupplierEmail = 'bushra@gmail.com', @Street = '683 Second St', @City = 'Karachi', @State = 'Sindh', @PostalCode = '23056', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 15, @SupplierName = 'Junaid', @SupplierPhone = '03943389513', @SupplierEmail = 'junaid@gmail.com', @Street = '717 Main St', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '11834', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 16, @SupplierName = 'Sana', @SupplierPhone = '03677895459', @SupplierEmail = 'sana@gmail.com', @Street = '137 Third St', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '14949', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 17, @SupplierName = 'Kamran', @SupplierPhone = '03562082642', @SupplierEmail = 'kamran@gmail.com', @Street = '502 Second St', @City = 'Peshawar', @State = 'Balochistan', @PostalCode = '49995', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 18, @SupplierName = 'Sehrish', @SupplierPhone = '03534578061', @SupplierEmail = 'sehrish@gmail.com', @Street = '348 Main St', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '84263', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 19, @SupplierName = 'Saba', @SupplierPhone = '03197841830', @SupplierEmail = 'saba@gmail.com', @Street = '952 Main St', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '78841', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 20, @SupplierName = 'Zeeshan', @SupplierPhone = '03490641686', @SupplierEmail = 'zeeshan@gmail.com', @Street = '297 Park Ave', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '65331', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 21, @SupplierName = 'Mehak', @SupplierPhone = '03559735170', @SupplierEmail = 'mehak@gmail.com', @Street = '341 Fifth Ave', @City = 'Multan', @State = 'Sindh', @PostalCode = '69555', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 22, @SupplierName = 'Salman', @SupplierPhone = '03831151696', @SupplierEmail = 'salman@gmail.com', @Street = '785 Second St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '26233', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 23, @SupplierName = 'Ayesha', @SupplierPhone = '03098978685', @SupplierEmail = 'ayesha@gmail.com', @Street = '123 Park Ave', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '61582', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 24, @SupplierName = 'Aqsa', @SupplierPhone = '03234060951', @SupplierEmail = 'aqsa@gmail.com', @Street = '17 Park Ave', @City = 'Rawalpindi', @State = 'Balochistan', @PostalCode = '61338', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 25, @SupplierName = 'Fahad', @SupplierPhone = '03246157668', @SupplierEmail = 'fahad@gmail.com', @Street = '489 Third St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '53262', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 26, @SupplierName = 'Kashif', @SupplierPhone = '03268464644', @SupplierEmail = 'kashif@gmail.com', @Street = '638 Third St', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '77615', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 27, @SupplierName = 'Khalid', @SupplierPhone = '03566258213', @SupplierEmail = 'khalid@gmail.com', @Street = '779 Main St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '50815', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 28, @SupplierName = 'Gulzar', @SupplierPhone = '03775480452', @SupplierEmail = 'gulzar@gmail.com', @Street = '774 Second St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '80559', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 29, @SupplierName = 'Kashif', @SupplierPhone = '03553770415', @SupplierEmail = 'kashif@gmail.com', @Street = '518 Fifth Ave', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '61319', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 30, @SupplierName = 'Shazia', @SupplierPhone = '03368444681', @SupplierEmail = 'shazia@gmail.com', @Street = '3 Fifth Ave', @City = 'Peshawar', @State = 'Balochistan', @PostalCode = '87157', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 31, @SupplierName = 'Saeed', @SupplierPhone = '03948223449', @SupplierEmail = 'saeed@gmail.com', @Street = '181 Third St', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '26704', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 32, @SupplierName = 'Ahsan', @SupplierPhone = '03568691107', @SupplierEmail = 'ahsan@gmail.com', @Street = '978 Fifth Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '33568', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 33, @SupplierName = 'Fawad', @SupplierPhone = '03553331762', @SupplierEmail = 'fawad@gmail.com', @Street = '479 Main St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '12272', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 34, @SupplierName = 'Kashif', @SupplierPhone = '03559259690', @SupplierEmail = 'kashif@gmail.com', @Street = '894 Main St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '48993', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 35, @SupplierName = 'Sadia', @SupplierPhone = '03686276090', @SupplierEmail = 'sadia@gmail.com', @Street = '666 Park Ave', @City = 'Multan', @State = 'Balochistan', @PostalCode = '32222', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 36, @SupplierName = 'Sehrish', @SupplierPhone = '03370814668', @SupplierEmail = 'sehrish@gmail.com', @Street = '204 Fifth Ave', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '96381', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 37, @SupplierName = 'Sadia', @SupplierPhone = '03857243464', @SupplierEmail = 'sadia@gmail.com', @Street = '256 Second St', @City = 'Multan', @State = 'Balochistan', @PostalCode = '62841', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 38, @SupplierName = 'Shazia', @SupplierPhone = '03994800209', @SupplierEmail = 'shazia@gmail.com', @Street = '697 Second St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '50409', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 39, @SupplierName = 'Shumaila', @SupplierPhone = '03059567281', @SupplierEmail = 'shumaila@gmail.com', @Street = '693 Main St', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '22416', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 40, @SupplierName = 'Naveed', @SupplierPhone = '03723532273', @SupplierEmail = 'naveed@gmail.com', @Street = '937 Fifth Ave', @City = 'Rawalpindi', @State = 'Balochistan', @PostalCode = '43210', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 41, @SupplierName = 'Naila', @SupplierPhone = '03425036008', @SupplierEmail = 'naila@gmail.com', @Street = '365 Fifth Ave', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '19427', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 42, @SupplierName = 'Abubakar', @SupplierPhone = '03037006293', @SupplierEmail = 'abubakar@gmail.com', @Street = '285 Third St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '53433', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 43, @SupplierName = 'Rehana', @SupplierPhone = '03990427621', @SupplierEmail = 'rehana@gmail.com', @Street = '497 Park Ave', @City = 'Karachi', @State = 'Sindh', @PostalCode = '46696', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 44, @SupplierName = 'Samina', @SupplierPhone = '03755410041', @SupplierEmail = 'samina@gmail.com', @Street = '382 Park Ave', @City = 'Quetta', @State = 'Punjab', @PostalCode = '50229', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 45, @SupplierName = 'Rabia', @SupplierPhone = '03726185126', @SupplierEmail = 'rabia@gmail.com', @Street = '177 Third St', @City = 'Rawalpindi', @State = 'Balochistan', @PostalCode = '66639', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 46, @SupplierName = 'Waseem', @SupplierPhone = '03464013874', @SupplierEmail = 'waseem@gmail.com', @Street = '174 Park Ave', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '30766', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 47, @SupplierName = 'Rukhsana', @SupplierPhone = '03358306439', @SupplierEmail = 'rukhsana@gmail.com', @Street = '807 Second St', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '51418', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 48, @SupplierName = 'Ayesha', @SupplierPhone = '03861372964', @SupplierEmail = 'ayesha@gmail.com', @Street = '951 Second St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '79691', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 49, @SupplierName = 'Naveed', @SupplierPhone = '03329210213', @SupplierEmail = 'naveed@gmail.com', @Street = '720 Fifth Ave', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '66063', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 50, @SupplierName = 'Bilal', @SupplierPhone = '03083233834', @SupplierEmail = 'bilal@gmail.com', @Street = '613 Fifth Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '86131', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 51, @SupplierName = 'Noreen', @SupplierPhone = '03968228723', @SupplierEmail = 'noreen@gmail.com', @Street = '355 Main St', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '48638', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 52, @SupplierName = 'Rukhsana', @SupplierPhone = '03330602220', @SupplierEmail = 'rukhsana@gmail.com', @Street = '918 Park Ave', @City = 'Multan', @State = 'Punjab', @PostalCode = '17741', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 53, @SupplierName = 'Samina', @SupplierPhone = '03168902304', @SupplierEmail = 'samina@gmail.com', @Street = '975 Fifth Ave', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '42170', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 54, @SupplierName = 'Sumaira', @SupplierPhone = '03537201137', @SupplierEmail = 'sumaira@gmail.com', @Street = '149 Second St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '94661', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 55, @SupplierName = 'Aqeel', @SupplierPhone = '03853404168', @SupplierEmail = 'aqeel@gmail.com', @Street = '853 Main St', @City = 'Quetta', @State = 'Sindh', @PostalCode = '43201', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 56, @SupplierName = 'Asma', @SupplierPhone = '03423525047', @SupplierEmail = 'asma@gmail.com', @Street = '547 Main St', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '74963', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 57, @SupplierName = 'Fahad', @SupplierPhone = '03712095667', @SupplierEmail = 'fahad@gmail.com', @Street = '529 Second St', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '99330', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 58, @SupplierName = 'Ahsan', @SupplierPhone = '03160655683', @SupplierEmail = 'ahsan@gmail.com', @Street = '579 Third St', @City = 'Multan', @State = 'Sindh', @PostalCode = '63154', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 59, @SupplierName = 'Asad', @SupplierPhone = '03293186240', @SupplierEmail = 'asad@gmail.com', @Street = '173 Third St', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '42414', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 60, @SupplierName = 'Rukhsar', @SupplierPhone = '03612306195', @SupplierEmail = 'rukhsar@gmail.com', @Street = '673 Main St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '90799', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 61, @SupplierName = 'Rehana', @SupplierPhone = '03056479849', @SupplierEmail = 'rehana@gmail.com', @Street = '993 Main St', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '70496', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 62, @SupplierName = 'Zunaira', @SupplierPhone = '03312267240', @SupplierEmail = 'zunaira@gmail.com', @Street = '273 Second St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '54515', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 63, @SupplierName = 'Sadia', @SupplierPhone = '03837250537', @SupplierEmail = 'sadia@gmail.com', @Street = '159 Park Ave', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '31222', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 64, @SupplierName = 'Gulzar', @SupplierPhone = '03839863803', @SupplierEmail = 'gulzar@gmail.com', @Street = '190 Park Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '53475', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 65, @SupplierName = 'Zulfiqar', @SupplierPhone = '03953355835', @SupplierEmail = 'zulfiqar@gmail.com', @Street = '946 Park Ave', @City = 'Rawalpindi', @State = 'Balochistan', @PostalCode = '35441', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 66, @SupplierName = 'Sadia', @SupplierPhone = '03920913358', @SupplierEmail = 'sadia@gmail.com', @Street = '231 Second St', @City = 'Quetta', @State = 'Sindh', @PostalCode = '22973', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 67, @SupplierName = 'Shazia', @SupplierPhone = '03770571395', @SupplierEmail = 'shazia@gmail.com', @Street = '255 Second St', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '47165', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 68, @SupplierName = 'Imran', @SupplierPhone = '03835640008', @SupplierEmail = 'imran@gmail.com', @Street = '92 Second St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '47469', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 69, @SupplierName = 'Ali', @SupplierPhone = '03671184600', @SupplierEmail = 'ali@gmail.com', @Street = '92 Second St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '76203', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 70, @SupplierName = 'Tasneem', @SupplierPhone = '03252818889', @SupplierEmail = 'tasneem@gmail.com', @Street = '263 Main St', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '10784', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 71, @SupplierName = 'Ahmed', @SupplierPhone = '03550421206', @SupplierEmail = 'ahmed@gmail.com', @Street = '545 Park Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '12187', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 72, @SupplierName = 'Nasir', @SupplierPhone = '03834881712', @SupplierEmail = 'nasir@gmail.com', @Street = '83 Third St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '19199', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 73, @SupplierName = 'Ayesha', @SupplierPhone = '03430839681', @SupplierEmail = 'ayesha@gmail.com', @Street = '94 Second St', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '70042', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 74, @SupplierName = 'Shazia', @SupplierPhone = '03115387923', @SupplierEmail = 'shazia@gmail.com', @Street = '372 Third St', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '54796', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 75, @SupplierName = 'Noman', @SupplierPhone = '03971468353', @SupplierEmail = 'noman@gmail.com', @Street = '796 Second St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '32180', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 76, @SupplierName = 'Anum', @SupplierPhone = '03396829956', @SupplierEmail = 'anum@gmail.com', @Street = '503 Park Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '53277', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 77, @SupplierName = 'Naveed', @SupplierPhone = '03223581729', @SupplierEmail = 'naveed@gmail.com', @Street = '549 Third St', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '32334', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 78, @SupplierName = 'Shazia', @SupplierPhone = '03365118726', @SupplierEmail = 'shazia@gmail.com', @Street = '478 Park Ave', @City = 'Lahore', @State = 'Punjab', @PostalCode = '27555', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 79, @SupplierName = 'Sana', @SupplierPhone = '03655657881', @SupplierEmail = 'sana@gmail.com', @Street = '426 Fifth Ave', @City = 'Quetta', @State = 'Punjab', @PostalCode = '95351', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 80, @SupplierName = 'Abubakar', @SupplierPhone = '03998415579', @SupplierEmail = 'abubakar@gmail.com', @Street = '408 Main St', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '21137', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 81, @SupplierName = 'Fawad', @SupplierPhone = '03760478443', @SupplierEmail = 'fawad@gmail.com', @Street = '42 Third St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '15388', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 82, @SupplierName = 'Ahmed', @SupplierPhone = '03493256183', @SupplierEmail = 'ahmed@gmail.com', @Street = '491 Second St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '87781', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 83, @SupplierName = 'Arif', @SupplierPhone = '03396865575', @SupplierEmail = 'arif@gmail.com', @Street = '989 Main St', @City = 'Multan', @State = 'Balochistan', @PostalCode = '56014', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 84, @SupplierName = 'Tanvir', @SupplierPhone = '03148929217', @SupplierEmail = 'tanvir@gmail.com', @Street = '318 Second St', @City = 'Peshawar', @State = 'Balochistan', @PostalCode = '50967', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 85, @SupplierName = 'Rehana', @SupplierPhone = '03999340804', @SupplierEmail = 'rehana@gmail.com', @Street = '133 Third St', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '94045', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 86, @SupplierName = 'Ahmed', @SupplierPhone = '03183643369', @SupplierEmail = 'ahmed@gmail.com', @Street = '705 Main St', @City = 'Peshawar', @State = 'Balochistan', @PostalCode = '80649', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 87, @SupplierName = 'Aqeel', @SupplierPhone = '03531825644', @SupplierEmail = 'aqeel@gmail.com', @Street = '884 Third St', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '66007', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 88, @SupplierName = 'Fahad', @SupplierPhone = '03077014850', @SupplierEmail = 'fahad@gmail.com', @Street = '16 Park Ave', @City = 'Quetta', @State = 'Sindh', @PostalCode = '94028', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 89, @SupplierName = 'Sadia', @SupplierPhone = '03984298289', @SupplierEmail = 'sadia@gmail.com', @Street = '101 Second St', @City = 'Quetta', @State = 'Sindh', @PostalCode = '94267', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 90, @SupplierName = 'Ahmed', @SupplierPhone = '03496980189', @SupplierEmail = 'ahmed@gmail.com', @Street = '393 Park Ave', @City = 'Karachi', @State = 'Balochistan', @PostalCode = '94123', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 91, @SupplierName = 'Mariam', @SupplierPhone = '03361762143', @SupplierEmail = 'mariam@gmail.com', @Street = '43 Second St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '52630', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 92, @SupplierName = 'Fareed', @SupplierPhone = '03819683741', @SupplierEmail = 'fareed@gmail.com', @Street = '46 Park Ave', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '20707', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 93, @SupplierName = 'Zainab', @SupplierPhone = '03860907043', @SupplierEmail = 'zainab@gmail.com', @Street = '490 Fifth Ave', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '61866', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 94, @SupplierName = 'Sumaira', @SupplierPhone = '03580165636', @SupplierEmail = 'sumaira@gmail.com', @Street = '408 Fifth Ave', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '66134', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 95, @SupplierName = 'Fahad', @SupplierPhone = '03772863745', @SupplierEmail = 'fahad@gmail.com', @Street = '686 Third St', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '12917', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 96, @SupplierName = 'Sehrish', @SupplierPhone = '03413857409', @SupplierEmail = 'sehrish@gmail.com', @Street = '567 Fifth Ave', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '22971', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 97, @SupplierName = 'Shazia', @SupplierPhone = '03040169719', @SupplierEmail = 'shazia@gmail.com', @Street = '476 Park Ave', @City = 'Multan', @State = 'Balochistan', @PostalCode = '55670', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 98, @SupplierName = 'Khalid', @SupplierPhone = '03950344596', @SupplierEmail = 'khalid@gmail.com', @Street = '383 Park Ave', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '86436', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 99, @SupplierName = 'Asad', @SupplierPhone = '03164036558', @SupplierEmail = 'asad@gmail.com', @Street = '370 Fifth Ave', @City = 'Multan', @State = 'Balochistan', @PostalCode = '41162', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 100, @SupplierName = 'Kamran', @SupplierPhone = '03234172058', @SupplierEmail = 'kamran@gmail.com', @Street = '347 Park Ave', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '92157', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 101, @SupplierName = 'Sadia', @SupplierPhone = '03362885919', @SupplierEmail = 'sadia@gmail.com', @Street = '270 Fifth Ave', @City = 'Rawalpindi', @State = 'Balochistan', @PostalCode = '40464', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 102, @SupplierName = 'Fahad', @SupplierPhone = '03789587352', @SupplierEmail = 'fahad@gmail.com', @Street = '110 Fifth Ave', @City = 'Multan', @State = 'Sindh', @PostalCode = '46353', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 103, @SupplierName = 'Zainab', @SupplierPhone = '03926314822', @SupplierEmail = 'zainab@gmail.com', @Street = '304 Second St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '31006', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 104, @SupplierName = 'Kashif', @SupplierPhone = '03222766851', @SupplierEmail = 'kashif@gmail.com', @Street = '395 Park Ave', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '44655', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 105, @SupplierName = 'Rukhsana', @SupplierPhone = '03344639673', @SupplierEmail = 'rukhsana@gmail.com', @Street = '100 Park Ave', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '11135', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 106, @SupplierName = 'Arslan', @SupplierPhone = '03759754664', @SupplierEmail = 'arslan@gmail.com', @Street = '573 Fifth Ave', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '69676', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 107, @SupplierName = 'Bushra', @SupplierPhone = '03969052010', @SupplierEmail = 'bushra@gmail.com', @Street = '53 Park Ave', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '31973', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 108, @SupplierName = 'Sadia', @SupplierPhone = '03922638780', @SupplierEmail = 'sadia@gmail.com', @Street = '308 Fifth Ave', @City = 'Lahore', @State = 'Punjab', @PostalCode = '95494', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 109, @SupplierName = 'Kashif', @SupplierPhone = '03687015372', @SupplierEmail = 'kashif@gmail.com', @Street = '322 Main St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '44241', @Country = 'Pakistan';


EXEC InsertSupplier @SupplierID = 110, @SupplierName = 'Sadia', @SupplierPhone = '03154933601', @SupplierEmail = 'sadia@gmail.com', @Street = '38 Park Ave', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '99070', @Country = 'Pakistan';

SELECT *
FROM Suppliers


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


GO
CREATE PROCEDURE InsertCustomer
    @CustomerID INT,
    @CustomerName NVARCHAR(100),
    @CustomerPhone NVARCHAR(20),
    @CustomerEmail NVARCHAR(100),
    @Street NVARCHAR(255),
    @City NVARCHAR(100),
    @State NVARCHAR(100),
    @PostalCode NVARCHAR(20),
    @Country NVARCHAR(100)
AS
BEGIN
    INSERT INTO Customers
        (CustomerID, CustomerName, CustomerPhone, CustomerEmail, Street, City, State, PostalCode, Country)
    VALUES
        (@CustomerID, @CustomerName, @CustomerPhone, @CustomerEmail, @Street, @City, @State, @PostalCode, @Country);
END;

-- #region Insert Customer

EXEC InsertCustomer @CustomerID = 1, @CustomerName = 'Shumaila', @CustomerPhone = '03472837952', @CustomerEmail = 'shumaila@gmail.com', @Street = '154 Fifth Ave', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '39494', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 2, @CustomerName = 'Khalid', @CustomerPhone = '03180107945', @CustomerEmail = 'khalid@gmail.com', @Street = '510 Main St', @City = 'Karachi', @State = 'Balochistan', @PostalCode = '25245', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 3, @CustomerName = 'Zulfiqar', @CustomerPhone = '03971578546', @CustomerEmail = 'zulfiqar@gmail.com', @Street = '891 Main St', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '20212', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 4, @CustomerName = 'Shahida', @CustomerPhone = '03293809249', @CustomerEmail = 'shahida@gmail.com', @Street = '360 Third St', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '23878', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 5, @CustomerName = 'Saira', @CustomerPhone = '03968590753', @CustomerEmail = 'saira@gmail.com', @Street = '12 Main St', @City = 'Peshawar', @State = 'Balochistan', @PostalCode = '78631', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 6, @CustomerName = 'Zulfiqar', @CustomerPhone = '03585457214', @CustomerEmail = 'zulfiqar@gmail.com', @Street = '527 Second St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '94756', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 7, @CustomerName = 'Kashif', @CustomerPhone = '03848756577', @CustomerEmail = 'kashif@gmail.com', @Street = '493 Fifth Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '94660', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 8, @CustomerName = 'Sumaira', @CustomerPhone = '03595446182', @CustomerEmail = 'sumaira@gmail.com', @Street = '194 Main St', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '56859', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 9, @CustomerName = 'Junaid', @CustomerPhone = '03525389127', @CustomerEmail = 'junaid@gmail.com', @Street = '79 Fifth Ave', @City = 'Lahore', @State = 'Punjab', @PostalCode = '56969', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 10, @CustomerName = 'Aqsa', @CustomerPhone = '03432545701', @CustomerEmail = 'aqsa@gmail.com', @Street = '861 Main St', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '79886', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 11, @CustomerName = 'Ahmed', @CustomerPhone = '03361125117', @CustomerEmail = 'ahmed@gmail.com', @Street = '417 Main St', @City = 'Multan', @State = 'Sindh', @PostalCode = '54834', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 12, @CustomerName = 'Aisha', @CustomerPhone = '03146610973', @CustomerEmail = 'aisha@gmail.com', @Street = '38 Park Ave', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '85463', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 13, @CustomerName = 'Naila', @CustomerPhone = '03026468663', @CustomerEmail = 'naila@gmail.com', @Street = '488 Main St', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '41340', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 14, @CustomerName = 'Saima', @CustomerPhone = '03921233843', @CustomerEmail = 'saima@gmail.com', @Street = '770 Second St', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '48337', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 15, @CustomerName = 'Fahad', @CustomerPhone = '03498227092', @CustomerEmail = 'fahad@gmail.com', @Street = '146 Main St', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '68553', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 16, @CustomerName = 'Mansoor', @CustomerPhone = '03091906010', @CustomerEmail = 'mansoor@gmail.com', @Street = '555 Main St', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '56177', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 17, @CustomerName = 'Saima', @CustomerPhone = '03534470262', @CustomerEmail = 'saima@gmail.com', @Street = '81 Second St', @City = 'Multan', @State = 'Sindh', @PostalCode = '73996', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 18, @CustomerName = 'Fareed', @CustomerPhone = '03181602815', @CustomerEmail = 'fareed@gmail.com', @Street = '661 Main St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '89731', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 19, @CustomerName = 'Salman', @CustomerPhone = '03854445900', @CustomerEmail = 'salman@gmail.com', @Street = '537 Second St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '78080', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 20, @CustomerName = 'Faisal', @CustomerPhone = '03285255121', @CustomerEmail = 'faisal@gmail.com', @Street = '451 Park Ave', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '75238', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 21, @CustomerName = 'Sara', @CustomerPhone = '03014602110', @CustomerEmail = 'sara@gmail.com', @Street = '912 Second St', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '37534', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 22, @CustomerName = 'Yasir', @CustomerPhone = '03651425334', @CustomerEmail = 'yasir@gmail.com', @Street = '954 Second St', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '63895', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 23, @CustomerName = 'Aqeel', @CustomerPhone = '03217039857', @CustomerEmail = 'aqeel@gmail.com', @Street = '276 Fifth Ave', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '21842', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 24, @CustomerName = 'Tariq', @CustomerPhone = '03964296313', @CustomerEmail = 'tariq@gmail.com', @Street = '417 Third St', @City = 'Lahore', @State = 'Punjab', @PostalCode = '65147', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 25, @CustomerName = 'Shazia', @CustomerPhone = '03658352938', @CustomerEmail = 'shazia@gmail.com', @Street = '734 Third St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '33615', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 26, @CustomerName = 'Ahmed', @CustomerPhone = '03423972174', @CustomerEmail = 'ahmed@gmail.com', @Street = '248 Fifth Ave', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '68192', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 27, @CustomerName = 'Rabia', @CustomerPhone = '03445311392', @CustomerEmail = 'rabia@gmail.com', @Street = '878 Second St', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '45816', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 28, @CustomerName = 'Hassan', @CustomerPhone = '03389375031', @CustomerEmail = 'hassan@gmail.com', @Street = '450 Fifth Ave', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '76466', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 29, @CustomerName = 'Tanzila', @CustomerPhone = '03236260665', @CustomerEmail = 'tanzila@gmail.com', @Street = '98 Second St', @City = 'Quetta', @State = 'Sindh', @PostalCode = '95606', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 30, @CustomerName = 'Farhan', @CustomerPhone = '03829078977', @CustomerEmail = 'farhan@gmail.com', @Street = '547 Park Ave', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '44818', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 31, @CustomerName = 'Rabia', @CustomerPhone = '03838794675', @CustomerEmail = 'rabia@gmail.com', @Street = '230 Park Ave', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '16285', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 32, @CustomerName = 'Saira', @CustomerPhone = '03784286735', @CustomerEmail = 'saira@gmail.com', @Street = '710 Fifth Ave', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '47852', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 33, @CustomerName = 'Zunaira', @CustomerPhone = '03727606368', @CustomerEmail = 'zunaira@gmail.com', @Street = '103 Main St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '73141', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 34, @CustomerName = 'Ayesha', @CustomerPhone = '03184867081', @CustomerEmail = 'ayesha@gmail.com', @Street = '607 Park Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '52456', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 35, @CustomerName = 'Tanvir', @CustomerPhone = '03662798012', @CustomerEmail = 'tanvir@gmail.com', @Street = '472 Park Ave', @City = 'Karachi', @State = 'Sindh', @PostalCode = '35422', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 36, @CustomerName = 'Waseem', @CustomerPhone = '03982960766', @CustomerEmail = 'waseem@gmail.com', @Street = '337 Main St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '71354', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 37, @CustomerName = 'Sajid', @CustomerPhone = '03595151114', @CustomerEmail = 'sajid@gmail.com', @Street = '459 Main St', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '96117', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 38, @CustomerName = 'Saira', @CustomerPhone = '03968624104', @CustomerEmail = 'saira@gmail.com', @Street = '131 Main St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '90269', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 39, @CustomerName = 'Shumaila', @CustomerPhone = '03790104479', @CustomerEmail = 'shumaila@gmail.com', @Street = '602 Second St', @City = 'Multan', @State = 'Sindh', @PostalCode = '62354', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 40, @CustomerName = 'Waseem', @CustomerPhone = '03245631912', @CustomerEmail = 'waseem@gmail.com', @Street = '117 Third St', @City = 'Multan', @State = 'Sindh', @PostalCode = '12977', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 41, @CustomerName = 'Ayesha', @CustomerPhone = '03284500031', @CustomerEmail = 'ayesha@gmail.com', @Street = '556 Third St', @City = 'Quetta', @State = 'Sindh', @PostalCode = '11648', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 42, @CustomerName = 'Saad', @CustomerPhone = '03168631273', @CustomerEmail = 'saad@gmail.com', @Street = '704 Third St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '59234', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 43, @CustomerName = 'Salman', @CustomerPhone = '03282029309', @CustomerEmail = 'salman@gmail.com', @Street = '727 Fifth Ave', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '64244', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 44, @CustomerName = 'Sajid', @CustomerPhone = '03550521658', @CustomerEmail = 'sajid@gmail.com', @Street = '525 Third St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '89095', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 45, @CustomerName = 'Iram', @CustomerPhone = '03874374390', @CustomerEmail = 'iram@gmail.com', @Street = '223 Main St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '89980', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 46, @CustomerName = 'Zeeshan', @CustomerPhone = '03167506993', @CustomerEmail = 'zeeshan@gmail.com', @Street = '204 Fifth Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '71575', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 47, @CustomerName = 'Majid', @CustomerPhone = '03946973346', @CustomerEmail = 'majid@gmail.com', @Street = '286 Fifth Ave', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '28512', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 48, @CustomerName = 'Aisha', @CustomerPhone = '03945895133', @CustomerEmail = 'aisha@gmail.com', @Street = '352 Park Ave', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '15630', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 49, @CustomerName = 'Tasneem', @CustomerPhone = '03092731869', @CustomerEmail = 'tasneem@gmail.com', @Street = '693 Park Ave', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '92552', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 50, @CustomerName = 'Zulfiqar', @CustomerPhone = '03425292953', @CustomerEmail = 'zulfiqar@gmail.com', @Street = '248 Second St', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '14566', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 51, @CustomerName = 'Naila', @CustomerPhone = '03516379854', @CustomerEmail = 'naila@gmail.com', @Street = '253 Main St', @City = 'Quetta', @State = 'Sindh', @PostalCode = '35984', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 52, @CustomerName = 'Rukhsar', @CustomerPhone = '03877512208', @CustomerEmail = 'rukhsar@gmail.com', @Street = '147 Main St', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '68213', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 53, @CustomerName = 'Zeeshan', @CustomerPhone = '03868210680', @CustomerEmail = 'zeeshan@gmail.com', @Street = '350 Second St', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '94980', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 54, @CustomerName = 'Farooq', @CustomerPhone = '03833387739', @CustomerEmail = 'farooq@gmail.com', @Street = '760 Main St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '99149', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 55, @CustomerName = 'Junaid', @CustomerPhone = '03747117174', @CustomerEmail = 'junaid@gmail.com', @Street = '424 Third St', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '94497', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 56, @CustomerName = 'Ayesha', @CustomerPhone = '03885987749', @CustomerEmail = 'ayesha@gmail.com', @Street = '380 Fifth Ave', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '30180', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 57, @CustomerName = 'Rukhsana', @CustomerPhone = '03557166144', @CustomerEmail = 'rukhsana@gmail.com', @Street = '259 Park Ave', @City = 'Karachi', @State = 'Sindh', @PostalCode = '60107', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 58, @CustomerName = 'Tasneem', @CustomerPhone = '03292912542', @CustomerEmail = 'tasneem@gmail.com', @Street = '865 Park Ave', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '29599', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 59, @CustomerName = 'Sehrish', @CustomerPhone = '03074318332', @CustomerEmail = 'sehrish@gmail.com', @Street = '876 Third St', @City = 'Karachi', @State = 'Sindh', @PostalCode = '61506', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 60, @CustomerName = 'Zainab', @CustomerPhone = '03938170708', @CustomerEmail = 'zainab@gmail.com', @Street = '842 Park Ave', @City = 'Karachi', @State = 'Punjab', @PostalCode = '47145', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 61, @CustomerName = 'Arslan', @CustomerPhone = '03732560677', @CustomerEmail = 'arslan@gmail.com', @Street = '864 Fifth Ave', @City = 'Multan', @State = 'Sindh', @PostalCode = '39371', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 62, @CustomerName = 'Faisal', @CustomerPhone = '03741381597', @CustomerEmail = 'faisal@gmail.com', @Street = '223 Park Ave', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '11937', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 63, @CustomerName = 'Babar', @CustomerPhone = '03275043457', @CustomerEmail = 'babar@gmail.com', @Street = '802 Main St', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '30958', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 64, @CustomerName = 'Fauzia', @CustomerPhone = '03977622285', @CustomerEmail = 'fauzia@gmail.com', @Street = '36 Fifth Ave', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '53069', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 65, @CustomerName = 'Anum', @CustomerPhone = '03779505342', @CustomerEmail = 'anum@gmail.com', @Street = '448 Fifth Ave', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '96016', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 66, @CustomerName = 'Shazia', @CustomerPhone = '03064515440', @CustomerEmail = 'shazia@gmail.com', @Street = '279 Third St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '27271', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 67, @CustomerName = 'Mehak', @CustomerPhone = '03777201836', @CustomerEmail = 'mehak@gmail.com', @Street = '450 Second St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '23535', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 68, @CustomerName = 'Hina', @CustomerPhone = '03755201725', @CustomerEmail = 'hina@gmail.com', @Street = '281 Third St', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '29797', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 69, @CustomerName = 'Zeeshan', @CustomerPhone = '03456606293', @CustomerEmail = 'zeeshan@gmail.com', @Street = '164 Park Ave', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '87043', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 70, @CustomerName = 'Salman', @CustomerPhone = '03350604689', @CustomerEmail = 'salman@gmail.com', @Street = '131 Main St', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '90313', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 71, @CustomerName = 'Aqsa', @CustomerPhone = '03966111838', @CustomerEmail = 'aqsa@gmail.com', @Street = '198 Second St', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '15372', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 72, @CustomerName = 'Asma', @CustomerPhone = '03764141820', @CustomerEmail = 'asma@gmail.com', @Street = '95 Park Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '91469', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 73, @CustomerName = 'Azhar', @CustomerPhone = '03133623421', @CustomerEmail = 'azhar@gmail.com', @Street = '500 Third St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '85068', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 74, @CustomerName = 'Nadia', @CustomerPhone = '03593809604', @CustomerEmail = 'nadia@gmail.com', @Street = '760 Second St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '43444', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 75, @CustomerName = 'Lubna', @CustomerPhone = '03881782629', @CustomerEmail = 'lubna@gmail.com', @Street = '32 Fifth Ave', @City = 'Karachi', @State = 'Sindh', @PostalCode = '47499', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 76, @CustomerName = 'Asma', @CustomerPhone = '03871706012', @CustomerEmail = 'asma@gmail.com', @Street = '659 Park Ave', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '39858', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 77, @CustomerName = 'Ayesha', @CustomerPhone = '03268357271', @CustomerEmail = 'ayesha@gmail.com', @Street = '384 Park Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '14376', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 78, @CustomerName = 'Rukhsana', @CustomerPhone = '03112412762', @CustomerEmail = 'rukhsana@gmail.com', @Street = '183 Second St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '58598', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 79, @CustomerName = 'Sajid', @CustomerPhone = '03215607401', @CustomerEmail = 'sajid@gmail.com', @Street = '552 Third St', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '18798', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 80, @CustomerName = 'Abubakar', @CustomerPhone = '03978307076', @CustomerEmail = 'abubakar@gmail.com', @Street = '411 Third St', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '48709', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 81, @CustomerName = 'Zunaira', @CustomerPhone = '03632088044', @CustomerEmail = 'zunaira@gmail.com', @Street = '382 Fifth Ave', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '23452', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 82, @CustomerName = 'Zoya', @CustomerPhone = '03372516283', @CustomerEmail = 'zoya@gmail.com', @Street = '281 Fifth Ave', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '80730', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 83, @CustomerName = 'Sara', @CustomerPhone = '03113657129', @CustomerEmail = 'sara@gmail.com', @Street = '240 Fifth Ave', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '47506', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 84, @CustomerName = 'Fauzia', @CustomerPhone = '03753361139', @CustomerEmail = 'fauzia@gmail.com', @Street = '202 Second St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '99473', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 85, @CustomerName = 'Shazia', @CustomerPhone = '03087587927', @CustomerEmail = 'shazia@gmail.com', @Street = '182 Fifth Ave', @City = 'Multan', @State = 'Sindh', @PostalCode = '88299', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 86, @CustomerName = 'Aamir', @CustomerPhone = '03693950458', @CustomerEmail = 'aamir@gmail.com', @Street = '850 Second St', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '45871', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 87, @CustomerName = 'Kashif', @CustomerPhone = '03741456809', @CustomerEmail = 'kashif@gmail.com', @Street = '624 Park Ave', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '97379', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 88, @CustomerName = 'Noman', @CustomerPhone = '03173313218', @CustomerEmail = 'noman@gmail.com', @Street = '629 Fifth Ave', @City = 'Quetta', @State = 'Punjab', @PostalCode = '82021', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 89, @CustomerName = 'Sadia', @CustomerPhone = '03278252231', @CustomerEmail = 'sadia@gmail.com', @Street = '483 Park Ave', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '70621', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 90, @CustomerName = 'Shazia', @CustomerPhone = '03840682365', @CustomerEmail = 'shazia@gmail.com', @Street = '605 Third St', @City = 'Karachi', @State = 'Balochistan', @PostalCode = '12681', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 91, @CustomerName = 'Saba', @CustomerPhone = '03886102984', @CustomerEmail = 'saba@gmail.com', @Street = '6 Third St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '83417', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 92, @CustomerName = 'Adnan', @CustomerPhone = '03160387331', @CustomerEmail = 'adnan@gmail.com', @Street = '271 Main St', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '52647', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 93, @CustomerName = 'Sumaira', @CustomerPhone = '03745996539', @CustomerEmail = 'sumaira@gmail.com', @Street = '174 Fifth Ave', @City = 'Lahore', @State = 'Punjab', @PostalCode = '74342', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 94, @CustomerName = 'Junaid', @CustomerPhone = '03928152205', @CustomerEmail = 'junaid@gmail.com', @Street = '956 Park Ave', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '94810', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 95, @CustomerName = 'Shazia', @CustomerPhone = '03791818937', @CustomerEmail = 'shazia@gmail.com', @Street = '149 Park Ave', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '35343', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 96, @CustomerName = 'Sidra', @CustomerPhone = '03691804110', @CustomerEmail = 'sidra@gmail.com', @Street = '36 Second St', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '70971', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 97, @CustomerName = 'Samina', @CustomerPhone = '03477245252', @CustomerEmail = 'samina@gmail.com', @Street = '474 Main St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '97256', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 98, @CustomerName = 'Saba', @CustomerPhone = '03457951187', @CustomerEmail = 'saba@gmail.com', @Street = '936 Park Ave', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '72381', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 99, @CustomerName = 'Junaid', @CustomerPhone = '03961666353', @CustomerEmail = 'junaid@gmail.com', @Street = '447 Third St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '54732', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 100, @CustomerName = 'Imran', @CustomerPhone = '03184565731', @CustomerEmail = 'imran@gmail.com', @Street = '537 Main St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '58400', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 101, @CustomerName = 'Nadia', @CustomerPhone = '03110503447', @CustomerEmail = 'nadia@gmail.com', @Street = '492 Second St', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '45978', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 102, @CustomerName = 'Rashid', @CustomerPhone = '03487686096', @CustomerEmail = 'rashid@gmail.com', @Street = '329 Third St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '90501', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 103, @CustomerName = 'Aamir', @CustomerPhone = '03055915876', @CustomerEmail = 'aamir@gmail.com', @Street = '850 Third St', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '59510', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 104, @CustomerName = 'Naveed', @CustomerPhone = '03646063859', @CustomerEmail = 'naveed@gmail.com', @Street = '621 Main St', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '35389', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 105, @CustomerName = 'Sana', @CustomerPhone = '03232199945', @CustomerEmail = 'sana@gmail.com', @Street = '374 Fifth Ave', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '90253', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 106, @CustomerName = 'Arif', @CustomerPhone = '03712171307', @CustomerEmail = 'arif@gmail.com', @Street = '574 Third St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '99260', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 107, @CustomerName = 'Sadia', @CustomerPhone = '03328277710', @CustomerEmail = 'sadia@gmail.com', @Street = '256 Park Ave', @City = 'Multan', @State = 'Punjab', @PostalCode = '80865', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 108, @CustomerName = 'Aqsa', @CustomerPhone = '03685815857', @CustomerEmail = 'aqsa@gmail.com', @Street = '52 Fifth Ave', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '13921', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 109, @CustomerName = 'Ahsan', @CustomerPhone = '03065138235', @CustomerEmail = 'ahsan@gmail.com', @Street = '765 Main St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '61755', @Country = 'Pakistan';


EXEC InsertCustomer @CustomerID = 110, @CustomerName = 'Tanvir', @CustomerPhone = '03127291036', @CustomerEmail = 'tanvir@gmail.com', @Street = '275 Fifth Ave', @City = 'Multan', @State = 'Punjab', @PostalCode = '33069', @Country = 'Pakistan';
-- #endregion


SELECT *
FROM Customers


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

GO
CREATE PROCEDURE InsertEmployee
    @EmployeeID INT,
    @EmployeeName NVARCHAR(100),
    @EmployeePhone NVARCHAR(20),
    @EmployeeEmail NVARCHAR(100),
    @Street NVARCHAR(255),
    @City NVARCHAR(100),
    @State NVARCHAR(100),
    @PostalCode NVARCHAR(20),
    @Country NVARCHAR(100)
AS
BEGIN
    INSERT INTO Employees
        (EmployeeID, EmployeeName, EmployeePhone, EmployeeEmail, Street, City, State, PostalCode, Country)
    VALUES
        (@EmployeeID, @EmployeeName, @EmployeePhone, @EmployeeEmail, @Street, @City, @State, @PostalCode, @Country);
END;

-- #region Insert Employees

EXEC InsertEmployee @EmployeeID = 1, @EmployeeName = 'Iram', @EmployeePhone = '03382429041', @EmployeeEmail = 'iram@gmail.com', @Street = '577 Third St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '33224', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 2, @EmployeeName = 'Zoya', @EmployeePhone = '03218552825', @EmployeeEmail = 'zoya@gmail.com', @Street = '857 Park Ave', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '50167', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 3, @EmployeeName = 'Shumaila', @EmployeePhone = '03958731816', @EmployeeEmail = 'shumaila@gmail.com', @Street = '873 Third St', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '44340', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 4, @EmployeeName = 'Qaiser', @EmployeePhone = '03932131743', @EmployeeEmail = 'qaiser@gmail.com', @Street = '371 Third St', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '69105', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 5, @EmployeeName = 'Omar', @EmployeePhone = '03730961844', @EmployeeEmail = 'omar@gmail.com', @Street = '904 Second St', @City = 'Karachi', @State = 'Balochistan', @PostalCode = '93195', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 6, @EmployeeName = 'Arif', @EmployeePhone = '03749529472', @EmployeeEmail = 'arif@gmail.com', @Street = '176 Fifth Ave', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '23146', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 7, @EmployeeName = 'Sadia', @EmployeePhone = '03283541413', @EmployeeEmail = 'sadia@gmail.com', @Street = '938 Fifth Ave', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '52665', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 8, @EmployeeName = 'Anum', @EmployeePhone = '03591652592', @EmployeeEmail = 'anum@gmail.com', @Street = '291 Main St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '60061', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 9, @EmployeeName = 'Salman', @EmployeePhone = '03077797151', @EmployeeEmail = 'salman@gmail.com', @Street = '730 Fifth Ave', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '85785', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 10, @EmployeeName = 'Fawad', @EmployeePhone = '03387015361', @EmployeeEmail = 'fawad@gmail.com', @Street = '30 Park Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '96621', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 11, @EmployeeName = 'Saima', @EmployeePhone = '03639813465', @EmployeeEmail = 'saima@gmail.com', @Street = '336 Park Ave', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '77441', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 12, @EmployeeName = 'Kashif', @EmployeePhone = '03059909328', @EmployeeEmail = 'kashif@gmail.com', @Street = '252 Fifth Ave', @City = 'Quetta', @State = 'Sindh', @PostalCode = '60676', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 13, @EmployeeName = 'Farhan', @EmployeePhone = '03799458757', @EmployeeEmail = 'farhan@gmail.com', @Street = '317 Third St', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '60736', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 14, @EmployeeName = 'Sadia', @EmployeePhone = '03582517637', @EmployeeEmail = 'sadia@gmail.com', @Street = '379 Fifth Ave', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '40095', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 15, @EmployeeName = 'Farhan', @EmployeePhone = '03271733749', @EmployeeEmail = 'farhan@gmail.com', @Street = '40 Fifth Ave', @City = 'Multan', @State = 'Balochistan', @PostalCode = '40202', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 16, @EmployeeName = 'Anum', @EmployeePhone = '03321348649', @EmployeeEmail = 'anum@gmail.com', @Street = '885 Main St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '45989', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 17, @EmployeeName = 'Fawad', @EmployeePhone = '03471849746', @EmployeeEmail = 'fawad@gmail.com', @Street = '296 Fifth Ave', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '33536', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 18, @EmployeeName = 'Ayesha', @EmployeePhone = '03169612174', @EmployeeEmail = 'ayesha@gmail.com', @Street = '160 Third St', @City = 'Multan', @State = 'Sindh', @PostalCode = '58659', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 19, @EmployeeName = 'Amina', @EmployeePhone = '03860701888', @EmployeeEmail = 'amina@gmail.com', @Street = '897 Park Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '55913', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 20, @EmployeeName = 'Arif', @EmployeePhone = '03288664294', @EmployeeEmail = 'arif@gmail.com', @Street = '633 Park Ave', @City = 'Lahore', @State = 'Punjab', @PostalCode = '96014', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 21, @EmployeeName = 'Faisal', @EmployeePhone = '03559540090', @EmployeeEmail = 'faisal@gmail.com', @Street = '395 Main St', @City = 'Karachi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '78259', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 22, @EmployeeName = 'Zulfiqar', @EmployeePhone = '03670487030', @EmployeeEmail = 'zulfiqar@gmail.com', @Street = '476 Main St', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '37085', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 23, @EmployeeName = 'Majid', @EmployeePhone = '03934817080', @EmployeeEmail = 'majid@gmail.com', @Street = '510 Park Ave', @City = 'Lahore', @State = 'Sindh', @PostalCode = '40845', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 24, @EmployeeName = 'Rashid', @EmployeePhone = '03869859163', @EmployeeEmail = 'rashid@gmail.com', @Street = '339 Second St', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '91016', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 25, @EmployeeName = 'Saeed', @EmployeePhone = '03759051090', @EmployeeEmail = 'saeed@gmail.com', @Street = '588 Park Ave', @City = 'Lahore', @State = 'Sindh', @PostalCode = '97691', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 26, @EmployeeName = 'Tasneem', @EmployeePhone = '03016638145', @EmployeeEmail = 'tasneem@gmail.com', @Street = '431 Third St', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '84468', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 27, @EmployeeName = 'Naveed', @EmployeePhone = '03477813702', @EmployeeEmail = 'naveed@gmail.com', @Street = '8 Park Ave', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '58193', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 28, @EmployeeName = 'Tariq', @EmployeePhone = '03634607399', @EmployeeEmail = 'tariq@gmail.com', @Street = '78 Fifth Ave', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '52128', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 29, @EmployeeName = 'Ahmed', @EmployeePhone = '03721275549', @EmployeeEmail = 'ahmed@gmail.com', @Street = '680 Second St', @City = 'Multan', @State = 'Punjab', @PostalCode = '84794', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 30, @EmployeeName = 'Farhan', @EmployeePhone = '03226064622', @EmployeeEmail = 'farhan@gmail.com', @Street = '669 Main St', @City = 'Islamabad', @State = 'Sindh', @PostalCode = '34678', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 31, @EmployeeName = 'Amina', @EmployeePhone = '03686996090', @EmployeeEmail = 'amina@gmail.com', @Street = '112 Park Ave', @City = 'Peshawar', @State = 'Balochistan', @PostalCode = '57035', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 32, @EmployeeName = 'Waseem', @EmployeePhone = '03364059481', @EmployeeEmail = 'waseem@gmail.com', @Street = '114 Fifth Ave', @City = 'Quetta', @State = 'Sindh', @PostalCode = '64817', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 33, @EmployeeName = 'Aqsa', @EmployeePhone = '03328798619', @EmployeeEmail = 'aqsa@gmail.com', @Street = '845 Second St', @City = 'Multan', @State = 'Sindh', @PostalCode = '47847', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 34, @EmployeeName = 'Imran', @EmployeePhone = '03133571337', @EmployeeEmail = 'imran@gmail.com', @Street = '796 Third St', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '10433', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 35, @EmployeeName = 'Fareed', @EmployeePhone = '03331750097', @EmployeeEmail = 'fareed@gmail.com', @Street = '565 Park Ave', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '76726', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 36, @EmployeeName = 'Shazia', @EmployeePhone = '03762376603', @EmployeeEmail = 'shazia@gmail.com', @Street = '588 Third St', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '23610', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 37, @EmployeeName = 'Ayesha', @EmployeePhone = '03285220836', @EmployeeEmail = 'ayesha@gmail.com', @Street = '634 Second St', @City = 'Rawalpindi', @State = 'Punjab', @PostalCode = '70639', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 38, @EmployeeName = 'Fauzia', @EmployeePhone = '03599735333', @EmployeeEmail = 'fauzia@gmail.com', @Street = '153 Third St', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '33629', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 39, @EmployeeName = 'Naila', @EmployeePhone = '03163596003', @EmployeeEmail = 'naila@gmail.com', @Street = '839 Main St', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '75108', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 40, @EmployeeName = 'Tasneem', @EmployeePhone = '03971636022', @EmployeeEmail = 'tasneem@gmail.com', @Street = '970 Fifth Ave', @City = 'Lahore', @State = 'Punjab', @PostalCode = '96989', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 41, @EmployeeName = 'Zainab', @EmployeePhone = '03372777890', @EmployeeEmail = 'zainab@gmail.com', @Street = '401 Main St', @City = 'Quetta', @State = 'Khyber Pakhtunkhwa', @PostalCode = '57498', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 42, @EmployeeName = 'Nasir', @EmployeePhone = '03062679977', @EmployeeEmail = 'nasir@gmail.com', @Street = '448 Main St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '34898', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 43, @EmployeeName = 'Saira', @EmployeePhone = '03759564723', @EmployeeEmail = 'saira@gmail.com', @Street = '91 Second St', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '71186', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 44, @EmployeeName = 'Tasneem', @EmployeePhone = '03862982173', @EmployeeEmail = 'tasneem@gmail.com', @Street = '837 Third St', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '83518', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 45, @EmployeeName = 'Aqeel', @EmployeePhone = '03819877089', @EmployeeEmail = 'aqeel@gmail.com', @Street = '24 Second St', @City = 'Karachi', @State = 'Sindh', @PostalCode = '76666', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 46, @EmployeeName = 'Rukhsana', @EmployeePhone = '03557892467', @EmployeeEmail = 'rukhsana@gmail.com', @Street = '455 Third St', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '48443', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 47, @EmployeeName = 'Rehana', @EmployeePhone = '03516452850', @EmployeeEmail = 'rehana@gmail.com', @Street = '438 Third St', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '44409', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 48, @EmployeeName = 'Rukhsana', @EmployeePhone = '03013283418', @EmployeeEmail = 'rukhsana@gmail.com', @Street = '785 Park Ave', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '52479', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 49, @EmployeeName = 'Sehrish', @EmployeePhone = '03337804046', @EmployeeEmail = 'sehrish@gmail.com', @Street = '696 Fifth Ave', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '87232', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 50, @EmployeeName = 'Iram', @EmployeePhone = '03521110485', @EmployeeEmail = 'iram@gmail.com', @Street = '355 Park Ave', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '43131', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 51, @EmployeeName = 'Asad', @EmployeePhone = '03044335281', @EmployeeEmail = 'asad@gmail.com', @Street = '293 Second St', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '56342', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 52, @EmployeeName = 'Bushra', @EmployeePhone = '03310130856', @EmployeeEmail = 'bushra@gmail.com', @Street = '310 Fifth Ave', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '47758', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 53, @EmployeeName = 'Zoya', @EmployeePhone = '03234036936', @EmployeeEmail = 'zoya@gmail.com', @Street = '828 Third St', @City = 'Multan', @State = 'Balochistan', @PostalCode = '46900', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 54, @EmployeeName = 'Zeeshan', @EmployeePhone = '03286451405', @EmployeeEmail = 'zeeshan@gmail.com', @Street = '636 Main St', @City = 'Multan', @State = 'Sindh', @PostalCode = '20180', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 55, @EmployeeName = 'Arslan', @EmployeePhone = '03145322799', @EmployeeEmail = 'arslan@gmail.com', @Street = '465 Second St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '91687', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 56, @EmployeeName = 'Ahsan', @EmployeePhone = '03423002404', @EmployeeEmail = 'ahsan@gmail.com', @Street = '993 Park Ave', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '21636', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 57, @EmployeeName = 'Zeeshan', @EmployeePhone = '03437070245', @EmployeeEmail = 'zeeshan@gmail.com', @Street = '250 Park Ave', @City = 'Faisalabad', @State = 'Balochistan', @PostalCode = '11149', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 58, @EmployeeName = 'Shahida', @EmployeePhone = '03915077909', @EmployeeEmail = 'shahida@gmail.com', @Street = '527 Third St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '43436', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 59, @EmployeeName = 'Saira', @EmployeePhone = '03887606696', @EmployeeEmail = 'saira@gmail.com', @Street = '831 Second St', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '26186', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 60, @EmployeeName = 'Azhar', @EmployeePhone = '03981230559', @EmployeeEmail = 'azhar@gmail.com', @Street = '885 Fifth Ave', @City = 'Quetta', @State = 'Punjab', @PostalCode = '30999', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 61, @EmployeeName = 'Fareed', @EmployeePhone = '03141054913', @EmployeeEmail = 'fareed@gmail.com', @Street = '450 Third St', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '84006', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 62, @EmployeeName = 'Sadia', @EmployeePhone = '03891165490', @EmployeeEmail = 'sadia@gmail.com', @Street = '646 Park Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '85600', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 63, @EmployeeName = 'Abubakar', @EmployeePhone = '03490355420', @EmployeeEmail = 'abubakar@gmail.com', @Street = '963 Second St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '31880', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 64, @EmployeeName = 'Zoya', @EmployeePhone = '03469894898', @EmployeeEmail = 'zoya@gmail.com', @Street = '312 Third St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '17235', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 65, @EmployeeName = 'Adnan', @EmployeePhone = '03582272443', @EmployeeEmail = 'adnan@gmail.com', @Street = '430 Third St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '20637', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 66, @EmployeeName = 'Hassan', @EmployeePhone = '03281020020', @EmployeeEmail = 'hassan@gmail.com', @Street = '871 Main St', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '76132', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 67, @EmployeeName = 'Lubna', @EmployeePhone = '03911706944', @EmployeeEmail = 'lubna@gmail.com', @Street = '528 Main St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '60542', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 68, @EmployeeName = 'Noreen', @EmployeePhone = '03696295540', @EmployeeEmail = 'noreen@gmail.com', @Street = '90 Main St', @City = 'Multan', @State = 'Sindh', @PostalCode = '45533', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 69, @EmployeeName = 'Ahmed', @EmployeePhone = '03912469309', @EmployeeEmail = 'ahmed@gmail.com', @Street = '368 Main St', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '62337', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 70, @EmployeeName = 'Rukhsana', @EmployeePhone = '03435982752', @EmployeeEmail = 'rukhsana@gmail.com', @Street = '824 Main St', @City = 'Quetta', @State = 'Punjab', @PostalCode = '99759', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 71, @EmployeeName = 'Saima', @EmployeePhone = '03099147730', @EmployeeEmail = 'saima@gmail.com', @Street = '857 Park Ave', @City = 'Rawalpindi', @State = 'Balochistan', @PostalCode = '23208', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 72, @EmployeeName = 'Fareed', @EmployeePhone = '03188595736', @EmployeeEmail = 'fareed@gmail.com', @Street = '976 Park Ave', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '62109', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 73, @EmployeeName = 'Bushra', @EmployeePhone = '03768597969', @EmployeeEmail = 'bushra@gmail.com', @Street = '913 Park Ave', @City = 'Multan', @State = 'Sindh', @PostalCode = '79543', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 74, @EmployeeName = 'Rukhsana', @EmployeePhone = '03297805452', @EmployeeEmail = 'rukhsana@gmail.com', @Street = '26 Second St', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '42707', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 75, @EmployeeName = 'Kamran', @EmployeePhone = '03248466813', @EmployeeEmail = 'kamran@gmail.com', @Street = '606 Second St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '57069', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 76, @EmployeeName = 'Shumaila', @EmployeePhone = '03983875878', @EmployeeEmail = 'shumaila@gmail.com', @Street = '454 Main St', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '62963', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 77, @EmployeeName = 'Mehak', @EmployeePhone = '03773305602', @EmployeeEmail = 'mehak@gmail.com', @Street = '852 Third St', @City = 'Peshawar', @State = 'Balochistan', @PostalCode = '37145', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 78, @EmployeeName = 'Rafia', @EmployeePhone = '03716508120', @EmployeeEmail = 'rafia@gmail.com', @Street = '565 Second St', @City = 'Faisalabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '79588', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 79, @EmployeeName = 'Bushra', @EmployeePhone = '03861433914', @EmployeeEmail = 'bushra@gmail.com', @Street = '325 Fifth Ave', @City = 'Karachi', @State = 'Sindh', @PostalCode = '81124', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 80, @EmployeeName = 'Faisal', @EmployeePhone = '03062762402', @EmployeeEmail = 'faisal@gmail.com', @Street = '211 Fifth Ave', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '72751', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 81, @EmployeeName = 'Sadia', @EmployeePhone = '03042781021', @EmployeeEmail = 'sadia@gmail.com', @Street = '277 Park Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '47236', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 82, @EmployeeName = 'Ayesha', @EmployeePhone = '03549440548', @EmployeeEmail = 'ayesha@gmail.com', @Street = '880 Park Ave', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '32466', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 83, @EmployeeName = 'Usama', @EmployeePhone = '03488810578', @EmployeeEmail = 'usama@gmail.com', @Street = '158 Third St', @City = 'Multan', @State = 'Sindh', @PostalCode = '26476', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 84, @EmployeeName = 'Sana', @EmployeePhone = '03780292222', @EmployeeEmail = 'sana@gmail.com', @Street = '682 Main St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '74036', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 85, @EmployeeName = 'Kamran', @EmployeePhone = '03485995758', @EmployeeEmail = 'kamran@gmail.com', @Street = '24 Second St', @City = 'Lahore', @State = 'Khyber Pakhtunkhwa', @PostalCode = '33179', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 86, @EmployeeName = 'Rukhsar', @EmployeePhone = '03092740142', @EmployeeEmail = 'rukhsar@gmail.com', @Street = '904 Second St', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '62392', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 87, @EmployeeName = 'Rukhsana', @EmployeePhone = '03442454043', @EmployeeEmail = 'rukhsana@gmail.com', @Street = '296 Main St', @City = 'Lahore', @State = 'Sindh', @PostalCode = '77541', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 88, @EmployeeName = 'Rafia', @EmployeePhone = '03458660104', @EmployeeEmail = 'rafia@gmail.com', @Street = '666 Second St', @City = 'Islamabad', @State = 'Khyber Pakhtunkhwa', @PostalCode = '14608', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 89, @EmployeeName = 'Shazia', @EmployeePhone = '03217510645', @EmployeeEmail = 'shazia@gmail.com', @Street = '134 Fifth Ave', @City = 'Karachi', @State = 'Balochistan', @PostalCode = '32192', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 90, @EmployeeName = 'Sajid', @EmployeePhone = '03184230635', @EmployeeEmail = 'sajid@gmail.com', @Street = '166 Fifth Ave', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '17532', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 91, @EmployeeName = 'Qaiser', @EmployeePhone = '03529876898', @EmployeeEmail = 'qaiser@gmail.com', @Street = '347 Second St', @City = 'Rawalpindi', @State = 'Khyber Pakhtunkhwa', @PostalCode = '38641', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 92, @EmployeeName = 'Bushra', @EmployeePhone = '03755935737', @EmployeeEmail = 'bushra@gmail.com', @Street = '839 Main St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '60704', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 93, @EmployeeName = 'Ahmed', @EmployeePhone = '03832049367', @EmployeeEmail = 'ahmed@gmail.com', @Street = '828 Fifth Ave', @City = 'Multan', @State = 'Khyber Pakhtunkhwa', @PostalCode = '49253', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 94, @EmployeeName = 'Ali', @EmployeePhone = '03665970303', @EmployeeEmail = 'ali@gmail.com', @Street = '332 Park Ave', @City = 'Islamabad', @State = 'Punjab', @PostalCode = '48926', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 95, @EmployeeName = 'Amina', @EmployeePhone = '03354436941', @EmployeeEmail = 'amina@gmail.com', @Street = '70 Third St', @City = 'Faisalabad', @State = 'Sindh', @PostalCode = '65527', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 96, @EmployeeName = 'Saba', @EmployeePhone = '03270726262', @EmployeeEmail = 'saba@gmail.com', @Street = '685 Fifth Ave', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '86474', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 97, @EmployeeName = 'Fahad', @EmployeePhone = '03834449301', @EmployeeEmail = 'fahad@gmail.com', @Street = '634 Main St', @City = 'Peshawar', @State = 'Khyber Pakhtunkhwa', @PostalCode = '43586', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 98, @EmployeeName = 'Junaid', @EmployeePhone = '03263093026', @EmployeeEmail = 'junaid@gmail.com', @Street = '539 Third St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '76523', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 99, @EmployeeName = 'Sadia', @EmployeePhone = '03174342996', @EmployeeEmail = 'sadia@gmail.com', @Street = '832 Fifth Ave', @City = 'Peshawar', @State = 'Punjab', @PostalCode = '38940', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 100, @EmployeeName = 'Ahmed', @EmployeePhone = '03689323620', @EmployeeEmail = 'ahmed@gmail.com', @Street = '975 Third St', @City = 'Multan', @State = 'Punjab', @PostalCode = '84819', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 101, @EmployeeName = 'Mahira', @EmployeePhone = '03884138927', @EmployeeEmail = 'mahira@gmail.com', @Street = '269 Main St', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '76122', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 102, @EmployeeName = 'Qaiser', @EmployeePhone = '03194252558', @EmployeeEmail = 'qaiser@gmail.com', @Street = '624 Second St', @City = 'Karachi', @State = 'Balochistan', @PostalCode = '75358', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 103, @EmployeeName = 'Kashif', @EmployeePhone = '03470334065', @EmployeeEmail = 'kashif@gmail.com', @Street = '393 Fifth Ave', @City = 'Quetta', @State = 'Balochistan', @PostalCode = '66077', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 104, @EmployeeName = 'Shumaila', @EmployeePhone = '03076199107', @EmployeeEmail = 'shumaila@gmail.com', @Street = '566 Main St', @City = 'Peshawar', @State = 'Sindh', @PostalCode = '11414', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 105, @EmployeeName = 'Zunaira', @EmployeePhone = '03698905339', @EmployeeEmail = 'zunaira@gmail.com', @Street = '818 Park Ave', @City = 'Lahore', @State = 'Balochistan', @PostalCode = '29943', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 106, @EmployeeName = 'Majid', @EmployeePhone = '03637523308', @EmployeeEmail = 'majid@gmail.com', @Street = '264 Park Ave', @City = 'Islamabad', @State = 'Balochistan', @PostalCode = '95469', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 107, @EmployeeName = 'Fahad', @EmployeePhone = '03479158446', @EmployeeEmail = 'fahad@gmail.com', @Street = '793 Third St', @City = 'Karachi', @State = 'Punjab', @PostalCode = '78490', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 108, @EmployeeName = 'Noman', @EmployeePhone = '03476304732', @EmployeeEmail = 'noman@gmail.com', @Street = '70 Main St', @City = 'Faisalabad', @State = 'Punjab', @PostalCode = '58947', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 109, @EmployeeName = 'Fahad', @EmployeePhone = '03215881856', @EmployeeEmail = 'fahad@gmail.com', @Street = '965 Second St', @City = 'Multan', @State = 'Sindh', @PostalCode = '19682', @Country = 'Pakistan';


EXEC InsertEmployee @EmployeeID = 110, @EmployeeName = 'Omar', @EmployeePhone = '03943767702', @EmployeeEmail = 'omar@gmail.com', @Street = '628 Fifth Ave', @City = 'Rawalpindi', @State = 'Sindh', @PostalCode = '19175', @Country = 'Pakistan';

-- #endregion

SELECT *
FROM Employees


-- TRANSACTIONAL ENTITIES
CREATE TABLE Sales
(
    SaleNo INT,
    EmployeeID INT,
    CONSTRAINT PK_Sales PRIMARY KEY (SaleNo),
    CONSTRAINT FK_Sales_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
    ON DELETE SET NULL
    -- Consider SET NULL instead of CASCADE here
);

GO
CREATE PROCEDURE InsertSales
    @SaleNo INT,
    @EmployeeID INT
AS
BEGIN
    INSERT INTO Sales
        (SaleNo, EmployeeID)
    VALUES
        (@SaleNo, @EmployeeID);
END;

-- #region Inserting Sales

EXEC InsertSales @SaleNo = 1, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 2, @EmployeeID = 13;
EXEC InsertSales @SaleNo = 3, @EmployeeID = 44;
EXEC InsertSales @SaleNo = 4, @EmployeeID = 85;
EXEC InsertSales @SaleNo = 5, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 6, @EmployeeID = 82;
EXEC InsertSales @SaleNo = 7, @EmployeeID = 55;
EXEC InsertSales @SaleNo = 8, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 9, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 10, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 11, @EmployeeID = 5;
EXEC InsertSales @SaleNo = 12, @EmployeeID = 75;
EXEC InsertSales @SaleNo = 13, @EmployeeID = 23;
EXEC InsertSales @SaleNo = 14, @EmployeeID = 40;
EXEC InsertSales @SaleNo = 15, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 16, @EmployeeID = 102;
EXEC InsertSales @SaleNo = 17, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 18, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 19, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 20, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 21, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 22, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 23, @EmployeeID = 108;
EXEC InsertSales @SaleNo = 24, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 25, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 26, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 27, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 28, @EmployeeID = 49;
EXEC InsertSales @SaleNo = 29, @EmployeeID = 72;
EXEC InsertSales @SaleNo = 30, @EmployeeID = 67;
EXEC InsertSales @SaleNo = 31, @EmployeeID = 69;
EXEC InsertSales @SaleNo = 32, @EmployeeID = 24;
EXEC InsertSales @SaleNo = 33, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 34, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 35, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 36, @EmployeeID = 13;
EXEC InsertSales @SaleNo = 37, @EmployeeID = 76;
EXEC InsertSales @SaleNo = 38, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 39, @EmployeeID = 46;
EXEC InsertSales @SaleNo = 40, @EmployeeID = 106;
EXEC InsertSales @SaleNo = 41, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 42, @EmployeeID = 81;
EXEC InsertSales @SaleNo = 43, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 44, @EmployeeID = 11;
EXEC InsertSales @SaleNo = 45, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 46, @EmployeeID = 104;
EXEC InsertSales @SaleNo = 47, @EmployeeID = 66;
EXEC InsertSales @SaleNo = 48, @EmployeeID = 52;
EXEC InsertSales @SaleNo = 49, @EmployeeID = 96;
EXEC InsertSales @SaleNo = 50, @EmployeeID = 86;
EXEC InsertSales @SaleNo = 51, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 52, @EmployeeID = 77;
EXEC InsertSales @SaleNo = 53, @EmployeeID = 90;
EXEC InsertSales @SaleNo = 54, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 55, @EmployeeID = 83;
EXEC InsertSales @SaleNo = 56, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 57, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 58, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 59, @EmployeeID = 26;
EXEC InsertSales @SaleNo = 60, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 61, @EmployeeID = 49;
EXEC InsertSales @SaleNo = 62, @EmployeeID = 65;
EXEC InsertSales @SaleNo = 63, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 64, @EmployeeID = 21;
EXEC InsertSales @SaleNo = 65, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 66, @EmployeeID = 23;
EXEC InsertSales @SaleNo = 67, @EmployeeID = 25;
EXEC InsertSales @SaleNo = 68, @EmployeeID = 63;
EXEC InsertSales @SaleNo = 69, @EmployeeID = 35;
EXEC InsertSales @SaleNo = 70, @EmployeeID = 55;
EXEC InsertSales @SaleNo = 71, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 72, @EmployeeID = 93;
EXEC InsertSales @SaleNo = 73, @EmployeeID = 100;
EXEC InsertSales @SaleNo = 74, @EmployeeID = 63;
EXEC InsertSales @SaleNo = 75, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 76, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 77, @EmployeeID = 65;
EXEC InsertSales @SaleNo = 78, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 79, @EmployeeID = 1;
EXEC InsertSales @SaleNo = 80, @EmployeeID = 5;
EXEC InsertSales @SaleNo = 81, @EmployeeID = 43;
EXEC InsertSales @SaleNo = 82, @EmployeeID = 74;
EXEC InsertSales @SaleNo = 83, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 84, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 85, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 86, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 87, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 88, @EmployeeID = 41;
EXEC InsertSales @SaleNo = 89, @EmployeeID = 101;
EXEC InsertSales @SaleNo = 90, @EmployeeID = 87;
EXEC InsertSales @SaleNo = 91, @EmployeeID = 103;
EXEC InsertSales @SaleNo = 92, @EmployeeID = 69;
EXEC InsertSales @SaleNo = 93, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 94, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 95, @EmployeeID = 51;
EXEC InsertSales @SaleNo = 96, @EmployeeID = 80;
EXEC InsertSales @SaleNo = 97, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 98, @EmployeeID = 84;
EXEC InsertSales @SaleNo = 99, @EmployeeID = 94;
EXEC InsertSales @SaleNo = 100, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 101, @EmployeeID = 21;
EXEC InsertSales @SaleNo = 102, @EmployeeID = 70;
EXEC InsertSales @SaleNo = 103, @EmployeeID = 90;
EXEC InsertSales @SaleNo = 104, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 105, @EmployeeID = 75;
EXEC InsertSales @SaleNo = 106, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 107, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 108, @EmployeeID = 82;
EXEC InsertSales @SaleNo = 109, @EmployeeID = 57;
EXEC InsertSales @SaleNo = 110, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 111, @EmployeeID = 104;
EXEC InsertSales @SaleNo = 112, @EmployeeID = 102;
EXEC InsertSales @SaleNo = 113, @EmployeeID = 90;
EXEC InsertSales @SaleNo = 114, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 115, @EmployeeID = 78;
EXEC InsertSales @SaleNo = 116, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 117, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 118, @EmployeeID = 85;
EXEC InsertSales @SaleNo = 119, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 120, @EmployeeID = 88;
EXEC InsertSales @SaleNo = 121, @EmployeeID = 73;
EXEC InsertSales @SaleNo = 122, @EmployeeID = 29;
EXEC InsertSales @SaleNo = 123, @EmployeeID = 65;
EXEC InsertSales @SaleNo = 124, @EmployeeID = 106;
EXEC InsertSales @SaleNo = 125, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 126, @EmployeeID = 26;
EXEC InsertSales @SaleNo = 127, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 128, @EmployeeID = 27;
EXEC InsertSales @SaleNo = 129, @EmployeeID = 70;
EXEC InsertSales @SaleNo = 130, @EmployeeID = 1;
EXEC InsertSales @SaleNo = 131, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 132, @EmployeeID = 25;
EXEC InsertSales @SaleNo = 133, @EmployeeID = 87;
EXEC InsertSales @SaleNo = 134, @EmployeeID = 74;
EXEC InsertSales @SaleNo = 135, @EmployeeID = 86;
EXEC InsertSales @SaleNo = 136, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 137, @EmployeeID = 51;
EXEC InsertSales @SaleNo = 138, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 139, @EmployeeID = 45;
EXEC InsertSales @SaleNo = 140, @EmployeeID = 88;
EXEC InsertSales @SaleNo = 141, @EmployeeID = 52;
EXEC InsertSales @SaleNo = 142, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 143, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 144, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 145, @EmployeeID = 84;
EXEC InsertSales @SaleNo = 146, @EmployeeID = 65;
EXEC InsertSales @SaleNo = 147, @EmployeeID = 89;
EXEC InsertSales @SaleNo = 148, @EmployeeID = 5;
EXEC InsertSales @SaleNo = 149, @EmployeeID = 54;
EXEC InsertSales @SaleNo = 150, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 151, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 152, @EmployeeID = 73;
EXEC InsertSales @SaleNo = 153, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 154, @EmployeeID = 13;
EXEC InsertSales @SaleNo = 155, @EmployeeID = 94;
EXEC InsertSales @SaleNo = 156, @EmployeeID = 80;
EXEC InsertSales @SaleNo = 157, @EmployeeID = 67;
EXEC InsertSales @SaleNo = 158, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 159, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 160, @EmployeeID = 51;
EXEC InsertSales @SaleNo = 161, @EmployeeID = 34;
EXEC InsertSales @SaleNo = 162, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 163, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 164, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 165, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 166, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 167, @EmployeeID = 57;
EXEC InsertSales @SaleNo = 168, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 169, @EmployeeID = 99;
EXEC InsertSales @SaleNo = 170, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 171, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 172, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 173, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 174, @EmployeeID = 69;
EXEC InsertSales @SaleNo = 175, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 176, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 177, @EmployeeID = 62;
EXEC InsertSales @SaleNo = 178, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 179, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 180, @EmployeeID = 19;
EXEC InsertSales @SaleNo = 181, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 182, @EmployeeID = 77;
EXEC InsertSales @SaleNo = 183, @EmployeeID = 62;
EXEC InsertSales @SaleNo = 184, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 185, @EmployeeID = 108;
EXEC InsertSales @SaleNo = 186, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 187, @EmployeeID = 23;
EXEC InsertSales @SaleNo = 188, @EmployeeID = 29;
EXEC InsertSales @SaleNo = 189, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 190, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 191, @EmployeeID = 13;
EXEC InsertSales @SaleNo = 192, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 193, @EmployeeID = 77;
EXEC InsertSales @SaleNo = 194, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 195, @EmployeeID = 36;
EXEC InsertSales @SaleNo = 196, @EmployeeID = 104;
EXEC InsertSales @SaleNo = 197, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 198, @EmployeeID = 61;
EXEC InsertSales @SaleNo = 199, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 200, @EmployeeID = 72;
EXEC InsertSales @SaleNo = 201, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 202, @EmployeeID = 47;
EXEC InsertSales @SaleNo = 203, @EmployeeID = 92;
EXEC InsertSales @SaleNo = 204, @EmployeeID = 106;
EXEC InsertSales @SaleNo = 205, @EmployeeID = 33;
EXEC InsertSales @SaleNo = 206, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 207, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 208, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 209, @EmployeeID = 47;
EXEC InsertSales @SaleNo = 210, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 211, @EmployeeID = 47;
EXEC InsertSales @SaleNo = 212, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 213, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 214, @EmployeeID = 16;
EXEC InsertSales @SaleNo = 215, @EmployeeID = 33;
EXEC InsertSales @SaleNo = 216, @EmployeeID = 75;
EXEC InsertSales @SaleNo = 217, @EmployeeID = 82;
EXEC InsertSales @SaleNo = 218, @EmployeeID = 40;
EXEC InsertSales @SaleNo = 219, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 220, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 221, @EmployeeID = 61;
EXEC InsertSales @SaleNo = 222, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 223, @EmployeeID = 54;
EXEC InsertSales @SaleNo = 224, @EmployeeID = 36;
EXEC InsertSales @SaleNo = 225, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 226, @EmployeeID = 55;
EXEC InsertSales @SaleNo = 227, @EmployeeID = 62;
EXEC InsertSales @SaleNo = 228, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 229, @EmployeeID = 43;
EXEC InsertSales @SaleNo = 230, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 231, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 232, @EmployeeID = 69;
EXEC InsertSales @SaleNo = 233, @EmployeeID = 84;
EXEC InsertSales @SaleNo = 234, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 235, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 236, @EmployeeID = 40;
EXEC InsertSales @SaleNo = 237, @EmployeeID = 60;
EXEC InsertSales @SaleNo = 238, @EmployeeID = 31;
EXEC InsertSales @SaleNo = 239, @EmployeeID = 29;
EXEC InsertSales @SaleNo = 240, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 241, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 242, @EmployeeID = 27;
EXEC InsertSales @SaleNo = 243, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 244, @EmployeeID = 104;
EXEC InsertSales @SaleNo = 245, @EmployeeID = 24;
EXEC InsertSales @SaleNo = 246, @EmployeeID = 11;
EXEC InsertSales @SaleNo = 247, @EmployeeID = 81;
EXEC InsertSales @SaleNo = 248, @EmployeeID = 93;
EXEC InsertSales @SaleNo = 249, @EmployeeID = 2;
EXEC InsertSales @SaleNo = 250, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 251, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 252, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 253, @EmployeeID = 50;
EXEC InsertSales @SaleNo = 254, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 255, @EmployeeID = 81;
EXEC InsertSales @SaleNo = 256, @EmployeeID = 78;
EXEC InsertSales @SaleNo = 257, @EmployeeID = 1;
EXEC InsertSales @SaleNo = 258, @EmployeeID = 36;
EXEC InsertSales @SaleNo = 259, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 260, @EmployeeID = 75;
EXEC InsertSales @SaleNo = 261, @EmployeeID = 61;
EXEC InsertSales @SaleNo = 262, @EmployeeID = 85;
EXEC InsertSales @SaleNo = 263, @EmployeeID = 33;
EXEC InsertSales @SaleNo = 264, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 265, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 266, @EmployeeID = 27;
EXEC InsertSales @SaleNo = 267, @EmployeeID = 36;
EXEC InsertSales @SaleNo = 268, @EmployeeID = 78;
EXEC InsertSales @SaleNo = 269, @EmployeeID = 36;
EXEC InsertSales @SaleNo = 270, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 271, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 272, @EmployeeID = 103;
EXEC InsertSales @SaleNo = 273, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 274, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 275, @EmployeeID = 81;
EXEC InsertSales @SaleNo = 276, @EmployeeID = 18;
EXEC InsertSales @SaleNo = 277, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 278, @EmployeeID = 96;
EXEC InsertSales @SaleNo = 279, @EmployeeID = 51;
EXEC InsertSales @SaleNo = 280, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 281, @EmployeeID = 35;
EXEC InsertSales @SaleNo = 282, @EmployeeID = 88;
EXEC InsertSales @SaleNo = 283, @EmployeeID = 74;
EXEC InsertSales @SaleNo = 284, @EmployeeID = 17;
EXEC InsertSales @SaleNo = 285, @EmployeeID = 62;
EXEC InsertSales @SaleNo = 286, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 287, @EmployeeID = 2;
EXEC InsertSales @SaleNo = 288, @EmployeeID = 67;
EXEC InsertSales @SaleNo = 289, @EmployeeID = 80;
EXEC InsertSales @SaleNo = 290, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 291, @EmployeeID = 62;
EXEC InsertSales @SaleNo = 292, @EmployeeID = 2;
EXEC InsertSales @SaleNo = 293, @EmployeeID = 43;
EXEC InsertSales @SaleNo = 294, @EmployeeID = 66;
EXEC InsertSales @SaleNo = 295, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 296, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 297, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 298, @EmployeeID = 26;
EXEC InsertSales @SaleNo = 299, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 300, @EmployeeID = 68;
EXEC InsertSales @SaleNo = 301, @EmployeeID = 99;
EXEC InsertSales @SaleNo = 302, @EmployeeID = 69;
EXEC InsertSales @SaleNo = 303, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 304, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 305, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 306, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 307, @EmployeeID = 53;
EXEC InsertSales @SaleNo = 308, @EmployeeID = 19;
EXEC InsertSales @SaleNo = 309, @EmployeeID = 67;
EXEC InsertSales @SaleNo = 310, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 311, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 312, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 313, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 314, @EmployeeID = 55;
EXEC InsertSales @SaleNo = 315, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 316, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 317, @EmployeeID = 19;
EXEC InsertSales @SaleNo = 318, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 319, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 320, @EmployeeID = 72;
EXEC InsertSales @SaleNo = 321, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 322, @EmployeeID = 53;
EXEC InsertSales @SaleNo = 323, @EmployeeID = 108;
EXEC InsertSales @SaleNo = 324, @EmployeeID = 11;
EXEC InsertSales @SaleNo = 325, @EmployeeID = 108;
EXEC InsertSales @SaleNo = 326, @EmployeeID = 52;
EXEC InsertSales @SaleNo = 327, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 328, @EmployeeID = 25;
EXEC InsertSales @SaleNo = 329, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 330, @EmployeeID = 77;
EXEC InsertSales @SaleNo = 331, @EmployeeID = 17;
EXEC InsertSales @SaleNo = 332, @EmployeeID = 68;
EXEC InsertSales @SaleNo = 333, @EmployeeID = 23;
EXEC InsertSales @SaleNo = 334, @EmployeeID = 11;
EXEC InsertSales @SaleNo = 335, @EmployeeID = 100;
EXEC InsertSales @SaleNo = 336, @EmployeeID = 46;
EXEC InsertSales @SaleNo = 337, @EmployeeID = 83;
EXEC InsertSales @SaleNo = 338, @EmployeeID = 71;
EXEC InsertSales @SaleNo = 339, @EmployeeID = 45;
EXEC InsertSales @SaleNo = 340, @EmployeeID = 96;
EXEC InsertSales @SaleNo = 341, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 342, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 343, @EmployeeID = 106;
EXEC InsertSales @SaleNo = 344, @EmployeeID = 68;
EXEC InsertSales @SaleNo = 345, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 346, @EmployeeID = 108;
EXEC InsertSales @SaleNo = 347, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 348, @EmployeeID = 8;
EXEC InsertSales @SaleNo = 349, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 350, @EmployeeID = 26;
EXEC InsertSales @SaleNo = 351, @EmployeeID = 63;
EXEC InsertSales @SaleNo = 352, @EmployeeID = 68;
EXEC InsertSales @SaleNo = 353, @EmployeeID = 57;
EXEC InsertSales @SaleNo = 354, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 355, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 356, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 357, @EmployeeID = 99;
EXEC InsertSales @SaleNo = 358, @EmployeeID = 71;
EXEC InsertSales @SaleNo = 359, @EmployeeID = 57;
EXEC InsertSales @SaleNo = 360, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 361, @EmployeeID = 25;
EXEC InsertSales @SaleNo = 362, @EmployeeID = 83;
EXEC InsertSales @SaleNo = 363, @EmployeeID = 63;
EXEC InsertSales @SaleNo = 364, @EmployeeID = 31;
EXEC InsertSales @SaleNo = 365, @EmployeeID = 90;
EXEC InsertSales @SaleNo = 366, @EmployeeID = 54;
EXEC InsertSales @SaleNo = 367, @EmployeeID = 84;
EXEC InsertSales @SaleNo = 368, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 369, @EmployeeID = 41;
EXEC InsertSales @SaleNo = 370, @EmployeeID = 40;
EXEC InsertSales @SaleNo = 371, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 372, @EmployeeID = 94;
EXEC InsertSales @SaleNo = 373, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 374, @EmployeeID = 81;
EXEC InsertSales @SaleNo = 375, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 376, @EmployeeID = 89;
EXEC InsertSales @SaleNo = 377, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 378, @EmployeeID = 94;
EXEC InsertSales @SaleNo = 379, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 380, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 381, @EmployeeID = 93;
EXEC InsertSales @SaleNo = 382, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 383, @EmployeeID = 49;
EXEC InsertSales @SaleNo = 384, @EmployeeID = 103;
EXEC InsertSales @SaleNo = 385, @EmployeeID = 77;
EXEC InsertSales @SaleNo = 386, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 387, @EmployeeID = 73;
EXEC InsertSales @SaleNo = 388, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 389, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 390, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 391, @EmployeeID = 102;
EXEC InsertSales @SaleNo = 392, @EmployeeID = 80;
EXEC InsertSales @SaleNo = 393, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 394, @EmployeeID = 41;
EXEC InsertSales @SaleNo = 395, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 396, @EmployeeID = 87;
EXEC InsertSales @SaleNo = 397, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 398, @EmployeeID = 31;
EXEC InsertSales @SaleNo = 399, @EmployeeID = 41;
EXEC InsertSales @SaleNo = 400, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 401, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 402, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 403, @EmployeeID = 61;
EXEC InsertSales @SaleNo = 404, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 405, @EmployeeID = 21;
EXEC InsertSales @SaleNo = 406, @EmployeeID = 19;
EXEC InsertSales @SaleNo = 407, @EmployeeID = 13;
EXEC InsertSales @SaleNo = 408, @EmployeeID = 27;
EXEC InsertSales @SaleNo = 409, @EmployeeID = 61;
EXEC InsertSales @SaleNo = 410, @EmployeeID = 50;
EXEC InsertSales @SaleNo = 411, @EmployeeID = 108;
EXEC InsertSales @SaleNo = 412, @EmployeeID = 106;
EXEC InsertSales @SaleNo = 413, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 414, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 415, @EmployeeID = 85;
EXEC InsertSales @SaleNo = 416, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 417, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 418, @EmployeeID = 35;
EXEC InsertSales @SaleNo = 419, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 420, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 421, @EmployeeID = 16;
EXEC InsertSales @SaleNo = 422, @EmployeeID = 71;
EXEC InsertSales @SaleNo = 423, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 424, @EmployeeID = 76;
EXEC InsertSales @SaleNo = 425, @EmployeeID = 34;
EXEC InsertSales @SaleNo = 426, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 427, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 428, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 429, @EmployeeID = 80;
EXEC InsertSales @SaleNo = 430, @EmployeeID = 87;
EXEC InsertSales @SaleNo = 431, @EmployeeID = 44;
EXEC InsertSales @SaleNo = 432, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 433, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 434, @EmployeeID = 91;
EXEC InsertSales @SaleNo = 435, @EmployeeID = 101;
EXEC InsertSales @SaleNo = 436, @EmployeeID = 70;
EXEC InsertSales @SaleNo = 437, @EmployeeID = 25;
EXEC InsertSales @SaleNo = 438, @EmployeeID = 24;
EXEC InsertSales @SaleNo = 439, @EmployeeID = 75;
EXEC InsertSales @SaleNo = 440, @EmployeeID = 13;
EXEC InsertSales @SaleNo = 441, @EmployeeID = 2;
EXEC InsertSales @SaleNo = 442, @EmployeeID = 66;
EXEC InsertSales @SaleNo = 443, @EmployeeID = 106;
EXEC InsertSales @SaleNo = 444, @EmployeeID = 71;
EXEC InsertSales @SaleNo = 445, @EmployeeID = 16;
EXEC InsertSales @SaleNo = 446, @EmployeeID = 73;
EXEC InsertSales @SaleNo = 447, @EmployeeID = 43;
EXEC InsertSales @SaleNo = 448, @EmployeeID = 41;
EXEC InsertSales @SaleNo = 449, @EmployeeID = 89;
EXEC InsertSales @SaleNo = 450, @EmployeeID = 103;
EXEC InsertSales @SaleNo = 451, @EmployeeID = 70;
EXEC InsertSales @SaleNo = 452, @EmployeeID = 18;
EXEC InsertSales @SaleNo = 453, @EmployeeID = 68;
EXEC InsertSales @SaleNo = 454, @EmployeeID = 66;
EXEC InsertSales @SaleNo = 455, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 456, @EmployeeID = 31;
EXEC InsertSales @SaleNo = 457, @EmployeeID = 44;
EXEC InsertSales @SaleNo = 458, @EmployeeID = 106;
EXEC InsertSales @SaleNo = 459, @EmployeeID = 17;
EXEC InsertSales @SaleNo = 460, @EmployeeID = 104;
EXEC InsertSales @SaleNo = 461, @EmployeeID = 61;
EXEC InsertSales @SaleNo = 462, @EmployeeID = 1;
EXEC InsertSales @SaleNo = 463, @EmployeeID = 86;
EXEC InsertSales @SaleNo = 464, @EmployeeID = 89;
EXEC InsertSales @SaleNo = 465, @EmployeeID = 52;
EXEC InsertSales @SaleNo = 466, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 467, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 468, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 469, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 470, @EmployeeID = 94;
EXEC InsertSales @SaleNo = 471, @EmployeeID = 34;
EXEC InsertSales @SaleNo = 472, @EmployeeID = 94;
EXEC InsertSales @SaleNo = 473, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 474, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 475, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 476, @EmployeeID = 45;
EXEC InsertSales @SaleNo = 477, @EmployeeID = 32;
EXEC InsertSales @SaleNo = 478, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 479, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 480, @EmployeeID = 55;
EXEC InsertSales @SaleNo = 481, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 482, @EmployeeID = 85;
EXEC InsertSales @SaleNo = 483, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 484, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 485, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 486, @EmployeeID = 89;
EXEC InsertSales @SaleNo = 487, @EmployeeID = 100;
EXEC InsertSales @SaleNo = 488, @EmployeeID = 34;
EXEC InsertSales @SaleNo = 489, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 490, @EmployeeID = 60;
EXEC InsertSales @SaleNo = 491, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 492, @EmployeeID = 76;
EXEC InsertSales @SaleNo = 493, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 494, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 495, @EmployeeID = 93;
EXEC InsertSales @SaleNo = 496, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 497, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 498, @EmployeeID = 67;
EXEC InsertSales @SaleNo = 499, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 500, @EmployeeID = 27;
EXEC InsertSales @SaleNo = 501, @EmployeeID = 103;
EXEC InsertSales @SaleNo = 502, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 503, @EmployeeID = 63;
EXEC InsertSales @SaleNo = 504, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 505, @EmployeeID = 36;
EXEC InsertSales @SaleNo = 506, @EmployeeID = 99;
EXEC InsertSales @SaleNo = 507, @EmployeeID = 57;
EXEC InsertSales @SaleNo = 508, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 509, @EmployeeID = 65;
EXEC InsertSales @SaleNo = 510, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 511, @EmployeeID = 87;
EXEC InsertSales @SaleNo = 512, @EmployeeID = 16;
EXEC InsertSales @SaleNo = 513, @EmployeeID = 66;
EXEC InsertSales @SaleNo = 514, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 515, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 516, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 517, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 518, @EmployeeID = 2;
EXEC InsertSales @SaleNo = 519, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 520, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 521, @EmployeeID = 81;
EXEC InsertSales @SaleNo = 522, @EmployeeID = 25;
EXEC InsertSales @SaleNo = 523, @EmployeeID = 76;
EXEC InsertSales @SaleNo = 524, @EmployeeID = 99;
EXEC InsertSales @SaleNo = 525, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 526, @EmployeeID = 102;
EXEC InsertSales @SaleNo = 527, @EmployeeID = 66;
EXEC InsertSales @SaleNo = 528, @EmployeeID = 45;
EXEC InsertSales @SaleNo = 529, @EmployeeID = 5;
EXEC InsertSales @SaleNo = 530, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 531, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 532, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 533, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 534, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 535, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 536, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 537, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 538, @EmployeeID = 19;
EXEC InsertSales @SaleNo = 539, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 540, @EmployeeID = 93;
EXEC InsertSales @SaleNo = 541, @EmployeeID = 35;
EXEC InsertSales @SaleNo = 542, @EmployeeID = 55;
EXEC InsertSales @SaleNo = 543, @EmployeeID = 58;
EXEC InsertSales @SaleNo = 544, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 545, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 546, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 547, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 548, @EmployeeID = 29;
EXEC InsertSales @SaleNo = 549, @EmployeeID = 70;
EXEC InsertSales @SaleNo = 550, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 551, @EmployeeID = 77;
EXEC InsertSales @SaleNo = 552, @EmployeeID = 29;
EXEC InsertSales @SaleNo = 553, @EmployeeID = 31;
EXEC InsertSales @SaleNo = 554, @EmployeeID = 48;
EXEC InsertSales @SaleNo = 555, @EmployeeID = 29;
EXEC InsertSales @SaleNo = 556, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 557, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 558, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 559, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 560, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 561, @EmployeeID = 23;
EXEC InsertSales @SaleNo = 562, @EmployeeID = 69;
EXEC InsertSales @SaleNo = 563, @EmployeeID = 90;
EXEC InsertSales @SaleNo = 564, @EmployeeID = 34;
EXEC InsertSales @SaleNo = 565, @EmployeeID = 99;
EXEC InsertSales @SaleNo = 566, @EmployeeID = 83;
EXEC InsertSales @SaleNo = 567, @EmployeeID = 32;
EXEC InsertSales @SaleNo = 568, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 569, @EmployeeID = 41;
EXEC InsertSales @SaleNo = 570, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 571, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 572, @EmployeeID = 99;
EXEC InsertSales @SaleNo = 573, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 574, @EmployeeID = 43;
EXEC InsertSales @SaleNo = 575, @EmployeeID = 61;
EXEC InsertSales @SaleNo = 576, @EmployeeID = 66;
EXEC InsertSales @SaleNo = 577, @EmployeeID = 52;
EXEC InsertSales @SaleNo = 578, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 579, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 580, @EmployeeID = 78;
EXEC InsertSales @SaleNo = 581, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 582, @EmployeeID = 68;
EXEC InsertSales @SaleNo = 583, @EmployeeID = 69;
EXEC InsertSales @SaleNo = 584, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 585, @EmployeeID = 16;
EXEC InsertSales @SaleNo = 586, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 587, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 588, @EmployeeID = 85;
EXEC InsertSales @SaleNo = 589, @EmployeeID = 108;
EXEC InsertSales @SaleNo = 590, @EmployeeID = 8;
EXEC InsertSales @SaleNo = 591, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 592, @EmployeeID = 102;
EXEC InsertSales @SaleNo = 593, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 594, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 595, @EmployeeID = 90;
EXEC InsertSales @SaleNo = 596, @EmployeeID = 1;
EXEC InsertSales @SaleNo = 597, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 598, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 599, @EmployeeID = 40;
EXEC InsertSales @SaleNo = 600, @EmployeeID = 65;
EXEC InsertSales @SaleNo = 601, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 602, @EmployeeID = 21;
EXEC InsertSales @SaleNo = 603, @EmployeeID = 47;
EXEC InsertSales @SaleNo = 604, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 605, @EmployeeID = 73;
EXEC InsertSales @SaleNo = 606, @EmployeeID = 80;
EXEC InsertSales @SaleNo = 607, @EmployeeID = 46;
EXEC InsertSales @SaleNo = 608, @EmployeeID = 3;
EXEC InsertSales @SaleNo = 609, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 610, @EmployeeID = 109;
EXEC InsertSales @SaleNo = 611, @EmployeeID = 5;
EXEC InsertSales @SaleNo = 612, @EmployeeID = 100;
EXEC InsertSales @SaleNo = 613, @EmployeeID = 5;
EXEC InsertSales @SaleNo = 614, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 615, @EmployeeID = 34;
EXEC InsertSales @SaleNo = 616, @EmployeeID = 49;
EXEC InsertSales @SaleNo = 617, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 618, @EmployeeID = 17;
EXEC InsertSales @SaleNo = 619, @EmployeeID = 92;
EXEC InsertSales @SaleNo = 620, @EmployeeID = 75;
EXEC InsertSales @SaleNo = 621, @EmployeeID = 78;
EXEC InsertSales @SaleNo = 622, @EmployeeID = 30;
EXEC InsertSales @SaleNo = 623, @EmployeeID = 97;
EXEC InsertSales @SaleNo = 624, @EmployeeID = 15;
EXEC InsertSales @SaleNo = 625, @EmployeeID = 76;
EXEC InsertSales @SaleNo = 626, @EmployeeID = 45;
EXEC InsertSales @SaleNo = 627, @EmployeeID = 103;
EXEC InsertSales @SaleNo = 628, @EmployeeID = 102;
EXEC InsertSales @SaleNo = 629, @EmployeeID = 29;
EXEC InsertSales @SaleNo = 630, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 631, @EmployeeID = 37;
EXEC InsertSales @SaleNo = 632, @EmployeeID = 19;
EXEC InsertSales @SaleNo = 633, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 634, @EmployeeID = 7;
EXEC InsertSales @SaleNo = 635, @EmployeeID = 53;
EXEC InsertSales @SaleNo = 636, @EmployeeID = 67;
EXEC InsertSales @SaleNo = 637, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 638, @EmployeeID = 4;
EXEC InsertSales @SaleNo = 639, @EmployeeID = 9;
EXEC InsertSales @SaleNo = 640, @EmployeeID = 79;
EXEC InsertSales @SaleNo = 641, @EmployeeID = 41;
EXEC InsertSales @SaleNo = 642, @EmployeeID = 95;
EXEC InsertSales @SaleNo = 643, @EmployeeID = 1;
EXEC InsertSales @SaleNo = 644, @EmployeeID = 56;
EXEC InsertSales @SaleNo = 645, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 646, @EmployeeID = 82;
EXEC InsertSales @SaleNo = 647, @EmployeeID = 32;
EXEC InsertSales @SaleNo = 648, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 649, @EmployeeID = 107;
EXEC InsertSales @SaleNo = 650, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 651, @EmployeeID = 26;
EXEC InsertSales @SaleNo = 652, @EmployeeID = 60;
EXEC InsertSales @SaleNo = 653, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 654, @EmployeeID = 42;
EXEC InsertSales @SaleNo = 655, @EmployeeID = 47;
EXEC InsertSales @SaleNo = 656, @EmployeeID = 14;
EXEC InsertSales @SaleNo = 657, @EmployeeID = 87;
EXEC InsertSales @SaleNo = 658, @EmployeeID = 22;
EXEC InsertSales @SaleNo = 659, @EmployeeID = 104;
EXEC InsertSales @SaleNo = 660, @EmployeeID = 96;
EXEC InsertSales @SaleNo = 661, @EmployeeID = 84;
EXEC InsertSales @SaleNo = 662, @EmployeeID = 49;
EXEC InsertSales @SaleNo = 663, @EmployeeID = 101;
EXEC InsertSales @SaleNo = 664, @EmployeeID = 52;
EXEC InsertSales @SaleNo = 665, @EmployeeID = 23;
EXEC InsertSales @SaleNo = 666, @EmployeeID = 18;
EXEC InsertSales @SaleNo = 667, @EmployeeID = 17;
EXEC InsertSales @SaleNo = 668, @EmployeeID = 51;
EXEC InsertSales @SaleNo = 669, @EmployeeID = 10;
EXEC InsertSales @SaleNo = 670, @EmployeeID = 31;
EXEC InsertSales @SaleNo = 671, @EmployeeID = 105;
EXEC InsertSales @SaleNo = 672, @EmployeeID = 12;
EXEC InsertSales @SaleNo = 673, @EmployeeID = 11;
EXEC InsertSales @SaleNo = 674, @EmployeeID = 43;
EXEC InsertSales @SaleNo = 675, @EmployeeID = 24;
EXEC InsertSales @SaleNo = 676, @EmployeeID = 1;
EXEC InsertSales @SaleNo = 677, @EmployeeID = 39;
EXEC InsertSales @SaleNo = 678, @EmployeeID = 6;
EXEC InsertSales @SaleNo = 679, @EmployeeID = 33;
EXEC InsertSales @SaleNo = 680, @EmployeeID = 38;
EXEC InsertSales @SaleNo = 681, @EmployeeID = 59;
EXEC InsertSales @SaleNo = 682, @EmployeeID = 92;
EXEC InsertSales @SaleNo = 683, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 684, @EmployeeID = 57;
EXEC InsertSales @SaleNo = 685, @EmployeeID = 20;
EXEC InsertSales @SaleNo = 686, @EmployeeID = 80;
EXEC InsertSales @SaleNo = 687, @EmployeeID = 94;
EXEC InsertSales @SaleNo = 688, @EmployeeID = 98;
EXEC InsertSales @SaleNo = 689, @EmployeeID = 71;
EXEC InsertSales @SaleNo = 690, @EmployeeID = 53;
EXEC InsertSales @SaleNo = 691, @EmployeeID = 53;
EXEC InsertSales @SaleNo = 692, @EmployeeID = 110;
EXEC InsertSales @SaleNo = 693, @EmployeeID = 64;
EXEC InsertSales @SaleNo = 694, @EmployeeID = 28;
EXEC InsertSales @SaleNo = 695, @EmployeeID = 31;
EXEC InsertSales @SaleNo = 696, @EmployeeID = 27;
EXEC InsertSales @SaleNo = 697, @EmployeeID = 16;
EXEC InsertSales @SaleNo = 698, @EmployeeID = 51;
EXEC InsertSales @SaleNo = 699, @EmployeeID = 25;
EXEC InsertSales @SaleNo = 700, @EmployeeID = 14;

-- #endregion

SELECT *
FROM Sales;



CREATE TABLE Orders
(
    OrderNo INT,
    CustomerID INT,
    CONSTRAINT PK_Orders PRIMARY KEY (OrderNo),
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
    -- Added DELETE CASCADE for cascading customer deletion
);

GO
CREATE PROCEDURE InsertOrder
    @OrderNo INT,
    @CustomerID INT
AS
BEGIN
    INSERT INTO Orders
        (OrderNo, CustomerID)
    VALUES
        (@OrderNo, @CustomerID);
END;

-- #region Insert Orders
EXEC InsertOrder @OrderNo = 1, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 2, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 3, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 4, @CustomerID = 18;
EXEC InsertOrder @OrderNo = 5, @CustomerID = 11;
EXEC InsertOrder @OrderNo = 6, @CustomerID = 65;
EXEC InsertOrder @OrderNo = 7, @CustomerID = 81;
EXEC InsertOrder @OrderNo = 8, @CustomerID = 70;
EXEC InsertOrder @OrderNo = 9, @CustomerID = 2;
EXEC InsertOrder @OrderNo = 10, @CustomerID = 81;
EXEC InsertOrder @OrderNo = 11, @CustomerID = 65;
EXEC InsertOrder @OrderNo = 12, @CustomerID = 15;
EXEC InsertOrder @OrderNo = 13, @CustomerID = 23;
EXEC InsertOrder @OrderNo = 14, @CustomerID = 10;
EXEC InsertOrder @OrderNo = 15, @CustomerID = 4;
EXEC InsertOrder @OrderNo = 16, @CustomerID = 96;
EXEC InsertOrder @OrderNo = 17, @CustomerID = 102;
EXEC InsertOrder @OrderNo = 18, @CustomerID = 81;
EXEC InsertOrder @OrderNo = 19, @CustomerID = 17;
EXEC InsertOrder @OrderNo = 20, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 21, @CustomerID = 25;
EXEC InsertOrder @OrderNo = 22, @CustomerID = 56;
EXEC InsertOrder @OrderNo = 23, @CustomerID = 12;
EXEC InsertOrder @OrderNo = 24, @CustomerID = 30;
EXEC InsertOrder @OrderNo = 25, @CustomerID = 30;
EXEC InsertOrder @OrderNo = 26, @CustomerID = 82;
EXEC InsertOrder @OrderNo = 27, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 28, @CustomerID = 70;
EXEC InsertOrder @OrderNo = 29, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 30, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 31, @CustomerID = 67;
EXEC InsertOrder @OrderNo = 32, @CustomerID = 69;
EXEC InsertOrder @OrderNo = 33, @CustomerID = 27;
EXEC InsertOrder @OrderNo = 34, @CustomerID = 93;
EXEC InsertOrder @OrderNo = 35, @CustomerID = 69;
EXEC InsertOrder @OrderNo = 36, @CustomerID = 23;
EXEC InsertOrder @OrderNo = 37, @CustomerID = 62;
EXEC InsertOrder @OrderNo = 38, @CustomerID = 77;
EXEC InsertOrder @OrderNo = 39, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 40, @CustomerID = 41;
EXEC InsertOrder @OrderNo = 41, @CustomerID = 30;
EXEC InsertOrder @OrderNo = 42, @CustomerID = 46;
EXEC InsertOrder @OrderNo = 43, @CustomerID = 100;
EXEC InsertOrder @OrderNo = 44, @CustomerID = 95;
EXEC InsertOrder @OrderNo = 45, @CustomerID = 105;
EXEC InsertOrder @OrderNo = 46, @CustomerID = 63;
EXEC InsertOrder @OrderNo = 47, @CustomerID = 3;
EXEC InsertOrder @OrderNo = 48, @CustomerID = 56;
EXEC InsertOrder @OrderNo = 49, @CustomerID = 86;
EXEC InsertOrder @OrderNo = 50, @CustomerID = 33;
EXEC InsertOrder @OrderNo = 51, @CustomerID = 22;
EXEC InsertOrder @OrderNo = 52, @CustomerID = 83;
EXEC InsertOrder @OrderNo = 53, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 54, @CustomerID = 78;
EXEC InsertOrder @OrderNo = 55, @CustomerID = 40;
EXEC InsertOrder @OrderNo = 56, @CustomerID = 103;
EXEC InsertOrder @OrderNo = 57, @CustomerID = 68;
EXEC InsertOrder @OrderNo = 58, @CustomerID = 43;
EXEC InsertOrder @OrderNo = 59, @CustomerID = 67;
EXEC InsertOrder @OrderNo = 60, @CustomerID = 50;
EXEC InsertOrder @OrderNo = 61, @CustomerID = 106;
EXEC InsertOrder @OrderNo = 62, @CustomerID = 31;
EXEC InsertOrder @OrderNo = 63, @CustomerID = 86;
EXEC InsertOrder @OrderNo = 64, @CustomerID = 65;
EXEC InsertOrder @OrderNo = 65, @CustomerID = 1;
EXEC InsertOrder @OrderNo = 66, @CustomerID = 96;
EXEC InsertOrder @OrderNo = 67, @CustomerID = 11;
EXEC InsertOrder @OrderNo = 68, @CustomerID = 4;
EXEC InsertOrder @OrderNo = 69, @CustomerID = 84;
EXEC InsertOrder @OrderNo = 70, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 71, @CustomerID = 82;
EXEC InsertOrder @OrderNo = 72, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 73, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 74, @CustomerID = 69;
EXEC InsertOrder @OrderNo = 75, @CustomerID = 46;
EXEC InsertOrder @OrderNo = 76, @CustomerID = 29;
EXEC InsertOrder @OrderNo = 77, @CustomerID = 57;
EXEC InsertOrder @OrderNo = 78, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 79, @CustomerID = 68;
EXEC InsertOrder @OrderNo = 80, @CustomerID = 81;
EXEC InsertOrder @OrderNo = 81, @CustomerID = 8;
EXEC InsertOrder @OrderNo = 82, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 83, @CustomerID = 61;
EXEC InsertOrder @OrderNo = 84, @CustomerID = 44;
EXEC InsertOrder @OrderNo = 85, @CustomerID = 22;
EXEC InsertOrder @OrderNo = 86, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 87, @CustomerID = 53;
EXEC InsertOrder @OrderNo = 88, @CustomerID = 59;
EXEC InsertOrder @OrderNo = 89, @CustomerID = 76;
EXEC InsertOrder @OrderNo = 90, @CustomerID = 46;
EXEC InsertOrder @OrderNo = 91, @CustomerID = 70;
EXEC InsertOrder @OrderNo = 92, @CustomerID = 13;
EXEC InsertOrder @OrderNo = 93, @CustomerID = 4;
EXEC InsertOrder @OrderNo = 94, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 95, @CustomerID = 7;
EXEC InsertOrder @OrderNo = 96, @CustomerID = 24;
EXEC InsertOrder @OrderNo = 97, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 98, @CustomerID = 64;
EXEC InsertOrder @OrderNo = 99, @CustomerID = 19;
EXEC InsertOrder @OrderNo = 100, @CustomerID = 58;
EXEC InsertOrder @OrderNo = 101, @CustomerID = 74;
EXEC InsertOrder @OrderNo = 102, @CustomerID = 25;
EXEC InsertOrder @OrderNo = 103, @CustomerID = 27;
EXEC InsertOrder @OrderNo = 104, @CustomerID = 41;
EXEC InsertOrder @OrderNo = 105, @CustomerID = 4;
EXEC InsertOrder @OrderNo = 106, @CustomerID = 104;
EXEC InsertOrder @OrderNo = 107, @CustomerID = 36;
EXEC InsertOrder @OrderNo = 108, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 109, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 110, @CustomerID = 47;
EXEC InsertOrder @OrderNo = 111, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 112, @CustomerID = 91;
EXEC InsertOrder @OrderNo = 113, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 114, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 115, @CustomerID = 75;
EXEC InsertOrder @OrderNo = 116, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 117, @CustomerID = 63;
EXEC InsertOrder @OrderNo = 118, @CustomerID = 4;
EXEC InsertOrder @OrderNo = 119, @CustomerID = 51;
EXEC InsertOrder @OrderNo = 120, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 121, @CustomerID = 14;
EXEC InsertOrder @OrderNo = 122, @CustomerID = 11;
EXEC InsertOrder @OrderNo = 123, @CustomerID = 59;
EXEC InsertOrder @OrderNo = 124, @CustomerID = 58;
EXEC InsertOrder @OrderNo = 125, @CustomerID = 52;
EXEC InsertOrder @OrderNo = 126, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 127, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 128, @CustomerID = 41;
EXEC InsertOrder @OrderNo = 129, @CustomerID = 81;
EXEC InsertOrder @OrderNo = 130, @CustomerID = 95;
EXEC InsertOrder @OrderNo = 131, @CustomerID = 51;
EXEC InsertOrder @OrderNo = 132, @CustomerID = 12;
EXEC InsertOrder @OrderNo = 133, @CustomerID = 30;
EXEC InsertOrder @OrderNo = 134, @CustomerID = 72;
EXEC InsertOrder @OrderNo = 135, @CustomerID = 31;
EXEC InsertOrder @OrderNo = 136, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 137, @CustomerID = 35;
EXEC InsertOrder @OrderNo = 138, @CustomerID = 43;
EXEC InsertOrder @OrderNo = 139, @CustomerID = 16;
EXEC InsertOrder @OrderNo = 140, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 141, @CustomerID = 86;
EXEC InsertOrder @OrderNo = 142, @CustomerID = 93;
EXEC InsertOrder @OrderNo = 143, @CustomerID = 69;
EXEC InsertOrder @OrderNo = 144, @CustomerID = 41;
EXEC InsertOrder @OrderNo = 145, @CustomerID = 75;
EXEC InsertOrder @OrderNo = 146, @CustomerID = 88;
EXEC InsertOrder @OrderNo = 147, @CustomerID = 105;
EXEC InsertOrder @OrderNo = 148, @CustomerID = 9;
EXEC InsertOrder @OrderNo = 149, @CustomerID = 101;
EXEC InsertOrder @OrderNo = 150, @CustomerID = 24;
EXEC InsertOrder @OrderNo = 151, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 152, @CustomerID = 97;
EXEC InsertOrder @OrderNo = 153, @CustomerID = 94;
EXEC InsertOrder @OrderNo = 154, @CustomerID = 18;
EXEC InsertOrder @OrderNo = 155, @CustomerID = 8;
EXEC InsertOrder @OrderNo = 156, @CustomerID = 35;
EXEC InsertOrder @OrderNo = 157, @CustomerID = 7;
EXEC InsertOrder @OrderNo = 158, @CustomerID = 101;
EXEC InsertOrder @OrderNo = 159, @CustomerID = 1;
EXEC InsertOrder @OrderNo = 160, @CustomerID = 42;
EXEC InsertOrder @OrderNo = 161, @CustomerID = 79;
EXEC InsertOrder @OrderNo = 162, @CustomerID = 41;
EXEC InsertOrder @OrderNo = 163, @CustomerID = 80;
EXEC InsertOrder @OrderNo = 164, @CustomerID = 58;
EXEC InsertOrder @OrderNo = 165, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 166, @CustomerID = 36;
EXEC InsertOrder @OrderNo = 167, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 168, @CustomerID = 30;
EXEC InsertOrder @OrderNo = 169, @CustomerID = 68;
EXEC InsertOrder @OrderNo = 170, @CustomerID = 89;
EXEC InsertOrder @OrderNo = 171, @CustomerID = 62;
EXEC InsertOrder @OrderNo = 172, @CustomerID = 11;
EXEC InsertOrder @OrderNo = 173, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 174, @CustomerID = 75;
EXEC InsertOrder @OrderNo = 175, @CustomerID = 95;
EXEC InsertOrder @OrderNo = 176, @CustomerID = 11;
EXEC InsertOrder @OrderNo = 177, @CustomerID = 31;
EXEC InsertOrder @OrderNo = 178, @CustomerID = 96;
EXEC InsertOrder @OrderNo = 179, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 180, @CustomerID = 43;
EXEC InsertOrder @OrderNo = 181, @CustomerID = 62;
EXEC InsertOrder @OrderNo = 182, @CustomerID = 83;
EXEC InsertOrder @OrderNo = 183, @CustomerID = 89;
EXEC InsertOrder @OrderNo = 184, @CustomerID = 31;
EXEC InsertOrder @OrderNo = 185, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 186, @CustomerID = 33;
EXEC InsertOrder @OrderNo = 187, @CustomerID = 42;
EXEC InsertOrder @OrderNo = 188, @CustomerID = 14;
EXEC InsertOrder @OrderNo = 189, @CustomerID = 55;
EXEC InsertOrder @OrderNo = 190, @CustomerID = 10;
EXEC InsertOrder @OrderNo = 191, @CustomerID = 70;
EXEC InsertOrder @OrderNo = 192, @CustomerID = 90;
EXEC InsertOrder @OrderNo = 193, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 194, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 195, @CustomerID = 16;
EXEC InsertOrder @OrderNo = 196, @CustomerID = 73;
EXEC InsertOrder @OrderNo = 197, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 198, @CustomerID = 59;
EXEC InsertOrder @OrderNo = 199, @CustomerID = 74;
EXEC InsertOrder @OrderNo = 200, @CustomerID = 48;
EXEC InsertOrder @OrderNo = 201, @CustomerID = 23;
EXEC InsertOrder @OrderNo = 202, @CustomerID = 8;
EXEC InsertOrder @OrderNo = 203, @CustomerID = 105;
EXEC InsertOrder @OrderNo = 204, @CustomerID = 95;
EXEC InsertOrder @OrderNo = 205, @CustomerID = 56;
EXEC InsertOrder @OrderNo = 206, @CustomerID = 43;
EXEC InsertOrder @OrderNo = 207, @CustomerID = 98;
EXEC InsertOrder @OrderNo = 208, @CustomerID = 63;
EXEC InsertOrder @OrderNo = 209, @CustomerID = 85;
EXEC InsertOrder @OrderNo = 210, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 211, @CustomerID = 4;
EXEC InsertOrder @OrderNo = 212, @CustomerID = 105;
EXEC InsertOrder @OrderNo = 213, @CustomerID = 37;
EXEC InsertOrder @OrderNo = 214, @CustomerID = 42;
EXEC InsertOrder @OrderNo = 215, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 216, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 217, @CustomerID = 63;
EXEC InsertOrder @OrderNo = 218, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 219, @CustomerID = 94;
EXEC InsertOrder @OrderNo = 220, @CustomerID = 27;
EXEC InsertOrder @OrderNo = 221, @CustomerID = 58;
EXEC InsertOrder @OrderNo = 222, @CustomerID = 40;
EXEC InsertOrder @OrderNo = 223, @CustomerID = 70;
EXEC InsertOrder @OrderNo = 224, @CustomerID = 40;
EXEC InsertOrder @OrderNo = 225, @CustomerID = 27;
EXEC InsertOrder @OrderNo = 226, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 227, @CustomerID = 1;
EXEC InsertOrder @OrderNo = 228, @CustomerID = 101;
EXEC InsertOrder @OrderNo = 229, @CustomerID = 104;
EXEC InsertOrder @OrderNo = 230, @CustomerID = 67;
EXEC InsertOrder @OrderNo = 231, @CustomerID = 48;
EXEC InsertOrder @OrderNo = 232, @CustomerID = 71;
EXEC InsertOrder @OrderNo = 233, @CustomerID = 7;
EXEC InsertOrder @OrderNo = 234, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 235, @CustomerID = 53;
EXEC InsertOrder @OrderNo = 236, @CustomerID = 84;
EXEC InsertOrder @OrderNo = 237, @CustomerID = 55;
EXEC InsertOrder @OrderNo = 238, @CustomerID = 78;
EXEC InsertOrder @OrderNo = 239, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 240, @CustomerID = 86;
EXEC InsertOrder @OrderNo = 241, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 242, @CustomerID = 33;
EXEC InsertOrder @OrderNo = 243, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 244, @CustomerID = 37;
EXEC InsertOrder @OrderNo = 245, @CustomerID = 1;
EXEC InsertOrder @OrderNo = 246, @CustomerID = 47;
EXEC InsertOrder @OrderNo = 247, @CustomerID = 36;
EXEC InsertOrder @OrderNo = 248, @CustomerID = 15;
EXEC InsertOrder @OrderNo = 249, @CustomerID = 24;
EXEC InsertOrder @OrderNo = 250, @CustomerID = 76;
EXEC InsertOrder @OrderNo = 251, @CustomerID = 50;
EXEC InsertOrder @OrderNo = 252, @CustomerID = 7;
EXEC InsertOrder @OrderNo = 253, @CustomerID = 45;
EXEC InsertOrder @OrderNo = 254, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 255, @CustomerID = 3;
EXEC InsertOrder @OrderNo = 256, @CustomerID = 106;
EXEC InsertOrder @OrderNo = 257, @CustomerID = 101;
EXEC InsertOrder @OrderNo = 258, @CustomerID = 102;
EXEC InsertOrder @OrderNo = 259, @CustomerID = 59;
EXEC InsertOrder @OrderNo = 260, @CustomerID = 104;
EXEC InsertOrder @OrderNo = 261, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 262, @CustomerID = 9;
EXEC InsertOrder @OrderNo = 263, @CustomerID = 8;
EXEC InsertOrder @OrderNo = 264, @CustomerID = 61;
EXEC InsertOrder @OrderNo = 265, @CustomerID = 17;
EXEC InsertOrder @OrderNo = 266, @CustomerID = 22;
EXEC InsertOrder @OrderNo = 267, @CustomerID = 88;
EXEC InsertOrder @OrderNo = 268, @CustomerID = 87;
EXEC InsertOrder @OrderNo = 269, @CustomerID = 12;
EXEC InsertOrder @OrderNo = 270, @CustomerID = 99;
EXEC InsertOrder @OrderNo = 271, @CustomerID = 76;
EXEC InsertOrder @OrderNo = 272, @CustomerID = 47;
EXEC InsertOrder @OrderNo = 273, @CustomerID = 42;
EXEC InsertOrder @OrderNo = 274, @CustomerID = 35;
EXEC InsertOrder @OrderNo = 275, @CustomerID = 67;
EXEC InsertOrder @OrderNo = 276, @CustomerID = 106;
EXEC InsertOrder @OrderNo = 277, @CustomerID = 78;
EXEC InsertOrder @OrderNo = 278, @CustomerID = 82;
EXEC InsertOrder @OrderNo = 279, @CustomerID = 66;
EXEC InsertOrder @OrderNo = 280, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 281, @CustomerID = 76;
EXEC InsertOrder @OrderNo = 282, @CustomerID = 107;
EXEC InsertOrder @OrderNo = 283, @CustomerID = 68;
EXEC InsertOrder @OrderNo = 284, @CustomerID = 63;
EXEC InsertOrder @OrderNo = 285, @CustomerID = 84;
EXEC InsertOrder @OrderNo = 286, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 287, @CustomerID = 16;
EXEC InsertOrder @OrderNo = 288, @CustomerID = 79;
EXEC InsertOrder @OrderNo = 289, @CustomerID = 27;
EXEC InsertOrder @OrderNo = 290, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 291, @CustomerID = 61;
EXEC InsertOrder @OrderNo = 292, @CustomerID = 97;
EXEC InsertOrder @OrderNo = 293, @CustomerID = 79;
EXEC InsertOrder @OrderNo = 294, @CustomerID = 94;
EXEC InsertOrder @OrderNo = 295, @CustomerID = 53;
EXEC InsertOrder @OrderNo = 296, @CustomerID = 44;
EXEC InsertOrder @OrderNo = 297, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 298, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 299, @CustomerID = 64;
EXEC InsertOrder @OrderNo = 300, @CustomerID = 45;
EXEC InsertOrder @OrderNo = 301, @CustomerID = 20;
EXEC InsertOrder @OrderNo = 302, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 303, @CustomerID = 87;
EXEC InsertOrder @OrderNo = 304, @CustomerID = 21;
EXEC InsertOrder @OrderNo = 305, @CustomerID = 8;
EXEC InsertOrder @OrderNo = 306, @CustomerID = 8;
EXEC InsertOrder @OrderNo = 307, @CustomerID = 75;
EXEC InsertOrder @OrderNo = 308, @CustomerID = 97;
EXEC InsertOrder @OrderNo = 309, @CustomerID = 31;
EXEC InsertOrder @OrderNo = 310, @CustomerID = 13;
EXEC InsertOrder @OrderNo = 311, @CustomerID = 107;
EXEC InsertOrder @OrderNo = 312, @CustomerID = 89;
EXEC InsertOrder @OrderNo = 313, @CustomerID = 25;
EXEC InsertOrder @OrderNo = 314, @CustomerID = 64;
EXEC InsertOrder @OrderNo = 315, @CustomerID = 74;
EXEC InsertOrder @OrderNo = 316, @CustomerID = 19;
EXEC InsertOrder @OrderNo = 317, @CustomerID = 63;
EXEC InsertOrder @OrderNo = 318, @CustomerID = 61;
EXEC InsertOrder @OrderNo = 319, @CustomerID = 65;
EXEC InsertOrder @OrderNo = 320, @CustomerID = 73;
EXEC InsertOrder @OrderNo = 321, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 322, @CustomerID = 25;
EXEC InsertOrder @OrderNo = 323, @CustomerID = 105;
EXEC InsertOrder @OrderNo = 324, @CustomerID = 9;
EXEC InsertOrder @OrderNo = 325, @CustomerID = 106;
EXEC InsertOrder @OrderNo = 326, @CustomerID = 97;
EXEC InsertOrder @OrderNo = 327, @CustomerID = 24;
EXEC InsertOrder @OrderNo = 328, @CustomerID = 64;
EXEC InsertOrder @OrderNo = 329, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 330, @CustomerID = 100;
EXEC InsertOrder @OrderNo = 331, @CustomerID = 28;
EXEC InsertOrder @OrderNo = 332, @CustomerID = 30;
EXEC InsertOrder @OrderNo = 333, @CustomerID = 78;
EXEC InsertOrder @OrderNo = 334, @CustomerID = 5;
EXEC InsertOrder @OrderNo = 335, @CustomerID = 44;
EXEC InsertOrder @OrderNo = 336, @CustomerID = 55;
EXEC InsertOrder @OrderNo = 337, @CustomerID = 52;
EXEC InsertOrder @OrderNo = 338, @CustomerID = 33;
EXEC InsertOrder @OrderNo = 339, @CustomerID = 67;
EXEC InsertOrder @OrderNo = 340, @CustomerID = 45;
EXEC InsertOrder @OrderNo = 341, @CustomerID = 90;
EXEC InsertOrder @OrderNo = 342, @CustomerID = 38;
EXEC InsertOrder @OrderNo = 343, @CustomerID = 105;
EXEC InsertOrder @OrderNo = 344, @CustomerID = 53;
EXEC InsertOrder @OrderNo = 345, @CustomerID = 41;
EXEC InsertOrder @OrderNo = 346, @CustomerID = 16;
EXEC InsertOrder @OrderNo = 347, @CustomerID = 2;
EXEC InsertOrder @OrderNo = 348, @CustomerID = 7;
EXEC InsertOrder @OrderNo = 349, @CustomerID = 81;
EXEC InsertOrder @OrderNo = 350, @CustomerID = 24;
EXEC InsertOrder @OrderNo = 351, @CustomerID = 72;
EXEC InsertOrder @OrderNo = 352, @CustomerID = 62;
EXEC InsertOrder @OrderNo = 353, @CustomerID = 73;
EXEC InsertOrder @OrderNo = 354, @CustomerID = 14;
EXEC InsertOrder @OrderNo = 355, @CustomerID = 95;
EXEC InsertOrder @OrderNo = 356, @CustomerID = 49;
EXEC InsertOrder @OrderNo = 357, @CustomerID = 94;
EXEC InsertOrder @OrderNo = 358, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 359, @CustomerID = 34;
EXEC InsertOrder @OrderNo = 360, @CustomerID = 103;
EXEC InsertOrder @OrderNo = 361, @CustomerID = 70;
EXEC InsertOrder @OrderNo = 362, @CustomerID = 100;
EXEC InsertOrder @OrderNo = 363, @CustomerID = 29;
EXEC InsertOrder @OrderNo = 364, @CustomerID = 34;
EXEC InsertOrder @OrderNo = 365, @CustomerID = 29;
EXEC InsertOrder @OrderNo = 366, @CustomerID = 76;
EXEC InsertOrder @OrderNo = 367, @CustomerID = 34;
EXEC InsertOrder @OrderNo = 368, @CustomerID = 4;
EXEC InsertOrder @OrderNo = 369, @CustomerID = 19;
EXEC InsertOrder @OrderNo = 370, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 371, @CustomerID = 76;
EXEC InsertOrder @OrderNo = 372, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 373, @CustomerID = 108;
EXEC InsertOrder @OrderNo = 374, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 375, @CustomerID = 3;
EXEC InsertOrder @OrderNo = 376, @CustomerID = 50;
EXEC InsertOrder @OrderNo = 377, @CustomerID = 102;
EXEC InsertOrder @OrderNo = 378, @CustomerID = 29;
EXEC InsertOrder @OrderNo = 379, @CustomerID = 72;
EXEC InsertOrder @OrderNo = 380, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 381, @CustomerID = 10;
EXEC InsertOrder @OrderNo = 382, @CustomerID = 85;
EXEC InsertOrder @OrderNo = 383, @CustomerID = 49;
EXEC InsertOrder @OrderNo = 384, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 385, @CustomerID = 82;
EXEC InsertOrder @OrderNo = 386, @CustomerID = 48;
EXEC InsertOrder @OrderNo = 387, @CustomerID = 7;
EXEC InsertOrder @OrderNo = 388, @CustomerID = 75;
EXEC InsertOrder @OrderNo = 389, @CustomerID = 82;
EXEC InsertOrder @OrderNo = 390, @CustomerID = 57;
EXEC InsertOrder @OrderNo = 391, @CustomerID = 63;
EXEC InsertOrder @OrderNo = 392, @CustomerID = 58;
EXEC InsertOrder @OrderNo = 393, @CustomerID = 12;
EXEC InsertOrder @OrderNo = 394, @CustomerID = 25;
EXEC InsertOrder @OrderNo = 395, @CustomerID = 103;
EXEC InsertOrder @OrderNo = 396, @CustomerID = 58;
EXEC InsertOrder @OrderNo = 397, @CustomerID = 102;
EXEC InsertOrder @OrderNo = 398, @CustomerID = 71;
EXEC InsertOrder @OrderNo = 399, @CustomerID = 77;
EXEC InsertOrder @OrderNo = 400, @CustomerID = 108;
EXEC InsertOrder @OrderNo = 401, @CustomerID = 44;
EXEC InsertOrder @OrderNo = 402, @CustomerID = 104;
EXEC InsertOrder @OrderNo = 403, @CustomerID = 40;
EXEC InsertOrder @OrderNo = 404, @CustomerID = 26;
EXEC InsertOrder @OrderNo = 405, @CustomerID = 47;
EXEC InsertOrder @OrderNo = 406, @CustomerID = 10;
EXEC InsertOrder @OrderNo = 407, @CustomerID = 44;
EXEC InsertOrder @OrderNo = 408, @CustomerID = 8;
EXEC InsertOrder @OrderNo = 409, @CustomerID = 43;
EXEC InsertOrder @OrderNo = 410, @CustomerID = 97;
EXEC InsertOrder @OrderNo = 411, @CustomerID = 39;
EXEC InsertOrder @OrderNo = 412, @CustomerID = 36;
EXEC InsertOrder @OrderNo = 413, @CustomerID = 1;
EXEC InsertOrder @OrderNo = 414, @CustomerID = 25;
EXEC InsertOrder @OrderNo = 415, @CustomerID = 17;
EXEC InsertOrder @OrderNo = 416, @CustomerID = 59;
EXEC InsertOrder @OrderNo = 417, @CustomerID = 17;
EXEC InsertOrder @OrderNo = 418, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 419, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 420, @CustomerID = 64;
EXEC InsertOrder @OrderNo = 421, @CustomerID = 90;
EXEC InsertOrder @OrderNo = 422, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 423, @CustomerID = 87;
EXEC InsertOrder @OrderNo = 424, @CustomerID = 81;
EXEC InsertOrder @OrderNo = 425, @CustomerID = 76;
EXEC InsertOrder @OrderNo = 426, @CustomerID = 14;
EXEC InsertOrder @OrderNo = 427, @CustomerID = 100;
EXEC InsertOrder @OrderNo = 428, @CustomerID = 69;
EXEC InsertOrder @OrderNo = 429, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 430, @CustomerID = 66;
EXEC InsertOrder @OrderNo = 431, @CustomerID = 89;
EXEC InsertOrder @OrderNo = 432, @CustomerID = 54;
EXEC InsertOrder @OrderNo = 433, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 434, @CustomerID = 11;
EXEC InsertOrder @OrderNo = 435, @CustomerID = 65;
EXEC InsertOrder @OrderNo = 436, @CustomerID = 21;
EXEC InsertOrder @OrderNo = 437, @CustomerID = 88;
EXEC InsertOrder @OrderNo = 438, @CustomerID = 46;
EXEC InsertOrder @OrderNo = 439, @CustomerID = 31;
EXEC InsertOrder @OrderNo = 440, @CustomerID = 47;
EXEC InsertOrder @OrderNo = 441, @CustomerID = 12;
EXEC InsertOrder @OrderNo = 442, @CustomerID = 69;
EXEC InsertOrder @OrderNo = 443, @CustomerID = 22;
EXEC InsertOrder @OrderNo = 444, @CustomerID = 84;
EXEC InsertOrder @OrderNo = 445, @CustomerID = 109;
EXEC InsertOrder @OrderNo = 446, @CustomerID = 35;
EXEC InsertOrder @OrderNo = 447, @CustomerID = 69;
EXEC InsertOrder @OrderNo = 448, @CustomerID = 16;
EXEC InsertOrder @OrderNo = 449, @CustomerID = 17;
EXEC InsertOrder @OrderNo = 450, @CustomerID = 101;
EXEC InsertOrder @OrderNo = 451, @CustomerID = 42;
EXEC InsertOrder @OrderNo = 452, @CustomerID = 82;
EXEC InsertOrder @OrderNo = 453, @CustomerID = 98;
EXEC InsertOrder @OrderNo = 454, @CustomerID = 40;
EXEC InsertOrder @OrderNo = 455, @CustomerID = 33;
EXEC InsertOrder @OrderNo = 456, @CustomerID = 101;
EXEC InsertOrder @OrderNo = 457, @CustomerID = 43;
EXEC InsertOrder @OrderNo = 458, @CustomerID = 80;
EXEC InsertOrder @OrderNo = 459, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 460, @CustomerID = 31;
EXEC InsertOrder @OrderNo = 461, @CustomerID = 53;
EXEC InsertOrder @OrderNo = 462, @CustomerID = 53;
EXEC InsertOrder @OrderNo = 463, @CustomerID = 33;
EXEC InsertOrder @OrderNo = 464, @CustomerID = 60;
EXEC InsertOrder @OrderNo = 465, @CustomerID = 14;
EXEC InsertOrder @OrderNo = 466, @CustomerID = 66;
EXEC InsertOrder @OrderNo = 467, @CustomerID = 100;
EXEC InsertOrder @OrderNo = 468, @CustomerID = 26;
EXEC InsertOrder @OrderNo = 469, @CustomerID = 98;
EXEC InsertOrder @OrderNo = 470, @CustomerID = 42;
EXEC InsertOrder @OrderNo = 471, @CustomerID = 42;
EXEC InsertOrder @OrderNo = 472, @CustomerID = 1;
EXEC InsertOrder @OrderNo = 473, @CustomerID = 17;
EXEC InsertOrder @OrderNo = 474, @CustomerID = 57;
EXEC InsertOrder @OrderNo = 475, @CustomerID = 50;
EXEC InsertOrder @OrderNo = 476, @CustomerID = 7;
EXEC InsertOrder @OrderNo = 477, @CustomerID = 73;
EXEC InsertOrder @OrderNo = 478, @CustomerID = 39;
EXEC InsertOrder @OrderNo = 479, @CustomerID = 6;
EXEC InsertOrder @OrderNo = 480, @CustomerID = 85;
EXEC InsertOrder @OrderNo = 481, @CustomerID = 92;
EXEC InsertOrder @OrderNo = 482, @CustomerID = 61;
EXEC InsertOrder @OrderNo = 483, @CustomerID = 50;
EXEC InsertOrder @OrderNo = 484, @CustomerID = 36;
EXEC InsertOrder @OrderNo = 485, @CustomerID = 71;
EXEC InsertOrder @OrderNo = 486, @CustomerID = 47;
EXEC InsertOrder @OrderNo = 487, @CustomerID = 29;
EXEC InsertOrder @OrderNo = 488, @CustomerID = 15;
EXEC InsertOrder @OrderNo = 489, @CustomerID = 22;
EXEC InsertOrder @OrderNo = 490, @CustomerID = 87;
EXEC InsertOrder @OrderNo = 491, @CustomerID = 53;
EXEC InsertOrder @OrderNo = 492, @CustomerID = 108;
EXEC InsertOrder @OrderNo = 493, @CustomerID = 75;
EXEC InsertOrder @OrderNo = 494, @CustomerID = 16;
EXEC InsertOrder @OrderNo = 495, @CustomerID = 29;
EXEC InsertOrder @OrderNo = 496, @CustomerID = 105;
EXEC InsertOrder @OrderNo = 497, @CustomerID = 99;
EXEC InsertOrder @OrderNo = 498, @CustomerID = 32;
EXEC InsertOrder @OrderNo = 499, @CustomerID = 48;
EXEC InsertOrder @OrderNo = 500, @CustomerID = 73;

-- #endregion InsertOrders EXEC commands

SELECT *
FROM Orders;


CREATE TABLE Purchases
(
    PurchaseID INT,
    PurchaseNo INT NOT NULL,
    CONSTRAINT PK_Purchases PRIMARY KEY (PurchaseID)
);


GO
CREATE PROCEDURE InsertPurchases
    @PurchaseID INT,
    @PurchaseNo INT
AS
BEGIN
    INSERT INTO Purchases
        (PurchaseID, PurchaseNo)
    VALUES
        (@PurchaseID, @PurchaseNo);
END;


-- #region InsertPurchases EXEC commands
EXEC InsertPurchases @PurchaseID = 1, @PurchaseNo = 10;
EXEC InsertPurchases @PurchaseID = 2, @PurchaseNo = 20;
EXEC InsertPurchases @PurchaseID = 3, @PurchaseNo = 30;
EXEC InsertPurchases @PurchaseID = 4, @PurchaseNo = 40;
EXEC InsertPurchases @PurchaseID = 5, @PurchaseNo = 50;
EXEC InsertPurchases @PurchaseID = 6, @PurchaseNo = 60;
EXEC InsertPurchases @PurchaseID = 7, @PurchaseNo = 70;
EXEC InsertPurchases @PurchaseID = 8, @PurchaseNo = 80;
EXEC InsertPurchases @PurchaseID = 9, @PurchaseNo = 90;
EXEC InsertPurchases @PurchaseID = 10, @PurchaseNo = 100;
EXEC InsertPurchases @PurchaseID = 11, @PurchaseNo = 110;
EXEC InsertPurchases @PurchaseID = 12, @PurchaseNo = 120;
EXEC InsertPurchases @PurchaseID = 13, @PurchaseNo = 130;
EXEC InsertPurchases @PurchaseID = 14, @PurchaseNo = 140;
EXEC InsertPurchases @PurchaseID = 15, @PurchaseNo = 150;
EXEC InsertPurchases @PurchaseID = 16, @PurchaseNo = 160;
EXEC InsertPurchases @PurchaseID = 17, @PurchaseNo = 170;
EXEC InsertPurchases @PurchaseID = 18, @PurchaseNo = 180;
EXEC InsertPurchases @PurchaseID = 19, @PurchaseNo = 190;
EXEC InsertPurchases @PurchaseID = 20, @PurchaseNo = 200;
EXEC InsertPurchases @PurchaseID = 21, @PurchaseNo = 210;
EXEC InsertPurchases @PurchaseID = 22, @PurchaseNo = 220;
EXEC InsertPurchases @PurchaseID = 23, @PurchaseNo = 230;
EXEC InsertPurchases @PurchaseID = 24, @PurchaseNo = 240;
EXEC InsertPurchases @PurchaseID = 25, @PurchaseNo = 250;
EXEC InsertPurchases @PurchaseID = 26, @PurchaseNo = 260;
EXEC InsertPurchases @PurchaseID = 27, @PurchaseNo = 270;
EXEC InsertPurchases @PurchaseID = 28, @PurchaseNo = 280;
EXEC InsertPurchases @PurchaseID = 29, @PurchaseNo = 290;
EXEC InsertPurchases @PurchaseID = 30, @PurchaseNo = 300;
EXEC InsertPurchases @PurchaseID = 31, @PurchaseNo = 310;
EXEC InsertPurchases @PurchaseID = 32, @PurchaseNo = 320;
EXEC InsertPurchases @PurchaseID = 33, @PurchaseNo = 330;
EXEC InsertPurchases @PurchaseID = 34, @PurchaseNo = 340;
EXEC InsertPurchases @PurchaseID = 35, @PurchaseNo = 350;
EXEC InsertPurchases @PurchaseID = 36, @PurchaseNo = 360;
EXEC InsertPurchases @PurchaseID = 37, @PurchaseNo = 370;
EXEC InsertPurchases @PurchaseID = 38, @PurchaseNo = 380;
EXEC InsertPurchases @PurchaseID = 39, @PurchaseNo = 390;
EXEC InsertPurchases @PurchaseID = 40, @PurchaseNo = 400;
EXEC InsertPurchases @PurchaseID = 41, @PurchaseNo = 410;
EXEC InsertPurchases @PurchaseID = 42, @PurchaseNo = 420;
EXEC InsertPurchases @PurchaseID = 43, @PurchaseNo = 430;
EXEC InsertPurchases @PurchaseID = 44, @PurchaseNo = 440;
EXEC InsertPurchases @PurchaseID = 45, @PurchaseNo = 450;
EXEC InsertPurchases @PurchaseID = 46, @PurchaseNo = 460;
EXEC InsertPurchases @PurchaseID = 47, @PurchaseNo = 470;
EXEC InsertPurchases @PurchaseID = 48, @PurchaseNo = 480;
EXEC InsertPurchases @PurchaseID = 49, @PurchaseNo = 490;
EXEC InsertPurchases @PurchaseID = 50, @PurchaseNo = 500;
EXEC InsertPurchases @PurchaseID = 51, @PurchaseNo = 510;
EXEC InsertPurchases @PurchaseID = 52, @PurchaseNo = 520;
EXEC InsertPurchases @PurchaseID = 53, @PurchaseNo = 530;
EXEC InsertPurchases @PurchaseID = 54, @PurchaseNo = 540;
EXEC InsertPurchases @PurchaseID = 55, @PurchaseNo = 550;
EXEC InsertPurchases @PurchaseID = 56, @PurchaseNo = 560;
EXEC InsertPurchases @PurchaseID = 57, @PurchaseNo = 570;
EXEC InsertPurchases @PurchaseID = 58, @PurchaseNo = 580;
EXEC InsertPurchases @PurchaseID = 59, @PurchaseNo = 590;
EXEC InsertPurchases @PurchaseID = 60, @PurchaseNo = 600;
EXEC InsertPurchases @PurchaseID = 61, @PurchaseNo = 610;
EXEC InsertPurchases @PurchaseID = 62, @PurchaseNo = 620;
EXEC InsertPurchases @PurchaseID = 63, @PurchaseNo = 630;
EXEC InsertPurchases @PurchaseID = 64, @PurchaseNo = 640;
EXEC InsertPurchases @PurchaseID = 65, @PurchaseNo = 650;
EXEC InsertPurchases @PurchaseID = 66, @PurchaseNo = 660;
EXEC InsertPurchases @PurchaseID = 67, @PurchaseNo = 670;
EXEC InsertPurchases @PurchaseID = 68, @PurchaseNo = 680;
EXEC InsertPurchases @PurchaseID = 69, @PurchaseNo = 690;
EXEC InsertPurchases @PurchaseID = 70, @PurchaseNo = 700;
EXEC InsertPurchases @PurchaseID = 71, @PurchaseNo = 710;
EXEC InsertPurchases @PurchaseID = 72, @PurchaseNo = 720;
EXEC InsertPurchases @PurchaseID = 73, @PurchaseNo = 730;
EXEC InsertPurchases @PurchaseID = 74, @PurchaseNo = 740;
EXEC InsertPurchases @PurchaseID = 75, @PurchaseNo = 750;
EXEC InsertPurchases @PurchaseID = 76, @PurchaseNo = 760;
EXEC InsertPurchases @PurchaseID = 77, @PurchaseNo = 770;
EXEC InsertPurchases @PurchaseID = 78, @PurchaseNo = 780;
EXEC InsertPurchases @PurchaseID = 79, @PurchaseNo = 790;
EXEC InsertPurchases @PurchaseID = 80, @PurchaseNo = 800;
EXEC InsertPurchases @PurchaseID = 81, @PurchaseNo = 810;
EXEC InsertPurchases @PurchaseID = 82, @PurchaseNo = 820;
EXEC InsertPurchases @PurchaseID = 83, @PurchaseNo = 830;
EXEC InsertPurchases @PurchaseID = 84, @PurchaseNo = 840;
EXEC InsertPurchases @PurchaseID = 85, @PurchaseNo = 850;
EXEC InsertPurchases @PurchaseID = 86, @PurchaseNo = 860;
EXEC InsertPurchases @PurchaseID = 87, @PurchaseNo = 870;
EXEC InsertPurchases @PurchaseID = 88, @PurchaseNo = 880;
EXEC InsertPurchases @PurchaseID = 89, @PurchaseNo = 890;
EXEC InsertPurchases @PurchaseID = 90, @PurchaseNo = 900;
EXEC InsertPurchases @PurchaseID = 91, @PurchaseNo = 910;
EXEC InsertPurchases @PurchaseID = 92, @PurchaseNo = 920;
EXEC InsertPurchases @PurchaseID = 93, @PurchaseNo = 930;
EXEC InsertPurchases @PurchaseID = 94, @PurchaseNo = 940;
EXEC InsertPurchases @PurchaseID = 95, @PurchaseNo = 950;
EXEC InsertPurchases @PurchaseID = 96, @PurchaseNo = 960;
EXEC InsertPurchases @PurchaseID = 97, @PurchaseNo = 970;
EXEC InsertPurchases @PurchaseID = 98, @PurchaseNo = 980;
EXEC InsertPurchases @PurchaseID = 99, @PurchaseNo = 990;
EXEC InsertPurchases @PurchaseID = 100, @PurchaseNo = 1000;
EXEC InsertPurchases @PurchaseID = 101, @PurchaseNo = 1010;
EXEC InsertPurchases @PurchaseID = 102, @PurchaseNo = 1020;
EXEC InsertPurchases @PurchaseID = 103, @PurchaseNo = 1030;
EXEC InsertPurchases @PurchaseID = 104, @PurchaseNo = 1040;
EXEC InsertPurchases @PurchaseID = 105, @PurchaseNo = 1050;
EXEC InsertPurchases @PurchaseID = 106, @PurchaseNo = 1060;
EXEC InsertPurchases @PurchaseID = 107, @PurchaseNo = 1070;
EXEC InsertPurchases @PurchaseID = 108, @PurchaseNo = 1080;
EXEC InsertPurchases @PurchaseID = 109, @PurchaseNo = 1090;
EXEC InsertPurchases @PurchaseID = 110, @PurchaseNo = 1100;
EXEC InsertPurchases @PurchaseID = 111, @PurchaseNo = 1110;
EXEC InsertPurchases @PurchaseID = 112, @PurchaseNo = 1120;
EXEC InsertPurchases @PurchaseID = 113, @PurchaseNo = 1130;
EXEC InsertPurchases @PurchaseID = 114, @PurchaseNo = 1140;
EXEC InsertPurchases @PurchaseID = 115, @PurchaseNo = 1150;
EXEC InsertPurchases @PurchaseID = 116, @PurchaseNo = 1160;
EXEC InsertPurchases @PurchaseID = 117, @PurchaseNo = 1170;
EXEC InsertPurchases @PurchaseID = 118, @PurchaseNo = 1180;
EXEC InsertPurchases @PurchaseID = 119, @PurchaseNo = 1190;
EXEC InsertPurchases @PurchaseID = 120, @PurchaseNo = 1200;
EXEC InsertPurchases @PurchaseID = 121, @PurchaseNo = 1210;
EXEC InsertPurchases @PurchaseID = 122, @PurchaseNo = 1220;
EXEC InsertPurchases @PurchaseID = 123, @PurchaseNo = 1230;
EXEC InsertPurchases @PurchaseID = 124, @PurchaseNo = 1240;
EXEC InsertPurchases @PurchaseID = 125, @PurchaseNo = 1250;
EXEC InsertPurchases @PurchaseID = 126, @PurchaseNo = 1260;
EXEC InsertPurchases @PurchaseID = 127, @PurchaseNo = 1270;
EXEC InsertPurchases @PurchaseID = 128, @PurchaseNo = 1280;
EXEC InsertPurchases @PurchaseID = 129, @PurchaseNo = 1290;
EXEC InsertPurchases @PurchaseID = 130, @PurchaseNo = 1300;
EXEC InsertPurchases @PurchaseID = 131, @PurchaseNo = 1310;
EXEC InsertPurchases @PurchaseID = 132, @PurchaseNo = 1320;
EXEC InsertPurchases @PurchaseID = 133, @PurchaseNo = 1330;
EXEC InsertPurchases @PurchaseID = 134, @PurchaseNo = 1340;
EXEC InsertPurchases @PurchaseID = 135, @PurchaseNo = 1350;
EXEC InsertPurchases @PurchaseID = 136, @PurchaseNo = 1360;
EXEC InsertPurchases @PurchaseID = 137, @PurchaseNo = 1370;
EXEC InsertPurchases @PurchaseID = 138, @PurchaseNo = 1380;
EXEC InsertPurchases @PurchaseID = 139, @PurchaseNo = 1390;
EXEC InsertPurchases @PurchaseID = 140, @PurchaseNo = 1400;
EXEC InsertPurchases @PurchaseID = 141, @PurchaseNo = 1410;
EXEC InsertPurchases @PurchaseID = 142, @PurchaseNo = 1420;
EXEC InsertPurchases @PurchaseID = 143, @PurchaseNo = 1430;
EXEC InsertPurchases @PurchaseID = 144, @PurchaseNo = 1440;
EXEC InsertPurchases @PurchaseID = 145, @PurchaseNo = 1450;
EXEC InsertPurchases @PurchaseID = 146, @PurchaseNo = 1460;
EXEC InsertPurchases @PurchaseID = 147, @PurchaseNo = 1470;
EXEC InsertPurchases @PurchaseID = 148, @PurchaseNo = 1480;
EXEC InsertPurchases @PurchaseID = 149, @PurchaseNo = 1490;
EXEC InsertPurchases @PurchaseID = 150, @PurchaseNo = 1500;
EXEC InsertPurchases @PurchaseID = 151, @PurchaseNo = 1510;
EXEC InsertPurchases @PurchaseID = 152, @PurchaseNo = 1520;
EXEC InsertPurchases @PurchaseID = 153, @PurchaseNo = 1530;
EXEC InsertPurchases @PurchaseID = 154, @PurchaseNo = 1540;
EXEC InsertPurchases @PurchaseID = 155, @PurchaseNo = 1550;
EXEC InsertPurchases @PurchaseID = 156, @PurchaseNo = 1560;
EXEC InsertPurchases @PurchaseID = 157, @PurchaseNo = 1570;
EXEC InsertPurchases @PurchaseID = 158, @PurchaseNo = 1580;
EXEC InsertPurchases @PurchaseID = 159, @PurchaseNo = 1590;
EXEC InsertPurchases @PurchaseID = 160, @PurchaseNo = 1600;
EXEC InsertPurchases @PurchaseID = 161, @PurchaseNo = 1610;
EXEC InsertPurchases @PurchaseID = 162, @PurchaseNo = 1620;
EXEC InsertPurchases @PurchaseID = 163, @PurchaseNo = 1630;
EXEC InsertPurchases @PurchaseID = 164, @PurchaseNo = 1640;
EXEC InsertPurchases @PurchaseID = 165, @PurchaseNo = 1650;
EXEC InsertPurchases @PurchaseID = 166, @PurchaseNo = 1660;
EXEC InsertPurchases @PurchaseID = 167, @PurchaseNo = 1670;
EXEC InsertPurchases @PurchaseID = 168, @PurchaseNo = 1680;
EXEC InsertPurchases @PurchaseID = 169, @PurchaseNo = 1690;
EXEC InsertPurchases @PurchaseID = 170, @PurchaseNo = 1700;
EXEC InsertPurchases @PurchaseID = 171, @PurchaseNo = 1710;
EXEC InsertPurchases @PurchaseID = 172, @PurchaseNo = 1720;
EXEC InsertPurchases @PurchaseID = 173, @PurchaseNo = 1730;
EXEC InsertPurchases @PurchaseID = 174, @PurchaseNo = 1740;
EXEC InsertPurchases @PurchaseID = 175, @PurchaseNo = 1750;
EXEC InsertPurchases @PurchaseID = 176, @PurchaseNo = 1760;
EXEC InsertPurchases @PurchaseID = 177, @PurchaseNo = 1770;
EXEC InsertPurchases @PurchaseID = 178, @PurchaseNo = 1780;
EXEC InsertPurchases @PurchaseID = 179, @PurchaseNo = 1790;
EXEC InsertPurchases @PurchaseID = 180, @PurchaseNo = 1800;
EXEC InsertPurchases @PurchaseID = 181, @PurchaseNo = 1810;
EXEC InsertPurchases @PurchaseID = 182, @PurchaseNo = 1820;
EXEC InsertPurchases @PurchaseID = 183, @PurchaseNo = 1830;
EXEC InsertPurchases @PurchaseID = 184, @PurchaseNo = 1840;
EXEC InsertPurchases @PurchaseID = 185, @PurchaseNo = 1850;
EXEC InsertPurchases @PurchaseID = 186, @PurchaseNo = 1860;
EXEC InsertPurchases @PurchaseID = 187, @PurchaseNo = 1870;
EXEC InsertPurchases @PurchaseID = 188, @PurchaseNo = 1880;
EXEC InsertPurchases @PurchaseID = 189, @PurchaseNo = 1890;
EXEC InsertPurchases @PurchaseID = 190, @PurchaseNo = 1900;
EXEC InsertPurchases @PurchaseID = 191, @PurchaseNo = 1910;
EXEC InsertPurchases @PurchaseID = 192, @PurchaseNo = 1920;
EXEC InsertPurchases @PurchaseID = 193, @PurchaseNo = 1930;
EXEC InsertPurchases @PurchaseID = 194, @PurchaseNo = 1940;
EXEC InsertPurchases @PurchaseID = 195, @PurchaseNo = 1950;
EXEC InsertPurchases @PurchaseID = 196, @PurchaseNo = 1960;
EXEC InsertPurchases @PurchaseID = 197, @PurchaseNo = 1970;
EXEC InsertPurchases @PurchaseID = 198, @PurchaseNo = 1980;
EXEC InsertPurchases @PurchaseID = 199, @PurchaseNo = 1990;
EXEC InsertPurchases @PurchaseID = 200, @PurchaseNo = 2000;
EXEC InsertPurchases @PurchaseID = 201, @PurchaseNo = 2010;
EXEC InsertPurchases @PurchaseID = 202, @PurchaseNo = 2020;
EXEC InsertPurchases @PurchaseID = 203, @PurchaseNo = 2030;
EXEC InsertPurchases @PurchaseID = 204, @PurchaseNo = 2040;
EXEC InsertPurchases @PurchaseID = 205, @PurchaseNo = 2050;
EXEC InsertPurchases @PurchaseID = 206, @PurchaseNo = 2060;
EXEC InsertPurchases @PurchaseID = 207, @PurchaseNo = 2070;
EXEC InsertPurchases @PurchaseID = 208, @PurchaseNo = 2080;
EXEC InsertPurchases @PurchaseID = 209, @PurchaseNo = 2090;
EXEC InsertPurchases @PurchaseID = 210, @PurchaseNo = 2100;
EXEC InsertPurchases @PurchaseID = 211, @PurchaseNo = 2110;
EXEC InsertPurchases @PurchaseID = 212, @PurchaseNo = 2120;
EXEC InsertPurchases @PurchaseID = 213, @PurchaseNo = 2130;
EXEC InsertPurchases @PurchaseID = 214, @PurchaseNo = 2140;
EXEC InsertPurchases @PurchaseID = 215, @PurchaseNo = 2150;
EXEC InsertPurchases @PurchaseID = 216, @PurchaseNo = 2160;
EXEC InsertPurchases @PurchaseID = 217, @PurchaseNo = 2170;
EXEC InsertPurchases @PurchaseID = 218, @PurchaseNo = 2180;
EXEC InsertPurchases @PurchaseID = 219, @PurchaseNo = 2190;
EXEC InsertPurchases @PurchaseID = 220, @PurchaseNo = 2200;
EXEC InsertPurchases @PurchaseID = 221, @PurchaseNo = 2210;
EXEC InsertPurchases @PurchaseID = 222, @PurchaseNo = 2220;
EXEC InsertPurchases @PurchaseID = 223, @PurchaseNo = 2230;
EXEC InsertPurchases @PurchaseID = 224, @PurchaseNo = 2240;
EXEC InsertPurchases @PurchaseID = 225, @PurchaseNo = 2250;
EXEC InsertPurchases @PurchaseID = 226, @PurchaseNo = 2260;
EXEC InsertPurchases @PurchaseID = 227, @PurchaseNo = 2270;
EXEC InsertPurchases @PurchaseID = 228, @PurchaseNo = 2280;
EXEC InsertPurchases @PurchaseID = 229, @PurchaseNo = 2290;
EXEC InsertPurchases @PurchaseID = 230, @PurchaseNo = 2300;
EXEC InsertPurchases @PurchaseID = 231, @PurchaseNo = 2310;
EXEC InsertPurchases @PurchaseID = 232, @PurchaseNo = 2320;
EXEC InsertPurchases @PurchaseID = 233, @PurchaseNo = 2330;
EXEC InsertPurchases @PurchaseID = 234, @PurchaseNo = 2340;
EXEC InsertPurchases @PurchaseID = 235, @PurchaseNo = 2350;
EXEC InsertPurchases @PurchaseID = 236, @PurchaseNo = 2360;
EXEC InsertPurchases @PurchaseID = 237, @PurchaseNo = 2370;
EXEC InsertPurchases @PurchaseID = 238, @PurchaseNo = 2380;
EXEC InsertPurchases @PurchaseID = 239, @PurchaseNo = 2390;
EXEC InsertPurchases @PurchaseID = 240, @PurchaseNo = 2400;
EXEC InsertPurchases @PurchaseID = 241, @PurchaseNo = 2410;
EXEC InsertPurchases @PurchaseID = 242, @PurchaseNo = 2420;
EXEC InsertPurchases @PurchaseID = 243, @PurchaseNo = 2430;
EXEC InsertPurchases @PurchaseID = 244, @PurchaseNo = 2440;
EXEC InsertPurchases @PurchaseID = 245, @PurchaseNo = 2450;
EXEC InsertPurchases @PurchaseID = 246, @PurchaseNo = 2460;
EXEC InsertPurchases @PurchaseID = 247, @PurchaseNo = 2470;
EXEC InsertPurchases @PurchaseID = 248, @PurchaseNo = 2480;
EXEC InsertPurchases @PurchaseID = 249, @PurchaseNo = 2490;
EXEC InsertPurchases @PurchaseID = 250, @PurchaseNo = 2500;
EXEC InsertPurchases @PurchaseID = 251, @PurchaseNo = 2510;
EXEC InsertPurchases @PurchaseID = 252, @PurchaseNo = 2520;
EXEC InsertPurchases @PurchaseID = 253, @PurchaseNo = 2530;
EXEC InsertPurchases @PurchaseID = 254, @PurchaseNo = 2540;
EXEC InsertPurchases @PurchaseID = 255, @PurchaseNo = 2550;
EXEC InsertPurchases @PurchaseID = 256, @PurchaseNo = 2560;
EXEC InsertPurchases @PurchaseID = 257, @PurchaseNo = 2570;
EXEC InsertPurchases @PurchaseID = 258, @PurchaseNo = 2580;
EXEC InsertPurchases @PurchaseID = 259, @PurchaseNo = 2590;
EXEC InsertPurchases @PurchaseID = 260, @PurchaseNo = 2600;
EXEC InsertPurchases @PurchaseID = 261, @PurchaseNo = 2610;
EXEC InsertPurchases @PurchaseID = 262, @PurchaseNo = 2620;
EXEC InsertPurchases @PurchaseID = 263, @PurchaseNo = 2630;
EXEC InsertPurchases @PurchaseID = 264, @PurchaseNo = 2640;
EXEC InsertPurchases @PurchaseID = 265, @PurchaseNo = 2650;
EXEC InsertPurchases @PurchaseID = 266, @PurchaseNo = 2660;
EXEC InsertPurchases @PurchaseID = 267, @PurchaseNo = 2670;
EXEC InsertPurchases @PurchaseID = 268, @PurchaseNo = 2680;
EXEC InsertPurchases @PurchaseID = 269, @PurchaseNo = 2690;
EXEC InsertPurchases @PurchaseID = 270, @PurchaseNo = 2700;
EXEC InsertPurchases @PurchaseID = 271, @PurchaseNo = 2710;
EXEC InsertPurchases @PurchaseID = 272, @PurchaseNo = 2720;
EXEC InsertPurchases @PurchaseID = 273, @PurchaseNo = 2730;
EXEC InsertPurchases @PurchaseID = 274, @PurchaseNo = 2740;
EXEC InsertPurchases @PurchaseID = 275, @PurchaseNo = 2750;
EXEC InsertPurchases @PurchaseID = 276, @PurchaseNo = 2760;
EXEC InsertPurchases @PurchaseID = 277, @PurchaseNo = 2770;
EXEC InsertPurchases @PurchaseID = 278, @PurchaseNo = 2780;
EXEC InsertPurchases @PurchaseID = 279, @PurchaseNo = 2790;
EXEC InsertPurchases @PurchaseID = 280, @PurchaseNo = 2800;
EXEC InsertPurchases @PurchaseID = 281, @PurchaseNo = 2810;
EXEC InsertPurchases @PurchaseID = 282, @PurchaseNo = 2820;
EXEC InsertPurchases @PurchaseID = 283, @PurchaseNo = 2830;
EXEC InsertPurchases @PurchaseID = 284, @PurchaseNo = 2840;
EXEC InsertPurchases @PurchaseID = 285, @PurchaseNo = 2850;
EXEC InsertPurchases @PurchaseID = 286, @PurchaseNo = 2860;
EXEC InsertPurchases @PurchaseID = 287, @PurchaseNo = 2870;
EXEC InsertPurchases @PurchaseID = 288, @PurchaseNo = 2880;
EXEC InsertPurchases @PurchaseID = 289, @PurchaseNo = 2890;
EXEC InsertPurchases @PurchaseID = 290, @PurchaseNo = 2900;
EXEC InsertPurchases @PurchaseID = 291, @PurchaseNo = 2910;
EXEC InsertPurchases @PurchaseID = 292, @PurchaseNo = 2920;
EXEC InsertPurchases @PurchaseID = 293, @PurchaseNo = 2930;
EXEC InsertPurchases @PurchaseID = 294, @PurchaseNo = 2940;
EXEC InsertPurchases @PurchaseID = 295, @PurchaseNo = 2950;
EXEC InsertPurchases @PurchaseID = 296, @PurchaseNo = 2960;
EXEC InsertPurchases @PurchaseID = 297, @PurchaseNo = 2970;
EXEC InsertPurchases @PurchaseID = 298, @PurchaseNo = 2980;
EXEC InsertPurchases @PurchaseID = 299, @PurchaseNo = 2990;
EXEC InsertPurchases @PurchaseID = 300, @PurchaseNo = 3000;
EXEC InsertPurchases @PurchaseID = 301, @PurchaseNo = 3010;
EXEC InsertPurchases @PurchaseID = 302, @PurchaseNo = 3020;
EXEC InsertPurchases @PurchaseID = 303, @PurchaseNo = 3030;
EXEC InsertPurchases @PurchaseID = 304, @PurchaseNo = 3040;
EXEC InsertPurchases @PurchaseID = 305, @PurchaseNo = 3050;
EXEC InsertPurchases @PurchaseID = 306, @PurchaseNo = 3060;
EXEC InsertPurchases @PurchaseID = 307, @PurchaseNo = 3070;
EXEC InsertPurchases @PurchaseID = 308, @PurchaseNo = 3080;
EXEC InsertPurchases @PurchaseID = 309, @PurchaseNo = 3090;
EXEC InsertPurchases @PurchaseID = 310, @PurchaseNo = 3100;
EXEC InsertPurchases @PurchaseID = 311, @PurchaseNo = 3110;
EXEC InsertPurchases @PurchaseID = 312, @PurchaseNo = 3120;
EXEC InsertPurchases @PurchaseID = 313, @PurchaseNo = 3130;
EXEC InsertPurchases @PurchaseID = 314, @PurchaseNo = 3140;
EXEC InsertPurchases @PurchaseID = 315, @PurchaseNo = 3150;
EXEC InsertPurchases @PurchaseID = 316, @PurchaseNo = 3160;
EXEC InsertPurchases @PurchaseID = 317, @PurchaseNo = 3170;
EXEC InsertPurchases @PurchaseID = 318, @PurchaseNo = 3180;
EXEC InsertPurchases @PurchaseID = 319, @PurchaseNo = 3190;
EXEC InsertPurchases @PurchaseID = 320, @PurchaseNo = 3200;
EXEC InsertPurchases @PurchaseID = 321, @PurchaseNo = 3210;
EXEC InsertPurchases @PurchaseID = 322, @PurchaseNo = 3220;
EXEC InsertPurchases @PurchaseID = 323, @PurchaseNo = 3230;
EXEC InsertPurchases @PurchaseID = 324, @PurchaseNo = 3240;
EXEC InsertPurchases @PurchaseID = 325, @PurchaseNo = 3250;
EXEC InsertPurchases @PurchaseID = 326, @PurchaseNo = 3260;
EXEC InsertPurchases @PurchaseID = 327, @PurchaseNo = 3270;
EXEC InsertPurchases @PurchaseID = 328, @PurchaseNo = 3280;
EXEC InsertPurchases @PurchaseID = 329, @PurchaseNo = 3290;
EXEC InsertPurchases @PurchaseID = 330, @PurchaseNo = 3300;
EXEC InsertPurchases @PurchaseID = 331, @PurchaseNo = 3310;
EXEC InsertPurchases @PurchaseID = 332, @PurchaseNo = 3320;
EXEC InsertPurchases @PurchaseID = 333, @PurchaseNo = 3330;
EXEC InsertPurchases @PurchaseID = 334, @PurchaseNo = 3340;
EXEC InsertPurchases @PurchaseID = 335, @PurchaseNo = 3350;
EXEC InsertPurchases @PurchaseID = 336, @PurchaseNo = 3360;
EXEC InsertPurchases @PurchaseID = 337, @PurchaseNo = 3370;
EXEC InsertPurchases @PurchaseID = 338, @PurchaseNo = 3380;
EXEC InsertPurchases @PurchaseID = 339, @PurchaseNo = 3390;
EXEC InsertPurchases @PurchaseID = 340, @PurchaseNo = 3400;
EXEC InsertPurchases @PurchaseID = 341, @PurchaseNo = 3410;
EXEC InsertPurchases @PurchaseID = 342, @PurchaseNo = 3420;
EXEC InsertPurchases @PurchaseID = 343, @PurchaseNo = 3430;
EXEC InsertPurchases @PurchaseID = 344, @PurchaseNo = 3440;
EXEC InsertPurchases @PurchaseID = 345, @PurchaseNo = 3450;
EXEC InsertPurchases @PurchaseID = 346, @PurchaseNo = 3460;
EXEC InsertPurchases @PurchaseID = 347, @PurchaseNo = 3470;
EXEC InsertPurchases @PurchaseID = 348, @PurchaseNo = 3480;
EXEC InsertPurchases @PurchaseID = 349, @PurchaseNo = 3490;
EXEC InsertPurchases @PurchaseID = 350, @PurchaseNo = 3500;
EXEC InsertPurchases @PurchaseID = 351, @PurchaseNo = 3510;
EXEC InsertPurchases @PurchaseID = 352, @PurchaseNo = 3520;
EXEC InsertPurchases @PurchaseID = 353, @PurchaseNo = 3530;
EXEC InsertPurchases @PurchaseID = 354, @PurchaseNo = 3540;
EXEC InsertPurchases @PurchaseID = 355, @PurchaseNo = 3550;
EXEC InsertPurchases @PurchaseID = 356, @PurchaseNo = 3560;
EXEC InsertPurchases @PurchaseID = 357, @PurchaseNo = 3570;
EXEC InsertPurchases @PurchaseID = 358, @PurchaseNo = 3580;
EXEC InsertPurchases @PurchaseID = 359, @PurchaseNo = 3590;
EXEC InsertPurchases @PurchaseID = 360, @PurchaseNo = 3600;
EXEC InsertPurchases @PurchaseID = 361, @PurchaseNo = 3610;
EXEC InsertPurchases @PurchaseID = 362, @PurchaseNo = 3620;
EXEC InsertPurchases @PurchaseID = 363, @PurchaseNo = 3630;
EXEC InsertPurchases @PurchaseID = 364, @PurchaseNo = 3640;
EXEC InsertPurchases @PurchaseID = 365, @PurchaseNo = 3650;
EXEC InsertPurchases @PurchaseID = 366, @PurchaseNo = 3660;
EXEC InsertPurchases @PurchaseID = 367, @PurchaseNo = 3670;
EXEC InsertPurchases @PurchaseID = 368, @PurchaseNo = 3680;
EXEC InsertPurchases @PurchaseID = 369, @PurchaseNo = 3690;
EXEC InsertPurchases @PurchaseID = 370, @PurchaseNo = 3700;
EXEC InsertPurchases @PurchaseID = 371, @PurchaseNo = 3710;
EXEC InsertPurchases @PurchaseID = 372, @PurchaseNo = 3720;
EXEC InsertPurchases @PurchaseID = 373, @PurchaseNo = 3730;
EXEC InsertPurchases @PurchaseID = 374, @PurchaseNo = 3740;
EXEC InsertPurchases @PurchaseID = 375, @PurchaseNo = 3750;
EXEC InsertPurchases @PurchaseID = 376, @PurchaseNo = 3760;
EXEC InsertPurchases @PurchaseID = 377, @PurchaseNo = 3770;
EXEC InsertPurchases @PurchaseID = 378, @PurchaseNo = 3780;
EXEC InsertPurchases @PurchaseID = 379, @PurchaseNo = 3790;
EXEC InsertPurchases @PurchaseID = 380, @PurchaseNo = 3800;
EXEC InsertPurchases @PurchaseID = 381, @PurchaseNo = 3810;
EXEC InsertPurchases @PurchaseID = 382, @PurchaseNo = 3820;
EXEC InsertPurchases @PurchaseID = 383, @PurchaseNo = 3830;
EXEC InsertPurchases @PurchaseID = 384, @PurchaseNo = 3840;
EXEC InsertPurchases @PurchaseID = 385, @PurchaseNo = 3850;
EXEC InsertPurchases @PurchaseID = 386, @PurchaseNo = 3860;
EXEC InsertPurchases @PurchaseID = 387, @PurchaseNo = 3870;
EXEC InsertPurchases @PurchaseID = 388, @PurchaseNo = 3880;
EXEC InsertPurchases @PurchaseID = 389, @PurchaseNo = 3890;
EXEC InsertPurchases @PurchaseID = 390, @PurchaseNo = 3900;
EXEC InsertPurchases @PurchaseID = 391, @PurchaseNo = 3910;
EXEC InsertPurchases @PurchaseID = 392, @PurchaseNo = 3920;
EXEC InsertPurchases @PurchaseID = 393, @PurchaseNo = 3930;
EXEC InsertPurchases @PurchaseID = 394, @PurchaseNo = 3940;
EXEC InsertPurchases @PurchaseID = 395, @PurchaseNo = 3950;
EXEC InsertPurchases @PurchaseID = 396, @PurchaseNo = 3960;
EXEC InsertPurchases @PurchaseID = 397, @PurchaseNo = 3970;
EXEC InsertPurchases @PurchaseID = 398, @PurchaseNo = 3980;
EXEC InsertPurchases @PurchaseID = 399, @PurchaseNo = 3990;
EXEC InsertPurchases @PurchaseID = 400, @PurchaseNo = 4000;
EXEC InsertPurchases @PurchaseID = 401, @PurchaseNo = 4010;
EXEC InsertPurchases @PurchaseID = 402, @PurchaseNo = 4020;
EXEC InsertPurchases @PurchaseID = 403, @PurchaseNo = 4030;
EXEC InsertPurchases @PurchaseID = 404, @PurchaseNo = 4040;
EXEC InsertPurchases @PurchaseID = 405, @PurchaseNo = 4050;
EXEC InsertPurchases @PurchaseID = 406, @PurchaseNo = 4060;
EXEC InsertPurchases @PurchaseID = 407, @PurchaseNo = 4070;
EXEC InsertPurchases @PurchaseID = 408, @PurchaseNo = 4080;
EXEC InsertPurchases @PurchaseID = 409, @PurchaseNo = 4090;
EXEC InsertPurchases @PurchaseID = 410, @PurchaseNo = 4100;
EXEC InsertPurchases @PurchaseID = 411, @PurchaseNo = 4110;
EXEC InsertPurchases @PurchaseID = 412, @PurchaseNo = 4120;
EXEC InsertPurchases @PurchaseID = 413, @PurchaseNo = 4130;
EXEC InsertPurchases @PurchaseID = 414, @PurchaseNo = 4140;
EXEC InsertPurchases @PurchaseID = 415, @PurchaseNo = 4150;
EXEC InsertPurchases @PurchaseID = 416, @PurchaseNo = 4160;
EXEC InsertPurchases @PurchaseID = 417, @PurchaseNo = 4170;
EXEC InsertPurchases @PurchaseID = 418, @PurchaseNo = 4180;
EXEC InsertPurchases @PurchaseID = 419, @PurchaseNo = 4190;
EXEC InsertPurchases @PurchaseID = 420, @PurchaseNo = 4200;
EXEC InsertPurchases @PurchaseID = 421, @PurchaseNo = 4210;
EXEC InsertPurchases @PurchaseID = 422, @PurchaseNo = 4220;
EXEC InsertPurchases @PurchaseID = 423, @PurchaseNo = 4230;
EXEC InsertPurchases @PurchaseID = 424, @PurchaseNo = 4240;
EXEC InsertPurchases @PurchaseID = 425, @PurchaseNo = 4250;
EXEC InsertPurchases @PurchaseID = 426, @PurchaseNo = 4260;
EXEC InsertPurchases @PurchaseID = 427, @PurchaseNo = 4270;
EXEC InsertPurchases @PurchaseID = 428, @PurchaseNo = 4280;
EXEC InsertPurchases @PurchaseID = 429, @PurchaseNo = 4290;
EXEC InsertPurchases @PurchaseID = 430, @PurchaseNo = 4300;
EXEC InsertPurchases @PurchaseID = 431, @PurchaseNo = 4310;
EXEC InsertPurchases @PurchaseID = 432, @PurchaseNo = 4320;
EXEC InsertPurchases @PurchaseID = 433, @PurchaseNo = 4330;
EXEC InsertPurchases @PurchaseID = 434, @PurchaseNo = 4340;
EXEC InsertPurchases @PurchaseID = 435, @PurchaseNo = 4350;
EXEC InsertPurchases @PurchaseID = 436, @PurchaseNo = 4360;
EXEC InsertPurchases @PurchaseID = 437, @PurchaseNo = 4370;
EXEC InsertPurchases @PurchaseID = 438, @PurchaseNo = 4380;
EXEC InsertPurchases @PurchaseID = 439, @PurchaseNo = 4390;
EXEC InsertPurchases @PurchaseID = 440, @PurchaseNo = 4400;
EXEC InsertPurchases @PurchaseID = 441, @PurchaseNo = 4410;
EXEC InsertPurchases @PurchaseID = 442, @PurchaseNo = 4420;
EXEC InsertPurchases @PurchaseID = 443, @PurchaseNo = 4430;
EXEC InsertPurchases @PurchaseID = 444, @PurchaseNo = 4440;
EXEC InsertPurchases @PurchaseID = 445, @PurchaseNo = 4450;
EXEC InsertPurchases @PurchaseID = 446, @PurchaseNo = 4460;
EXEC InsertPurchases @PurchaseID = 447, @PurchaseNo = 4470;
EXEC InsertPurchases @PurchaseID = 448, @PurchaseNo = 4480;
EXEC InsertPurchases @PurchaseID = 449, @PurchaseNo = 4490;
EXEC InsertPurchases @PurchaseID = 450, @PurchaseNo = 4500;
EXEC InsertPurchases @PurchaseID = 451, @PurchaseNo = 4510;
EXEC InsertPurchases @PurchaseID = 452, @PurchaseNo = 4520;
EXEC InsertPurchases @PurchaseID = 453, @PurchaseNo = 4530;
EXEC InsertPurchases @PurchaseID = 454, @PurchaseNo = 4540;
EXEC InsertPurchases @PurchaseID = 455, @PurchaseNo = 4550;
EXEC InsertPurchases @PurchaseID = 456, @PurchaseNo = 4560;
EXEC InsertPurchases @PurchaseID = 457, @PurchaseNo = 4570;
EXEC InsertPurchases @PurchaseID = 458, @PurchaseNo = 4580;
EXEC InsertPurchases @PurchaseID = 459, @PurchaseNo = 4590;
EXEC InsertPurchases @PurchaseID = 460, @PurchaseNo = 4600;
EXEC InsertPurchases @PurchaseID = 461, @PurchaseNo = 4610;
EXEC InsertPurchases @PurchaseID = 462, @PurchaseNo = 4620;
EXEC InsertPurchases @PurchaseID = 463, @PurchaseNo = 4630;
EXEC InsertPurchases @PurchaseID = 464, @PurchaseNo = 4640;
EXEC InsertPurchases @PurchaseID = 465, @PurchaseNo = 4650;
EXEC InsertPurchases @PurchaseID = 466, @PurchaseNo = 4660;
EXEC InsertPurchases @PurchaseID = 467, @PurchaseNo = 4670;
EXEC InsertPurchases @PurchaseID = 468, @PurchaseNo = 4680;
EXEC InsertPurchases @PurchaseID = 469, @PurchaseNo = 4690;
EXEC InsertPurchases @PurchaseID = 470, @PurchaseNo = 4700;
EXEC InsertPurchases @PurchaseID = 471, @PurchaseNo = 4710;
EXEC InsertPurchases @PurchaseID = 472, @PurchaseNo = 4720;
EXEC InsertPurchases @PurchaseID = 473, @PurchaseNo = 4730;
EXEC InsertPurchases @PurchaseID = 474, @PurchaseNo = 4740;
EXEC InsertPurchases @PurchaseID = 475, @PurchaseNo = 4750;
EXEC InsertPurchases @PurchaseID = 476, @PurchaseNo = 4760;
EXEC InsertPurchases @PurchaseID = 477, @PurchaseNo = 4770;
EXEC InsertPurchases @PurchaseID = 478, @PurchaseNo = 4780;
EXEC InsertPurchases @PurchaseID = 479, @PurchaseNo = 4790;
EXEC InsertPurchases @PurchaseID = 480, @PurchaseNo = 4800;
EXEC InsertPurchases @PurchaseID = 481, @PurchaseNo = 4810;
EXEC InsertPurchases @PurchaseID = 482, @PurchaseNo = 4820;
EXEC InsertPurchases @PurchaseID = 483, @PurchaseNo = 4830;
EXEC InsertPurchases @PurchaseID = 484, @PurchaseNo = 4840;
EXEC InsertPurchases @PurchaseID = 485, @PurchaseNo = 4850;
EXEC InsertPurchases @PurchaseID = 486, @PurchaseNo = 4860;
EXEC InsertPurchases @PurchaseID = 487, @PurchaseNo = 4870;
EXEC InsertPurchases @PurchaseID = 488, @PurchaseNo = 4880;
EXEC InsertPurchases @PurchaseID = 489, @PurchaseNo = 4890;
EXEC InsertPurchases @PurchaseID = 490, @PurchaseNo = 4900;
EXEC InsertPurchases @PurchaseID = 491, @PurchaseNo = 4910;
EXEC InsertPurchases @PurchaseID = 492, @PurchaseNo = 4920;
EXEC InsertPurchases @PurchaseID = 493, @PurchaseNo = 4930;
EXEC InsertPurchases @PurchaseID = 494, @PurchaseNo = 4940;
EXEC InsertPurchases @PurchaseID = 495, @PurchaseNo = 4950;
EXEC InsertPurchases @PurchaseID = 496, @PurchaseNo = 4960;
EXEC InsertPurchases @PurchaseID = 497, @PurchaseNo = 4970;
EXEC InsertPurchases @PurchaseID = 498, @PurchaseNo = 4980;
EXEC InsertPurchases @PurchaseID = 499, @PurchaseNo = 4990;
EXEC InsertPurchases @PurchaseID = 500, @PurchaseNo = 5000;

-- #endregion

-- Create the TypeSize_details table
CREATE TABLE TypeSize_details
(
    TypeSizeID INT,
    TypeID INT,
    SizeID INT,
    CONSTRAINT PK_TypeSize_details PRIMARY KEY (TypeSizeID),
    CONSTRAINT FK_TypeSize_details_Types FOREIGN KEY (TypeID) REFERENCES Types(TypeID)
    ON DELETE CASCADE,
    CONSTRAINT FK_TypeSize_details_Sizes FOREIGN KEY (SizeID) REFERENCES Sizes(SizeID)
);


GO
CREATE PROCEDURE InsertTypeSizeDetails
    @TypeSizeID INT,
    @TypeID INT,
    @SizeID INT
AS
BEGIN
    INSERT INTO TypeSize_details
        (TypeSizeID, TypeID, SizeID)
    VALUES
        (@TypeSizeID, @TypeID, @SizeID);
END;

-- #region Insert TypeSize_details

EXEC InsertTypeSizeDetails @TypeSizeID = 1, @TypeID = 97, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 2, @TypeID = 93, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 3, @TypeID = 3, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 4, @TypeID = 82, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 5, @TypeID = 76, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 6, @TypeID = 86, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 7, @TypeID = 74, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 8, @TypeID = 15, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 9, @TypeID = 28, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 10, @TypeID = 12, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 11, @TypeID = 93, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 12, @TypeID = 43, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 13, @TypeID = 19, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 14, @TypeID = 44, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 15, @TypeID = 74, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 16, @TypeID = 33, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 17, @TypeID = 55, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 18, @TypeID = 82, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 19, @TypeID = 73, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 20, @TypeID = 100, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 21, @TypeID = 7, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 22, @TypeID = 59, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 23, @TypeID = 13, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 24, @TypeID = 90, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 25, @TypeID = 80, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 26, @TypeID = 12, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 27, @TypeID = 63, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 28, @TypeID = 46, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 29, @TypeID = 8, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 30, @TypeID = 91, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 31, @TypeID = 75, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 32, @TypeID = 89, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 33, @TypeID = 70, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 34, @TypeID = 54, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 35, @TypeID = 48, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 36, @TypeID = 9, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 37, @TypeID = 40, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 38, @TypeID = 74, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 39, @TypeID = 83, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 40, @TypeID = 74, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 41, @TypeID = 32, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 42, @TypeID = 98, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 43, @TypeID = 96, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 44, @TypeID = 42, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 45, @TypeID = 33, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 46, @TypeID = 27, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 47, @TypeID = 1, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 48, @TypeID = 98, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 49, @TypeID = 45, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 50, @TypeID = 5, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 51, @TypeID = 84, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 52, @TypeID = 15, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 53, @TypeID = 24, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 54, @TypeID = 88, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 55, @TypeID = 22, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 56, @TypeID = 38, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 57, @TypeID = 12, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 58, @TypeID = 66, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 59, @TypeID = 4, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 60, @TypeID = 78, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 61, @TypeID = 41, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 62, @TypeID = 9, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 63, @TypeID = 31, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 64, @TypeID = 23, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 65, @TypeID = 21, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 66, @TypeID = 60, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 67, @TypeID = 36, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 68, @TypeID = 94, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 69, @TypeID = 42, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 70, @TypeID = 75, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 71, @TypeID = 16, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 72, @TypeID = 56, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 73, @TypeID = 72, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 74, @TypeID = 66, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 75, @TypeID = 34, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 76, @TypeID = 89, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 77, @TypeID = 49, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 78, @TypeID = 4, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 79, @TypeID = 35, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 80, @TypeID = 63, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 81, @TypeID = 47, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 82, @TypeID = 60, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 83, @TypeID = 13, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 84, @TypeID = 40, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 85, @TypeID = 46, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 86, @TypeID = 8, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 87, @TypeID = 75, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 88, @TypeID = 83, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 89, @TypeID = 90, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 90, @TypeID = 92, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 91, @TypeID = 94, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 92, @TypeID = 53, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 93, @TypeID = 83, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 94, @TypeID = 59, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 95, @TypeID = 76, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 96, @TypeID = 64, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 97, @TypeID = 55, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 98, @TypeID = 12, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 99, @TypeID = 17, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 100, @TypeID = 26, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 101, @TypeID = 92, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 102, @TypeID = 88, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 103, @TypeID = 28, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 104, @TypeID = 90, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 105, @TypeID = 31, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 106, @TypeID = 29, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 107, @TypeID = 58, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 108, @TypeID = 15, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 109, @TypeID = 58, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 110, @TypeID = 74, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 111, @TypeID = 26, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 112, @TypeID = 75, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 113, @TypeID = 23, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 114, @TypeID = 10, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 115, @TypeID = 19, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 116, @TypeID = 13, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 117, @TypeID = 52, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 118, @TypeID = 29, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 119, @TypeID = 43, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 120, @TypeID = 32, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 121, @TypeID = 43, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 122, @TypeID = 7, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 123, @TypeID = 13, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 124, @TypeID = 87, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 125, @TypeID = 80, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 126, @TypeID = 38, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 127, @TypeID = 79, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 128, @TypeID = 41, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 129, @TypeID = 86, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 130, @TypeID = 61, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 131, @TypeID = 95, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 132, @TypeID = 47, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 133, @TypeID = 50, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 134, @TypeID = 8, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 135, @TypeID = 6, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 136, @TypeID = 85, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 137, @TypeID = 51, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 138, @TypeID = 45, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 139, @TypeID = 57, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 140, @TypeID = 22, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 141, @TypeID = 71, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 142, @TypeID = 50, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 143, @TypeID = 50, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 144, @TypeID = 77, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 145, @TypeID = 72, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 146, @TypeID = 59, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 147, @TypeID = 3, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 148, @TypeID = 72, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 149, @TypeID = 11, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 150, @TypeID = 3, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 151, @TypeID = 91, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 152, @TypeID = 42, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 153, @TypeID = 77, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 154, @TypeID = 79, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 155, @TypeID = 27, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 156, @TypeID = 57, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 157, @TypeID = 68, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 158, @TypeID = 98, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 159, @TypeID = 49, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 160, @TypeID = 10, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 161, @TypeID = 5, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 162, @TypeID = 35, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 163, @TypeID = 30, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 164, @TypeID = 47, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 165, @TypeID = 3, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 166, @TypeID = 99, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 167, @TypeID = 23, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 168, @TypeID = 27, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 169, @TypeID = 64, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 170, @TypeID = 7, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 171, @TypeID = 9, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 172, @TypeID = 24, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 173, @TypeID = 17, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 174, @TypeID = 2, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 175, @TypeID = 10, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 176, @TypeID = 2, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 177, @TypeID = 30, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 178, @TypeID = 100, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 179, @TypeID = 85, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 180, @TypeID = 67, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 181, @TypeID = 38, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 182, @TypeID = 38, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 183, @TypeID = 95, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 184, @TypeID = 72, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 185, @TypeID = 29, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 186, @TypeID = 2, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 187, @TypeID = 97, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 188, @TypeID = 73, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 189, @TypeID = 30, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 190, @TypeID = 91, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 191, @TypeID = 34, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 192, @TypeID = 43, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 193, @TypeID = 94, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 194, @TypeID = 97, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 195, @TypeID = 49, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 196, @TypeID = 52, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 197, @TypeID = 18, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 198, @TypeID = 46, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 199, @TypeID = 33, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 200, @TypeID = 82, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 201, @TypeID = 19, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 202, @TypeID = 42, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 203, @TypeID = 93, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 204, @TypeID = 80, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 205, @TypeID = 7, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 206, @TypeID = 39, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 207, @TypeID = 60, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 208, @TypeID = 81, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 209, @TypeID = 51, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 210, @TypeID = 14, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 211, @TypeID = 100, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 212, @TypeID = 15, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 213, @TypeID = 58, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 214, @TypeID = 42, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 215, @TypeID = 51, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 216, @TypeID = 76, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 217, @TypeID = 75, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 218, @TypeID = 92, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 219, @TypeID = 47, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 220, @TypeID = 36, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 221, @TypeID = 50, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 222, @TypeID = 20, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 223, @TypeID = 68, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 224, @TypeID = 17, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 225, @TypeID = 31, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 226, @TypeID = 29, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 227, @TypeID = 60, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 228, @TypeID = 20, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 229, @TypeID = 16, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 230, @TypeID = 29, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 231, @TypeID = 71, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 232, @TypeID = 40, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 233, @TypeID = 19, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 234, @TypeID = 98, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 235, @TypeID = 11, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 236, @TypeID = 45, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 237, @TypeID = 39, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 238, @TypeID = 71, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 239, @TypeID = 57, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 240, @TypeID = 76, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 241, @TypeID = 87, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 242, @TypeID = 82, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 243, @TypeID = 86, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 244, @TypeID = 65, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 245, @TypeID = 100, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 246, @TypeID = 81, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 247, @TypeID = 5, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 248, @TypeID = 81, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 249, @TypeID = 20, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 250, @TypeID = 100, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 251, @TypeID = 49, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 252, @TypeID = 24, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 253, @TypeID = 36, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 254, @TypeID = 48, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 255, @TypeID = 69, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 256, @TypeID = 52, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 257, @TypeID = 34, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 258, @TypeID = 14, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 259, @TypeID = 77, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 260, @TypeID = 15, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 261, @TypeID = 18, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 262, @TypeID = 2, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 263, @TypeID = 56, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 264, @TypeID = 78, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 265, @TypeID = 38, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 266, @TypeID = 33, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 267, @TypeID = 17, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 268, @TypeID = 93, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 269, @TypeID = 87, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 270, @TypeID = 78, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 271, @TypeID = 16, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 272, @TypeID = 32, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 273, @TypeID = 99, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 274, @TypeID = 82, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 275, @TypeID = 4, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 276, @TypeID = 50, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 277, @TypeID = 11, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 278, @TypeID = 18, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 279, @TypeID = 9, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 280, @TypeID = 90, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 281, @TypeID = 44, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 282, @TypeID = 20, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 283, @TypeID = 45, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 284, @TypeID = 61, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 285, @TypeID = 8, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 286, @TypeID = 14, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 287, @TypeID = 53, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 288, @TypeID = 54, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 289, @TypeID = 16, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 290, @TypeID = 85, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 291, @TypeID = 95, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 292, @TypeID = 62, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 293, @TypeID = 67, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 294, @TypeID = 73, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 295, @TypeID = 63, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 296, @TypeID = 84, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 297, @TypeID = 95, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 298, @TypeID = 6, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 299, @TypeID = 8, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 300, @TypeID = 61, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 301, @TypeID = 54, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 302, @TypeID = 68, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 303, @TypeID = 21, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 304, @TypeID = 1, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 305, @TypeID = 40, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 306, @TypeID = 69, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 307, @TypeID = 94, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 308, @TypeID = 7, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 309, @TypeID = 41, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 310, @TypeID = 17, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 311, @TypeID = 83, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 312, @TypeID = 62, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 313, @TypeID = 71, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 314, @TypeID = 37, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 315, @TypeID = 99, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 316, @TypeID = 49, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 317, @TypeID = 84, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 318, @TypeID = 55, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 319, @TypeID = 11, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 320, @TypeID = 99, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 321, @TypeID = 96, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 322, @TypeID = 41, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 323, @TypeID = 5, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 324, @TypeID = 35, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 325, @TypeID = 67, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 326, @TypeID = 49, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 327, @TypeID = 82, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 328, @TypeID = 68, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 329, @TypeID = 81, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 330, @TypeID = 15, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 331, @TypeID = 10, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 332, @TypeID = 87, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 333, @TypeID = 86, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 334, @TypeID = 18, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 335, @TypeID = 48, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 336, @TypeID = 16, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 337, @TypeID = 36, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 338, @TypeID = 88, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 339, @TypeID = 92, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 340, @TypeID = 16, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 341, @TypeID = 44, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 342, @TypeID = 27, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 343, @TypeID = 2, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 344, @TypeID = 29, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 345, @TypeID = 48, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 346, @TypeID = 85, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 347, @TypeID = 67, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 348, @TypeID = 22, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 349, @TypeID = 37, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 350, @TypeID = 32, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 351, @TypeID = 37, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 352, @TypeID = 72, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 353, @TypeID = 4, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 354, @TypeID = 66, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 355, @TypeID = 58, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 356, @TypeID = 24, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 357, @TypeID = 54, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 358, @TypeID = 88, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 359, @TypeID = 70, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 360, @TypeID = 62, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 361, @TypeID = 17, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 362, @TypeID = 46, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 363, @TypeID = 86, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 364, @TypeID = 37, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 365, @TypeID = 47, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 366, @TypeID = 5, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 367, @TypeID = 89, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 368, @TypeID = 33, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 369, @TypeID = 38, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 370, @TypeID = 25, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 371, @TypeID = 57, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 372, @TypeID = 43, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 373, @TypeID = 24, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 374, @TypeID = 68, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 375, @TypeID = 97, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 376, @TypeID = 2, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 377, @TypeID = 21, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 378, @TypeID = 81, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 379, @TypeID = 31, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 380, @TypeID = 71, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 381, @TypeID = 57, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 382, @TypeID = 70, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 383, @TypeID = 3, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 384, @TypeID = 6, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 385, @TypeID = 22, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 386, @TypeID = 33, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 387, @TypeID = 22, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 388, @TypeID = 91, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 389, @TypeID = 73, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 390, @TypeID = 39, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 391, @TypeID = 23, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 392, @TypeID = 89, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 393, @TypeID = 24, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 394, @TypeID = 3, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 395, @TypeID = 44, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 396, @TypeID = 30, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 397, @TypeID = 64, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 398, @TypeID = 83, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 399, @TypeID = 69, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 400, @TypeID = 63, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 401, @TypeID = 91, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 402, @TypeID = 61, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 403, @TypeID = 8, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 404, @TypeID = 77, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 405, @TypeID = 87, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 406, @TypeID = 62, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 407, @TypeID = 30, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 408, @TypeID = 25, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 409, @TypeID = 21, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 410, @TypeID = 35, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 411, @TypeID = 44, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 412, @TypeID = 56, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 413, @TypeID = 65, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 414, @TypeID = 83, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 415, @TypeID = 87, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 416, @TypeID = 78, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 417, @TypeID = 12, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 418, @TypeID = 92, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 419, @TypeID = 45, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 420, @TypeID = 65, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 421, @TypeID = 58, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 422, @TypeID = 95, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 423, @TypeID = 66, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 424, @TypeID = 52, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 425, @TypeID = 97, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 426, @TypeID = 4, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 427, @TypeID = 62, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 428, @TypeID = 65, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 429, @TypeID = 1, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 430, @TypeID = 69, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 431, @TypeID = 60, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 432, @TypeID = 100, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 433, @TypeID = 52, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 434, @TypeID = 52, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 435, @TypeID = 44, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 436, @TypeID = 31, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 437, @TypeID = 22, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 438, @TypeID = 5, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 439, @TypeID = 58, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 440, @TypeID = 55, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 441, @TypeID = 30, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 442, @TypeID = 96, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 443, @TypeID = 63, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 444, @TypeID = 47, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 445, @TypeID = 72, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 446, @TypeID = 77, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 447, @TypeID = 34, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 448, @TypeID = 59, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 449, @TypeID = 39, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 450, @TypeID = 59, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 451, @TypeID = 57, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 452, @TypeID = 79, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 453, @TypeID = 62, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 454, @TypeID = 59, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 455, @TypeID = 6, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 456, @TypeID = 36, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 457, @TypeID = 79, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 458, @TypeID = 14, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 459, @TypeID = 48, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 460, @TypeID = 11, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 461, @TypeID = 19, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 462, @TypeID = 56, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 463, @TypeID = 25, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 464, @TypeID = 13, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 465, @TypeID = 1, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 466, @TypeID = 28, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 467, @TypeID = 93, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 468, @TypeID = 27, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 469, @TypeID = 42, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 470, @TypeID = 81, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 471, @TypeID = 39, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 472, @TypeID = 7, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 473, @TypeID = 14, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 474, @TypeID = 13, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 475, @TypeID = 20, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 476, @TypeID = 69, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 477, @TypeID = 26, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 478, @TypeID = 40, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 479, @TypeID = 65, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 480, @TypeID = 6, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 481, @TypeID = 32, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 482, @TypeID = 35, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 483, @TypeID = 95, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 484, @TypeID = 26, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 485, @TypeID = 68, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 486, @TypeID = 86, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 487, @TypeID = 23, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 488, @TypeID = 79, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 489, @TypeID = 80, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 490, @TypeID = 71, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 491, @TypeID = 97, @SizeID = 5;

EXEC InsertTypeSizeDetails @TypeSizeID = 492, @TypeID = 11, @SizeID = 3;

EXEC InsertTypeSizeDetails @TypeSizeID = 493, @TypeID = 50, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 494, @TypeID = 53, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 495, @TypeID = 70, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 496, @TypeID = 9, @SizeID = 6;

EXEC InsertTypeSizeDetails @TypeSizeID = 497, @TypeID = 79, @SizeID = 2;

EXEC InsertTypeSizeDetails @TypeSizeID = 498, @TypeID = 73, @SizeID = 1;

EXEC InsertTypeSizeDetails @TypeSizeID = 499, @TypeID = 85, @SizeID = 4;

EXEC InsertTypeSizeDetails @TypeSizeID = 500, @TypeID = 90, @SizeID = 1;


-- Step 1: Add the UpdatedQuantity column
ALTER TABLE TypeSize_details
ADD UpdatedQuantity INT;

-- Step 2: Calculate the Total Purchased Quantity
WITH
    TotalPurchased
    AS
    (
        SELECT
            TypeSizeID,
            SUM(Quantity) AS TotalPurchaseQuantity
        FROM Purchasing_Details
        GROUP BY TypeSizeID
    ),

    -- Step 3: Calculate the Total Sold Quantity
    TotalSold
    AS
    (
        SELECT
            TypeSizeID,
            SUM(Quantity) AS TotalSaleQuantity
        FROM SalesDetails
        GROUP BY TypeSizeID
    )

-- Step 4: Update the UpdatedQuantity column
UPDATE ts
SET ts.UpdatedQuantity = 
    CASE 
        WHEN COALESCE(tp.TotalPurchaseQuantity, 0) - COALESCE(tsd.TotalSaleQuantity, 0) < 0 
        THEN 0
        ELSE COALESCE(tp.TotalPurchaseQuantity, 0) - COALESCE(tsd.TotalSaleQuantity, 0)
    END
FROM TypeSize_details ts
    LEFT JOIN TotalPurchased tp ON ts.TypeSizeID = tp.TypeSizeID
    LEFT JOIN TotalSold tsd ON ts.TypeSizeID = tsd.TypeSizeID;

Alter table TypeSize_details
drop column UpdatedQuantity

SELECT *
from TypeSize_details

-- #endregion

CREATE TABLE Purchasing_Details
(
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

GO
CREATE PROCEDURE InsertPurchasingDetails
    @PurchasingID INT,
    @PurchaseID INT,
    @SupplierID INT,
    @TypeSizeID INT,
    @Quantity INT,
    @PurchasingDate DATE
AS
BEGIN
    INSERT INTO Purchasing_Details
        (PurchasingID, PurchaseID, SupplierID, TypeSizeID, Quantity, PurchasingDate)
    VALUES
        (@PurchasingID, @PurchaseID, @SupplierID, @TypeSizeID, @Quantity, @PurchasingDate);
END;

SELECT *
FROM Purchasing_Details

-- #InsertPurchasing details
EXEC InsertPurchasingDetails @PurchasingID = 1, @PurchaseID = 119, @SupplierID = 98, @TypeSizeID = 1, @Quantity = 68, @PurchasingDate = '2023-01-01';
EXEC InsertPurchasingDetails @PurchasingID = 2, @PurchaseID = 66, @SupplierID = 43, @TypeSizeID = 2, @Quantity = 86, @PurchasingDate = '2023-01-01';
EXEC InsertPurchasingDetails @PurchasingID = 3, @PurchaseID = 417, @SupplierID = 62, @TypeSizeID = 3, @Quantity = 58, @PurchasingDate = '2023-01-01';
EXEC InsertPurchasingDetails @PurchasingID = 4, @PurchaseID = 429, @SupplierID = 34, @TypeSizeID = 4, @Quantity = 58, @PurchasingDate = '2023-01-01';
EXEC InsertPurchasingDetails @PurchasingID = 5, @PurchaseID = 323, @SupplierID = 74, @TypeSizeID = 5, @Quantity = 67, @PurchasingDate = '2023-01-01';
EXEC InsertPurchasingDetails @PurchasingID = 6, @PurchaseID = 424, @SupplierID = 20, @TypeSizeID = 6, @Quantity = 57, @PurchasingDate = '2023-01-02';
EXEC InsertPurchasingDetails @PurchasingID = 7, @PurchaseID = 359, @SupplierID = 12, @TypeSizeID = 7, @Quantity = 60, @PurchasingDate = '2023-01-02';
EXEC InsertPurchasingDetails @PurchasingID = 8, @PurchaseID = 371, @SupplierID = 92, @TypeSizeID = 8, @Quantity = 73, @PurchasingDate = '2023-01-02';
EXEC InsertPurchasingDetails @PurchasingID = 9, @PurchaseID = 228, @SupplierID = 15, @TypeSizeID = 9, @Quantity = 73, @PurchasingDate = '2023-01-02';
EXEC InsertPurchasingDetails @PurchasingID = 10, @PurchaseID = 363, @SupplierID = 20, @TypeSizeID = 10, @Quantity = 87, @PurchasingDate = '2023-01-02';
EXEC InsertPurchasingDetails @PurchasingID = 11, @PurchaseID = 49, @SupplierID = 14, @TypeSizeID = 11, @Quantity = 64, @PurchasingDate = '2023-01-03';
EXEC InsertPurchasingDetails @PurchasingID = 12, @PurchaseID = 160, @SupplierID = 57, @TypeSizeID = 12, @Quantity = 55, @PurchasingDate = '2023-01-03';
EXEC InsertPurchasingDetails @PurchasingID = 13, @PurchaseID = 219, @SupplierID = 10, @TypeSizeID = 13, @Quantity = 70, @PurchasingDate = '2023-01-03';
EXEC InsertPurchasingDetails @PurchasingID = 14, @PurchaseID = 466, @SupplierID = 47, @TypeSizeID = 14, @Quantity = 97, @PurchasingDate = '2023-01-03';
EXEC InsertPurchasingDetails @PurchasingID = 15, @PurchaseID = 125, @SupplierID = 56, @TypeSizeID = 15, @Quantity = 86, @PurchasingDate = '2023-01-03';
EXEC InsertPurchasingDetails @PurchasingID = 16, @PurchaseID = 10, @SupplierID = 90, @TypeSizeID = 16, @Quantity = 71, @PurchasingDate = '2023-01-04';
EXEC InsertPurchasingDetails @PurchasingID = 17, @PurchaseID = 413, @SupplierID = 15, @TypeSizeID = 17, @Quantity = 69, @PurchasingDate = '2023-01-04';
EXEC InsertPurchasingDetails @PurchasingID = 18, @PurchaseID = 393, @SupplierID = 99, @TypeSizeID = 18, @Quantity = 72, @PurchasingDate = '2023-01-04';
EXEC InsertPurchasingDetails @PurchasingID = 19, @PurchaseID = 224, @SupplierID = 43, @TypeSizeID = 19, @Quantity = 59, @PurchasingDate = '2023-01-04';
EXEC InsertPurchasingDetails @PurchasingID = 20, @PurchaseID = 114, @SupplierID = 55, @TypeSizeID = 20, @Quantity = 80, @PurchasingDate = '2023-01-04';
EXEC InsertPurchasingDetails @PurchasingID = 21, @PurchaseID = 165, @SupplierID = 5, @TypeSizeID = 21, @Quantity = 69, @PurchasingDate = '2023-01-05';
EXEC InsertPurchasingDetails @PurchasingID = 22, @PurchaseID = 295, @SupplierID = 21, @TypeSizeID = 22, @Quantity = 87, @PurchasingDate = '2023-01-05';
EXEC InsertPurchasingDetails @PurchasingID = 23, @PurchaseID = 226, @SupplierID = 65, @TypeSizeID = 23, @Quantity = 77, @PurchasingDate = '2023-01-05';
EXEC InsertPurchasingDetails @PurchasingID = 24, @PurchaseID = 232, @SupplierID = 18, @TypeSizeID = 24, @Quantity = 61, @PurchasingDate = '2023-01-05';
EXEC InsertPurchasingDetails @PurchasingID = 25, @PurchaseID = 237, @SupplierID = 1, @TypeSizeID = 25, @Quantity = 51, @PurchasingDate = '2023-01-05';
EXEC InsertPurchasingDetails @PurchasingID = 26, @PurchaseID = 274, @SupplierID = 47, @TypeSizeID = 26, @Quantity = 77, @PurchasingDate = '2023-01-06';
EXEC InsertPurchasingDetails @PurchasingID = 27, @PurchaseID = 346, @SupplierID = 51, @TypeSizeID = 27, @Quantity = 82, @PurchasingDate = '2023-01-06';
EXEC InsertPurchasingDetails @PurchasingID = 28, @PurchaseID = 57, @SupplierID = 55, @TypeSizeID = 28, @Quantity = 81, @PurchasingDate = '2023-01-06';
EXEC InsertPurchasingDetails @PurchasingID = 29, @PurchaseID = 428, @SupplierID = 64, @TypeSizeID = 29, @Quantity = 83, @PurchasingDate = '2023-01-06';
EXEC InsertPurchasingDetails @PurchasingID = 30, @PurchaseID = 348, @SupplierID = 47, @TypeSizeID = 30, @Quantity = 70, @PurchasingDate = '2023-01-06';
EXEC InsertPurchasingDetails @PurchasingID = 31, @PurchaseID = 135, @SupplierID = 67, @TypeSizeID = 31, @Quantity = 51, @PurchasingDate = '2023-01-07';
EXEC InsertPurchasingDetails @PurchasingID = 32, @PurchaseID = 95, @SupplierID = 2, @TypeSizeID = 32, @Quantity = 87, @PurchasingDate = '2023-01-07';
EXEC InsertPurchasingDetails @PurchasingID = 33, @PurchaseID = 65, @SupplierID = 91, @TypeSizeID = 33, @Quantity = 94, @PurchasingDate = '2023-01-07';
EXEC InsertPurchasingDetails @PurchasingID = 34, @PurchaseID = 187, @SupplierID = 76, @TypeSizeID = 34, @Quantity = 84, @PurchasingDate = '2023-01-07';
EXEC InsertPurchasingDetails @PurchasingID = 35, @PurchaseID = 475, @SupplierID = 78, @TypeSizeID = 35, @Quantity = 95, @PurchasingDate = '2023-01-07';
EXEC InsertPurchasingDetails @PurchasingID = 36, @PurchaseID = 109, @SupplierID = 99, @TypeSizeID = 36, @Quantity = 56, @PurchasingDate = '2023-01-08';
EXEC InsertPurchasingDetails @PurchasingID = 37, @PurchaseID = 51, @SupplierID = 66, @TypeSizeID = 37, @Quantity = 88, @PurchasingDate = '2023-01-08';
EXEC InsertPurchasingDetails @PurchasingID = 38, @PurchaseID = 332, @SupplierID = 97, @TypeSizeID = 38, @Quantity = 70, @PurchasingDate = '2023-01-08';
EXEC InsertPurchasingDetails @PurchasingID = 39, @PurchaseID = 37, @SupplierID = 65, @TypeSizeID = 39, @Quantity = 86, @PurchasingDate = '2023-01-08';
EXEC InsertPurchasingDetails @PurchasingID = 40, @PurchaseID = 482, @SupplierID = 30, @TypeSizeID = 40, @Quantity = 78, @PurchasingDate = '2023-01-08';
EXEC InsertPurchasingDetails @PurchasingID = 41, @PurchaseID = 279, @SupplierID = 76, @TypeSizeID = 41, @Quantity = 95, @PurchasingDate = '2023-01-09';
EXEC InsertPurchasingDetails @PurchasingID = 42, @PurchaseID = 92, @SupplierID = 21, @TypeSizeID = 42, @Quantity = 53, @PurchasingDate = '2023-01-09';
EXEC InsertPurchasingDetails @PurchasingID = 43, @PurchaseID = 59, @SupplierID = 70, @TypeSizeID = 43, @Quantity = 51, @PurchasingDate = '2023-01-09';
EXEC InsertPurchasingDetails @PurchasingID = 44, @PurchaseID = 244, @SupplierID = 73, @TypeSizeID = 44, @Quantity = 84, @PurchasingDate = '2023-01-09';
EXEC InsertPurchasingDetails @PurchasingID = 45, @PurchaseID = 111, @SupplierID = 41, @TypeSizeID = 45, @Quantity = 56, @PurchasingDate = '2023-01-09';
EXEC InsertPurchasingDetails @PurchasingID = 46, @PurchaseID = 352, @SupplierID = 56, @TypeSizeID = 46, @Quantity = 56, @PurchasingDate = '2023-01-10';
EXEC InsertPurchasingDetails @PurchasingID = 47, @PurchaseID = 406, @SupplierID = 25, @TypeSizeID = 47, @Quantity = 75, @PurchasingDate = '2023-01-10';
EXEC InsertPurchasingDetails @PurchasingID = 48, @PurchaseID = 487, @SupplierID = 18, @TypeSizeID = 48, @Quantity = 90, @PurchasingDate = '2023-01-10';
EXEC InsertPurchasingDetails @PurchasingID = 49, @PurchaseID = 73, @SupplierID = 93, @TypeSizeID = 49, @Quantity = 81, @PurchasingDate = '2023-01-10';
EXEC InsertPurchasingDetails @PurchasingID = 50, @PurchaseID = 2, @SupplierID = 49, @TypeSizeID = 50, @Quantity = 72, @PurchasingDate = '2023-01-10';
EXEC InsertPurchasingDetails @PurchasingID = 51, @PurchaseID = 108, @SupplierID = 94, @TypeSizeID = 51, @Quantity = 99, @PurchasingDate = '2023-01-11';
EXEC InsertPurchasingDetails @PurchasingID = 52, @PurchaseID = 109, @SupplierID = 52, @TypeSizeID = 52, @Quantity = 80, @PurchasingDate = '2023-01-11';
EXEC InsertPurchasingDetails @PurchasingID = 53, @PurchaseID = 478, @SupplierID = 20, @TypeSizeID = 53, @Quantity = 65, @PurchasingDate = '2023-01-11';
EXEC InsertPurchasingDetails @PurchasingID = 54, @PurchaseID = 481, @SupplierID = 78, @TypeSizeID = 54, @Quantity = 58, @PurchasingDate = '2023-01-11';
EXEC InsertPurchasingDetails @PurchasingID = 55, @PurchaseID = 324, @SupplierID = 53, @TypeSizeID = 55, @Quantity = 96, @PurchasingDate = '2023-01-11';
EXEC InsertPurchasingDetails @PurchasingID = 56, @PurchaseID = 86, @SupplierID = 64, @TypeSizeID = 56, @Quantity = 50, @PurchasingDate = '2023-01-12';
EXEC InsertPurchasingDetails @PurchasingID = 57, @PurchaseID = 127, @SupplierID = 27, @TypeSizeID = 57, @Quantity = 62, @PurchasingDate = '2023-01-12';
EXEC InsertPurchasingDetails @PurchasingID = 58, @PurchaseID = 466, @SupplierID = 69, @TypeSizeID = 58, @Quantity = 51, @PurchasingDate = '2023-01-12';
EXEC InsertPurchasingDetails @PurchasingID = 59, @PurchaseID = 468, @SupplierID = 66, @TypeSizeID = 59, @Quantity = 59, @PurchasingDate = '2023-01-12';
EXEC InsertPurchasingDetails @PurchasingID = 60, @PurchaseID = 474, @SupplierID = 18, @TypeSizeID = 60, @Quantity = 56, @PurchasingDate = '2023-01-12';
EXEC InsertPurchasingDetails @PurchasingID = 61, @PurchaseID = 78, @SupplierID = 53, @TypeSizeID = 61, @Quantity = 82, @PurchasingDate = '2023-01-13';
EXEC InsertPurchasingDetails @PurchasingID = 62, @PurchaseID = 86, @SupplierID = 80, @TypeSizeID = 62, @Quantity = 62, @PurchasingDate = '2023-01-13';
EXEC InsertPurchasingDetails @PurchasingID = 63, @PurchaseID = 45, @SupplierID = 100, @TypeSizeID = 63, @Quantity = 78, @PurchasingDate = '2023-01-13';
EXEC InsertPurchasingDetails @PurchasingID = 64, @PurchaseID = 20, @SupplierID = 31, @TypeSizeID = 64, @Quantity = 66, @PurchasingDate = '2023-01-13';
EXEC InsertPurchasingDetails @PurchasingID = 65, @PurchaseID = 397, @SupplierID = 51, @TypeSizeID = 65, @Quantity = 66, @PurchasingDate = '2023-01-13';
EXEC InsertPurchasingDetails @PurchasingID = 66, @PurchaseID = 314, @SupplierID = 4, @TypeSizeID = 66, @Quantity = 52, @PurchasingDate = '2023-01-14';
EXEC InsertPurchasingDetails @PurchasingID = 67, @PurchaseID = 31, @SupplierID = 56, @TypeSizeID = 67, @Quantity = 87, @PurchasingDate = '2023-01-14';
EXEC InsertPurchasingDetails @PurchasingID = 68, @PurchaseID = 449, @SupplierID = 44, @TypeSizeID = 68, @Quantity = 70, @PurchasingDate = '2023-01-14';
EXEC InsertPurchasingDetails @PurchasingID = 69, @PurchaseID = 156, @SupplierID = 46, @TypeSizeID = 69, @Quantity = 83, @PurchasingDate = '2023-01-14';
EXEC InsertPurchasingDetails @PurchasingID = 70, @PurchaseID = 92, @SupplierID = 56, @TypeSizeID = 70, @Quantity = 74, @PurchasingDate = '2023-01-14';
EXEC InsertPurchasingDetails @PurchasingID = 71, @PurchaseID = 191, @SupplierID = 2, @TypeSizeID = 71, @Quantity = 96, @PurchasingDate = '2023-01-15';
EXEC InsertPurchasingDetails @PurchasingID = 72, @PurchaseID = 151, @SupplierID = 35, @TypeSizeID = 72, @Quantity = 72, @PurchasingDate = '2023-01-15';
EXEC InsertPurchasingDetails @PurchasingID = 73, @PurchaseID = 111, @SupplierID = 15, @TypeSizeID = 73, @Quantity = 93, @PurchasingDate = '2023-01-15';
EXEC InsertPurchasingDetails @PurchasingID = 74, @PurchaseID = 91, @SupplierID = 39, @TypeSizeID = 74, @Quantity = 84, @PurchasingDate = '2023-01-15';
EXEC InsertPurchasingDetails @PurchasingID = 75, @PurchaseID = 265, @SupplierID = 38, @TypeSizeID = 75, @Quantity = 86, @PurchasingDate = '2023-01-15';
EXEC InsertPurchasingDetails @PurchasingID = 76, @PurchaseID = 335, @SupplierID = 40, @TypeSizeID = 76, @Quantity = 65, @PurchasingDate = '2023-01-16';
EXEC InsertPurchasingDetails @PurchasingID = 77, @PurchaseID = 181, @SupplierID = 33, @TypeSizeID = 77, @Quantity = 96, @PurchasingDate = '2023-01-16';
EXEC InsertPurchasingDetails @PurchasingID = 78, @PurchaseID = 481, @SupplierID = 40, @TypeSizeID = 78, @Quantity = 95, @PurchasingDate = '2023-01-16';
EXEC InsertPurchasingDetails @PurchasingID = 79, @PurchaseID = 348, @SupplierID = 96, @TypeSizeID = 79, @Quantity = 59, @PurchasingDate = '2023-01-16';
EXEC InsertPurchasingDetails @PurchasingID = 80, @PurchaseID = 178, @SupplierID = 53, @TypeSizeID = 80, @Quantity = 97, @PurchasingDate = '2023-01-16';
EXEC InsertPurchasingDetails @PurchasingID = 81, @PurchaseID = 262, @SupplierID = 53, @TypeSizeID = 81, @Quantity = 80, @PurchasingDate = '2023-01-17';
EXEC InsertPurchasingDetails @PurchasingID = 82, @PurchaseID = 291, @SupplierID = 32, @TypeSizeID = 82, @Quantity = 66, @PurchasingDate = '2023-01-17';
EXEC InsertPurchasingDetails @PurchasingID = 83, @PurchaseID = 27, @SupplierID = 39, @TypeSizeID = 83, @Quantity = 99, @PurchasingDate = '2023-01-17';
EXEC InsertPurchasingDetails @PurchasingID = 84, @PurchaseID = 295, @SupplierID = 93, @TypeSizeID = 84, @Quantity = 100, @PurchasingDate = '2023-01-17';
EXEC InsertPurchasingDetails @PurchasingID = 85, @PurchaseID = 177, @SupplierID = 22, @TypeSizeID = 85, @Quantity = 53, @PurchasingDate = '2023-01-17';
EXEC InsertPurchasingDetails @PurchasingID = 86, @PurchaseID = 207, @SupplierID = 58, @TypeSizeID = 86, @Quantity = 67, @PurchasingDate = '2023-01-18';
EXEC InsertPurchasingDetails @PurchasingID = 87, @PurchaseID = 252, @SupplierID = 31, @TypeSizeID = 87, @Quantity = 88, @PurchasingDate = '2023-01-18';
EXEC InsertPurchasingDetails @PurchasingID = 88, @PurchaseID = 393, @SupplierID = 27, @TypeSizeID = 88, @Quantity = 78, @PurchasingDate = '2023-01-18';
EXEC InsertPurchasingDetails @PurchasingID = 89, @PurchaseID = 398, @SupplierID = 47, @TypeSizeID = 89, @Quantity = 96, @PurchasingDate = '2023-01-18';
EXEC InsertPurchasingDetails @PurchasingID = 90, @PurchaseID = 347, @SupplierID = 3, @TypeSizeID = 90, @Quantity = 82, @PurchasingDate = '2023-01-18';
EXEC InsertPurchasingDetails @PurchasingID = 91, @PurchaseID = 458, @SupplierID = 41, @TypeSizeID = 91, @Quantity = 60, @PurchasingDate = '2023-01-19';
EXEC InsertPurchasingDetails @PurchasingID = 92, @PurchaseID = 217, @SupplierID = 57, @TypeSizeID = 92, @Quantity = 65, @PurchasingDate = '2023-01-19';
EXEC InsertPurchasingDetails @PurchasingID = 93, @PurchaseID = 404, @SupplierID = 15, @TypeSizeID = 93, @Quantity = 50, @PurchasingDate = '2023-01-19';
EXEC InsertPurchasingDetails @PurchasingID = 94, @PurchaseID = 334, @SupplierID = 16, @TypeSizeID = 94, @Quantity = 67, @PurchasingDate = '2023-01-19';
EXEC InsertPurchasingDetails @PurchasingID = 95, @PurchaseID = 90, @SupplierID = 51, @TypeSizeID = 95, @Quantity = 76, @PurchasingDate = '2023-01-19';
EXEC InsertPurchasingDetails @PurchasingID = 96, @PurchaseID = 100, @SupplierID = 44, @TypeSizeID = 96, @Quantity = 79, @PurchasingDate = '2023-01-20';
EXEC InsertPurchasingDetails @PurchasingID = 97, @PurchaseID = 342, @SupplierID = 76, @TypeSizeID = 97, @Quantity = 60, @PurchasingDate = '2023-01-20';
EXEC InsertPurchasingDetails @PurchasingID = 98, @PurchaseID = 9, @SupplierID = 3, @TypeSizeID = 98, @Quantity = 94, @PurchasingDate = '2023-01-20';
EXEC InsertPurchasingDetails @PurchasingID = 99, @PurchaseID = 111, @SupplierID = 33, @TypeSizeID = 99, @Quantity = 98, @PurchasingDate = '2023-01-20';
EXEC InsertPurchasingDetails @PurchasingID = 100, @PurchaseID = 46, @SupplierID = 29, @TypeSizeID = 100, @Quantity = 78, @PurchasingDate = '2023-01-20';
EXEC InsertPurchasingDetails @PurchasingID = 101, @PurchaseID = 433, @SupplierID = 52, @TypeSizeID = 101, @Quantity = 63, @PurchasingDate = '2023-01-21';
EXEC InsertPurchasingDetails @PurchasingID = 102, @PurchaseID = 44, @SupplierID = 67, @TypeSizeID = 102, @Quantity = 59, @PurchasingDate = '2023-01-21';
EXEC InsertPurchasingDetails @PurchasingID = 103, @PurchaseID = 120, @SupplierID = 33, @TypeSizeID = 103, @Quantity = 63, @PurchasingDate = '2023-01-21';
EXEC InsertPurchasingDetails @PurchasingID = 104, @PurchaseID = 271, @SupplierID = 46, @TypeSizeID = 104, @Quantity = 98, @PurchasingDate = '2023-01-21';
EXEC InsertPurchasingDetails @PurchasingID = 105, @PurchaseID = 231, @SupplierID = 99, @TypeSizeID = 105, @Quantity = 65, @PurchasingDate = '2023-01-21';
EXEC InsertPurchasingDetails @PurchasingID = 106, @PurchaseID = 316, @SupplierID = 93, @TypeSizeID = 106, @Quantity = 94, @PurchasingDate = '2023-01-22';
EXEC InsertPurchasingDetails @PurchasingID = 107, @PurchaseID = 182, @SupplierID = 96, @TypeSizeID = 107, @Quantity = 70, @PurchasingDate = '2023-01-22';
EXEC InsertPurchasingDetails @PurchasingID = 108, @PurchaseID = 120, @SupplierID = 13, @TypeSizeID = 108, @Quantity = 92, @PurchasingDate = '2023-01-22';
EXEC InsertPurchasingDetails @PurchasingID = 109, @PurchaseID = 226, @SupplierID = 72, @TypeSizeID = 109, @Quantity = 98, @PurchasingDate = '2023-01-22';
EXEC InsertPurchasingDetails @PurchasingID = 110, @PurchaseID = 341, @SupplierID = 51, @TypeSizeID = 110, @Quantity = 99, @PurchasingDate = '2023-01-22';
EXEC InsertPurchasingDetails @PurchasingID = 111, @PurchaseID = 210, @SupplierID = 39, @TypeSizeID = 111, @Quantity = 95, @PurchasingDate = '2023-01-23';
EXEC InsertPurchasingDetails @PurchasingID = 112, @PurchaseID = 287, @SupplierID = 15, @TypeSizeID = 112, @Quantity = 95, @PurchasingDate = '2023-01-23';
EXEC InsertPurchasingDetails @PurchasingID = 113, @PurchaseID = 264, @SupplierID = 77, @TypeSizeID = 113, @Quantity = 100, @PurchasingDate = '2023-01-23';
EXEC InsertPurchasingDetails @PurchasingID = 114, @PurchaseID = 314, @SupplierID = 88, @TypeSizeID = 114, @Quantity = 78, @PurchasingDate = '2023-01-23';
EXEC InsertPurchasingDetails @PurchasingID = 115, @PurchaseID = 222, @SupplierID = 61, @TypeSizeID = 115, @Quantity = 65, @PurchasingDate = '2023-01-23';
EXEC InsertPurchasingDetails @PurchasingID = 116, @PurchaseID = 172, @SupplierID = 10, @TypeSizeID = 116, @Quantity = 78, @PurchasingDate = '2023-01-24';
EXEC InsertPurchasingDetails @PurchasingID = 117, @PurchaseID = 328, @SupplierID = 51, @TypeSizeID = 117, @Quantity = 73, @PurchasingDate = '2023-01-24';
EXEC InsertPurchasingDetails @PurchasingID = 118, @PurchaseID = 336, @SupplierID = 60, @TypeSizeID = 118, @Quantity = 75, @PurchasingDate = '2023-01-24';
EXEC InsertPurchasingDetails @PurchasingID = 119, @PurchaseID = 294, @SupplierID = 86, @TypeSizeID = 119, @Quantity = 94, @PurchasingDate = '2023-01-24';
EXEC InsertPurchasingDetails @PurchasingID = 120, @PurchaseID = 362, @SupplierID = 43, @TypeSizeID = 120, @Quantity = 91, @PurchasingDate = '2023-01-24';
EXEC InsertPurchasingDetails @PurchasingID = 121, @PurchaseID = 323, @SupplierID = 84, @TypeSizeID = 121, @Quantity = 86, @PurchasingDate = '2023-01-25';
EXEC InsertPurchasingDetails @PurchasingID = 122, @PurchaseID = 422, @SupplierID = 58, @TypeSizeID = 122, @Quantity = 86, @PurchasingDate = '2023-01-25';
EXEC InsertPurchasingDetails @PurchasingID = 123, @PurchaseID = 364, @SupplierID = 39, @TypeSizeID = 123, @Quantity = 51, @PurchasingDate = '2023-01-25';
EXEC InsertPurchasingDetails @PurchasingID = 124, @PurchaseID = 419, @SupplierID = 42, @TypeSizeID = 124, @Quantity = 100, @PurchasingDate = '2023-01-25';
EXEC InsertPurchasingDetails @PurchasingID = 125, @PurchaseID = 476, @SupplierID = 18, @TypeSizeID = 125, @Quantity = 98, @PurchasingDate = '2023-01-25';
EXEC InsertPurchasingDetails @PurchasingID = 126, @PurchaseID = 173, @SupplierID = 2, @TypeSizeID = 126, @Quantity = 53, @PurchasingDate = '2023-01-26';
EXEC InsertPurchasingDetails @PurchasingID = 127, @PurchaseID = 176, @SupplierID = 52, @TypeSizeID = 127, @Quantity = 64, @PurchasingDate = '2023-01-26';
EXEC InsertPurchasingDetails @PurchasingID = 128, @PurchaseID = 437, @SupplierID = 43, @TypeSizeID = 128, @Quantity = 81, @PurchasingDate = '2023-01-26';
EXEC InsertPurchasingDetails @PurchasingID = 129, @PurchaseID = 185, @SupplierID = 6, @TypeSizeID = 129, @Quantity = 74, @PurchasingDate = '2023-01-26';
EXEC InsertPurchasingDetails @PurchasingID = 130, @PurchaseID = 369, @SupplierID = 25, @TypeSizeID = 130, @Quantity = 77, @PurchasingDate = '2023-01-26';
EXEC InsertPurchasingDetails @PurchasingID = 131, @PurchaseID = 199, @SupplierID = 53, @TypeSizeID = 131, @Quantity = 76, @PurchasingDate = '2023-01-27';
EXEC InsertPurchasingDetails @PurchasingID = 132, @PurchaseID = 348, @SupplierID = 87, @TypeSizeID = 132, @Quantity = 72, @PurchasingDate = '2023-01-27';
EXEC InsertPurchasingDetails @PurchasingID = 133, @PurchaseID = 316, @SupplierID = 52, @TypeSizeID = 133, @Quantity = 64, @PurchasingDate = '2023-01-27';
EXEC InsertPurchasingDetails @PurchasingID = 134, @PurchaseID = 442, @SupplierID = 38, @TypeSizeID = 134, @Quantity = 66, @PurchasingDate = '2023-01-27';
EXEC InsertPurchasingDetails @PurchasingID = 135, @PurchaseID = 399, @SupplierID = 66, @TypeSizeID = 135, @Quantity = 96, @PurchasingDate = '2023-01-27';
EXEC InsertPurchasingDetails @PurchasingID = 136, @PurchaseID = 422, @SupplierID = 59, @TypeSizeID = 136, @Quantity = 66, @PurchasingDate = '2023-01-28';
EXEC InsertPurchasingDetails @PurchasingID = 137, @PurchaseID = 230, @SupplierID = 22, @TypeSizeID = 137, @Quantity = 56, @PurchasingDate = '2023-01-28';
EXEC InsertPurchasingDetails @PurchasingID = 138, @PurchaseID = 369, @SupplierID = 69, @TypeSizeID = 138, @Quantity = 57, @PurchasingDate = '2023-01-28';
EXEC InsertPurchasingDetails @PurchasingID = 139, @PurchaseID = 371, @SupplierID = 77, @TypeSizeID = 139, @Quantity = 52, @PurchasingDate = '2023-01-28';
EXEC InsertPurchasingDetails @PurchasingID = 140, @PurchaseID = 128, @SupplierID = 16, @TypeSizeID = 140, @Quantity = 66, @PurchasingDate = '2023-01-28';
EXEC InsertPurchasingDetails @PurchasingID = 141, @PurchaseID = 404, @SupplierID = 29, @TypeSizeID = 141, @Quantity = 63, @PurchasingDate = '2023-01-29';
EXEC InsertPurchasingDetails @PurchasingID = 142, @PurchaseID = 378, @SupplierID = 74, @TypeSizeID = 142, @Quantity = 52, @PurchasingDate = '2023-01-29';
EXEC InsertPurchasingDetails @PurchasingID = 143, @PurchaseID = 234, @SupplierID = 32, @TypeSizeID = 143, @Quantity = 93, @PurchasingDate = '2023-01-29';
EXEC InsertPurchasingDetails @PurchasingID = 144, @PurchaseID = 63, @SupplierID = 34, @TypeSizeID = 144, @Quantity = 57, @PurchasingDate = '2023-01-29';
EXEC InsertPurchasingDetails @PurchasingID = 145, @PurchaseID = 262, @SupplierID = 19, @TypeSizeID = 145, @Quantity = 51, @PurchasingDate = '2023-01-29';
EXEC InsertPurchasingDetails @PurchasingID = 146, @PurchaseID = 96, @SupplierID = 23, @TypeSizeID = 146, @Quantity = 77, @PurchasingDate = '2023-01-30';
EXEC InsertPurchasingDetails @PurchasingID = 147, @PurchaseID = 286, @SupplierID = 41, @TypeSizeID = 147, @Quantity = 88, @PurchasingDate = '2023-01-30';
EXEC InsertPurchasingDetails @PurchasingID = 148, @PurchaseID = 421, @SupplierID = 96, @TypeSizeID = 148, @Quantity = 65, @PurchasingDate = '2023-01-30';
EXEC InsertPurchasingDetails @PurchasingID = 149, @PurchaseID = 235, @SupplierID = 85, @TypeSizeID = 149, @Quantity = 69, @PurchasingDate = '2023-01-30';
EXEC InsertPurchasingDetails @PurchasingID = 150, @PurchaseID = 228, @SupplierID = 52, @TypeSizeID = 150, @Quantity = 57, @PurchasingDate = '2023-01-30';
EXEC InsertPurchasingDetails @PurchasingID = 151, @PurchaseID = 180, @SupplierID = 72, @TypeSizeID = 151, @Quantity = 83, @PurchasingDate = '2023-01-31';
EXEC InsertPurchasingDetails @PurchasingID = 152, @PurchaseID = 20, @SupplierID = 6, @TypeSizeID = 152, @Quantity = 91, @PurchasingDate = '2023-01-31';
EXEC InsertPurchasingDetails @PurchasingID = 153, @PurchaseID = 135, @SupplierID = 46, @TypeSizeID = 153, @Quantity = 97, @PurchasingDate = '2023-01-31';
EXEC InsertPurchasingDetails @PurchasingID = 154, @PurchaseID = 64, @SupplierID = 45, @TypeSizeID = 154, @Quantity = 62, @PurchasingDate = '2023-01-31';
EXEC InsertPurchasingDetails @PurchasingID = 155, @PurchaseID = 404, @SupplierID = 10, @TypeSizeID = 155, @Quantity = 60, @PurchasingDate = '2023-01-31';
EXEC InsertPurchasingDetails @PurchasingID = 156, @PurchaseID = 223, @SupplierID = 50, @TypeSizeID = 156, @Quantity = 94, @PurchasingDate = '2023-02-01';
EXEC InsertPurchasingDetails @PurchasingID = 157, @PurchaseID = 114, @SupplierID = 47, @TypeSizeID = 157, @Quantity = 98, @PurchasingDate = '2023-02-01';
EXEC InsertPurchasingDetails @PurchasingID = 158, @PurchaseID = 438, @SupplierID = 34, @TypeSizeID = 158, @Quantity = 78, @PurchasingDate = '2023-02-01';
EXEC InsertPurchasingDetails @PurchasingID = 159, @PurchaseID = 88, @SupplierID = 64, @TypeSizeID = 159, @Quantity = 52, @PurchasingDate = '2023-02-01';
EXEC InsertPurchasingDetails @PurchasingID = 160, @PurchaseID = 303, @SupplierID = 33, @TypeSizeID = 160, @Quantity = 94, @PurchasingDate = '2023-02-01';
EXEC InsertPurchasingDetails @PurchasingID = 161, @PurchaseID = 478, @SupplierID = 71, @TypeSizeID = 161, @Quantity = 93, @PurchasingDate = '2023-02-02';
EXEC InsertPurchasingDetails @PurchasingID = 162, @PurchaseID = 451, @SupplierID = 79, @TypeSizeID = 162, @Quantity = 95, @PurchasingDate = '2023-02-02';
EXEC InsertPurchasingDetails @PurchasingID = 163, @PurchaseID = 171, @SupplierID = 69, @TypeSizeID = 163, @Quantity = 65, @PurchasingDate = '2023-02-02';
EXEC InsertPurchasingDetails @PurchasingID = 164, @PurchaseID = 200, @SupplierID = 29, @TypeSizeID = 164, @Quantity = 94, @PurchasingDate = '2023-02-02';
EXEC InsertPurchasingDetails @PurchasingID = 165, @PurchaseID = 385, @SupplierID = 23, @TypeSizeID = 165, @Quantity = 55, @PurchasingDate = '2023-02-02';
EXEC InsertPurchasingDetails @PurchasingID = 166, @PurchaseID = 160, @SupplierID = 25, @TypeSizeID = 166, @Quantity = 92, @PurchasingDate = '2023-02-03';
EXEC InsertPurchasingDetails @PurchasingID = 167, @PurchaseID = 437, @SupplierID = 32, @TypeSizeID = 167, @Quantity = 56, @PurchasingDate = '2023-02-03';
EXEC InsertPurchasingDetails @PurchasingID = 168, @PurchaseID = 256, @SupplierID = 89, @TypeSizeID = 168, @Quantity = 55, @PurchasingDate = '2023-02-03';
EXEC InsertPurchasingDetails @PurchasingID = 169, @PurchaseID = 254, @SupplierID = 45, @TypeSizeID = 169, @Quantity = 94, @PurchasingDate = '2023-02-03';
EXEC InsertPurchasingDetails @PurchasingID = 170, @PurchaseID = 314, @SupplierID = 83, @TypeSizeID = 170, @Quantity = 70, @PurchasingDate = '2023-02-03';
EXEC InsertPurchasingDetails @PurchasingID = 171, @PurchaseID = 80, @SupplierID = 27, @TypeSizeID = 171, @Quantity = 67, @PurchasingDate = '2023-02-04';
EXEC InsertPurchasingDetails @PurchasingID = 172, @PurchaseID = 289, @SupplierID = 64, @TypeSizeID = 172, @Quantity = 73, @PurchasingDate = '2023-02-04';
EXEC InsertPurchasingDetails @PurchasingID = 173, @PurchaseID = 283, @SupplierID = 10, @TypeSizeID = 173, @Quantity = 87, @PurchasingDate = '2023-02-04';
EXEC InsertPurchasingDetails @PurchasingID = 174, @PurchaseID = 62, @SupplierID = 39, @TypeSizeID = 174, @Quantity = 91, @PurchasingDate = '2023-02-04';
EXEC InsertPurchasingDetails @PurchasingID = 175, @PurchaseID = 464, @SupplierID = 20, @TypeSizeID = 175, @Quantity = 70, @PurchasingDate = '2023-02-04';
EXEC InsertPurchasingDetails @PurchasingID = 176, @PurchaseID = 267, @SupplierID = 19, @TypeSizeID = 176, @Quantity = 76, @PurchasingDate = '2023-02-05';
EXEC InsertPurchasingDetails @PurchasingID = 177, @PurchaseID = 485, @SupplierID = 92, @TypeSizeID = 177, @Quantity = 73, @PurchasingDate = '2023-02-05';
EXEC InsertPurchasingDetails @PurchasingID = 178, @PurchaseID = 215, @SupplierID = 89, @TypeSizeID = 178, @Quantity = 96, @PurchasingDate = '2023-02-05';
EXEC InsertPurchasingDetails @PurchasingID = 179, @PurchaseID = 65, @SupplierID = 29, @TypeSizeID = 179, @Quantity = 80, @PurchasingDate = '2023-02-05';
EXEC InsertPurchasingDetails @PurchasingID = 180, @PurchaseID = 497, @SupplierID = 29, @TypeSizeID = 180, @Quantity = 93, @PurchasingDate = '2023-02-05';
EXEC InsertPurchasingDetails @PurchasingID = 181, @PurchaseID = 109, @SupplierID = 2, @TypeSizeID = 181, @Quantity = 56, @PurchasingDate = '2023-02-06';
EXEC InsertPurchasingDetails @PurchasingID = 182, @PurchaseID = 132, @SupplierID = 86, @TypeSizeID = 182, @Quantity = 52, @PurchasingDate = '2023-02-06';
EXEC InsertPurchasingDetails @PurchasingID = 183, @PurchaseID = 279, @SupplierID = 31, @TypeSizeID = 183, @Quantity = 79, @PurchasingDate = '2023-02-06';
EXEC InsertPurchasingDetails @PurchasingID = 184, @PurchaseID = 378, @SupplierID = 49, @TypeSizeID = 184, @Quantity = 53, @PurchasingDate = '2023-02-06';
EXEC InsertPurchasingDetails @PurchasingID = 185, @PurchaseID = 184, @SupplierID = 100, @TypeSizeID = 185, @Quantity = 86, @PurchasingDate = '2023-02-06';
EXEC InsertPurchasingDetails @PurchasingID = 186, @PurchaseID = 277, @SupplierID = 55, @TypeSizeID = 186, @Quantity = 72, @PurchasingDate = '2023-02-07';
EXEC InsertPurchasingDetails @PurchasingID = 187, @PurchaseID = 76, @SupplierID = 70, @TypeSizeID = 187, @Quantity = 89, @PurchasingDate = '2023-02-07';
EXEC InsertPurchasingDetails @PurchasingID = 188, @PurchaseID = 291, @SupplierID = 85, @TypeSizeID = 188, @Quantity = 55, @PurchasingDate = '2023-02-07';
EXEC InsertPurchasingDetails @PurchasingID = 189, @PurchaseID = 98, @SupplierID = 65, @TypeSizeID = 189, @Quantity = 91, @PurchasingDate = '2023-02-07';
EXEC InsertPurchasingDetails @PurchasingID = 190, @PurchaseID = 78, @SupplierID = 27, @TypeSizeID = 190, @Quantity = 50, @PurchasingDate = '2023-02-07';
EXEC InsertPurchasingDetails @PurchasingID = 191, @PurchaseID = 46, @SupplierID = 99, @TypeSizeID = 191, @Quantity = 81, @PurchasingDate = '2023-02-08';
EXEC InsertPurchasingDetails @PurchasingID = 192, @PurchaseID = 6, @SupplierID = 10, @TypeSizeID = 192, @Quantity = 52, @PurchasingDate = '2023-02-08';
EXEC InsertPurchasingDetails @PurchasingID = 193, @PurchaseID = 497, @SupplierID = 46, @TypeSizeID = 193, @Quantity = 60, @PurchasingDate = '2023-02-08';
EXEC InsertPurchasingDetails @PurchasingID = 194, @PurchaseID = 439, @SupplierID = 62, @TypeSizeID = 194, @Quantity = 59, @PurchasingDate = '2023-02-08';
EXEC InsertPurchasingDetails @PurchasingID = 195, @PurchaseID = 163, @SupplierID = 38, @TypeSizeID = 195, @Quantity = 66, @PurchasingDate = '2023-02-08';
EXEC InsertPurchasingDetails @PurchasingID = 196, @PurchaseID = 480, @SupplierID = 33, @TypeSizeID = 196, @Quantity = 53, @PurchasingDate = '2023-02-09';
EXEC InsertPurchasingDetails @PurchasingID = 197, @PurchaseID = 130, @SupplierID = 27, @TypeSizeID = 197, @Quantity = 98, @PurchasingDate = '2023-02-09';
EXEC InsertPurchasingDetails @PurchasingID = 198, @PurchaseID = 396, @SupplierID = 62, @TypeSizeID = 198, @Quantity = 89, @PurchasingDate = '2023-02-09';
EXEC InsertPurchasingDetails @PurchasingID = 199, @PurchaseID = 353, @SupplierID = 73, @TypeSizeID = 199, @Quantity = 74, @PurchasingDate = '2023-02-09';
EXEC InsertPurchasingDetails @PurchasingID = 200, @PurchaseID = 264, @SupplierID = 79, @TypeSizeID = 200, @Quantity = 98, @PurchasingDate = '2023-02-09';
EXEC InsertPurchasingDetails @PurchasingID = 201, @PurchaseID = 190, @SupplierID = 82, @TypeSizeID = 201, @Quantity = 69, @PurchasingDate = '2023-02-10';
EXEC InsertPurchasingDetails @PurchasingID = 202, @PurchaseID = 200, @SupplierID = 13, @TypeSizeID = 202, @Quantity = 91, @PurchasingDate = '2023-02-10';
EXEC InsertPurchasingDetails @PurchasingID = 203, @PurchaseID = 140, @SupplierID = 40, @TypeSizeID = 203, @Quantity = 58, @PurchasingDate = '2023-02-10';
EXEC InsertPurchasingDetails @PurchasingID = 204, @PurchaseID = 26, @SupplierID = 12, @TypeSizeID = 204, @Quantity = 76, @PurchasingDate = '2023-02-10';
EXEC InsertPurchasingDetails @PurchasingID = 205, @PurchaseID = 136, @SupplierID = 67, @TypeSizeID = 205, @Quantity = 56, @PurchasingDate = '2023-02-10';
EXEC InsertPurchasingDetails @PurchasingID = 206, @PurchaseID = 143, @SupplierID = 45, @TypeSizeID = 206, @Quantity = 80, @PurchasingDate = '2023-02-11';
EXEC InsertPurchasingDetails @PurchasingID = 207, @PurchaseID = 316, @SupplierID = 10, @TypeSizeID = 207, @Quantity = 54, @PurchasingDate = '2023-02-11';
EXEC InsertPurchasingDetails @PurchasingID = 208, @PurchaseID = 117, @SupplierID = 4, @TypeSizeID = 208, @Quantity = 69, @PurchasingDate = '2023-02-11';
EXEC InsertPurchasingDetails @PurchasingID = 209, @PurchaseID = 306, @SupplierID = 59, @TypeSizeID = 209, @Quantity = 89, @PurchasingDate = '2023-02-11';
EXEC InsertPurchasingDetails @PurchasingID = 210, @PurchaseID = 339, @SupplierID = 97, @TypeSizeID = 210, @Quantity = 85, @PurchasingDate = '2023-02-11';
EXEC InsertPurchasingDetails @PurchasingID = 211, @PurchaseID = 21, @SupplierID = 90, @TypeSizeID = 211, @Quantity = 63, @PurchasingDate = '2023-02-12';
EXEC InsertPurchasingDetails @PurchasingID = 212, @PurchaseID = 25, @SupplierID = 70, @TypeSizeID = 212, @Quantity = 60, @PurchasingDate = '2023-02-12';
EXEC InsertPurchasingDetails @PurchasingID = 213, @PurchaseID = 279, @SupplierID = 22, @TypeSizeID = 213, @Quantity = 95, @PurchasingDate = '2023-02-12';
EXEC InsertPurchasingDetails @PurchasingID = 214, @PurchaseID = 471, @SupplierID = 21, @TypeSizeID = 214, @Quantity = 77, @PurchasingDate = '2023-02-12';
EXEC InsertPurchasingDetails @PurchasingID = 215, @PurchaseID = 446, @SupplierID = 13, @TypeSizeID = 215, @Quantity = 82, @PurchasingDate = '2023-02-12';
EXEC InsertPurchasingDetails @PurchasingID = 216, @PurchaseID = 285, @SupplierID = 14, @TypeSizeID = 216, @Quantity = 72, @PurchasingDate = '2023-02-13';
EXEC InsertPurchasingDetails @PurchasingID = 217, @PurchaseID = 336, @SupplierID = 91, @TypeSizeID = 217, @Quantity = 81, @PurchasingDate = '2023-02-13';
EXEC InsertPurchasingDetails @PurchasingID = 218, @PurchaseID = 337, @SupplierID = 56, @TypeSizeID = 218, @Quantity = 70, @PurchasingDate = '2023-02-13';
EXEC InsertPurchasingDetails @PurchasingID = 219, @PurchaseID = 240, @SupplierID = 1, @TypeSizeID = 219, @Quantity = 61, @PurchasingDate = '2023-02-13';
EXEC InsertPurchasingDetails @PurchasingID = 220, @PurchaseID = 134, @SupplierID = 2, @TypeSizeID = 220, @Quantity = 96, @PurchasingDate = '2023-02-13';
EXEC InsertPurchasingDetails @PurchasingID = 221, @PurchaseID = 256, @SupplierID = 65, @TypeSizeID = 221, @Quantity = 63, @PurchasingDate = '2023-02-14';
EXEC InsertPurchasingDetails @PurchasingID = 222, @PurchaseID = 286, @SupplierID = 54, @TypeSizeID = 222, @Quantity = 51, @PurchasingDate = '2023-02-14';
EXEC InsertPurchasingDetails @PurchasingID = 223, @PurchaseID = 15, @SupplierID = 55, @TypeSizeID = 223, @Quantity = 54, @PurchasingDate = '2023-02-14';
EXEC InsertPurchasingDetails @PurchasingID = 224, @PurchaseID = 478, @SupplierID = 33, @TypeSizeID = 224, @Quantity = 71, @PurchasingDate = '2023-02-14';
EXEC InsertPurchasingDetails @PurchasingID = 225, @PurchaseID = 116, @SupplierID = 11, @TypeSizeID = 225, @Quantity = 92, @PurchasingDate = '2023-02-14';
EXEC InsertPurchasingDetails @PurchasingID = 226, @PurchaseID = 428, @SupplierID = 37, @TypeSizeID = 226, @Quantity = 55, @PurchasingDate = '2023-02-15';
EXEC InsertPurchasingDetails @PurchasingID = 227, @PurchaseID = 245, @SupplierID = 86, @TypeSizeID = 227, @Quantity = 92, @PurchasingDate = '2023-02-15';
EXEC InsertPurchasingDetails @PurchasingID = 228, @PurchaseID = 496, @SupplierID = 33, @TypeSizeID = 228, @Quantity = 71, @PurchasingDate = '2023-02-15';
EXEC InsertPurchasingDetails @PurchasingID = 229, @PurchaseID = 468, @SupplierID = 50, @TypeSizeID = 229, @Quantity = 92, @PurchasingDate = '2023-02-15';
EXEC InsertPurchasingDetails @PurchasingID = 230, @PurchaseID = 210, @SupplierID = 53, @TypeSizeID = 230, @Quantity = 53, @PurchasingDate = '2023-02-15';
EXEC InsertPurchasingDetails @PurchasingID = 231, @PurchaseID = 375, @SupplierID = 94, @TypeSizeID = 231, @Quantity = 81, @PurchasingDate = '2023-02-16';
EXEC InsertPurchasingDetails @PurchasingID = 232, @PurchaseID = 274, @SupplierID = 46, @TypeSizeID = 232, @Quantity = 55, @PurchasingDate = '2023-02-16';
EXEC InsertPurchasingDetails @PurchasingID = 233, @PurchaseID = 37, @SupplierID = 18, @TypeSizeID = 233, @Quantity = 85, @PurchasingDate = '2023-02-16';
EXEC InsertPurchasingDetails @PurchasingID = 234, @PurchaseID = 25, @SupplierID = 45, @TypeSizeID = 234, @Quantity = 84, @PurchasingDate = '2023-02-16';
EXEC InsertPurchasingDetails @PurchasingID = 235, @PurchaseID = 195, @SupplierID = 74, @TypeSizeID = 235, @Quantity = 67, @PurchasingDate = '2023-02-16';
EXEC InsertPurchasingDetails @PurchasingID = 236, @PurchaseID = 312, @SupplierID = 12, @TypeSizeID = 236, @Quantity = 99, @PurchasingDate = '2023-02-17';
EXEC InsertPurchasingDetails @PurchasingID = 237, @PurchaseID = 326, @SupplierID = 15, @TypeSizeID = 237, @Quantity = 85, @PurchasingDate = '2023-02-17';
EXEC InsertPurchasingDetails @PurchasingID = 238, @PurchaseID = 164, @SupplierID = 72, @TypeSizeID = 238, @Quantity = 51, @PurchasingDate = '2023-02-17';
EXEC InsertPurchasingDetails @PurchasingID = 239, @PurchaseID = 300, @SupplierID = 66, @TypeSizeID = 239, @Quantity = 88, @PurchasingDate = '2023-02-17';
EXEC InsertPurchasingDetails @PurchasingID = 240, @PurchaseID = 204, @SupplierID = 83, @TypeSizeID = 240, @Quantity = 50, @PurchasingDate = '2023-02-17';
EXEC InsertPurchasingDetails @PurchasingID = 241, @PurchaseID = 498, @SupplierID = 36, @TypeSizeID = 241, @Quantity = 50, @PurchasingDate = '2023-02-18';
EXEC InsertPurchasingDetails @PurchasingID = 242, @PurchaseID = 334, @SupplierID = 48, @TypeSizeID = 242, @Quantity = 68, @PurchasingDate = '2023-02-18';
EXEC InsertPurchasingDetails @PurchasingID = 243, @PurchaseID = 334, @SupplierID = 28, @TypeSizeID = 243, @Quantity = 64, @PurchasingDate = '2023-02-18';
EXEC InsertPurchasingDetails @PurchasingID = 244, @PurchaseID = 318, @SupplierID = 19, @TypeSizeID = 244, @Quantity = 59, @PurchasingDate = '2023-02-18';
EXEC InsertPurchasingDetails @PurchasingID = 245, @PurchaseID = 148, @SupplierID = 90, @TypeSizeID = 245, @Quantity = 52, @PurchasingDate = '2023-02-18';
EXEC InsertPurchasingDetails @PurchasingID = 246, @PurchaseID = 479, @SupplierID = 19, @TypeSizeID = 246, @Quantity = 55, @PurchasingDate = '2023-02-19';
EXEC InsertPurchasingDetails @PurchasingID = 247, @PurchaseID = 210, @SupplierID = 16, @TypeSizeID = 247, @Quantity = 51, @PurchasingDate = '2023-02-19';
EXEC InsertPurchasingDetails @PurchasingID = 248, @PurchaseID = 271, @SupplierID = 11, @TypeSizeID = 248, @Quantity = 90, @PurchasingDate = '2023-02-19';
EXEC InsertPurchasingDetails @PurchasingID = 249, @PurchaseID = 312, @SupplierID = 63, @TypeSizeID = 249, @Quantity = 53, @PurchasingDate = '2023-02-19';
EXEC InsertPurchasingDetails @PurchasingID = 250, @PurchaseID = 422, @SupplierID = 75, @TypeSizeID = 250, @Quantity = 91, @PurchasingDate = '2023-02-19';
EXEC InsertPurchasingDetails @PurchasingID = 251, @PurchaseID = 415, @SupplierID = 37, @TypeSizeID = 251, @Quantity = 72, @PurchasingDate = '2023-02-20';
EXEC InsertPurchasingDetails @PurchasingID = 252, @PurchaseID = 424, @SupplierID = 75, @TypeSizeID = 252, @Quantity = 93, @PurchasingDate = '2023-02-20';
EXEC InsertPurchasingDetails @PurchasingID = 253, @PurchaseID = 214, @SupplierID = 86, @TypeSizeID = 253, @Quantity = 81, @PurchasingDate = '2023-02-20';
EXEC InsertPurchasingDetails @PurchasingID = 254, @PurchaseID = 249, @SupplierID = 41, @TypeSizeID = 254, @Quantity = 94, @PurchasingDate = '2023-02-20';
EXEC InsertPurchasingDetails @PurchasingID = 255, @PurchaseID = 39, @SupplierID = 99, @TypeSizeID = 255, @Quantity = 76, @PurchasingDate = '2023-02-20';
EXEC InsertPurchasingDetails @PurchasingID = 256, @PurchaseID = 11, @SupplierID = 71, @TypeSizeID = 256, @Quantity = 51, @PurchasingDate = '2023-02-21';
EXEC InsertPurchasingDetails @PurchasingID = 257, @PurchaseID = 457, @SupplierID = 38, @TypeSizeID = 257, @Quantity = 76, @PurchasingDate = '2023-02-21';
EXEC InsertPurchasingDetails @PurchasingID = 258, @PurchaseID = 33, @SupplierID = 7, @TypeSizeID = 258, @Quantity = 58, @PurchasingDate = '2023-02-21';
EXEC InsertPurchasingDetails @PurchasingID = 259, @PurchaseID = 70, @SupplierID = 43, @TypeSizeID = 259, @Quantity = 79, @PurchasingDate = '2023-02-21';
EXEC InsertPurchasingDetails @PurchasingID = 260, @PurchaseID = 20, @SupplierID = 75, @TypeSizeID = 260, @Quantity = 90, @PurchasingDate = '2023-02-21';
EXEC InsertPurchasingDetails @PurchasingID = 261, @PurchaseID = 198, @SupplierID = 57, @TypeSizeID = 261, @Quantity = 52, @PurchasingDate = '2023-02-22';
EXEC InsertPurchasingDetails @PurchasingID = 262, @PurchaseID = 215, @SupplierID = 89, @TypeSizeID = 262, @Quantity = 69, @PurchasingDate = '2023-02-22';
EXEC InsertPurchasingDetails @PurchasingID = 263, @PurchaseID = 28, @SupplierID = 44, @TypeSizeID = 263, @Quantity = 70, @PurchasingDate = '2023-02-22';
EXEC InsertPurchasingDetails @PurchasingID = 264, @PurchaseID = 236, @SupplierID = 23, @TypeSizeID = 264, @Quantity = 89, @PurchasingDate = '2023-02-22';
EXEC InsertPurchasingDetails @PurchasingID = 265, @PurchaseID = 416, @SupplierID = 92, @TypeSizeID = 265, @Quantity = 66, @PurchasingDate = '2023-02-22';
EXEC InsertPurchasingDetails @PurchasingID = 266, @PurchaseID = 357, @SupplierID = 17, @TypeSizeID = 266, @Quantity = 94, @PurchasingDate = '2023-02-23';
EXEC InsertPurchasingDetails @PurchasingID = 267, @PurchaseID = 96, @SupplierID = 88, @TypeSizeID = 267, @Quantity = 97, @PurchasingDate = '2023-02-23';
EXEC InsertPurchasingDetails @PurchasingID = 268, @PurchaseID = 453, @SupplierID = 34, @TypeSizeID = 268, @Quantity = 91, @PurchasingDate = '2023-02-23';
EXEC InsertPurchasingDetails @PurchasingID = 269, @PurchaseID = 149, @SupplierID = 92, @TypeSizeID = 269, @Quantity = 57, @PurchasingDate = '2023-02-23';
EXEC InsertPurchasingDetails @PurchasingID = 270, @PurchaseID = 341, @SupplierID = 37, @TypeSizeID = 270, @Quantity = 77, @PurchasingDate = '2023-02-23';
EXEC InsertPurchasingDetails @PurchasingID = 271, @PurchaseID = 298, @SupplierID = 39, @TypeSizeID = 271, @Quantity = 53, @PurchasingDate = '2023-02-24';
EXEC InsertPurchasingDetails @PurchasingID = 272, @PurchaseID = 287, @SupplierID = 66, @TypeSizeID = 272, @Quantity = 99, @PurchasingDate = '2023-02-24';
EXEC InsertPurchasingDetails @PurchasingID = 273, @PurchaseID = 103, @SupplierID = 71, @TypeSizeID = 273, @Quantity = 63, @PurchasingDate = '2023-02-24';
EXEC InsertPurchasingDetails @PurchasingID = 274, @PurchaseID = 387, @SupplierID = 49, @TypeSizeID = 274, @Quantity = 75, @PurchasingDate = '2023-02-24';
EXEC InsertPurchasingDetails @PurchasingID = 275, @PurchaseID = 103, @SupplierID = 85, @TypeSizeID = 275, @Quantity = 56, @PurchasingDate = '2023-02-24';
EXEC InsertPurchasingDetails @PurchasingID = 276, @PurchaseID = 325, @SupplierID = 47, @TypeSizeID = 276, @Quantity = 74, @PurchasingDate = '2023-02-25';
EXEC InsertPurchasingDetails @PurchasingID = 277, @PurchaseID = 86, @SupplierID = 17, @TypeSizeID = 277, @Quantity = 53, @PurchasingDate = '2023-02-25';
EXEC InsertPurchasingDetails @PurchasingID = 278, @PurchaseID = 81, @SupplierID = 39, @TypeSizeID = 278, @Quantity = 55, @PurchasingDate = '2023-02-25';
EXEC InsertPurchasingDetails @PurchasingID = 279, @PurchaseID = 27, @SupplierID = 99, @TypeSizeID = 279, @Quantity = 66, @PurchasingDate = '2023-02-25';
EXEC InsertPurchasingDetails @PurchasingID = 280, @PurchaseID = 112, @SupplierID = 70, @TypeSizeID = 280, @Quantity = 84, @PurchasingDate = '2023-02-25';
EXEC InsertPurchasingDetails @PurchasingID = 281, @PurchaseID = 128, @SupplierID = 84, @TypeSizeID = 281, @Quantity = 65, @PurchasingDate = '2023-02-26';
EXEC InsertPurchasingDetails @PurchasingID = 282, @PurchaseID = 150, @SupplierID = 50, @TypeSizeID = 282, @Quantity = 55, @PurchasingDate = '2023-02-26';
EXEC InsertPurchasingDetails @PurchasingID = 283, @PurchaseID = 254, @SupplierID = 44, @TypeSizeID = 283, @Quantity = 63, @PurchasingDate = '2023-02-26';
EXEC InsertPurchasingDetails @PurchasingID = 284, @PurchaseID = 329, @SupplierID = 62, @TypeSizeID = 284, @Quantity = 53, @PurchasingDate = '2023-02-26';
EXEC InsertPurchasingDetails @PurchasingID = 285, @PurchaseID = 60, @SupplierID = 70, @TypeSizeID = 285, @Quantity = 98, @PurchasingDate = '2023-02-26';
EXEC InsertPurchasingDetails @PurchasingID = 286, @PurchaseID = 373, @SupplierID = 24, @TypeSizeID = 286, @Quantity = 75, @PurchasingDate = '2023-02-27';
EXEC InsertPurchasingDetails @PurchasingID = 287, @PurchaseID = 204, @SupplierID = 28, @TypeSizeID = 287, @Quantity = 89, @PurchasingDate = '2023-02-27';
EXEC InsertPurchasingDetails @PurchasingID = 288, @PurchaseID = 162, @SupplierID = 97, @TypeSizeID = 288, @Quantity = 90, @PurchasingDate = '2023-02-27';
EXEC InsertPurchasingDetails @PurchasingID = 289, @PurchaseID = 464, @SupplierID = 33, @TypeSizeID = 289, @Quantity = 69, @PurchasingDate = '2023-02-27';
EXEC InsertPurchasingDetails @PurchasingID = 290, @PurchaseID = 248, @SupplierID = 38, @TypeSizeID = 290, @Quantity = 86, @PurchasingDate = '2023-02-27';
EXEC InsertPurchasingDetails @PurchasingID = 291, @PurchaseID = 162, @SupplierID = 93, @TypeSizeID = 291, @Quantity = 89, @PurchasingDate = '2023-02-28';
EXEC InsertPurchasingDetails @PurchasingID = 292, @PurchaseID = 193, @SupplierID = 99, @TypeSizeID = 292, @Quantity = 57, @PurchasingDate = '2023-02-28';
EXEC InsertPurchasingDetails @PurchasingID = 293, @PurchaseID = 400, @SupplierID = 68, @TypeSizeID = 293, @Quantity = 79, @PurchasingDate = '2023-02-28';
EXEC InsertPurchasingDetails @PurchasingID = 294, @PurchaseID = 474, @SupplierID = 11, @TypeSizeID = 294, @Quantity = 52, @PurchasingDate = '2023-02-28';
EXEC InsertPurchasingDetails @PurchasingID = 295, @PurchaseID = 369, @SupplierID = 89, @TypeSizeID = 295, @Quantity = 53, @PurchasingDate = '2023-02-28';
EXEC InsertPurchasingDetails @PurchasingID = 296, @PurchaseID = 108, @SupplierID = 62, @TypeSizeID = 296, @Quantity = 58, @PurchasingDate = '2023-03-01';
EXEC InsertPurchasingDetails @PurchasingID = 297, @PurchaseID = 414, @SupplierID = 93, @TypeSizeID = 297, @Quantity = 88, @PurchasingDate = '2023-03-01';
EXEC InsertPurchasingDetails @PurchasingID = 298, @PurchaseID = 465, @SupplierID = 40, @TypeSizeID = 298, @Quantity = 73, @PurchasingDate = '2023-03-01';
EXEC InsertPurchasingDetails @PurchasingID = 299, @PurchaseID = 6, @SupplierID = 74, @TypeSizeID = 299, @Quantity = 93, @PurchasingDate = '2023-03-01';
EXEC InsertPurchasingDetails @PurchasingID = 300, @PurchaseID = 409, @SupplierID = 45, @TypeSizeID = 300, @Quantity = 96, @PurchasingDate = '2023-03-01';
EXEC InsertPurchasingDetails @PurchasingID = 301, @PurchaseID = 159, @SupplierID = 73, @TypeSizeID = 301, @Quantity = 50, @PurchasingDate = '2023-03-02';
EXEC InsertPurchasingDetails @PurchasingID = 302, @PurchaseID = 341, @SupplierID = 91, @TypeSizeID = 302, @Quantity = 56, @PurchasingDate = '2023-03-02';
EXEC InsertPurchasingDetails @PurchasingID = 303, @PurchaseID = 89, @SupplierID = 32, @TypeSizeID = 303, @Quantity = 73, @PurchasingDate = '2023-03-02';
EXEC InsertPurchasingDetails @PurchasingID = 304, @PurchaseID = 117, @SupplierID = 93, @TypeSizeID = 304, @Quantity = 97, @PurchasingDate = '2023-03-02';
EXEC InsertPurchasingDetails @PurchasingID = 305, @PurchaseID = 109, @SupplierID = 44, @TypeSizeID = 305, @Quantity = 64, @PurchasingDate = '2023-03-02';
EXEC InsertPurchasingDetails @PurchasingID = 306, @PurchaseID = 1, @SupplierID = 86, @TypeSizeID = 306, @Quantity = 97, @PurchasingDate = '2023-03-03';
EXEC InsertPurchasingDetails @PurchasingID = 307, @PurchaseID = 190, @SupplierID = 90, @TypeSizeID = 307, @Quantity = 96, @PurchasingDate = '2023-03-03';
EXEC InsertPurchasingDetails @PurchasingID = 308, @PurchaseID = 65, @SupplierID = 29, @TypeSizeID = 308, @Quantity = 74, @PurchasingDate = '2023-03-03';
EXEC InsertPurchasingDetails @PurchasingID = 309, @PurchaseID = 246, @SupplierID = 31, @TypeSizeID = 309, @Quantity = 98, @PurchasingDate = '2023-03-03';
EXEC InsertPurchasingDetails @PurchasingID = 310, @PurchaseID = 91, @SupplierID = 22, @TypeSizeID = 310, @Quantity = 58, @PurchasingDate = '2023-03-03';
EXEC InsertPurchasingDetails @PurchasingID = 311, @PurchaseID = 352, @SupplierID = 91, @TypeSizeID = 311, @Quantity = 58, @PurchasingDate = '2023-03-04';
EXEC InsertPurchasingDetails @PurchasingID = 312, @PurchaseID = 478, @SupplierID = 17, @TypeSizeID = 312, @Quantity = 80, @PurchasingDate = '2023-03-04';
EXEC InsertPurchasingDetails @PurchasingID = 313, @PurchaseID = 279, @SupplierID = 22, @TypeSizeID = 313, @Quantity = 54, @PurchasingDate = '2023-03-04';
EXEC InsertPurchasingDetails @PurchasingID = 314, @PurchaseID = 140, @SupplierID = 57, @TypeSizeID = 314, @Quantity = 98, @PurchasingDate = '2023-03-04';
EXEC InsertPurchasingDetails @PurchasingID = 315, @PurchaseID = 318, @SupplierID = 4, @TypeSizeID = 315, @Quantity = 97, @PurchasingDate = '2023-03-04';
EXEC InsertPurchasingDetails @PurchasingID = 316, @PurchaseID = 264, @SupplierID = 62, @TypeSizeID = 316, @Quantity = 59, @PurchasingDate = '2023-03-05';
EXEC InsertPurchasingDetails @PurchasingID = 317, @PurchaseID = 112, @SupplierID = 99, @TypeSizeID = 317, @Quantity = 92, @PurchasingDate = '2023-03-05';
EXEC InsertPurchasingDetails @PurchasingID = 318, @PurchaseID = 154, @SupplierID = 93, @TypeSizeID = 318, @Quantity = 58, @PurchasingDate = '2023-03-05';
EXEC InsertPurchasingDetails @PurchasingID = 319, @PurchaseID = 13, @SupplierID = 29, @TypeSizeID = 319, @Quantity = 51, @PurchasingDate = '2023-03-05';
EXEC InsertPurchasingDetails @PurchasingID = 320, @PurchaseID = 16, @SupplierID = 97, @TypeSizeID = 320, @Quantity = 52, @PurchasingDate = '2023-03-05';
EXEC InsertPurchasingDetails @PurchasingID = 321, @PurchaseID = 57, @SupplierID = 97, @TypeSizeID = 321, @Quantity = 88, @PurchasingDate = '2023-03-06';
EXEC InsertPurchasingDetails @PurchasingID = 322, @PurchaseID = 370, @SupplierID = 58, @TypeSizeID = 322, @Quantity = 82, @PurchasingDate = '2023-03-06';
EXEC InsertPurchasingDetails @PurchasingID = 323, @PurchaseID = 477, @SupplierID = 63, @TypeSizeID = 323, @Quantity = 57, @PurchasingDate = '2023-03-06';
EXEC InsertPurchasingDetails @PurchasingID = 324, @PurchaseID = 69, @SupplierID = 80, @TypeSizeID = 324, @Quantity = 65, @PurchasingDate = '2023-03-06';
EXEC InsertPurchasingDetails @PurchasingID = 325, @PurchaseID = 8, @SupplierID = 23, @TypeSizeID = 325, @Quantity = 64, @PurchasingDate = '2023-03-06';
EXEC InsertPurchasingDetails @PurchasingID = 326, @PurchaseID = 395, @SupplierID = 16, @TypeSizeID = 326, @Quantity = 77, @PurchasingDate = '2023-03-07';
EXEC InsertPurchasingDetails @PurchasingID = 327, @PurchaseID = 478, @SupplierID = 51, @TypeSizeID = 327, @Quantity = 87, @PurchasingDate = '2023-03-07';
EXEC InsertPurchasingDetails @PurchasingID = 328, @PurchaseID = 480, @SupplierID = 48, @TypeSizeID = 328, @Quantity = 67, @PurchasingDate = '2023-03-07';
EXEC InsertPurchasingDetails @PurchasingID = 329, @PurchaseID = 341, @SupplierID = 71, @TypeSizeID = 329, @Quantity = 50, @PurchasingDate = '2023-03-07';
EXEC InsertPurchasingDetails @PurchasingID = 330, @PurchaseID = 5, @SupplierID = 50, @TypeSizeID = 330, @Quantity = 73, @PurchasingDate = '2023-03-07';
EXEC InsertPurchasingDetails @PurchasingID = 331, @PurchaseID = 197, @SupplierID = 40, @TypeSizeID = 331, @Quantity = 62, @PurchasingDate = '2023-03-08';
EXEC InsertPurchasingDetails @PurchasingID = 332, @PurchaseID = 489, @SupplierID = 41, @TypeSizeID = 332, @Quantity = 89, @PurchasingDate = '2023-03-08';
EXEC InsertPurchasingDetails @PurchasingID = 333, @PurchaseID = 76, @SupplierID = 14, @TypeSizeID = 333, @Quantity = 75, @PurchasingDate = '2023-03-08';
EXEC InsertPurchasingDetails @PurchasingID = 334, @PurchaseID = 16, @SupplierID = 88, @TypeSizeID = 334, @Quantity = 72, @PurchasingDate = '2023-03-08';
EXEC InsertPurchasingDetails @PurchasingID = 335, @PurchaseID = 354, @SupplierID = 53, @TypeSizeID = 335, @Quantity = 76, @PurchasingDate = '2023-03-08';
EXEC InsertPurchasingDetails @PurchasingID = 336, @PurchaseID = 288, @SupplierID = 72, @TypeSizeID = 336, @Quantity = 97, @PurchasingDate = '2023-03-09';
EXEC InsertPurchasingDetails @PurchasingID = 337, @PurchaseID = 445, @SupplierID = 59, @TypeSizeID = 337, @Quantity = 97, @PurchasingDate = '2023-03-09';
EXEC InsertPurchasingDetails @PurchasingID = 338, @PurchaseID = 455, @SupplierID = 20, @TypeSizeID = 338, @Quantity = 69, @PurchasingDate = '2023-03-09';
EXEC InsertPurchasingDetails @PurchasingID = 339, @PurchaseID = 325, @SupplierID = 46, @TypeSizeID = 339, @Quantity = 85, @PurchasingDate = '2023-03-09';
EXEC InsertPurchasingDetails @PurchasingID = 340, @PurchaseID = 498, @SupplierID = 89, @TypeSizeID = 340, @Quantity = 89, @PurchasingDate = '2023-03-09';
EXEC InsertPurchasingDetails @PurchasingID = 341, @PurchaseID = 143, @SupplierID = 75, @TypeSizeID = 341, @Quantity = 55, @PurchasingDate = '2023-03-10';
EXEC InsertPurchasingDetails @PurchasingID = 342, @PurchaseID = 197, @SupplierID = 20, @TypeSizeID = 342, @Quantity = 73, @PurchasingDate = '2023-03-10';
EXEC InsertPurchasingDetails @PurchasingID = 343, @PurchaseID = 64, @SupplierID = 55, @TypeSizeID = 343, @Quantity = 85, @PurchasingDate = '2023-03-10';
EXEC InsertPurchasingDetails @PurchasingID = 344, @PurchaseID = 218, @SupplierID = 21, @TypeSizeID = 344, @Quantity = 94, @PurchasingDate = '2023-03-10';
EXEC InsertPurchasingDetails @PurchasingID = 345, @PurchaseID = 84, @SupplierID = 31, @TypeSizeID = 345, @Quantity = 70, @PurchasingDate = '2023-03-10';
EXEC InsertPurchasingDetails @PurchasingID = 346, @PurchaseID = 377, @SupplierID = 81, @TypeSizeID = 346, @Quantity = 89, @PurchasingDate = '2023-03-11';
EXEC InsertPurchasingDetails @PurchasingID = 347, @PurchaseID = 66, @SupplierID = 27, @TypeSizeID = 347, @Quantity = 65, @PurchasingDate = '2023-03-11';
EXEC InsertPurchasingDetails @PurchasingID = 348, @PurchaseID = 231, @SupplierID = 48, @TypeSizeID = 348, @Quantity = 93, @PurchasingDate = '2023-03-11';
EXEC InsertPurchasingDetails @PurchasingID = 349, @PurchaseID = 141, @SupplierID = 32, @TypeSizeID = 349, @Quantity = 62, @PurchasingDate = '2023-03-11';
EXEC InsertPurchasingDetails @PurchasingID = 350, @PurchaseID = 322, @SupplierID = 89, @TypeSizeID = 350, @Quantity = 79, @PurchasingDate = '2023-03-11';
EXEC InsertPurchasingDetails @PurchasingID = 351, @PurchaseID = 289, @SupplierID = 72, @TypeSizeID = 351, @Quantity = 94, @PurchasingDate = '2023-03-12';
EXEC InsertPurchasingDetails @PurchasingID = 352, @PurchaseID = 128, @SupplierID = 87, @TypeSizeID = 352, @Quantity = 97, @PurchasingDate = '2023-03-12';
EXEC InsertPurchasingDetails @PurchasingID = 353, @PurchaseID = 3, @SupplierID = 44, @TypeSizeID = 353, @Quantity = 63, @PurchasingDate = '2023-03-12';
EXEC InsertPurchasingDetails @PurchasingID = 354, @PurchaseID = 496, @SupplierID = 22, @TypeSizeID = 354, @Quantity = 95, @PurchasingDate = '2023-03-12';
EXEC InsertPurchasingDetails @PurchasingID = 355, @PurchaseID = 321, @SupplierID = 48, @TypeSizeID = 355, @Quantity = 84, @PurchasingDate = '2023-03-12';
EXEC InsertPurchasingDetails @PurchasingID = 356, @PurchaseID = 121, @SupplierID = 5, @TypeSizeID = 356, @Quantity = 80, @PurchasingDate = '2023-03-13';
EXEC InsertPurchasingDetails @PurchasingID = 357, @PurchaseID = 71, @SupplierID = 38, @TypeSizeID = 357, @Quantity = 50, @PurchasingDate = '2023-03-13';
EXEC InsertPurchasingDetails @PurchasingID = 358, @PurchaseID = 107, @SupplierID = 12, @TypeSizeID = 358, @Quantity = 87, @PurchasingDate = '2023-03-13';
EXEC InsertPurchasingDetails @PurchasingID = 359, @PurchaseID = 476, @SupplierID = 100, @TypeSizeID = 359, @Quantity = 64, @PurchasingDate = '2023-03-13';
EXEC InsertPurchasingDetails @PurchasingID = 360, @PurchaseID = 434, @SupplierID = 44, @TypeSizeID = 360, @Quantity = 94, @PurchasingDate = '2023-03-13';
EXEC InsertPurchasingDetails @PurchasingID = 361, @PurchaseID = 42, @SupplierID = 98, @TypeSizeID = 361, @Quantity = 82, @PurchasingDate = '2023-03-14';
EXEC InsertPurchasingDetails @PurchasingID = 362, @PurchaseID = 456, @SupplierID = 23, @TypeSizeID = 362, @Quantity = 100, @PurchasingDate = '2023-03-14';
EXEC InsertPurchasingDetails @PurchasingID = 363, @PurchaseID = 259, @SupplierID = 14, @TypeSizeID = 363, @Quantity = 56, @PurchasingDate = '2023-03-14';
EXEC InsertPurchasingDetails @PurchasingID = 364, @PurchaseID = 49, @SupplierID = 66, @TypeSizeID = 364, @Quantity = 85, @PurchasingDate = '2023-03-14';
EXEC InsertPurchasingDetails @PurchasingID = 365, @PurchaseID = 249, @SupplierID = 88, @TypeSizeID = 365, @Quantity = 51, @PurchasingDate = '2023-03-14';
EXEC InsertPurchasingDetails @PurchasingID = 366, @PurchaseID = 443, @SupplierID = 70, @TypeSizeID = 366, @Quantity = 65, @PurchasingDate = '2023-03-15';
EXEC InsertPurchasingDetails @PurchasingID = 367, @PurchaseID = 207, @SupplierID = 8, @TypeSizeID = 367, @Quantity = 88, @PurchasingDate = '2023-03-15';
EXEC InsertPurchasingDetails @PurchasingID = 368, @PurchaseID = 80, @SupplierID = 60, @TypeSizeID = 368, @Quantity = 82, @PurchasingDate = '2023-03-15';
EXEC InsertPurchasingDetails @PurchasingID = 369, @PurchaseID = 232, @SupplierID = 64, @TypeSizeID = 369, @Quantity = 100, @PurchasingDate = '2023-03-15';
EXEC InsertPurchasingDetails @PurchasingID = 370, @PurchaseID = 122, @SupplierID = 61, @TypeSizeID = 370, @Quantity = 75, @PurchasingDate = '2023-03-15';
EXEC InsertPurchasingDetails @PurchasingID = 371, @PurchaseID = 255, @SupplierID = 35, @TypeSizeID = 371, @Quantity = 70, @PurchasingDate = '2023-03-16';
EXEC InsertPurchasingDetails @PurchasingID = 372, @PurchaseID = 292, @SupplierID = 10, @TypeSizeID = 372, @Quantity = 95, @PurchasingDate = '2023-03-16';
EXEC InsertPurchasingDetails @PurchasingID = 373, @PurchaseID = 487, @SupplierID = 92, @TypeSizeID = 373, @Quantity = 80, @PurchasingDate = '2023-03-16';
EXEC InsertPurchasingDetails @PurchasingID = 374, @PurchaseID = 487, @SupplierID = 21, @TypeSizeID = 374, @Quantity = 87, @PurchasingDate = '2023-03-16';
EXEC InsertPurchasingDetails @PurchasingID = 375, @PurchaseID = 89, @SupplierID = 73, @TypeSizeID = 375, @Quantity = 54, @PurchasingDate = '2023-03-16';
EXEC InsertPurchasingDetails @PurchasingID = 376, @PurchaseID = 225, @SupplierID = 30, @TypeSizeID = 376, @Quantity = 83, @PurchasingDate = '2023-03-17';
EXEC InsertPurchasingDetails @PurchasingID = 377, @PurchaseID = 43, @SupplierID = 95, @TypeSizeID = 377, @Quantity = 95, @PurchasingDate = '2023-03-17';
EXEC InsertPurchasingDetails @PurchasingID = 378, @PurchaseID = 161, @SupplierID = 43, @TypeSizeID = 378, @Quantity = 80, @PurchasingDate = '2023-03-17';
EXEC InsertPurchasingDetails @PurchasingID = 379, @PurchaseID = 29, @SupplierID = 46, @TypeSizeID = 379, @Quantity = 89, @PurchasingDate = '2023-03-17';
EXEC InsertPurchasingDetails @PurchasingID = 380, @PurchaseID = 119, @SupplierID = 22, @TypeSizeID = 380, @Quantity = 89, @PurchasingDate = '2023-03-17';
EXEC InsertPurchasingDetails @PurchasingID = 381, @PurchaseID = 329, @SupplierID = 15, @TypeSizeID = 381, @Quantity = 81, @PurchasingDate = '2023-03-18';
EXEC InsertPurchasingDetails @PurchasingID = 382, @PurchaseID = 335, @SupplierID = 7, @TypeSizeID = 382, @Quantity = 78, @PurchasingDate = '2023-03-18';
EXEC InsertPurchasingDetails @PurchasingID = 383, @PurchaseID = 165, @SupplierID = 62, @TypeSizeID = 383, @Quantity = 55, @PurchasingDate = '2023-03-18';
EXEC InsertPurchasingDetails @PurchasingID = 384, @PurchaseID = 177, @SupplierID = 41, @TypeSizeID = 384, @Quantity = 58, @PurchasingDate = '2023-03-18';
EXEC InsertPurchasingDetails @PurchasingID = 385, @PurchaseID = 380, @SupplierID = 25, @TypeSizeID = 385, @Quantity = 81, @PurchasingDate = '2023-03-18';
EXEC InsertPurchasingDetails @PurchasingID = 386, @PurchaseID = 270, @SupplierID = 51, @TypeSizeID = 386, @Quantity = 99, @PurchasingDate = '2023-03-19';
EXEC InsertPurchasingDetails @PurchasingID = 387, @PurchaseID = 370, @SupplierID = 6, @TypeSizeID = 387, @Quantity = 94, @PurchasingDate = '2023-03-19';
EXEC InsertPurchasingDetails @PurchasingID = 388, @PurchaseID = 59, @SupplierID = 45, @TypeSizeID = 388, @Quantity = 82, @PurchasingDate = '2023-03-19';
EXEC InsertPurchasingDetails @PurchasingID = 389, @PurchaseID = 367, @SupplierID = 83, @TypeSizeID = 389, @Quantity = 63, @PurchasingDate = '2023-03-19';
EXEC InsertPurchasingDetails @PurchasingID = 390, @PurchaseID = 306, @SupplierID = 96, @TypeSizeID = 390, @Quantity = 76, @PurchasingDate = '2023-03-19';
EXEC InsertPurchasingDetails @PurchasingID = 391, @PurchaseID = 182, @SupplierID = 19, @TypeSizeID = 391, @Quantity = 79, @PurchasingDate = '2023-03-20';
EXEC InsertPurchasingDetails @PurchasingID = 392, @PurchaseID = 440, @SupplierID = 80, @TypeSizeID = 392, @Quantity = 83, @PurchasingDate = '2023-03-20';
EXEC InsertPurchasingDetails @PurchasingID = 393, @PurchaseID = 330, @SupplierID = 67, @TypeSizeID = 393, @Quantity = 66, @PurchasingDate = '2023-03-20';
EXEC InsertPurchasingDetails @PurchasingID = 394, @PurchaseID = 176, @SupplierID = 60, @TypeSizeID = 394, @Quantity = 75, @PurchasingDate = '2023-03-20';
EXEC InsertPurchasingDetails @PurchasingID = 395, @PurchaseID = 494, @SupplierID = 85, @TypeSizeID = 395, @Quantity = 97, @PurchasingDate = '2023-03-20';
EXEC InsertPurchasingDetails @PurchasingID = 396, @PurchaseID = 385, @SupplierID = 89, @TypeSizeID = 396, @Quantity = 77, @PurchasingDate = '2023-03-21';
EXEC InsertPurchasingDetails @PurchasingID = 397, @PurchaseID = 73, @SupplierID = 46, @TypeSizeID = 397, @Quantity = 58, @PurchasingDate = '2023-03-21';
EXEC InsertPurchasingDetails @PurchasingID = 398, @PurchaseID = 48, @SupplierID = 18, @TypeSizeID = 398, @Quantity = 78, @PurchasingDate = '2023-03-21';
EXEC InsertPurchasingDetails @PurchasingID = 399, @PurchaseID = 462, @SupplierID = 14, @TypeSizeID = 399, @Quantity = 76, @PurchasingDate = '2023-03-21';
EXEC InsertPurchasingDetails @PurchasingID = 400, @PurchaseID = 312, @SupplierID = 32, @TypeSizeID = 400, @Quantity = 56, @PurchasingDate = '2023-03-21';
EXEC InsertPurchasingDetails @PurchasingID = 401, @PurchaseID = 321, @SupplierID = 84, @TypeSizeID = 401, @Quantity = 86, @PurchasingDate = '2023-03-22';
EXEC InsertPurchasingDetails @PurchasingID = 402, @PurchaseID = 481, @SupplierID = 58, @TypeSizeID = 402, @Quantity = 68, @PurchasingDate = '2023-03-22';
EXEC InsertPurchasingDetails @PurchasingID = 403, @PurchaseID = 361, @SupplierID = 25, @TypeSizeID = 403, @Quantity = 72, @PurchasingDate = '2023-03-22';
EXEC InsertPurchasingDetails @PurchasingID = 404, @PurchaseID = 1, @SupplierID = 27, @TypeSizeID = 404, @Quantity = 56, @PurchasingDate = '2023-03-22';
EXEC InsertPurchasingDetails @PurchasingID = 405, @PurchaseID = 431, @SupplierID = 75, @TypeSizeID = 405, @Quantity = 84, @PurchasingDate = '2023-03-22';
EXEC InsertPurchasingDetails @PurchasingID = 406, @PurchaseID = 377, @SupplierID = 31, @TypeSizeID = 406, @Quantity = 59, @PurchasingDate = '2023-03-23';
EXEC InsertPurchasingDetails @PurchasingID = 407, @PurchaseID = 235, @SupplierID = 78, @TypeSizeID = 407, @Quantity = 56, @PurchasingDate = '2023-03-23';
EXEC InsertPurchasingDetails @PurchasingID = 408, @PurchaseID = 119, @SupplierID = 92, @TypeSizeID = 408, @Quantity = 56, @PurchasingDate = '2023-03-23';
EXEC InsertPurchasingDetails @PurchasingID = 409, @PurchaseID = 389, @SupplierID = 83, @TypeSizeID = 409, @Quantity = 87, @PurchasingDate = '2023-03-23';
EXEC InsertPurchasingDetails @PurchasingID = 410, @PurchaseID = 441, @SupplierID = 87, @TypeSizeID = 410, @Quantity = 75, @PurchasingDate = '2023-03-23';
EXEC InsertPurchasingDetails @PurchasingID = 411, @PurchaseID = 357, @SupplierID = 54, @TypeSizeID = 411, @Quantity = 93, @PurchasingDate = '2023-03-24';
EXEC InsertPurchasingDetails @PurchasingID = 412, @PurchaseID = 356, @SupplierID = 18, @TypeSizeID = 412, @Quantity = 99, @PurchasingDate = '2023-03-24';
EXEC InsertPurchasingDetails @PurchasingID = 413, @PurchaseID = 57, @SupplierID = 3, @TypeSizeID = 413, @Quantity = 61, @PurchasingDate = '2023-03-24';
EXEC InsertPurchasingDetails @PurchasingID = 414, @PurchaseID = 434, @SupplierID = 43, @TypeSizeID = 414, @Quantity = 61, @PurchasingDate = '2023-03-24';
EXEC InsertPurchasingDetails @PurchasingID = 415, @PurchaseID = 318, @SupplierID = 91, @TypeSizeID = 415, @Quantity = 80, @PurchasingDate = '2023-03-24';
EXEC InsertPurchasingDetails @PurchasingID = 416, @PurchaseID = 157, @SupplierID = 54, @TypeSizeID = 416, @Quantity = 99, @PurchasingDate = '2023-03-25';
EXEC InsertPurchasingDetails @PurchasingID = 417, @PurchaseID = 469, @SupplierID = 98, @TypeSizeID = 417, @Quantity = 60, @PurchasingDate = '2023-03-25';
EXEC InsertPurchasingDetails @PurchasingID = 418, @PurchaseID = 442, @SupplierID = 93, @TypeSizeID = 418, @Quantity = 53, @PurchasingDate = '2023-03-25';
EXEC InsertPurchasingDetails @PurchasingID = 419, @PurchaseID = 319, @SupplierID = 91, @TypeSizeID = 419, @Quantity = 89, @PurchasingDate = '2023-03-25';
EXEC InsertPurchasingDetails @PurchasingID = 420, @PurchaseID = 407, @SupplierID = 48, @TypeSizeID = 420, @Quantity = 62, @PurchasingDate = '2023-03-25';
EXEC InsertPurchasingDetails @PurchasingID = 421, @PurchaseID = 390, @SupplierID = 39, @TypeSizeID = 421, @Quantity = 96, @PurchasingDate = '2023-03-26';
EXEC InsertPurchasingDetails @PurchasingID = 422, @PurchaseID = 175, @SupplierID = 55, @TypeSizeID = 422, @Quantity = 55, @PurchasingDate = '2023-03-26';
EXEC InsertPurchasingDetails @PurchasingID = 423, @PurchaseID = 488, @SupplierID = 52, @TypeSizeID = 423, @Quantity = 65, @PurchasingDate = '2023-03-26';
EXEC InsertPurchasingDetails @PurchasingID = 424, @PurchaseID = 356, @SupplierID = 66, @TypeSizeID = 424, @Quantity = 52, @PurchasingDate = '2023-03-26';
EXEC InsertPurchasingDetails @PurchasingID = 425, @PurchaseID = 373, @SupplierID = 75, @TypeSizeID = 425, @Quantity = 50, @PurchasingDate = '2023-03-26';
EXEC InsertPurchasingDetails @PurchasingID = 426, @PurchaseID = 9, @SupplierID = 35, @TypeSizeID = 426, @Quantity = 63, @PurchasingDate = '2023-03-27';
EXEC InsertPurchasingDetails @PurchasingID = 427, @PurchaseID = 410, @SupplierID = 79, @TypeSizeID = 427, @Quantity = 87, @PurchasingDate = '2023-03-27';
EXEC InsertPurchasingDetails @PurchasingID = 428, @PurchaseID = 373, @SupplierID = 96, @TypeSizeID = 428, @Quantity = 81, @PurchasingDate = '2023-03-27';
EXEC InsertPurchasingDetails @PurchasingID = 429, @PurchaseID = 100, @SupplierID = 12, @TypeSizeID = 429, @Quantity = 53, @PurchasingDate = '2023-03-27';
EXEC InsertPurchasingDetails @PurchasingID = 430, @PurchaseID = 37, @SupplierID = 29, @TypeSizeID = 430, @Quantity = 85, @PurchasingDate = '2023-03-27';
EXEC InsertPurchasingDetails @PurchasingID = 431, @PurchaseID = 165, @SupplierID = 52, @TypeSizeID = 431, @Quantity = 58, @PurchasingDate = '2023-03-28';
EXEC InsertPurchasingDetails @PurchasingID = 432, @PurchaseID = 425, @SupplierID = 60, @TypeSizeID = 432, @Quantity = 62, @PurchasingDate = '2023-03-28';
EXEC InsertPurchasingDetails @PurchasingID = 433, @PurchaseID = 301, @SupplierID = 10, @TypeSizeID = 433, @Quantity = 60, @PurchasingDate = '2023-03-28';
EXEC InsertPurchasingDetails @PurchasingID = 434, @PurchaseID = 419, @SupplierID = 60, @TypeSizeID = 434, @Quantity = 90, @PurchasingDate = '2023-03-28';
EXEC InsertPurchasingDetails @PurchasingID = 435, @PurchaseID = 390, @SupplierID = 2, @TypeSizeID = 435, @Quantity = 83, @PurchasingDate = '2023-03-28';
EXEC InsertPurchasingDetails @PurchasingID = 436, @PurchaseID = 481, @SupplierID = 80, @TypeSizeID = 436, @Quantity = 63, @PurchasingDate = '2023-03-29';
EXEC InsertPurchasingDetails @PurchasingID = 437, @PurchaseID = 236, @SupplierID = 49, @TypeSizeID = 437, @Quantity = 93, @PurchasingDate = '2023-03-29';
EXEC InsertPurchasingDetails @PurchasingID = 438, @PurchaseID = 16, @SupplierID = 44, @TypeSizeID = 438, @Quantity = 57, @PurchasingDate = '2023-03-29';
EXEC InsertPurchasingDetails @PurchasingID = 439, @PurchaseID = 55, @SupplierID = 100, @TypeSizeID = 439, @Quantity = 58, @PurchasingDate = '2023-03-29';
EXEC InsertPurchasingDetails @PurchasingID = 440, @PurchaseID = 457, @SupplierID = 47, @TypeSizeID = 440, @Quantity = 51, @PurchasingDate = '2023-03-29';
EXEC InsertPurchasingDetails @PurchasingID = 441, @PurchaseID = 102, @SupplierID = 64, @TypeSizeID = 441, @Quantity = 53, @PurchasingDate = '2023-03-30';
EXEC InsertPurchasingDetails @PurchasingID = 442, @PurchaseID = 306, @SupplierID = 21, @TypeSizeID = 442, @Quantity = 100, @PurchasingDate = '2023-03-30';
EXEC InsertPurchasingDetails @PurchasingID = 443, @PurchaseID = 345, @SupplierID = 30, @TypeSizeID = 443, @Quantity = 65, @PurchasingDate = '2023-03-30';
EXEC InsertPurchasingDetails @PurchasingID = 444, @PurchaseID = 160, @SupplierID = 87, @TypeSizeID = 444, @Quantity = 98, @PurchasingDate = '2023-03-30';
EXEC InsertPurchasingDetails @PurchasingID = 445, @PurchaseID = 341, @SupplierID = 94, @TypeSizeID = 445, @Quantity = 55, @PurchasingDate = '2023-03-30';
EXEC InsertPurchasingDetails @PurchasingID = 446, @PurchaseID = 285, @SupplierID = 44, @TypeSizeID = 446, @Quantity = 68, @PurchasingDate = '2023-03-31';
EXEC InsertPurchasingDetails @PurchasingID = 447, @PurchaseID = 348, @SupplierID = 26, @TypeSizeID = 447, @Quantity = 80, @PurchasingDate = '2023-03-31';
EXEC InsertPurchasingDetails @PurchasingID = 448, @PurchaseID = 382, @SupplierID = 82, @TypeSizeID = 448, @Quantity = 100, @PurchasingDate = '2023-03-31';
EXEC InsertPurchasingDetails @PurchasingID = 449, @PurchaseID = 3, @SupplierID = 25, @TypeSizeID = 449, @Quantity = 80, @PurchasingDate = '2023-03-31';
EXEC InsertPurchasingDetails @PurchasingID = 450, @PurchaseID = 105, @SupplierID = 33, @TypeSizeID = 450, @Quantity = 59, @PurchasingDate = '2023-03-31';
EXEC InsertPurchasingDetails @PurchasingID = 451, @PurchaseID = 291, @SupplierID = 94, @TypeSizeID = 451, @Quantity = 89, @PurchasingDate = '2023-04-01';
EXEC InsertPurchasingDetails @PurchasingID = 452, @PurchaseID = 182, @SupplierID = 32, @TypeSizeID = 452, @Quantity = 66, @PurchasingDate = '2023-04-01';
EXEC InsertPurchasingDetails @PurchasingID = 453, @PurchaseID = 350, @SupplierID = 29, @TypeSizeID = 453, @Quantity = 61, @PurchasingDate = '2023-04-01';
EXEC InsertPurchasingDetails @PurchasingID = 454, @PurchaseID = 68, @SupplierID = 9, @TypeSizeID = 454, @Quantity = 61, @PurchasingDate = '2023-04-01';
EXEC InsertPurchasingDetails @PurchasingID = 455, @PurchaseID = 123, @SupplierID = 15, @TypeSizeID = 455, @Quantity = 95, @PurchasingDate = '2023-04-01';
EXEC InsertPurchasingDetails @PurchasingID = 456, @PurchaseID = 260, @SupplierID = 86, @TypeSizeID = 456, @Quantity = 67, @PurchasingDate = '2023-04-02';
EXEC InsertPurchasingDetails @PurchasingID = 457, @PurchaseID = 481, @SupplierID = 27, @TypeSizeID = 457, @Quantity = 65, @PurchasingDate = '2023-04-02';
EXEC InsertPurchasingDetails @PurchasingID = 458, @PurchaseID = 104, @SupplierID = 43, @TypeSizeID = 458, @Quantity = 65, @PurchasingDate = '2023-04-02';
EXEC InsertPurchasingDetails @PurchasingID = 459, @PurchaseID = 29, @SupplierID = 57, @TypeSizeID = 459, @Quantity = 64, @PurchasingDate = '2023-04-02';
EXEC InsertPurchasingDetails @PurchasingID = 460, @PurchaseID = 239, @SupplierID = 84, @TypeSizeID = 460, @Quantity = 100, @PurchasingDate = '2023-04-02';
EXEC InsertPurchasingDetails @PurchasingID = 461, @PurchaseID = 239, @SupplierID = 6, @TypeSizeID = 461, @Quantity = 69, @PurchasingDate = '2023-04-03';
EXEC InsertPurchasingDetails @PurchasingID = 462, @PurchaseID = 327, @SupplierID = 58, @TypeSizeID = 462, @Quantity = 77, @PurchasingDate = '2023-04-03';
EXEC InsertPurchasingDetails @PurchasingID = 463, @PurchaseID = 94, @SupplierID = 34, @TypeSizeID = 463, @Quantity = 56, @PurchasingDate = '2023-04-03';
EXEC InsertPurchasingDetails @PurchasingID = 464, @PurchaseID = 495, @SupplierID = 35, @TypeSizeID = 464, @Quantity = 94, @PurchasingDate = '2023-04-03';
EXEC InsertPurchasingDetails @PurchasingID = 465, @PurchaseID = 441, @SupplierID = 4, @TypeSizeID = 465, @Quantity = 72, @PurchasingDate = '2023-04-03';
EXEC InsertPurchasingDetails @PurchasingID = 466, @PurchaseID = 83, @SupplierID = 83, @TypeSizeID = 466, @Quantity = 63, @PurchasingDate = '2023-04-04';
EXEC InsertPurchasingDetails @PurchasingID = 467, @PurchaseID = 408, @SupplierID = 85, @TypeSizeID = 467, @Quantity = 98, @PurchasingDate = '2023-04-04';
EXEC InsertPurchasingDetails @PurchasingID = 468, @PurchaseID = 78, @SupplierID = 42, @TypeSizeID = 468, @Quantity = 99, @PurchasingDate = '2023-04-04';
EXEC InsertPurchasingDetails @PurchasingID = 469, @PurchaseID = 6, @SupplierID = 49, @TypeSizeID = 469, @Quantity = 53, @PurchasingDate = '2023-04-04';
EXEC InsertPurchasingDetails @PurchasingID = 470, @PurchaseID = 228, @SupplierID = 98, @TypeSizeID = 470, @Quantity = 63, @PurchasingDate = '2023-04-04';
EXEC InsertPurchasingDetails @PurchasingID = 471, @PurchaseID = 484, @SupplierID = 31, @TypeSizeID = 471, @Quantity = 74, @PurchasingDate = '2023-04-05';
EXEC InsertPurchasingDetails @PurchasingID = 472, @PurchaseID = 104, @SupplierID = 86, @TypeSizeID = 472, @Quantity = 69, @PurchasingDate = '2023-04-05';
EXEC InsertPurchasingDetails @PurchasingID = 473, @PurchaseID = 52, @SupplierID = 29, @TypeSizeID = 473, @Quantity = 53, @PurchasingDate = '2023-04-05';
EXEC InsertPurchasingDetails @PurchasingID = 474, @PurchaseID = 140, @SupplierID = 91, @TypeSizeID = 474, @Quantity = 50, @PurchasingDate = '2023-04-05';
EXEC InsertPurchasingDetails @PurchasingID = 475, @PurchaseID = 286, @SupplierID = 4, @TypeSizeID = 475, @Quantity = 84, @PurchasingDate = '2023-04-05';
EXEC InsertPurchasingDetails @PurchasingID = 476, @PurchaseID = 267, @SupplierID = 85, @TypeSizeID = 476, @Quantity = 56, @PurchasingDate = '2023-04-06';
EXEC InsertPurchasingDetails @PurchasingID = 477, @PurchaseID = 266, @SupplierID = 98, @TypeSizeID = 477, @Quantity = 86, @PurchasingDate = '2023-04-06';
EXEC InsertPurchasingDetails @PurchasingID = 478, @PurchaseID = 308, @SupplierID = 39, @TypeSizeID = 478, @Quantity = 51, @PurchasingDate = '2023-04-06';
EXEC InsertPurchasingDetails @PurchasingID = 479, @PurchaseID = 12, @SupplierID = 64, @TypeSizeID = 479, @Quantity = 91, @PurchasingDate = '2023-04-06';
EXEC InsertPurchasingDetails @PurchasingID = 480, @PurchaseID = 339, @SupplierID = 11, @TypeSizeID = 480, @Quantity = 94, @PurchasingDate = '2023-04-06';
EXEC InsertPurchasingDetails @PurchasingID = 481, @PurchaseID = 177, @SupplierID = 1, @TypeSizeID = 481, @Quantity = 76, @PurchasingDate = '2023-04-07';
EXEC InsertPurchasingDetails @PurchasingID = 482, @PurchaseID = 92, @SupplierID = 61, @TypeSizeID = 482, @Quantity = 63, @PurchasingDate = '2023-04-07';
EXEC InsertPurchasingDetails @PurchasingID = 483, @PurchaseID = 141, @SupplierID = 83, @TypeSizeID = 483, @Quantity = 62, @PurchasingDate = '2023-04-07';
EXEC InsertPurchasingDetails @PurchasingID = 484, @PurchaseID = 496, @SupplierID = 24, @TypeSizeID = 484, @Quantity = 62, @PurchasingDate = '2023-04-07';
EXEC InsertPurchasingDetails @PurchasingID = 485, @PurchaseID = 362, @SupplierID = 56, @TypeSizeID = 485, @Quantity = 80, @PurchasingDate = '2023-04-07';
EXEC InsertPurchasingDetails @PurchasingID = 486, @PurchaseID = 450, @SupplierID = 1, @TypeSizeID = 486, @Quantity = 83, @PurchasingDate = '2023-04-08';
EXEC InsertPurchasingDetails @PurchasingID = 487, @PurchaseID = 210, @SupplierID = 64, @TypeSizeID = 487, @Quantity = 77, @PurchasingDate = '2023-04-08';
EXEC InsertPurchasingDetails @PurchasingID = 488, @PurchaseID = 153, @SupplierID = 65, @TypeSizeID = 488, @Quantity = 62, @PurchasingDate = '2023-04-08';
EXEC InsertPurchasingDetails @PurchasingID = 489, @PurchaseID = 136, @SupplierID = 66, @TypeSizeID = 489, @Quantity = 88, @PurchasingDate = '2023-04-08';
EXEC InsertPurchasingDetails @PurchasingID = 490, @PurchaseID = 462, @SupplierID = 86, @TypeSizeID = 490, @Quantity = 83, @PurchasingDate = '2023-04-08';
EXEC InsertPurchasingDetails @PurchasingID = 491, @PurchaseID = 230, @SupplierID = 17, @TypeSizeID = 491, @Quantity = 86, @PurchasingDate = '2023-04-09';
EXEC InsertPurchasingDetails @PurchasingID = 492, @PurchaseID = 362, @SupplierID = 45, @TypeSizeID = 492, @Quantity = 93, @PurchasingDate = '2023-04-09';
EXEC InsertPurchasingDetails @PurchasingID = 493, @PurchaseID = 213, @SupplierID = 31, @TypeSizeID = 493, @Quantity = 70, @PurchasingDate = '2023-04-09';
EXEC InsertPurchasingDetails @PurchasingID = 494, @PurchaseID = 200, @SupplierID = 37, @TypeSizeID = 494, @Quantity = 74, @PurchasingDate = '2023-04-09';
EXEC InsertPurchasingDetails @PurchasingID = 495, @PurchaseID = 1, @SupplierID = 45, @TypeSizeID = 495, @Quantity = 92, @PurchasingDate = '2023-04-09';
EXEC InsertPurchasingDetails @PurchasingID = 496, @PurchaseID = 342, @SupplierID = 52, @TypeSizeID = 496, @Quantity = 50, @PurchasingDate = '2023-04-10';
EXEC InsertPurchasingDetails @PurchasingID = 497, @PurchaseID = 493, @SupplierID = 11, @TypeSizeID = 497, @Quantity = 60, @PurchasingDate = '2023-04-10';
EXEC InsertPurchasingDetails @PurchasingID = 498, @PurchaseID = 457, @SupplierID = 23, @TypeSizeID = 498, @Quantity = 61, @PurchasingDate = '2023-04-10';
EXEC InsertPurchasingDetails @PurchasingID = 499, @PurchaseID = 32, @SupplierID = 68, @TypeSizeID = 499, @Quantity = 86, @PurchasingDate = '2023-04-10';
EXEC InsertPurchasingDetails @PurchasingID = 500, @PurchaseID = 128, @SupplierID = 94, @TypeSizeID = 500, @Quantity = 95, @PurchasingDate = '2023-04-10';
EXEC InsertPurchasingDetails @PurchasingID = 501, @PurchaseID = 65, @SupplierID = 70, @TypeSizeID = 1, @Quantity = 72, @PurchasingDate = '2023-04-11';
EXEC InsertPurchasingDetails @PurchasingID = 502, @PurchaseID = 151, @SupplierID = 79, @TypeSizeID = 2, @Quantity = 68, @PurchasingDate = '2023-04-11';
EXEC InsertPurchasingDetails @PurchasingID = 503, @PurchaseID = 299, @SupplierID = 51, @TypeSizeID = 3, @Quantity = 51, @PurchasingDate = '2023-04-11';
EXEC InsertPurchasingDetails @PurchasingID = 504, @PurchaseID = 221, @SupplierID = 6, @TypeSizeID = 4, @Quantity = 80, @PurchasingDate = '2023-04-11';
EXEC InsertPurchasingDetails @PurchasingID = 505, @PurchaseID = 500, @SupplierID = 85, @TypeSizeID = 5, @Quantity = 64, @PurchasingDate = '2023-04-11';
EXEC InsertPurchasingDetails @PurchasingID = 506, @PurchaseID = 486, @SupplierID = 99, @TypeSizeID = 6, @Quantity = 81, @PurchasingDate = '2023-04-12';
EXEC InsertPurchasingDetails @PurchasingID = 507, @PurchaseID = 282, @SupplierID = 94, @TypeSizeID = 7, @Quantity = 84, @PurchasingDate = '2023-04-12';
EXEC InsertPurchasingDetails @PurchasingID = 508, @PurchaseID = 422, @SupplierID = 23, @TypeSizeID = 8, @Quantity = 55, @PurchasingDate = '2023-04-12';
EXEC InsertPurchasingDetails @PurchasingID = 509, @PurchaseID = 414, @SupplierID = 10, @TypeSizeID = 9, @Quantity = 78, @PurchasingDate = '2023-04-12';
EXEC InsertPurchasingDetails @PurchasingID = 510, @PurchaseID = 45, @SupplierID = 37, @TypeSizeID = 10, @Quantity = 57, @PurchasingDate = '2023-04-12';
EXEC InsertPurchasingDetails @PurchasingID = 511, @PurchaseID = 435, @SupplierID = 96, @TypeSizeID = 11, @Quantity = 98, @PurchasingDate = '2023-04-13';
EXEC InsertPurchasingDetails @PurchasingID = 512, @PurchaseID = 278, @SupplierID = 78, @TypeSizeID = 12, @Quantity = 70, @PurchasingDate = '2023-04-13';
EXEC InsertPurchasingDetails @PurchasingID = 513, @PurchaseID = 258, @SupplierID = 4, @TypeSizeID = 13, @Quantity = 61, @PurchasingDate = '2023-04-13';
EXEC InsertPurchasingDetails @PurchasingID = 514, @PurchaseID = 287, @SupplierID = 31, @TypeSizeID = 14, @Quantity = 55, @PurchasingDate = '2023-04-13';
EXEC InsertPurchasingDetails @PurchasingID = 515, @PurchaseID = 213, @SupplierID = 78, @TypeSizeID = 15, @Quantity = 84, @PurchasingDate = '2023-04-13';
EXEC InsertPurchasingDetails @PurchasingID = 516, @PurchaseID = 137, @SupplierID = 2, @TypeSizeID = 16, @Quantity = 80, @PurchasingDate = '2023-04-14';
EXEC InsertPurchasingDetails @PurchasingID = 517, @PurchaseID = 142, @SupplierID = 100, @TypeSizeID = 17, @Quantity = 78, @PurchasingDate = '2023-04-14';
EXEC InsertPurchasingDetails @PurchasingID = 518, @PurchaseID = 75, @SupplierID = 64, @TypeSizeID = 18, @Quantity = 84, @PurchasingDate = '2023-04-14';
EXEC InsertPurchasingDetails @PurchasingID = 519, @PurchaseID = 230, @SupplierID = 50, @TypeSizeID = 19, @Quantity = 56, @PurchasingDate = '2023-04-14';
EXEC InsertPurchasingDetails @PurchasingID = 520, @PurchaseID = 462, @SupplierID = 91, @TypeSizeID = 20, @Quantity = 77, @PurchasingDate = '2023-04-14';
EXEC InsertPurchasingDetails @PurchasingID = 521, @PurchaseID = 229, @SupplierID = 77, @TypeSizeID = 21, @Quantity = 93, @PurchasingDate = '2023-04-15';
EXEC InsertPurchasingDetails @PurchasingID = 522, @PurchaseID = 433, @SupplierID = 33, @TypeSizeID = 22, @Quantity = 97, @PurchasingDate = '2023-04-15';
EXEC InsertPurchasingDetails @PurchasingID = 523, @PurchaseID = 101, @SupplierID = 77, @TypeSizeID = 23, @Quantity = 63, @PurchasingDate = '2023-04-15';
EXEC InsertPurchasingDetails @PurchasingID = 524, @PurchaseID = 194, @SupplierID = 31, @TypeSizeID = 24, @Quantity = 70, @PurchasingDate = '2023-04-15';
EXEC InsertPurchasingDetails @PurchasingID = 525, @PurchaseID = 459, @SupplierID = 20, @TypeSizeID = 25, @Quantity = 75, @PurchasingDate = '2023-04-15';
EXEC InsertPurchasingDetails @PurchasingID = 526, @PurchaseID = 281, @SupplierID = 32, @TypeSizeID = 26, @Quantity = 67, @PurchasingDate = '2023-04-16';
EXEC InsertPurchasingDetails @PurchasingID = 527, @PurchaseID = 118, @SupplierID = 98, @TypeSizeID = 27, @Quantity = 71, @PurchasingDate = '2023-04-16';
EXEC InsertPurchasingDetails @PurchasingID = 528, @PurchaseID = 17, @SupplierID = 100, @TypeSizeID = 28, @Quantity = 85, @PurchasingDate = '2023-04-16';
EXEC InsertPurchasingDetails @PurchasingID = 529, @PurchaseID = 342, @SupplierID = 77, @TypeSizeID = 29, @Quantity = 67, @PurchasingDate = '2023-04-16';
EXEC InsertPurchasingDetails @PurchasingID = 530, @PurchaseID = 303, @SupplierID = 57, @TypeSizeID = 30, @Quantity = 73, @PurchasingDate = '2023-04-16';
EXEC InsertPurchasingDetails @PurchasingID = 531, @PurchaseID = 183, @SupplierID = 72, @TypeSizeID = 31, @Quantity = 87, @PurchasingDate = '2023-04-17';
EXEC InsertPurchasingDetails @PurchasingID = 532, @PurchaseID = 453, @SupplierID = 24, @TypeSizeID = 32, @Quantity = 84, @PurchasingDate = '2023-04-17';
EXEC InsertPurchasingDetails @PurchasingID = 533, @PurchaseID = 282, @SupplierID = 1, @TypeSizeID = 33, @Quantity = 52, @PurchasingDate = '2023-04-17';
EXEC InsertPurchasingDetails @PurchasingID = 534, @PurchaseID = 245, @SupplierID = 81, @TypeSizeID = 34, @Quantity = 64, @PurchasingDate = '2023-04-17';
EXEC InsertPurchasingDetails @PurchasingID = 535, @PurchaseID = 4, @SupplierID = 63, @TypeSizeID = 35, @Quantity = 77, @PurchasingDate = '2023-04-17';
EXEC InsertPurchasingDetails @PurchasingID = 536, @PurchaseID = 451, @SupplierID = 39, @TypeSizeID = 36, @Quantity = 95, @PurchasingDate = '2023-04-18';
EXEC InsertPurchasingDetails @PurchasingID = 537, @PurchaseID = 87, @SupplierID = 49, @TypeSizeID = 37, @Quantity = 59, @PurchasingDate = '2023-04-18';
EXEC InsertPurchasingDetails @PurchasingID = 538, @PurchaseID = 445, @SupplierID = 14, @TypeSizeID = 38, @Quantity = 63, @PurchasingDate = '2023-04-18';
EXEC InsertPurchasingDetails @PurchasingID = 539, @PurchaseID = 212, @SupplierID = 39, @TypeSizeID = 39, @Quantity = 99, @PurchasingDate = '2023-04-18';
EXEC InsertPurchasingDetails @PurchasingID = 540, @PurchaseID = 492, @SupplierID = 68, @TypeSizeID = 40, @Quantity = 84, @PurchasingDate = '2023-04-18';
EXEC InsertPurchasingDetails @PurchasingID = 541, @PurchaseID = 238, @SupplierID = 61, @TypeSizeID = 41, @Quantity = 66, @PurchasingDate = '2023-04-19';
EXEC InsertPurchasingDetails @PurchasingID = 542, @PurchaseID = 98, @SupplierID = 96, @TypeSizeID = 42, @Quantity = 51, @PurchasingDate = '2023-04-19';
EXEC InsertPurchasingDetails @PurchasingID = 543, @PurchaseID = 296, @SupplierID = 28, @TypeSizeID = 43, @Quantity = 99, @PurchasingDate = '2023-04-19';
EXEC InsertPurchasingDetails @PurchasingID = 544, @PurchaseID = 397, @SupplierID = 30, @TypeSizeID = 44, @Quantity = 79, @PurchasingDate = '2023-04-19';
EXEC InsertPurchasingDetails @PurchasingID = 545, @PurchaseID = 296, @SupplierID = 57, @TypeSizeID = 45, @Quantity = 56, @PurchasingDate = '2023-04-19';
EXEC InsertPurchasingDetails @PurchasingID = 546, @PurchaseID = 159, @SupplierID = 26, @TypeSizeID = 46, @Quantity = 68, @PurchasingDate = '2023-04-20';
EXEC InsertPurchasingDetails @PurchasingID = 547, @PurchaseID = 16, @SupplierID = 4, @TypeSizeID = 47, @Quantity = 94, @PurchasingDate = '2023-04-20';
EXEC InsertPurchasingDetails @PurchasingID = 548, @PurchaseID = 73, @SupplierID = 56, @TypeSizeID = 48, @Quantity = 65, @PurchasingDate = '2023-04-20';
EXEC InsertPurchasingDetails @PurchasingID = 549, @PurchaseID = 19, @SupplierID = 75, @TypeSizeID = 49, @Quantity = 96, @PurchasingDate = '2023-04-20';
EXEC InsertPurchasingDetails @PurchasingID = 550, @PurchaseID = 379, @SupplierID = 32, @TypeSizeID = 50, @Quantity = 90, @PurchasingDate = '2023-04-20';
EXEC InsertPurchasingDetails @PurchasingID = 551, @PurchaseID = 76, @SupplierID = 10, @TypeSizeID = 51, @Quantity = 65, @PurchasingDate = '2023-04-21';
EXEC InsertPurchasingDetails @PurchasingID = 552, @PurchaseID = 339, @SupplierID = 97, @TypeSizeID = 52, @Quantity = 66, @PurchasingDate = '2023-04-21';
EXEC InsertPurchasingDetails @PurchasingID = 553, @PurchaseID = 147, @SupplierID = 99, @TypeSizeID = 53, @Quantity = 75, @PurchasingDate = '2023-04-21';
EXEC InsertPurchasingDetails @PurchasingID = 554, @PurchaseID = 487, @SupplierID = 16, @TypeSizeID = 54, @Quantity = 98, @PurchasingDate = '2023-04-21';
EXEC InsertPurchasingDetails @PurchasingID = 555, @PurchaseID = 354, @SupplierID = 10, @TypeSizeID = 55, @Quantity = 70, @PurchasingDate = '2023-04-21';
EXEC InsertPurchasingDetails @PurchasingID = 556, @PurchaseID = 177, @SupplierID = 34, @TypeSizeID = 56, @Quantity = 61, @PurchasingDate = '2023-04-22';
EXEC InsertPurchasingDetails @PurchasingID = 557, @PurchaseID = 113, @SupplierID = 2, @TypeSizeID = 57, @Quantity = 67, @PurchasingDate = '2023-04-22';
EXEC InsertPurchasingDetails @PurchasingID = 558, @PurchaseID = 101, @SupplierID = 49, @TypeSizeID = 58, @Quantity = 61, @PurchasingDate = '2023-04-22';
EXEC InsertPurchasingDetails @PurchasingID = 559, @PurchaseID = 355, @SupplierID = 77, @TypeSizeID = 59, @Quantity = 50, @PurchasingDate = '2023-04-22';
EXEC InsertPurchasingDetails @PurchasingID = 560, @PurchaseID = 288, @SupplierID = 83, @TypeSizeID = 60, @Quantity = 67, @PurchasingDate = '2023-04-22';
EXEC InsertPurchasingDetails @PurchasingID = 561, @PurchaseID = 109, @SupplierID = 31, @TypeSizeID = 61, @Quantity = 81, @PurchasingDate = '2023-04-23';
EXEC InsertPurchasingDetails @PurchasingID = 562, @PurchaseID = 87, @SupplierID = 60, @TypeSizeID = 62, @Quantity = 63, @PurchasingDate = '2023-04-23';
EXEC InsertPurchasingDetails @PurchasingID = 563, @PurchaseID = 32, @SupplierID = 22, @TypeSizeID = 63, @Quantity = 63, @PurchasingDate = '2023-04-23';
EXEC InsertPurchasingDetails @PurchasingID = 564, @PurchaseID = 113, @SupplierID = 31, @TypeSizeID = 64, @Quantity = 92, @PurchasingDate = '2023-04-23';
EXEC InsertPurchasingDetails @PurchasingID = 565, @PurchaseID = 460, @SupplierID = 30, @TypeSizeID = 65, @Quantity = 90, @PurchasingDate = '2023-04-23';
EXEC InsertPurchasingDetails @PurchasingID = 566, @PurchaseID = 458, @SupplierID = 73, @TypeSizeID = 66, @Quantity = 97, @PurchasingDate = '2023-04-24';
EXEC InsertPurchasingDetails @PurchasingID = 567, @PurchaseID = 484, @SupplierID = 59, @TypeSizeID = 67, @Quantity = 77, @PurchasingDate = '2023-04-24';
EXEC InsertPurchasingDetails @PurchasingID = 568, @PurchaseID = 164, @SupplierID = 86, @TypeSizeID = 68, @Quantity = 78, @PurchasingDate = '2023-04-24';
EXEC InsertPurchasingDetails @PurchasingID = 569, @PurchaseID = 41, @SupplierID = 17, @TypeSizeID = 69, @Quantity = 99, @PurchasingDate = '2023-04-24';
EXEC InsertPurchasingDetails @PurchasingID = 570, @PurchaseID = 268, @SupplierID = 77, @TypeSizeID = 70, @Quantity = 98, @PurchasingDate = '2023-04-24';
EXEC InsertPurchasingDetails @PurchasingID = 571, @PurchaseID = 103, @SupplierID = 62, @TypeSizeID = 71, @Quantity = 99, @PurchasingDate = '2023-04-25';
EXEC InsertPurchasingDetails @PurchasingID = 572, @PurchaseID = 234, @SupplierID = 87, @TypeSizeID = 72, @Quantity = 51, @PurchasingDate = '2023-04-25';
EXEC InsertPurchasingDetails @PurchasingID = 573, @PurchaseID = 395, @SupplierID = 38, @TypeSizeID = 73, @Quantity = 98, @PurchasingDate = '2023-04-25';
EXEC InsertPurchasingDetails @PurchasingID = 574, @PurchaseID = 389, @SupplierID = 85, @TypeSizeID = 74, @Quantity = 71, @PurchasingDate = '2023-04-25';
EXEC InsertPurchasingDetails @PurchasingID = 575, @PurchaseID = 325, @SupplierID = 43, @TypeSizeID = 75, @Quantity = 64, @PurchasingDate = '2023-04-25';
EXEC InsertPurchasingDetails @PurchasingID = 576, @PurchaseID = 392, @SupplierID = 80, @TypeSizeID = 76, @Quantity = 86, @PurchasingDate = '2023-04-26';
EXEC InsertPurchasingDetails @PurchasingID = 577, @PurchaseID = 310, @SupplierID = 73, @TypeSizeID = 77, @Quantity = 57, @PurchasingDate = '2023-04-26';
EXEC InsertPurchasingDetails @PurchasingID = 578, @PurchaseID = 322, @SupplierID = 80, @TypeSizeID = 78, @Quantity = 53, @PurchasingDate = '2023-04-26';
EXEC InsertPurchasingDetails @PurchasingID = 579, @PurchaseID = 419, @SupplierID = 49, @TypeSizeID = 79, @Quantity = 95, @PurchasingDate = '2023-04-26';
EXEC InsertPurchasingDetails @PurchasingID = 580, @PurchaseID = 77, @SupplierID = 10, @TypeSizeID = 80, @Quantity = 93, @PurchasingDate = '2023-04-26';
EXEC InsertPurchasingDetails @PurchasingID = 581, @PurchaseID = 110, @SupplierID = 23, @TypeSizeID = 81, @Quantity = 82, @PurchasingDate = '2023-04-27';
EXEC InsertPurchasingDetails @PurchasingID = 582, @PurchaseID = 150, @SupplierID = 43, @TypeSizeID = 82, @Quantity = 83, @PurchasingDate = '2023-04-27';
EXEC InsertPurchasingDetails @PurchasingID = 583, @PurchaseID = 142, @SupplierID = 98, @TypeSizeID = 83, @Quantity = 72, @PurchasingDate = '2023-04-27';
EXEC InsertPurchasingDetails @PurchasingID = 584, @PurchaseID = 314, @SupplierID = 26, @TypeSizeID = 84, @Quantity = 51, @PurchasingDate = '2023-04-27';
EXEC InsertPurchasingDetails @PurchasingID = 585, @PurchaseID = 468, @SupplierID = 8, @TypeSizeID = 85, @Quantity = 52, @PurchasingDate = '2023-04-27';
EXEC InsertPurchasingDetails @PurchasingID = 586, @PurchaseID = 207, @SupplierID = 1, @TypeSizeID = 86, @Quantity = 52, @PurchasingDate = '2023-04-28';
EXEC InsertPurchasingDetails @PurchasingID = 587, @PurchaseID = 41, @SupplierID = 3, @TypeSizeID = 87, @Quantity = 72, @PurchasingDate = '2023-04-28';
EXEC InsertPurchasingDetails @PurchasingID = 588, @PurchaseID = 442, @SupplierID = 99, @TypeSizeID = 88, @Quantity = 58, @PurchasingDate = '2023-04-28';
EXEC InsertPurchasingDetails @PurchasingID = 589, @PurchaseID = 26, @SupplierID = 16, @TypeSizeID = 89, @Quantity = 84, @PurchasingDate = '2023-04-28';
EXEC InsertPurchasingDetails @PurchasingID = 590, @PurchaseID = 343, @SupplierID = 76, @TypeSizeID = 90, @Quantity = 73, @PurchasingDate = '2023-04-28';
EXEC InsertPurchasingDetails @PurchasingID = 591, @PurchaseID = 347, @SupplierID = 38, @TypeSizeID = 91, @Quantity = 99, @PurchasingDate = '2023-04-29';
EXEC InsertPurchasingDetails @PurchasingID = 592, @PurchaseID = 349, @SupplierID = 24, @TypeSizeID = 92, @Quantity = 57, @PurchasingDate = '2023-04-29';
EXEC InsertPurchasingDetails @PurchasingID = 593, @PurchaseID = 101, @SupplierID = 14, @TypeSizeID = 93, @Quantity = 90, @PurchasingDate = '2023-04-29';
EXEC InsertPurchasingDetails @PurchasingID = 594, @PurchaseID = 425, @SupplierID = 13, @TypeSizeID = 94, @Quantity = 93, @PurchasingDate = '2023-04-29';
EXEC InsertPurchasingDetails @PurchasingID = 595, @PurchaseID = 433, @SupplierID = 75, @TypeSizeID = 95, @Quantity = 61, @PurchasingDate = '2023-04-29';
EXEC InsertPurchasingDetails @PurchasingID = 596, @PurchaseID = 131, @SupplierID = 44, @TypeSizeID = 96, @Quantity = 98, @PurchasingDate = '2023-04-30';
EXEC InsertPurchasingDetails @PurchasingID = 597, @PurchaseID = 43, @SupplierID = 27, @TypeSizeID = 97, @Quantity = 77, @PurchasingDate = '2023-04-30';
EXEC InsertPurchasingDetails @PurchasingID = 598, @PurchaseID = 208, @SupplierID = 79, @TypeSizeID = 98, @Quantity = 94, @PurchasingDate = '2023-04-30';
EXEC InsertPurchasingDetails @PurchasingID = 599, @PurchaseID = 170, @SupplierID = 47, @TypeSizeID = 99, @Quantity = 94, @PurchasingDate = '2023-04-30';
EXEC InsertPurchasingDetails @PurchasingID = 600, @PurchaseID = 280, @SupplierID = 66, @TypeSizeID = 100, @Quantity = 91, @PurchasingDate = '2023-04-30';
EXEC InsertPurchasingDetails @PurchasingID = 601, @PurchaseID = 452, @SupplierID = 28, @TypeSizeID = 101, @Quantity = 62, @PurchasingDate = '2023-05-01';
EXEC InsertPurchasingDetails @PurchasingID = 602, @PurchaseID = 379, @SupplierID = 33, @TypeSizeID = 102, @Quantity = 60, @PurchasingDate = '2023-05-01';
EXEC InsertPurchasingDetails @PurchasingID = 603, @PurchaseID = 326, @SupplierID = 19, @TypeSizeID = 103, @Quantity = 89, @PurchasingDate = '2023-05-01';
EXEC InsertPurchasingDetails @PurchasingID = 604, @PurchaseID = 88, @SupplierID = 30, @TypeSizeID = 104, @Quantity = 80, @PurchasingDate = '2023-05-01';
EXEC InsertPurchasingDetails @PurchasingID = 605, @PurchaseID = 169, @SupplierID = 4, @TypeSizeID = 105, @Quantity = 85, @PurchasingDate = '2023-05-01';
EXEC InsertPurchasingDetails @PurchasingID = 606, @PurchaseID = 135, @SupplierID = 68, @TypeSizeID = 106, @Quantity = 80, @PurchasingDate = '2023-05-02';
EXEC InsertPurchasingDetails @PurchasingID = 607, @PurchaseID = 270, @SupplierID = 92, @TypeSizeID = 107, @Quantity = 54, @PurchasingDate = '2023-05-02';
EXEC InsertPurchasingDetails @PurchasingID = 608, @PurchaseID = 333, @SupplierID = 45, @TypeSizeID = 108, @Quantity = 65, @PurchasingDate = '2023-05-02';
EXEC InsertPurchasingDetails @PurchasingID = 609, @PurchaseID = 71, @SupplierID = 99, @TypeSizeID = 109, @Quantity = 58, @PurchasingDate = '2023-05-02';
EXEC InsertPurchasingDetails @PurchasingID = 610, @PurchaseID = 69, @SupplierID = 11, @TypeSizeID = 110, @Quantity = 50, @PurchasingDate = '2023-05-02';
EXEC InsertPurchasingDetails @PurchasingID = 611, @PurchaseID = 214, @SupplierID = 16, @TypeSizeID = 111, @Quantity = 68, @PurchasingDate = '2023-05-03';
EXEC InsertPurchasingDetails @PurchasingID = 612, @PurchaseID = 252, @SupplierID = 79, @TypeSizeID = 112, @Quantity = 95, @PurchasingDate = '2023-05-03';
EXEC InsertPurchasingDetails @PurchasingID = 613, @PurchaseID = 362, @SupplierID = 71, @TypeSizeID = 113, @Quantity = 71, @PurchasingDate = '2023-05-03';
EXEC InsertPurchasingDetails @PurchasingID = 614, @PurchaseID = 38, @SupplierID = 57, @TypeSizeID = 114, @Quantity = 82, @PurchasingDate = '2023-05-03';
EXEC InsertPurchasingDetails @PurchasingID = 615, @PurchaseID = 6, @SupplierID = 25, @TypeSizeID = 115, @Quantity = 58, @PurchasingDate = '2023-05-03';
EXEC InsertPurchasingDetails @PurchasingID = 616, @PurchaseID = 247, @SupplierID = 55, @TypeSizeID = 116, @Quantity = 99, @PurchasingDate = '2023-05-04';
EXEC InsertPurchasingDetails @PurchasingID = 617, @PurchaseID = 233, @SupplierID = 91, @TypeSizeID = 117, @Quantity = 66, @PurchasingDate = '2023-05-04';
EXEC InsertPurchasingDetails @PurchasingID = 618, @PurchaseID = 458, @SupplierID = 93, @TypeSizeID = 118, @Quantity = 99, @PurchasingDate = '2023-05-04';
EXEC InsertPurchasingDetails @PurchasingID = 619, @PurchaseID = 15, @SupplierID = 92, @TypeSizeID = 119, @Quantity = 58, @PurchasingDate = '2023-05-04';
EXEC InsertPurchasingDetails @PurchasingID = 620, @PurchaseID = 332, @SupplierID = 29, @TypeSizeID = 120, @Quantity = 71, @PurchasingDate = '2023-05-04';
EXEC InsertPurchasingDetails @PurchasingID = 621, @PurchaseID = 264, @SupplierID = 24, @TypeSizeID = 121, @Quantity = 86, @PurchasingDate = '2023-05-05';
EXEC InsertPurchasingDetails @PurchasingID = 622, @PurchaseID = 363, @SupplierID = 41, @TypeSizeID = 122, @Quantity = 63, @PurchasingDate = '2023-05-05';
EXEC InsertPurchasingDetails @PurchasingID = 623, @PurchaseID = 265, @SupplierID = 54, @TypeSizeID = 123, @Quantity = 60, @PurchasingDate = '2023-05-05';
EXEC InsertPurchasingDetails @PurchasingID = 624, @PurchaseID = 468, @SupplierID = 3, @TypeSizeID = 124, @Quantity = 99, @PurchasingDate = '2023-05-05';
EXEC InsertPurchasingDetails @PurchasingID = 625, @PurchaseID = 33, @SupplierID = 25, @TypeSizeID = 125, @Quantity = 77, @PurchasingDate = '2023-05-05';
EXEC InsertPurchasingDetails @PurchasingID = 626, @PurchaseID = 439, @SupplierID = 76, @TypeSizeID = 126, @Quantity = 91, @PurchasingDate = '2023-05-06';
EXEC InsertPurchasingDetails @PurchasingID = 627, @PurchaseID = 485, @SupplierID = 84, @TypeSizeID = 127, @Quantity = 85, @PurchasingDate = '2023-05-06';
EXEC InsertPurchasingDetails @PurchasingID = 628, @PurchaseID = 202, @SupplierID = 9, @TypeSizeID = 128, @Quantity = 64, @PurchasingDate = '2023-05-06';
EXEC InsertPurchasingDetails @PurchasingID = 629, @PurchaseID = 481, @SupplierID = 27, @TypeSizeID = 129, @Quantity = 72, @PurchasingDate = '2023-05-06';
EXEC InsertPurchasingDetails @PurchasingID = 630, @PurchaseID = 315, @SupplierID = 16, @TypeSizeID = 130, @Quantity = 53, @PurchasingDate = '2023-05-06';
EXEC InsertPurchasingDetails @PurchasingID = 631, @PurchaseID = 214, @SupplierID = 73, @TypeSizeID = 131, @Quantity = 60, @PurchasingDate = '2023-05-07';
EXEC InsertPurchasingDetails @PurchasingID = 632, @PurchaseID = 263, @SupplierID = 45, @TypeSizeID = 132, @Quantity = 62, @PurchasingDate = '2023-05-07';
EXEC InsertPurchasingDetails @PurchasingID = 633, @PurchaseID = 103, @SupplierID = 87, @TypeSizeID = 133, @Quantity = 92, @PurchasingDate = '2023-05-07';
EXEC InsertPurchasingDetails @PurchasingID = 634, @PurchaseID = 301, @SupplierID = 19, @TypeSizeID = 134, @Quantity = 51, @PurchasingDate = '2023-05-07';
EXEC InsertPurchasingDetails @PurchasingID = 635, @PurchaseID = 148, @SupplierID = 65, @TypeSizeID = 135, @Quantity = 70, @PurchasingDate = '2023-05-07';
EXEC InsertPurchasingDetails @PurchasingID = 636, @PurchaseID = 407, @SupplierID = 26, @TypeSizeID = 136, @Quantity = 59, @PurchasingDate = '2023-05-08';
EXEC InsertPurchasingDetails @PurchasingID = 637, @PurchaseID = 198, @SupplierID = 40, @TypeSizeID = 137, @Quantity = 92, @PurchasingDate = '2023-05-08';
EXEC InsertPurchasingDetails @PurchasingID = 638, @PurchaseID = 297, @SupplierID = 70, @TypeSizeID = 138, @Quantity = 67, @PurchasingDate = '2023-05-08';
EXEC InsertPurchasingDetails @PurchasingID = 639, @PurchaseID = 87, @SupplierID = 31, @TypeSizeID = 139, @Quantity = 76, @PurchasingDate = '2023-05-08';
EXEC InsertPurchasingDetails @PurchasingID = 640, @PurchaseID = 330, @SupplierID = 99, @TypeSizeID = 140, @Quantity = 76, @PurchasingDate = '2023-05-08';
EXEC InsertPurchasingDetails @PurchasingID = 641, @PurchaseID = 15, @SupplierID = 33, @TypeSizeID = 141, @Quantity = 71, @PurchasingDate = '2023-05-09';
EXEC InsertPurchasingDetails @PurchasingID = 642, @PurchaseID = 251, @SupplierID = 92, @TypeSizeID = 142, @Quantity = 72, @PurchasingDate = '2023-05-09';
EXEC InsertPurchasingDetails @PurchasingID = 643, @PurchaseID = 20, @SupplierID = 9, @TypeSizeID = 143, @Quantity = 81, @PurchasingDate = '2023-05-09';
EXEC InsertPurchasingDetails @PurchasingID = 644, @PurchaseID = 124, @SupplierID = 8, @TypeSizeID = 144, @Quantity = 92, @PurchasingDate = '2023-05-09';
EXEC InsertPurchasingDetails @PurchasingID = 645, @PurchaseID = 98, @SupplierID = 40, @TypeSizeID = 145, @Quantity = 68, @PurchasingDate = '2023-05-09';
EXEC InsertPurchasingDetails @PurchasingID = 646, @PurchaseID = 54, @SupplierID = 70, @TypeSizeID = 146, @Quantity = 81, @PurchasingDate = '2023-05-10';
EXEC InsertPurchasingDetails @PurchasingID = 647, @PurchaseID = 396, @SupplierID = 55, @TypeSizeID = 147, @Quantity = 62, @PurchasingDate = '2023-05-10';
EXEC InsertPurchasingDetails @PurchasingID = 648, @PurchaseID = 256, @SupplierID = 78, @TypeSizeID = 148, @Quantity = 53, @PurchasingDate = '2023-05-10';
EXEC InsertPurchasingDetails @PurchasingID = 649, @PurchaseID = 170, @SupplierID = 54, @TypeSizeID = 149, @Quantity = 72, @PurchasingDate = '2023-05-10';
EXEC InsertPurchasingDetails @PurchasingID = 650, @PurchaseID = 124, @SupplierID = 95, @TypeSizeID = 150, @Quantity = 93, @PurchasingDate = '2023-05-10';
EXEC InsertPurchasingDetails @PurchasingID = 651, @PurchaseID = 193, @SupplierID = 41, @TypeSizeID = 151, @Quantity = 72, @PurchasingDate = '2023-05-11';
EXEC InsertPurchasingDetails @PurchasingID = 652, @PurchaseID = 475, @SupplierID = 62, @TypeSizeID = 152, @Quantity = 90, @PurchasingDate = '2023-05-11';
EXEC InsertPurchasingDetails @PurchasingID = 653, @PurchaseID = 309, @SupplierID = 11, @TypeSizeID = 153, @Quantity = 71, @PurchasingDate = '2023-05-11';
EXEC InsertPurchasingDetails @PurchasingID = 654, @PurchaseID = 319, @SupplierID = 93, @TypeSizeID = 154, @Quantity = 71, @PurchasingDate = '2023-05-11';
EXEC InsertPurchasingDetails @PurchasingID = 655, @PurchaseID = 406, @SupplierID = 5, @TypeSizeID = 155, @Quantity = 83, @PurchasingDate = '2023-05-11';
EXEC InsertPurchasingDetails @PurchasingID = 656, @PurchaseID = 3, @SupplierID = 88, @TypeSizeID = 156, @Quantity = 76, @PurchasingDate = '2023-05-12';
EXEC InsertPurchasingDetails @PurchasingID = 657, @PurchaseID = 173, @SupplierID = 57, @TypeSizeID = 157, @Quantity = 98, @PurchasingDate = '2023-05-12';
EXEC InsertPurchasingDetails @PurchasingID = 658, @PurchaseID = 322, @SupplierID = 63, @TypeSizeID = 158, @Quantity = 89, @PurchasingDate = '2023-05-12';
EXEC InsertPurchasingDetails @PurchasingID = 659, @PurchaseID = 28, @SupplierID = 65, @TypeSizeID = 159, @Quantity = 68, @PurchasingDate = '2023-05-12';
EXEC InsertPurchasingDetails @PurchasingID = 660, @PurchaseID = 453, @SupplierID = 84, @TypeSizeID = 160, @Quantity = 95, @PurchasingDate = '2023-05-12';
EXEC InsertPurchasingDetails @PurchasingID = 661, @PurchaseID = 78, @SupplierID = 46, @TypeSizeID = 161, @Quantity = 89, @PurchasingDate = '2023-05-13';
EXEC InsertPurchasingDetails @PurchasingID = 662, @PurchaseID = 308, @SupplierID = 79, @TypeSizeID = 162, @Quantity = 54, @PurchasingDate = '2023-05-13';
EXEC InsertPurchasingDetails @PurchasingID = 663, @PurchaseID = 94, @SupplierID = 66, @TypeSizeID = 163, @Quantity = 57, @PurchasingDate = '2023-05-13';
EXEC InsertPurchasingDetails @PurchasingID = 664, @PurchaseID = 344, @SupplierID = 16, @TypeSizeID = 164, @Quantity = 88, @PurchasingDate = '2023-05-13';
EXEC InsertPurchasingDetails @PurchasingID = 665, @PurchaseID = 441, @SupplierID = 96, @TypeSizeID = 165, @Quantity = 70, @PurchasingDate = '2023-05-13';
EXEC InsertPurchasingDetails @PurchasingID = 666, @PurchaseID = 6, @SupplierID = 83, @TypeSizeID = 166, @Quantity = 91, @PurchasingDate = '2023-05-14';
EXEC InsertPurchasingDetails @PurchasingID = 667, @PurchaseID = 317, @SupplierID = 100, @TypeSizeID = 167, @Quantity = 97, @PurchasingDate = '2023-05-14';
EXEC InsertPurchasingDetails @PurchasingID = 668, @PurchaseID = 54, @SupplierID = 17, @TypeSizeID = 168, @Quantity = 53, @PurchasingDate = '2023-05-14';
EXEC InsertPurchasingDetails @PurchasingID = 669, @PurchaseID = 403, @SupplierID = 3, @TypeSizeID = 169, @Quantity = 89, @PurchasingDate = '2023-05-14';
EXEC InsertPurchasingDetails @PurchasingID = 670, @PurchaseID = 229, @SupplierID = 12, @TypeSizeID = 170, @Quantity = 84, @PurchasingDate = '2023-05-14';
EXEC InsertPurchasingDetails @PurchasingID = 671, @PurchaseID = 18, @SupplierID = 71, @TypeSizeID = 171, @Quantity = 92, @PurchasingDate = '2023-05-15';
EXEC InsertPurchasingDetails @PurchasingID = 672, @PurchaseID = 68, @SupplierID = 99, @TypeSizeID = 172, @Quantity = 83, @PurchasingDate = '2023-05-15';
EXEC InsertPurchasingDetails @PurchasingID = 673, @PurchaseID = 48, @SupplierID = 67, @TypeSizeID = 173, @Quantity = 59, @PurchasingDate = '2023-05-15';
EXEC InsertPurchasingDetails @PurchasingID = 674, @PurchaseID = 479, @SupplierID = 47, @TypeSizeID = 174, @Quantity = 65, @PurchasingDate = '2023-05-15';
EXEC InsertPurchasingDetails @PurchasingID = 675, @PurchaseID = 480, @SupplierID = 64, @TypeSizeID = 175, @Quantity = 61, @PurchasingDate = '2023-05-15';
EXEC InsertPurchasingDetails @PurchasingID = 676, @PurchaseID = 54, @SupplierID = 84, @TypeSizeID = 176, @Quantity = 53, @PurchasingDate = '2023-05-16';
EXEC InsertPurchasingDetails @PurchasingID = 677, @PurchaseID = 322, @SupplierID = 5, @TypeSizeID = 177, @Quantity = 64, @PurchasingDate = '2023-05-16';
EXEC InsertPurchasingDetails @PurchasingID = 678, @PurchaseID = 117, @SupplierID = 97, @TypeSizeID = 178, @Quantity = 63, @PurchasingDate = '2023-05-16';
EXEC InsertPurchasingDetails @PurchasingID = 679, @PurchaseID = 435, @SupplierID = 71, @TypeSizeID = 179, @Quantity = 97, @PurchasingDate = '2023-05-16';
EXEC InsertPurchasingDetails @PurchasingID = 680, @PurchaseID = 263, @SupplierID = 32, @TypeSizeID = 180, @Quantity = 56, @PurchasingDate = '2023-05-16';
EXEC InsertPurchasingDetails @PurchasingID = 681, @PurchaseID = 238, @SupplierID = 81, @TypeSizeID = 181, @Quantity = 72, @PurchasingDate = '2023-05-17';
EXEC InsertPurchasingDetails @PurchasingID = 682, @PurchaseID = 289, @SupplierID = 4, @TypeSizeID = 182, @Quantity = 97, @PurchasingDate = '2023-05-17';
EXEC InsertPurchasingDetails @PurchasingID = 683, @PurchaseID = 425, @SupplierID = 88, @TypeSizeID = 183, @Quantity = 53, @PurchasingDate = '2023-05-17';
EXEC InsertPurchasingDetails @PurchasingID = 684, @PurchaseID = 424, @SupplierID = 81, @TypeSizeID = 184, @Quantity = 87, @PurchasingDate = '2023-05-17';
EXEC InsertPurchasingDetails @PurchasingID = 685, @PurchaseID = 84, @SupplierID = 77, @TypeSizeID = 185, @Quantity = 75, @PurchasingDate = '2023-05-17';
EXEC InsertPurchasingDetails @PurchasingID = 686, @PurchaseID = 470, @SupplierID = 85, @TypeSizeID = 186, @Quantity = 86, @PurchasingDate = '2023-05-18';
EXEC InsertPurchasingDetails @PurchasingID = 687, @PurchaseID = 433, @SupplierID = 6, @TypeSizeID = 187, @Quantity = 86, @PurchasingDate = '2023-05-18';
EXEC InsertPurchasingDetails @PurchasingID = 688, @PurchaseID = 274, @SupplierID = 89, @TypeSizeID = 188, @Quantity = 75, @PurchasingDate = '2023-05-18';
EXEC InsertPurchasingDetails @PurchasingID = 689, @PurchaseID = 290, @SupplierID = 15, @TypeSizeID = 189, @Quantity = 61, @PurchasingDate = '2023-05-18';
EXEC InsertPurchasingDetails @PurchasingID = 690, @PurchaseID = 338, @SupplierID = 48, @TypeSizeID = 190, @Quantity = 80, @PurchasingDate = '2023-05-18';
EXEC InsertPurchasingDetails @PurchasingID = 691, @PurchaseID = 143, @SupplierID = 21, @TypeSizeID = 191, @Quantity = 62, @PurchasingDate = '2023-05-19';
EXEC InsertPurchasingDetails @PurchasingID = 692, @PurchaseID = 108, @SupplierID = 9, @TypeSizeID = 192, @Quantity = 58, @PurchasingDate = '2023-05-19';
EXEC InsertPurchasingDetails @PurchasingID = 693, @PurchaseID = 451, @SupplierID = 2, @TypeSizeID = 193, @Quantity = 58, @PurchasingDate = '2023-05-19';
EXEC InsertPurchasingDetails @PurchasingID = 694, @PurchaseID = 106, @SupplierID = 6, @TypeSizeID = 194, @Quantity = 76, @PurchasingDate = '2023-05-19';
EXEC InsertPurchasingDetails @PurchasingID = 695, @PurchaseID = 212, @SupplierID = 65, @TypeSizeID = 195, @Quantity = 57, @PurchasingDate = '2023-05-19';
EXEC InsertPurchasingDetails @PurchasingID = 696, @PurchaseID = 353, @SupplierID = 95, @TypeSizeID = 196, @Quantity = 60, @PurchasingDate = '2023-05-20';
EXEC InsertPurchasingDetails @PurchasingID = 697, @PurchaseID = 6, @SupplierID = 44, @TypeSizeID = 197, @Quantity = 75, @PurchasingDate = '2023-05-20';
EXEC InsertPurchasingDetails @PurchasingID = 698, @PurchaseID = 473, @SupplierID = 24, @TypeSizeID = 198, @Quantity = 89, @PurchasingDate = '2023-05-20';
EXEC InsertPurchasingDetails @PurchasingID = 699, @PurchaseID = 392, @SupplierID = 10, @TypeSizeID = 199, @Quantity = 69, @PurchasingDate = '2023-05-20';
EXEC InsertPurchasingDetails @PurchasingID = 700, @PurchaseID = 468, @SupplierID = 24, @TypeSizeID = 200, @Quantity = 61, @PurchasingDate = '2023-05-20';
EXEC InsertPurchasingDetails @PurchasingID = 701, @PurchaseID = 379, @SupplierID = 83, @TypeSizeID = 201, @Quantity = 81, @PurchasingDate = '2023-05-21';
EXEC InsertPurchasingDetails @PurchasingID = 702, @PurchaseID = 71, @SupplierID = 48, @TypeSizeID = 202, @Quantity = 59, @PurchasingDate = '2023-05-21';
EXEC InsertPurchasingDetails @PurchasingID = 703, @PurchaseID = 441, @SupplierID = 98, @TypeSizeID = 203, @Quantity = 51, @PurchasingDate = '2023-05-21';
EXEC InsertPurchasingDetails @PurchasingID = 704, @PurchaseID = 258, @SupplierID = 11, @TypeSizeID = 204, @Quantity = 66, @PurchasingDate = '2023-05-21';
EXEC InsertPurchasingDetails @PurchasingID = 705, @PurchaseID = 274, @SupplierID = 59, @TypeSizeID = 205, @Quantity = 58, @PurchasingDate = '2023-05-21';
EXEC InsertPurchasingDetails @PurchasingID = 706, @PurchaseID = 294, @SupplierID = 43, @TypeSizeID = 206, @Quantity = 75, @PurchasingDate = '2023-05-22';
EXEC InsertPurchasingDetails @PurchasingID = 707, @PurchaseID = 373, @SupplierID = 70, @TypeSizeID = 207, @Quantity = 70, @PurchasingDate = '2023-05-22';
EXEC InsertPurchasingDetails @PurchasingID = 708, @PurchaseID = 92, @SupplierID = 14, @TypeSizeID = 208, @Quantity = 89, @PurchasingDate = '2023-05-22';
EXEC InsertPurchasingDetails @PurchasingID = 709, @PurchaseID = 141, @SupplierID = 72, @TypeSizeID = 209, @Quantity = 79, @PurchasingDate = '2023-05-22';
EXEC InsertPurchasingDetails @PurchasingID = 710, @PurchaseID = 464, @SupplierID = 50, @TypeSizeID = 210, @Quantity = 70, @PurchasingDate = '2023-05-22';
EXEC InsertPurchasingDetails @PurchasingID = 711, @PurchaseID = 402, @SupplierID = 68, @TypeSizeID = 211, @Quantity = 73, @PurchasingDate = '2023-05-23';
EXEC InsertPurchasingDetails @PurchasingID = 712, @PurchaseID = 378, @SupplierID = 69, @TypeSizeID = 212, @Quantity = 72, @PurchasingDate = '2023-05-23';
EXEC InsertPurchasingDetails @PurchasingID = 713, @PurchaseID = 10, @SupplierID = 6, @TypeSizeID = 213, @Quantity = 58, @PurchasingDate = '2023-05-23';
EXEC InsertPurchasingDetails @PurchasingID = 714, @PurchaseID = 317, @SupplierID = 34, @TypeSizeID = 214, @Quantity = 57, @PurchasingDate = '2023-05-23';
EXEC InsertPurchasingDetails @PurchasingID = 715, @PurchaseID = 299, @SupplierID = 82, @TypeSizeID = 215, @Quantity = 90, @PurchasingDate = '2023-05-23';
EXEC InsertPurchasingDetails @PurchasingID = 716, @PurchaseID = 134, @SupplierID = 80, @TypeSizeID = 216, @Quantity = 77, @PurchasingDate = '2023-05-24';
EXEC InsertPurchasingDetails @PurchasingID = 717, @PurchaseID = 413, @SupplierID = 30, @TypeSizeID = 217, @Quantity = 81, @PurchasingDate = '2023-05-24';
EXEC InsertPurchasingDetails @PurchasingID = 718, @PurchaseID = 40, @SupplierID = 83, @TypeSizeID = 218, @Quantity = 83, @PurchasingDate = '2023-05-24';
EXEC InsertPurchasingDetails @PurchasingID = 719, @PurchaseID = 280, @SupplierID = 35, @TypeSizeID = 219, @Quantity = 56, @PurchasingDate = '2023-05-24';
EXEC InsertPurchasingDetails @PurchasingID = 720, @PurchaseID = 299, @SupplierID = 41, @TypeSizeID = 220, @Quantity = 84, @PurchasingDate = '2023-05-24';
EXEC InsertPurchasingDetails @PurchasingID = 721, @PurchaseID = 191, @SupplierID = 42, @TypeSizeID = 221, @Quantity = 69, @PurchasingDate = '2023-05-25';
EXEC InsertPurchasingDetails @PurchasingID = 722, @PurchaseID = 290, @SupplierID = 42, @TypeSizeID = 222, @Quantity = 83, @PurchasingDate = '2023-05-25';
EXEC InsertPurchasingDetails @PurchasingID = 723, @PurchaseID = 347, @SupplierID = 64, @TypeSizeID = 223, @Quantity = 64, @PurchasingDate = '2023-05-25';
EXEC InsertPurchasingDetails @PurchasingID = 724, @PurchaseID = 158, @SupplierID = 78, @TypeSizeID = 224, @Quantity = 68, @PurchasingDate = '2023-05-25';
EXEC InsertPurchasingDetails @PurchasingID = 725, @PurchaseID = 65, @SupplierID = 97, @TypeSizeID = 225, @Quantity = 95, @PurchasingDate = '2023-05-25';
EXEC InsertPurchasingDetails @PurchasingID = 726, @PurchaseID = 318, @SupplierID = 69, @TypeSizeID = 226, @Quantity = 88, @PurchasingDate = '2023-05-26';
EXEC InsertPurchasingDetails @PurchasingID = 727, @PurchaseID = 286, @SupplierID = 87, @TypeSizeID = 227, @Quantity = 97, @PurchasingDate = '2023-05-26';
EXEC InsertPurchasingDetails @PurchasingID = 728, @PurchaseID = 395, @SupplierID = 23, @TypeSizeID = 228, @Quantity = 69, @PurchasingDate = '2023-05-26';
EXEC InsertPurchasingDetails @PurchasingID = 729, @PurchaseID = 239, @SupplierID = 20, @TypeSizeID = 229, @Quantity = 97, @PurchasingDate = '2023-05-26';
EXEC InsertPurchasingDetails @PurchasingID = 730, @PurchaseID = 75, @SupplierID = 12, @TypeSizeID = 230, @Quantity = 83, @PurchasingDate = '2023-05-26';
EXEC InsertPurchasingDetails @PurchasingID = 731, @PurchaseID = 104, @SupplierID = 6, @TypeSizeID = 231, @Quantity = 70, @PurchasingDate = '2023-05-27';
EXEC InsertPurchasingDetails @PurchasingID = 732, @PurchaseID = 199, @SupplierID = 20, @TypeSizeID = 232, @Quantity = 74, @PurchasingDate = '2023-05-27';
EXEC InsertPurchasingDetails @PurchasingID = 733, @PurchaseID = 206, @SupplierID = 20, @TypeSizeID = 233, @Quantity = 100, @PurchasingDate = '2023-05-27';
EXEC InsertPurchasingDetails @PurchasingID = 734, @PurchaseID = 362, @SupplierID = 90, @TypeSizeID = 234, @Quantity = 74, @PurchasingDate = '2023-05-27';
EXEC InsertPurchasingDetails @PurchasingID = 735, @PurchaseID = 128, @SupplierID = 83, @TypeSizeID = 235, @Quantity = 57, @PurchasingDate = '2023-05-27';
EXEC InsertPurchasingDetails @PurchasingID = 736, @PurchaseID = 300, @SupplierID = 91, @TypeSizeID = 236, @Quantity = 64, @PurchasingDate = '2023-05-28';
EXEC InsertPurchasingDetails @PurchasingID = 737, @PurchaseID = 293, @SupplierID = 37, @TypeSizeID = 237, @Quantity = 52, @PurchasingDate = '2023-05-28';
EXEC InsertPurchasingDetails @PurchasingID = 738, @PurchaseID = 61, @SupplierID = 23, @TypeSizeID = 238, @Quantity = 88, @PurchasingDate = '2023-05-28';
EXEC InsertPurchasingDetails @PurchasingID = 739, @PurchaseID = 307, @SupplierID = 84, @TypeSizeID = 239, @Quantity = 69, @PurchasingDate = '2023-05-28';
EXEC InsertPurchasingDetails @PurchasingID = 740, @PurchaseID = 410, @SupplierID = 28, @TypeSizeID = 240, @Quantity = 71, @PurchasingDate = '2023-05-28';
EXEC InsertPurchasingDetails @PurchasingID = 741, @PurchaseID = 431, @SupplierID = 35, @TypeSizeID = 241, @Quantity = 74, @PurchasingDate = '2023-05-29';
EXEC InsertPurchasingDetails @PurchasingID = 742, @PurchaseID = 278, @SupplierID = 42, @TypeSizeID = 242, @Quantity = 91, @PurchasingDate = '2023-05-29';
EXEC InsertPurchasingDetails @PurchasingID = 743, @PurchaseID = 9, @SupplierID = 17, @TypeSizeID = 243, @Quantity = 80, @PurchasingDate = '2023-05-29';
EXEC InsertPurchasingDetails @PurchasingID = 744, @PurchaseID = 328, @SupplierID = 74, @TypeSizeID = 244, @Quantity = 82, @PurchasingDate = '2023-05-29';
EXEC InsertPurchasingDetails @PurchasingID = 745, @PurchaseID = 41, @SupplierID = 61, @TypeSizeID = 245, @Quantity = 73, @PurchasingDate = '2023-05-29';
EXEC InsertPurchasingDetails @PurchasingID = 746, @PurchaseID = 28, @SupplierID = 58, @TypeSizeID = 246, @Quantity = 60, @PurchasingDate = '2023-05-30';
EXEC InsertPurchasingDetails @PurchasingID = 747, @PurchaseID = 368, @SupplierID = 20, @TypeSizeID = 247, @Quantity = 89, @PurchasingDate = '2023-05-30';
EXEC InsertPurchasingDetails @PurchasingID = 748, @PurchaseID = 25, @SupplierID = 96, @TypeSizeID = 248, @Quantity = 64, @PurchasingDate = '2023-05-30';
EXEC InsertPurchasingDetails @PurchasingID = 749, @PurchaseID = 205, @SupplierID = 95, @TypeSizeID = 249, @Quantity = 58, @PurchasingDate = '2023-05-30';
EXEC InsertPurchasingDetails @PurchasingID = 750, @PurchaseID = 469, @SupplierID = 91, @TypeSizeID = 250, @Quantity = 54, @PurchasingDate = '2023-05-30';
EXEC InsertPurchasingDetails @PurchasingID = 751, @PurchaseID = 58, @SupplierID = 21, @TypeSizeID = 251, @Quantity = 64, @PurchasingDate = '2023-05-31';
EXEC InsertPurchasingDetails @PurchasingID = 752, @PurchaseID = 310, @SupplierID = 21, @TypeSizeID = 252, @Quantity = 97, @PurchasingDate = '2023-05-31';
EXEC InsertPurchasingDetails @PurchasingID = 753, @PurchaseID = 130, @SupplierID = 15, @TypeSizeID = 253, @Quantity = 99, @PurchasingDate = '2023-05-31';
EXEC InsertPurchasingDetails @PurchasingID = 754, @PurchaseID = 438, @SupplierID = 81, @TypeSizeID = 254, @Quantity = 78, @PurchasingDate = '2023-05-31';
EXEC InsertPurchasingDetails @PurchasingID = 755, @PurchaseID = 205, @SupplierID = 90, @TypeSizeID = 255, @Quantity = 61, @PurchasingDate = '2023-05-31';
EXEC InsertPurchasingDetails @PurchasingID = 756, @PurchaseID = 14, @SupplierID = 32, @TypeSizeID = 256, @Quantity = 89, @PurchasingDate = '2023-06-01';
EXEC InsertPurchasingDetails @PurchasingID = 757, @PurchaseID = 166, @SupplierID = 99, @TypeSizeID = 257, @Quantity = 87, @PurchasingDate = '2023-06-01';
EXEC InsertPurchasingDetails @PurchasingID = 758, @PurchaseID = 193, @SupplierID = 16, @TypeSizeID = 258, @Quantity = 70, @PurchasingDate = '2023-06-01';
EXEC InsertPurchasingDetails @PurchasingID = 759, @PurchaseID = 495, @SupplierID = 28, @TypeSizeID = 259, @Quantity = 85, @PurchasingDate = '2023-06-01';
EXEC InsertPurchasingDetails @PurchasingID = 760, @PurchaseID = 356, @SupplierID = 9, @TypeSizeID = 260, @Quantity = 82, @PurchasingDate = '2023-06-01';
EXEC InsertPurchasingDetails @PurchasingID = 761, @PurchaseID = 209, @SupplierID = 70, @TypeSizeID = 261, @Quantity = 87, @PurchasingDate = '2023-06-02';
EXEC InsertPurchasingDetails @PurchasingID = 762, @PurchaseID = 498, @SupplierID = 95, @TypeSizeID = 262, @Quantity = 69, @PurchasingDate = '2023-06-02';
EXEC InsertPurchasingDetails @PurchasingID = 763, @PurchaseID = 193, @SupplierID = 52, @TypeSizeID = 263, @Quantity = 53, @PurchasingDate = '2023-06-02';
EXEC InsertPurchasingDetails @PurchasingID = 764, @PurchaseID = 101, @SupplierID = 29, @TypeSizeID = 264, @Quantity = 56, @PurchasingDate = '2023-06-02';
EXEC InsertPurchasingDetails @PurchasingID = 765, @PurchaseID = 376, @SupplierID = 38, @TypeSizeID = 265, @Quantity = 58, @PurchasingDate = '2023-06-02';
EXEC InsertPurchasingDetails @PurchasingID = 766, @PurchaseID = 493, @SupplierID = 28, @TypeSizeID = 266, @Quantity = 55, @PurchasingDate = '2023-06-03';
EXEC InsertPurchasingDetails @PurchasingID = 767, @PurchaseID = 458, @SupplierID = 85, @TypeSizeID = 267, @Quantity = 96, @PurchasingDate = '2023-06-03';
EXEC InsertPurchasingDetails @PurchasingID = 768, @PurchaseID = 75, @SupplierID = 3, @TypeSizeID = 268, @Quantity = 51, @PurchasingDate = '2023-06-03';
EXEC InsertPurchasingDetails @PurchasingID = 769, @PurchaseID = 46, @SupplierID = 90, @TypeSizeID = 269, @Quantity = 61, @PurchasingDate = '2023-06-03';
EXEC InsertPurchasingDetails @PurchasingID = 770, @PurchaseID = 141, @SupplierID = 64, @TypeSizeID = 270, @Quantity = 51, @PurchasingDate = '2023-06-03';
EXEC InsertPurchasingDetails @PurchasingID = 771, @PurchaseID = 435, @SupplierID = 50, @TypeSizeID = 271, @Quantity = 65, @PurchasingDate = '2023-06-04';
EXEC InsertPurchasingDetails @PurchasingID = 772, @PurchaseID = 300, @SupplierID = 23, @TypeSizeID = 272, @Quantity = 84, @PurchasingDate = '2023-06-04';
EXEC InsertPurchasingDetails @PurchasingID = 773, @PurchaseID = 441, @SupplierID = 50, @TypeSizeID = 273, @Quantity = 69, @PurchasingDate = '2023-06-04';
EXEC InsertPurchasingDetails @PurchasingID = 774, @PurchaseID = 259, @SupplierID = 25, @TypeSizeID = 274, @Quantity = 81, @PurchasingDate = '2023-06-04';
EXEC InsertPurchasingDetails @PurchasingID = 775, @PurchaseID = 336, @SupplierID = 36, @TypeSizeID = 275, @Quantity = 57, @PurchasingDate = '2023-06-04';
EXEC InsertPurchasingDetails @PurchasingID = 776, @PurchaseID = 319, @SupplierID = 56, @TypeSizeID = 276, @Quantity = 93, @PurchasingDate = '2023-06-05';
EXEC InsertPurchasingDetails @PurchasingID = 777, @PurchaseID = 486, @SupplierID = 93, @TypeSizeID = 277, @Quantity = 80, @PurchasingDate = '2023-06-05';
EXEC InsertPurchasingDetails @PurchasingID = 778, @PurchaseID = 423, @SupplierID = 99, @TypeSizeID = 278, @Quantity = 76, @PurchasingDate = '2023-06-05';
EXEC InsertPurchasingDetails @PurchasingID = 779, @PurchaseID = 97, @SupplierID = 87, @TypeSizeID = 279, @Quantity = 82, @PurchasingDate = '2023-06-05';
EXEC InsertPurchasingDetails @PurchasingID = 780, @PurchaseID = 226, @SupplierID = 45, @TypeSizeID = 280, @Quantity = 98, @PurchasingDate = '2023-06-05';
EXEC InsertPurchasingDetails @PurchasingID = 781, @PurchaseID = 44, @SupplierID = 28, @TypeSizeID = 281, @Quantity = 72, @PurchasingDate = '2023-06-06';
EXEC InsertPurchasingDetails @PurchasingID = 782, @PurchaseID = 162, @SupplierID = 34, @TypeSizeID = 282, @Quantity = 70, @PurchasingDate = '2023-06-06';
EXEC InsertPurchasingDetails @PurchasingID = 783, @PurchaseID = 207, @SupplierID = 79, @TypeSizeID = 283, @Quantity = 79, @PurchasingDate = '2023-06-06';
EXEC InsertPurchasingDetails @PurchasingID = 784, @PurchaseID = 377, @SupplierID = 26, @TypeSizeID = 284, @Quantity = 51, @PurchasingDate = '2023-06-06';
EXEC InsertPurchasingDetails @PurchasingID = 785, @PurchaseID = 344, @SupplierID = 90, @TypeSizeID = 285, @Quantity = 90, @PurchasingDate = '2023-06-06';
EXEC InsertPurchasingDetails @PurchasingID = 786, @PurchaseID = 427, @SupplierID = 57, @TypeSizeID = 286, @Quantity = 68, @PurchasingDate = '2023-06-07';
EXEC InsertPurchasingDetails @PurchasingID = 787, @PurchaseID = 47, @SupplierID = 93, @TypeSizeID = 287, @Quantity = 72, @PurchasingDate = '2023-06-07';
EXEC InsertPurchasingDetails @PurchasingID = 788, @PurchaseID = 347, @SupplierID = 48, @TypeSizeID = 288, @Quantity = 51, @PurchasingDate = '2023-06-07';
EXEC InsertPurchasingDetails @PurchasingID = 789, @PurchaseID = 426, @SupplierID = 3, @TypeSizeID = 289, @Quantity = 74, @PurchasingDate = '2023-06-07';
EXEC InsertPurchasingDetails @PurchasingID = 790, @PurchaseID = 13, @SupplierID = 1, @TypeSizeID = 290, @Quantity = 94, @PurchasingDate = '2023-06-07';
EXEC InsertPurchasingDetails @PurchasingID = 791, @PurchaseID = 75, @SupplierID = 17, @TypeSizeID = 291, @Quantity = 94, @PurchasingDate = '2023-06-08';
EXEC InsertPurchasingDetails @PurchasingID = 792, @PurchaseID = 191, @SupplierID = 52, @TypeSizeID = 292, @Quantity = 51, @PurchasingDate = '2023-06-08';
EXEC InsertPurchasingDetails @PurchasingID = 793, @PurchaseID = 204, @SupplierID = 99, @TypeSizeID = 293, @Quantity = 87, @PurchasingDate = '2023-06-08';
EXEC InsertPurchasingDetails @PurchasingID = 794, @PurchaseID = 82, @SupplierID = 12, @TypeSizeID = 294, @Quantity = 86, @PurchasingDate = '2023-06-08';
EXEC InsertPurchasingDetails @PurchasingID = 795, @PurchaseID = 386, @SupplierID = 39, @TypeSizeID = 295, @Quantity = 53, @PurchasingDate = '2023-06-08';
EXEC InsertPurchasingDetails @PurchasingID = 796, @PurchaseID = 395, @SupplierID = 63, @TypeSizeID = 296, @Quantity = 73, @PurchasingDate = '2023-06-09';
EXEC InsertPurchasingDetails @PurchasingID = 797, @PurchaseID = 399, @SupplierID = 49, @TypeSizeID = 297, @Quantity = 77, @PurchasingDate = '2023-06-09';
EXEC InsertPurchasingDetails @PurchasingID = 798, @PurchaseID = 243, @SupplierID = 99, @TypeSizeID = 298, @Quantity = 73, @PurchasingDate = '2023-06-09';
EXEC InsertPurchasingDetails @PurchasingID = 799, @PurchaseID = 192, @SupplierID = 33, @TypeSizeID = 299, @Quantity = 90, @PurchasingDate = '2023-06-09';
EXEC InsertPurchasingDetails @PurchasingID = 800, @PurchaseID = 418, @SupplierID = 63, @TypeSizeID = 300, @Quantity = 84, @PurchasingDate = '2023-06-09';
EXEC InsertPurchasingDetails @PurchasingID = 801, @PurchaseID = 465, @SupplierID = 79, @TypeSizeID = 301, @Quantity = 52, @PurchasingDate = '2023-06-10';
EXEC InsertPurchasingDetails @PurchasingID = 802, @PurchaseID = 302, @SupplierID = 95, @TypeSizeID = 302, @Quantity = 90, @PurchasingDate = '2023-06-10';
EXEC InsertPurchasingDetails @PurchasingID = 803, @PurchaseID = 250, @SupplierID = 70, @TypeSizeID = 303, @Quantity = 84, @PurchasingDate = '2023-06-10';
EXEC InsertPurchasingDetails @PurchasingID = 804, @PurchaseID = 231, @SupplierID = 53, @TypeSizeID = 304, @Quantity = 97, @PurchasingDate = '2023-06-10';
EXEC InsertPurchasingDetails @PurchasingID = 805, @PurchaseID = 352, @SupplierID = 88, @TypeSizeID = 305, @Quantity = 96, @PurchasingDate = '2023-06-10';
EXEC InsertPurchasingDetails @PurchasingID = 806, @PurchaseID = 424, @SupplierID = 94, @TypeSizeID = 306, @Quantity = 88, @PurchasingDate = '2023-06-11';
EXEC InsertPurchasingDetails @PurchasingID = 807, @PurchaseID = 130, @SupplierID = 15, @TypeSizeID = 307, @Quantity = 94, @PurchasingDate = '2023-06-11';
EXEC InsertPurchasingDetails @PurchasingID = 808, @PurchaseID = 93, @SupplierID = 64, @TypeSizeID = 308, @Quantity = 95, @PurchasingDate = '2023-06-11';
EXEC InsertPurchasingDetails @PurchasingID = 809, @PurchaseID = 257, @SupplierID = 56, @TypeSizeID = 309, @Quantity = 80, @PurchasingDate = '2023-06-11';
EXEC InsertPurchasingDetails @PurchasingID = 810, @PurchaseID = 269, @SupplierID = 56, @TypeSizeID = 310, @Quantity = 64, @PurchasingDate = '2023-06-11';
EXEC InsertPurchasingDetails @PurchasingID = 811, @PurchaseID = 366, @SupplierID = 39, @TypeSizeID = 311, @Quantity = 52, @PurchasingDate = '2023-06-12';
EXEC InsertPurchasingDetails @PurchasingID = 812, @PurchaseID = 117, @SupplierID = 3, @TypeSizeID = 312, @Quantity = 86, @PurchasingDate = '2023-06-12';
EXEC InsertPurchasingDetails @PurchasingID = 813, @PurchaseID = 332, @SupplierID = 75, @TypeSizeID = 313, @Quantity = 100, @PurchasingDate = '2023-06-12';
EXEC InsertPurchasingDetails @PurchasingID = 814, @PurchaseID = 132, @SupplierID = 13, @TypeSizeID = 314, @Quantity = 99, @PurchasingDate = '2023-06-12';
EXEC InsertPurchasingDetails @PurchasingID = 815, @PurchaseID = 257, @SupplierID = 83, @TypeSizeID = 315, @Quantity = 67, @PurchasingDate = '2023-06-12';
EXEC InsertPurchasingDetails @PurchasingID = 816, @PurchaseID = 455, @SupplierID = 6, @TypeSizeID = 316, @Quantity = 62, @PurchasingDate = '2023-06-13';
EXEC InsertPurchasingDetails @PurchasingID = 817, @PurchaseID = 280, @SupplierID = 5, @TypeSizeID = 317, @Quantity = 60, @PurchasingDate = '2023-06-13';
EXEC InsertPurchasingDetails @PurchasingID = 818, @PurchaseID = 324, @SupplierID = 93, @TypeSizeID = 318, @Quantity = 98, @PurchasingDate = '2023-06-13';
EXEC InsertPurchasingDetails @PurchasingID = 819, @PurchaseID = 292, @SupplierID = 32, @TypeSizeID = 319, @Quantity = 82, @PurchasingDate = '2023-06-13';
EXEC InsertPurchasingDetails @PurchasingID = 820, @PurchaseID = 171, @SupplierID = 60, @TypeSizeID = 320, @Quantity = 86, @PurchasingDate = '2023-06-13';
EXEC InsertPurchasingDetails @PurchasingID = 821, @PurchaseID = 496, @SupplierID = 69, @TypeSizeID = 321, @Quantity = 54, @PurchasingDate = '2023-06-14';
EXEC InsertPurchasingDetails @PurchasingID = 822, @PurchaseID = 153, @SupplierID = 25, @TypeSizeID = 322, @Quantity = 50, @PurchasingDate = '2023-06-14';
EXEC InsertPurchasingDetails @PurchasingID = 823, @PurchaseID = 462, @SupplierID = 2, @TypeSizeID = 323, @Quantity = 60, @PurchasingDate = '2023-06-14';
EXEC InsertPurchasingDetails @PurchasingID = 824, @PurchaseID = 75, @SupplierID = 78, @TypeSizeID = 324, @Quantity = 66, @PurchasingDate = '2023-06-14';
EXEC InsertPurchasingDetails @PurchasingID = 825, @PurchaseID = 360, @SupplierID = 29, @TypeSizeID = 325, @Quantity = 57, @PurchasingDate = '2023-06-14';
EXEC InsertPurchasingDetails @PurchasingID = 826, @PurchaseID = 341, @SupplierID = 49, @TypeSizeID = 326, @Quantity = 84, @PurchasingDate = '2023-06-15';
EXEC InsertPurchasingDetails @PurchasingID = 827, @PurchaseID = 198, @SupplierID = 66, @TypeSizeID = 327, @Quantity = 56, @PurchasingDate = '2023-06-15';
EXEC InsertPurchasingDetails @PurchasingID = 828, @PurchaseID = 442, @SupplierID = 87, @TypeSizeID = 328, @Quantity = 80, @PurchasingDate = '2023-06-15';
EXEC InsertPurchasingDetails @PurchasingID = 829, @PurchaseID = 300, @SupplierID = 49, @TypeSizeID = 329, @Quantity = 51, @PurchasingDate = '2023-06-15';
EXEC InsertPurchasingDetails @PurchasingID = 830, @PurchaseID = 387, @SupplierID = 14, @TypeSizeID = 330, @Quantity = 53, @PurchasingDate = '2023-06-15';
EXEC InsertPurchasingDetails @PurchasingID = 831, @PurchaseID = 94, @SupplierID = 95, @TypeSizeID = 331, @Quantity = 90, @PurchasingDate = '2023-06-16';
EXEC InsertPurchasingDetails @PurchasingID = 832, @PurchaseID = 133, @SupplierID = 47, @TypeSizeID = 332, @Quantity = 99, @PurchasingDate = '2023-06-16';
EXEC InsertPurchasingDetails @PurchasingID = 833, @PurchaseID = 437, @SupplierID = 9, @TypeSizeID = 333, @Quantity = 94, @PurchasingDate = '2023-06-16';
EXEC InsertPurchasingDetails @PurchasingID = 834, @PurchaseID = 445, @SupplierID = 93, @TypeSizeID = 334, @Quantity = 56, @PurchasingDate = '2023-06-16';
EXEC InsertPurchasingDetails @PurchasingID = 835, @PurchaseID = 128, @SupplierID = 94, @TypeSizeID = 335, @Quantity = 61, @PurchasingDate = '2023-06-16';
EXEC InsertPurchasingDetails @PurchasingID = 836, @PurchaseID = 44, @SupplierID = 38, @TypeSizeID = 336, @Quantity = 81, @PurchasingDate = '2023-06-17';
EXEC InsertPurchasingDetails @PurchasingID = 837, @PurchaseID = 260, @SupplierID = 46, @TypeSizeID = 337, @Quantity = 61, @PurchasingDate = '2023-06-17';
EXEC InsertPurchasingDetails @PurchasingID = 838, @PurchaseID = 269, @SupplierID = 59, @TypeSizeID = 338, @Quantity = 53, @PurchasingDate = '2023-06-17';
EXEC InsertPurchasingDetails @PurchasingID = 839, @PurchaseID = 321, @SupplierID = 65, @TypeSizeID = 339, @Quantity = 94, @PurchasingDate = '2023-06-17';
EXEC InsertPurchasingDetails @PurchasingID = 840, @PurchaseID = 264, @SupplierID = 48, @TypeSizeID = 340, @Quantity = 71, @PurchasingDate = '2023-06-17';
EXEC InsertPurchasingDetails @PurchasingID = 841, @PurchaseID = 471, @SupplierID = 96, @TypeSizeID = 341, @Quantity = 64, @PurchasingDate = '2023-06-18';
EXEC InsertPurchasingDetails @PurchasingID = 842, @PurchaseID = 404, @SupplierID = 8, @TypeSizeID = 342, @Quantity = 100, @PurchasingDate = '2023-06-18';
EXEC InsertPurchasingDetails @PurchasingID = 843, @PurchaseID = 215, @SupplierID = 14, @TypeSizeID = 343, @Quantity = 54, @PurchasingDate = '2023-06-18';
EXEC InsertPurchasingDetails @PurchasingID = 844, @PurchaseID = 249, @SupplierID = 21, @TypeSizeID = 344, @Quantity = 82, @PurchasingDate = '2023-06-18';
EXEC InsertPurchasingDetails @PurchasingID = 845, @PurchaseID = 260, @SupplierID = 94, @TypeSizeID = 345, @Quantity = 58, @PurchasingDate = '2023-06-18';
EXEC InsertPurchasingDetails @PurchasingID = 846, @PurchaseID = 134, @SupplierID = 31, @TypeSizeID = 346, @Quantity = 91, @PurchasingDate = '2023-06-19';
EXEC InsertPurchasingDetails @PurchasingID = 847, @PurchaseID = 476, @SupplierID = 16, @TypeSizeID = 347, @Quantity = 50, @PurchasingDate = '2023-06-19';
EXEC InsertPurchasingDetails @PurchasingID = 848, @PurchaseID = 78, @SupplierID = 51, @TypeSizeID = 348, @Quantity = 97, @PurchasingDate = '2023-06-19';
EXEC InsertPurchasingDetails @PurchasingID = 849, @PurchaseID = 463, @SupplierID = 94, @TypeSizeID = 349, @Quantity = 99, @PurchasingDate = '2023-06-19';
EXEC InsertPurchasingDetails @PurchasingID = 850, @PurchaseID = 463, @SupplierID = 3, @TypeSizeID = 350, @Quantity = 83, @PurchasingDate = '2023-06-19';
EXEC InsertPurchasingDetails @PurchasingID = 851, @PurchaseID = 494, @SupplierID = 47, @TypeSizeID = 351, @Quantity = 80, @PurchasingDate = '2023-06-20';
EXEC InsertPurchasingDetails @PurchasingID = 852, @PurchaseID = 23, @SupplierID = 80, @TypeSizeID = 352, @Quantity = 78, @PurchasingDate = '2023-06-20';
EXEC InsertPurchasingDetails @PurchasingID = 853, @PurchaseID = 318, @SupplierID = 99, @TypeSizeID = 353, @Quantity = 63, @PurchasingDate = '2023-06-20';
EXEC InsertPurchasingDetails @PurchasingID = 854, @PurchaseID = 303, @SupplierID = 76, @TypeSizeID = 354, @Quantity = 59, @PurchasingDate = '2023-06-20';
EXEC InsertPurchasingDetails @PurchasingID = 855, @PurchaseID = 489, @SupplierID = 42, @TypeSizeID = 355, @Quantity = 85, @PurchasingDate = '2023-06-20';
EXEC InsertPurchasingDetails @PurchasingID = 856, @PurchaseID = 484, @SupplierID = 36, @TypeSizeID = 356, @Quantity = 85, @PurchasingDate = '2023-06-21';
EXEC InsertPurchasingDetails @PurchasingID = 857, @PurchaseID = 445, @SupplierID = 51, @TypeSizeID = 357, @Quantity = 97, @PurchasingDate = '2023-06-21';
EXEC InsertPurchasingDetails @PurchasingID = 858, @PurchaseID = 157, @SupplierID = 80, @TypeSizeID = 358, @Quantity = 69, @PurchasingDate = '2023-06-21';
EXEC InsertPurchasingDetails @PurchasingID = 859, @PurchaseID = 28, @SupplierID = 7, @TypeSizeID = 359, @Quantity = 53, @PurchasingDate = '2023-06-21';
EXEC InsertPurchasingDetails @PurchasingID = 860, @PurchaseID = 387, @SupplierID = 77, @TypeSizeID = 360, @Quantity = 66, @PurchasingDate = '2023-06-21';
EXEC InsertPurchasingDetails @PurchasingID = 861, @PurchaseID = 473, @SupplierID = 13, @TypeSizeID = 361, @Quantity = 90, @PurchasingDate = '2023-06-22';
EXEC InsertPurchasingDetails @PurchasingID = 862, @PurchaseID = 336, @SupplierID = 94, @TypeSizeID = 362, @Quantity = 77, @PurchasingDate = '2023-06-22';
EXEC InsertPurchasingDetails @PurchasingID = 863, @PurchaseID = 146, @SupplierID = 23, @TypeSizeID = 363, @Quantity = 56, @PurchasingDate = '2023-06-22';
EXEC InsertPurchasingDetails @PurchasingID = 864, @PurchaseID = 237, @SupplierID = 90, @TypeSizeID = 364, @Quantity = 73, @PurchasingDate = '2023-06-22';
EXEC InsertPurchasingDetails @PurchasingID = 865, @PurchaseID = 295, @SupplierID = 54, @TypeSizeID = 365, @Quantity = 58, @PurchasingDate = '2023-06-22';
EXEC InsertPurchasingDetails @PurchasingID = 866, @PurchaseID = 249, @SupplierID = 53, @TypeSizeID = 366, @Quantity = 76, @PurchasingDate = '2023-06-23';
EXEC InsertPurchasingDetails @PurchasingID = 867, @PurchaseID = 318, @SupplierID = 67, @TypeSizeID = 367, @Quantity = 86, @PurchasingDate = '2023-06-23';
EXEC InsertPurchasingDetails @PurchasingID = 868, @PurchaseID = 25, @SupplierID = 28, @TypeSizeID = 368, @Quantity = 96, @PurchasingDate = '2023-06-23';
EXEC InsertPurchasingDetails @PurchasingID = 869, @PurchaseID = 454, @SupplierID = 48, @TypeSizeID = 369, @Quantity = 59, @PurchasingDate = '2023-06-23';
EXEC InsertPurchasingDetails @PurchasingID = 870, @PurchaseID = 335, @SupplierID = 91, @TypeSizeID = 370, @Quantity = 62, @PurchasingDate = '2023-06-23';
EXEC InsertPurchasingDetails @PurchasingID = 871, @PurchaseID = 211, @SupplierID = 45, @TypeSizeID = 371, @Quantity = 53, @PurchasingDate = '2023-06-24';
EXEC InsertPurchasingDetails @PurchasingID = 872, @PurchaseID = 120, @SupplierID = 22, @TypeSizeID = 372, @Quantity = 60, @PurchasingDate = '2023-06-24';
EXEC InsertPurchasingDetails @PurchasingID = 873, @PurchaseID = 496, @SupplierID = 78, @TypeSizeID = 373, @Quantity = 77, @PurchasingDate = '2023-06-24';
EXEC InsertPurchasingDetails @PurchasingID = 874, @PurchaseID = 21, @SupplierID = 13, @TypeSizeID = 374, @Quantity = 100, @PurchasingDate = '2023-06-24';
EXEC InsertPurchasingDetails @PurchasingID = 875, @PurchaseID = 94, @SupplierID = 93, @TypeSizeID = 375, @Quantity = 76, @PurchasingDate = '2023-06-24';
EXEC InsertPurchasingDetails @PurchasingID = 876, @PurchaseID = 211, @SupplierID = 99, @TypeSizeID = 376, @Quantity = 58, @PurchasingDate = '2023-06-25';
EXEC InsertPurchasingDetails @PurchasingID = 877, @PurchaseID = 173, @SupplierID = 54, @TypeSizeID = 377, @Quantity = 84, @PurchasingDate = '2023-06-25';
EXEC InsertPurchasingDetails @PurchasingID = 878, @PurchaseID = 242, @SupplierID = 95, @TypeSizeID = 378, @Quantity = 81, @PurchasingDate = '2023-06-25';
EXEC InsertPurchasingDetails @PurchasingID = 879, @PurchaseID = 437, @SupplierID = 75, @TypeSizeID = 379, @Quantity = 64, @PurchasingDate = '2023-06-25';
EXEC InsertPurchasingDetails @PurchasingID = 880, @PurchaseID = 104, @SupplierID = 74, @TypeSizeID = 380, @Quantity = 92, @PurchasingDate = '2023-06-25';
EXEC InsertPurchasingDetails @PurchasingID = 881, @PurchaseID = 296, @SupplierID = 71, @TypeSizeID = 381, @Quantity = 88, @PurchasingDate = '2023-06-26';
EXEC InsertPurchasingDetails @PurchasingID = 882, @PurchaseID = 26, @SupplierID = 49, @TypeSizeID = 382, @Quantity = 96, @PurchasingDate = '2023-06-26';
EXEC InsertPurchasingDetails @PurchasingID = 883, @PurchaseID = 463, @SupplierID = 77, @TypeSizeID = 383, @Quantity = 70, @PurchasingDate = '2023-06-26';
EXEC InsertPurchasingDetails @PurchasingID = 884, @PurchaseID = 267, @SupplierID = 97, @TypeSizeID = 384, @Quantity = 56, @PurchasingDate = '2023-06-26';
EXEC InsertPurchasingDetails @PurchasingID = 885, @PurchaseID = 328, @SupplierID = 74, @TypeSizeID = 385, @Quantity = 99, @PurchasingDate = '2023-06-26';
EXEC InsertPurchasingDetails @PurchasingID = 886, @PurchaseID = 220, @SupplierID = 91, @TypeSizeID = 386, @Quantity = 62, @PurchasingDate = '2023-06-27';
EXEC InsertPurchasingDetails @PurchasingID = 887, @PurchaseID = 136, @SupplierID = 1, @TypeSizeID = 387, @Quantity = 91, @PurchasingDate = '2023-06-27';
EXEC InsertPurchasingDetails @PurchasingID = 888, @PurchaseID = 391, @SupplierID = 37, @TypeSizeID = 388, @Quantity = 65, @PurchasingDate = '2023-06-27';
EXEC InsertPurchasingDetails @PurchasingID = 889, @PurchaseID = 416, @SupplierID = 88, @TypeSizeID = 389, @Quantity = 78, @PurchasingDate = '2023-06-27';
EXEC InsertPurchasingDetails @PurchasingID = 890, @PurchaseID = 445, @SupplierID = 55, @TypeSizeID = 390, @Quantity = 63, @PurchasingDate = '2023-06-27';
EXEC InsertPurchasingDetails @PurchasingID = 891, @PurchaseID = 385, @SupplierID = 70, @TypeSizeID = 391, @Quantity = 95, @PurchasingDate = '2023-06-28';
EXEC InsertPurchasingDetails @PurchasingID = 892, @PurchaseID = 324, @SupplierID = 16, @TypeSizeID = 392, @Quantity = 98, @PurchasingDate = '2023-06-28';
EXEC InsertPurchasingDetails @PurchasingID = 893, @PurchaseID = 127, @SupplierID = 55, @TypeSizeID = 393, @Quantity = 70, @PurchasingDate = '2023-06-28';
EXEC InsertPurchasingDetails @PurchasingID = 894, @PurchaseID = 485, @SupplierID = 1, @TypeSizeID = 394, @Quantity = 62, @PurchasingDate = '2023-06-28';
EXEC InsertPurchasingDetails @PurchasingID = 895, @PurchaseID = 253, @SupplierID = 5, @TypeSizeID = 395, @Quantity = 62, @PurchasingDate = '2023-06-28';
EXEC InsertPurchasingDetails @PurchasingID = 896, @PurchaseID = 284, @SupplierID = 66, @TypeSizeID = 396, @Quantity = 77, @PurchasingDate = '2023-06-29';
EXEC InsertPurchasingDetails @PurchasingID = 897, @PurchaseID = 303, @SupplierID = 40, @TypeSizeID = 397, @Quantity = 68, @PurchasingDate = '2023-06-29';
EXEC InsertPurchasingDetails @PurchasingID = 898, @PurchaseID = 482, @SupplierID = 12, @TypeSizeID = 398, @Quantity = 77, @PurchasingDate = '2023-06-29';
EXEC InsertPurchasingDetails @PurchasingID = 899, @PurchaseID = 497, @SupplierID = 51, @TypeSizeID = 399, @Quantity = 99, @PurchasingDate = '2023-06-29';
EXEC InsertPurchasingDetails @PurchasingID = 900, @PurchaseID = 204, @SupplierID = 25, @TypeSizeID = 400, @Quantity = 63, @PurchasingDate = '2023-06-29';
EXEC InsertPurchasingDetails @PurchasingID = 901, @PurchaseID = 377, @SupplierID = 54, @TypeSizeID = 401, @Quantity = 90, @PurchasingDate = '2023-06-30';
EXEC InsertPurchasingDetails @PurchasingID = 902, @PurchaseID = 19, @SupplierID = 96, @TypeSizeID = 402, @Quantity = 54, @PurchasingDate = '2023-06-30';
EXEC InsertPurchasingDetails @PurchasingID = 903, @PurchaseID = 401, @SupplierID = 90, @TypeSizeID = 403, @Quantity = 87, @PurchasingDate = '2023-06-30';
EXEC InsertPurchasingDetails @PurchasingID = 904, @PurchaseID = 413, @SupplierID = 31, @TypeSizeID = 404, @Quantity = 74, @PurchasingDate = '2023-06-30';
EXEC InsertPurchasingDetails @PurchasingID = 905, @PurchaseID = 11, @SupplierID = 7, @TypeSizeID = 405, @Quantity = 62, @PurchasingDate = '2023-06-30';
EXEC InsertPurchasingDetails @PurchasingID = 906, @PurchaseID = 205, @SupplierID = 55, @TypeSizeID = 406, @Quantity = 77, @PurchasingDate = '2023-07-01';
EXEC InsertPurchasingDetails @PurchasingID = 907, @PurchaseID = 420, @SupplierID = 99, @TypeSizeID = 407, @Quantity = 71, @PurchasingDate = '2023-07-01';
EXEC InsertPurchasingDetails @PurchasingID = 908, @PurchaseID = 386, @SupplierID = 95, @TypeSizeID = 408, @Quantity = 82, @PurchasingDate = '2023-07-01';
EXEC InsertPurchasingDetails @PurchasingID = 909, @PurchaseID = 470, @SupplierID = 57, @TypeSizeID = 409, @Quantity = 84, @PurchasingDate = '2023-07-01';
EXEC InsertPurchasingDetails @PurchasingID = 910, @PurchaseID = 271, @SupplierID = 13, @TypeSizeID = 410, @Quantity = 53, @PurchasingDate = '2023-07-01';
EXEC InsertPurchasingDetails @PurchasingID = 911, @PurchaseID = 403, @SupplierID = 28, @TypeSizeID = 411, @Quantity = 50, @PurchasingDate = '2023-07-02';
EXEC InsertPurchasingDetails @PurchasingID = 912, @PurchaseID = 353, @SupplierID = 5, @TypeSizeID = 412, @Quantity = 54, @PurchasingDate = '2023-07-02';
EXEC InsertPurchasingDetails @PurchasingID = 913, @PurchaseID = 337, @SupplierID = 86, @TypeSizeID = 413, @Quantity = 97, @PurchasingDate = '2023-07-02';
EXEC InsertPurchasingDetails @PurchasingID = 914, @PurchaseID = 490, @SupplierID = 42, @TypeSizeID = 414, @Quantity = 99, @PurchasingDate = '2023-07-02';
EXEC InsertPurchasingDetails @PurchasingID = 915, @PurchaseID = 377, @SupplierID = 20, @TypeSizeID = 415, @Quantity = 93, @PurchasingDate = '2023-07-02';
EXEC InsertPurchasingDetails @PurchasingID = 916, @PurchaseID = 188, @SupplierID = 67, @TypeSizeID = 416, @Quantity = 82, @PurchasingDate = '2023-07-03';
EXEC InsertPurchasingDetails @PurchasingID = 917, @PurchaseID = 6, @SupplierID = 54, @TypeSizeID = 417, @Quantity = 99, @PurchasingDate = '2023-07-03';
EXEC InsertPurchasingDetails @PurchasingID = 918, @PurchaseID = 223, @SupplierID = 99, @TypeSizeID = 418, @Quantity = 64, @PurchasingDate = '2023-07-03';
EXEC InsertPurchasingDetails @PurchasingID = 919, @PurchaseID = 137, @SupplierID = 62, @TypeSizeID = 419, @Quantity = 100, @PurchasingDate = '2023-07-03';
EXEC InsertPurchasingDetails @PurchasingID = 920, @PurchaseID = 311, @SupplierID = 28, @TypeSizeID = 420, @Quantity = 73, @PurchasingDate = '2023-07-03';
EXEC InsertPurchasingDetails @PurchasingID = 921, @PurchaseID = 21, @SupplierID = 83, @TypeSizeID = 421, @Quantity = 100, @PurchasingDate = '2023-07-04';
EXEC InsertPurchasingDetails @PurchasingID = 922, @PurchaseID = 194, @SupplierID = 48, @TypeSizeID = 422, @Quantity = 94, @PurchasingDate = '2023-07-04';
EXEC InsertPurchasingDetails @PurchasingID = 923, @PurchaseID = 287, @SupplierID = 89, @TypeSizeID = 423, @Quantity = 68, @PurchasingDate = '2023-07-04';
EXEC InsertPurchasingDetails @PurchasingID = 924, @PurchaseID = 375, @SupplierID = 39, @TypeSizeID = 424, @Quantity = 73, @PurchasingDate = '2023-07-04';
EXEC InsertPurchasingDetails @PurchasingID = 925, @PurchaseID = 493, @SupplierID = 80, @TypeSizeID = 425, @Quantity = 54, @PurchasingDate = '2023-07-04';
EXEC InsertPurchasingDetails @PurchasingID = 926, @PurchaseID = 240, @SupplierID = 51, @TypeSizeID = 426, @Quantity = 72, @PurchasingDate = '2023-07-05';
EXEC InsertPurchasingDetails @PurchasingID = 927, @PurchaseID = 99, @SupplierID = 44, @TypeSizeID = 427, @Quantity = 71, @PurchasingDate = '2023-07-05';
EXEC InsertPurchasingDetails @PurchasingID = 928, @PurchaseID = 424, @SupplierID = 17, @TypeSizeID = 428, @Quantity = 84, @PurchasingDate = '2023-07-05';
EXEC InsertPurchasingDetails @PurchasingID = 929, @PurchaseID = 54, @SupplierID = 2, @TypeSizeID = 429, @Quantity = 63, @PurchasingDate = '2023-07-05';
EXEC InsertPurchasingDetails @PurchasingID = 930, @PurchaseID = 406, @SupplierID = 50, @TypeSizeID = 430, @Quantity = 89, @PurchasingDate = '2023-07-05';
EXEC InsertPurchasingDetails @PurchasingID = 931, @PurchaseID = 195, @SupplierID = 11, @TypeSizeID = 431, @Quantity = 60, @PurchasingDate = '2023-07-06';
EXEC InsertPurchasingDetails @PurchasingID = 932, @PurchaseID = 336, @SupplierID = 78, @TypeSizeID = 432, @Quantity = 80, @PurchasingDate = '2023-07-06';
EXEC InsertPurchasingDetails @PurchasingID = 933, @PurchaseID = 87, @SupplierID = 61, @TypeSizeID = 433, @Quantity = 63, @PurchasingDate = '2023-07-06';
EXEC InsertPurchasingDetails @PurchasingID = 934, @PurchaseID = 423, @SupplierID = 7, @TypeSizeID = 434, @Quantity = 73, @PurchasingDate = '2023-07-06';
EXEC InsertPurchasingDetails @PurchasingID = 935, @PurchaseID = 393, @SupplierID = 2, @TypeSizeID = 435, @Quantity = 63, @PurchasingDate = '2023-07-06';
EXEC InsertPurchasingDetails @PurchasingID = 936, @PurchaseID = 305, @SupplierID = 37, @TypeSizeID = 436, @Quantity = 86, @PurchasingDate = '2023-07-07';
EXEC InsertPurchasingDetails @PurchasingID = 937, @PurchaseID = 229, @SupplierID = 44, @TypeSizeID = 437, @Quantity = 50, @PurchasingDate = '2023-07-07';
EXEC InsertPurchasingDetails @PurchasingID = 938, @PurchaseID = 256, @SupplierID = 77, @TypeSizeID = 438, @Quantity = 60, @PurchasingDate = '2023-07-07';
EXEC InsertPurchasingDetails @PurchasingID = 939, @PurchaseID = 400, @SupplierID = 62, @TypeSizeID = 439, @Quantity = 59, @PurchasingDate = '2023-07-07';
EXEC InsertPurchasingDetails @PurchasingID = 940, @PurchaseID = 308, @SupplierID = 81, @TypeSizeID = 440, @Quantity = 84, @PurchasingDate = '2023-07-07';
EXEC InsertPurchasingDetails @PurchasingID = 941, @PurchaseID = 352, @SupplierID = 78, @TypeSizeID = 441, @Quantity = 77, @PurchasingDate = '2023-07-08';
EXEC InsertPurchasingDetails @PurchasingID = 942, @PurchaseID = 375, @SupplierID = 54, @TypeSizeID = 442, @Quantity = 70, @PurchasingDate = '2023-07-08';
EXEC InsertPurchasingDetails @PurchasingID = 943, @PurchaseID = 230, @SupplierID = 18, @TypeSizeID = 443, @Quantity = 89, @PurchasingDate = '2023-07-08';
EXEC InsertPurchasingDetails @PurchasingID = 944, @PurchaseID = 309, @SupplierID = 14, @TypeSizeID = 444, @Quantity = 56, @PurchasingDate = '2023-07-08';
EXEC InsertPurchasingDetails @PurchasingID = 945, @PurchaseID = 17, @SupplierID = 99, @TypeSizeID = 445, @Quantity = 86, @PurchasingDate = '2023-07-08';
EXEC InsertPurchasingDetails @PurchasingID = 946, @PurchaseID = 50, @SupplierID = 64, @TypeSizeID = 446, @Quantity = 98, @PurchasingDate = '2023-07-09';
EXEC InsertPurchasingDetails @PurchasingID = 947, @PurchaseID = 323, @SupplierID = 64, @TypeSizeID = 447, @Quantity = 57, @PurchasingDate = '2023-07-09';
EXEC InsertPurchasingDetails @PurchasingID = 948, @PurchaseID = 256, @SupplierID = 77, @TypeSizeID = 448, @Quantity = 60, @PurchasingDate = '2023-07-09';
EXEC InsertPurchasingDetails @PurchasingID = 949, @PurchaseID = 26, @SupplierID = 85, @TypeSizeID = 449, @Quantity = 52, @PurchasingDate = '2023-07-09';
EXEC InsertPurchasingDetails @PurchasingID = 950, @PurchaseID = 71, @SupplierID = 43, @TypeSizeID = 450, @Quantity = 95, @PurchasingDate = '2023-07-09';
EXEC InsertPurchasingDetails @PurchasingID = 951, @PurchaseID = 30, @SupplierID = 16, @TypeSizeID = 451, @Quantity = 99, @PurchasingDate = '2023-07-10';
EXEC InsertPurchasingDetails @PurchasingID = 952, @PurchaseID = 135, @SupplierID = 1, @TypeSizeID = 452, @Quantity = 51, @PurchasingDate = '2023-07-10';
EXEC InsertPurchasingDetails @PurchasingID = 953, @PurchaseID = 334, @SupplierID = 34, @TypeSizeID = 453, @Quantity = 58, @PurchasingDate = '2023-07-10';
EXEC InsertPurchasingDetails @PurchasingID = 954, @PurchaseID = 162, @SupplierID = 49, @TypeSizeID = 454, @Quantity = 60, @PurchasingDate = '2023-07-10';
EXEC InsertPurchasingDetails @PurchasingID = 955, @PurchaseID = 232, @SupplierID = 82, @TypeSizeID = 455, @Quantity = 91, @PurchasingDate = '2023-07-10';
EXEC InsertPurchasingDetails @PurchasingID = 956, @PurchaseID = 135, @SupplierID = 36, @TypeSizeID = 456, @Quantity = 78, @PurchasingDate = '2023-07-11';
EXEC InsertPurchasingDetails @PurchasingID = 957, @PurchaseID = 247, @SupplierID = 42, @TypeSizeID = 457, @Quantity = 74, @PurchasingDate = '2023-07-11';
EXEC InsertPurchasingDetails @PurchasingID = 958, @PurchaseID = 394, @SupplierID = 91, @TypeSizeID = 458, @Quantity = 76, @PurchasingDate = '2023-07-11';
EXEC InsertPurchasingDetails @PurchasingID = 959, @PurchaseID = 60, @SupplierID = 81, @TypeSizeID = 459, @Quantity = 75, @PurchasingDate = '2023-07-11';
EXEC InsertPurchasingDetails @PurchasingID = 960, @PurchaseID = 231, @SupplierID = 39, @TypeSizeID = 460, @Quantity = 100, @PurchasingDate = '2023-07-11';
EXEC InsertPurchasingDetails @PurchasingID = 961, @PurchaseID = 473, @SupplierID = 93, @TypeSizeID = 461, @Quantity = 52, @PurchasingDate = '2023-07-12';
EXEC InsertPurchasingDetails @PurchasingID = 962, @PurchaseID = 123, @SupplierID = 58, @TypeSizeID = 462, @Quantity = 76, @PurchasingDate = '2023-07-12';
EXEC InsertPurchasingDetails @PurchasingID = 963, @PurchaseID = 229, @SupplierID = 97, @TypeSizeID = 463, @Quantity = 53, @PurchasingDate = '2023-07-12';
EXEC InsertPurchasingDetails @PurchasingID = 964, @PurchaseID = 437, @SupplierID = 77, @TypeSizeID = 464, @Quantity = 73, @PurchasingDate = '2023-07-12';
EXEC InsertPurchasingDetails @PurchasingID = 965, @PurchaseID = 60, @SupplierID = 4, @TypeSizeID = 465, @Quantity = 74, @PurchasingDate = '2023-07-12';
EXEC InsertPurchasingDetails @PurchasingID = 966, @PurchaseID = 12, @SupplierID = 1, @TypeSizeID = 466, @Quantity = 87, @PurchasingDate = '2023-07-13';
EXEC InsertPurchasingDetails @PurchasingID = 967, @PurchaseID = 238, @SupplierID = 84, @TypeSizeID = 467, @Quantity = 92, @PurchasingDate = '2023-07-13';
EXEC InsertPurchasingDetails @PurchasingID = 968, @PurchaseID = 382, @SupplierID = 47, @TypeSizeID = 468, @Quantity = 60, @PurchasingDate = '2023-07-13';
EXEC InsertPurchasingDetails @PurchasingID = 969, @PurchaseID = 35, @SupplierID = 53, @TypeSizeID = 469, @Quantity = 68, @PurchasingDate = '2023-07-13';
EXEC InsertPurchasingDetails @PurchasingID = 970, @PurchaseID = 451, @SupplierID = 69, @TypeSizeID = 470, @Quantity = 80, @PurchasingDate = '2023-07-13';
EXEC InsertPurchasingDetails @PurchasingID = 971, @PurchaseID = 98, @SupplierID = 95, @TypeSizeID = 471, @Quantity = 62, @PurchasingDate = '2023-07-14';
EXEC InsertPurchasingDetails @PurchasingID = 972, @PurchaseID = 12, @SupplierID = 63, @TypeSizeID = 472, @Quantity = 86, @PurchasingDate = '2023-07-14';
EXEC InsertPurchasingDetails @PurchasingID = 973, @PurchaseID = 312, @SupplierID = 50, @TypeSizeID = 473, @Quantity = 86, @PurchasingDate = '2023-07-14';
EXEC InsertPurchasingDetails @PurchasingID = 974, @PurchaseID = 356, @SupplierID = 83, @TypeSizeID = 474, @Quantity = 81, @PurchasingDate = '2023-07-14';
EXEC InsertPurchasingDetails @PurchasingID = 975, @PurchaseID = 19, @SupplierID = 48, @TypeSizeID = 475, @Quantity = 62, @PurchasingDate = '2023-07-14';
EXEC InsertPurchasingDetails @PurchasingID = 976, @PurchaseID = 454, @SupplierID = 8, @TypeSizeID = 476, @Quantity = 67, @PurchasingDate = '2023-07-15';
EXEC InsertPurchasingDetails @PurchasingID = 977, @PurchaseID = 335, @SupplierID = 82, @TypeSizeID = 477, @Quantity = 70, @PurchasingDate = '2023-07-15';
EXEC InsertPurchasingDetails @PurchasingID = 978, @PurchaseID = 146, @SupplierID = 67, @TypeSizeID = 478, @Quantity = 80, @PurchasingDate = '2023-07-15';
EXEC InsertPurchasingDetails @PurchasingID = 979, @PurchaseID = 336, @SupplierID = 36, @TypeSizeID = 479, @Quantity = 79, @PurchasingDate = '2023-07-15';
EXEC InsertPurchasingDetails @PurchasingID = 980, @PurchaseID = 400, @SupplierID = 36, @TypeSizeID = 480, @Quantity = 94, @PurchasingDate = '2023-07-15';
EXEC InsertPurchasingDetails @PurchasingID = 981, @PurchaseID = 316, @SupplierID = 24, @TypeSizeID = 481, @Quantity = 98, @PurchasingDate = '2023-07-16';
EXEC InsertPurchasingDetails @PurchasingID = 982, @PurchaseID = 224, @SupplierID = 10, @TypeSizeID = 482, @Quantity = 68, @PurchasingDate = '2023-07-16';
EXEC InsertPurchasingDetails @PurchasingID = 983, @PurchaseID = 350, @SupplierID = 35, @TypeSizeID = 483, @Quantity = 57, @PurchasingDate = '2023-07-16';
EXEC InsertPurchasingDetails @PurchasingID = 984, @PurchaseID = 243, @SupplierID = 88, @TypeSizeID = 484, @Quantity = 68, @PurchasingDate = '2023-07-16';
EXEC InsertPurchasingDetails @PurchasingID = 985, @PurchaseID = 381, @SupplierID = 2, @TypeSizeID = 485, @Quantity = 68, @PurchasingDate = '2023-07-16';
EXEC InsertPurchasingDetails @PurchasingID = 986, @PurchaseID = 251, @SupplierID = 67, @TypeSizeID = 486, @Quantity = 76, @PurchasingDate = '2023-07-17';
EXEC InsertPurchasingDetails @PurchasingID = 987, @PurchaseID = 87, @SupplierID = 23, @TypeSizeID = 487, @Quantity = 52, @PurchasingDate = '2023-07-17';
EXEC InsertPurchasingDetails @PurchasingID = 988, @PurchaseID = 140, @SupplierID = 53, @TypeSizeID = 488, @Quantity = 67, @PurchasingDate = '2023-07-17';
EXEC InsertPurchasingDetails @PurchasingID = 989, @PurchaseID = 305, @SupplierID = 99, @TypeSizeID = 489, @Quantity = 84, @PurchasingDate = '2023-07-17';
EXEC InsertPurchasingDetails @PurchasingID = 990, @PurchaseID = 274, @SupplierID = 62, @TypeSizeID = 490, @Quantity = 96, @PurchasingDate = '2023-07-17';
EXEC InsertPurchasingDetails @PurchasingID = 991, @PurchaseID = 460, @SupplierID = 31, @TypeSizeID = 491, @Quantity = 53, @PurchasingDate = '2023-07-18';
EXEC InsertPurchasingDetails @PurchasingID = 992, @PurchaseID = 208, @SupplierID = 16, @TypeSizeID = 492, @Quantity = 93, @PurchasingDate = '2023-07-18';
EXEC InsertPurchasingDetails @PurchasingID = 993, @PurchaseID = 428, @SupplierID = 95, @TypeSizeID = 493, @Quantity = 81, @PurchasingDate = '2023-07-18';
EXEC InsertPurchasingDetails @PurchasingID = 994, @PurchaseID = 401, @SupplierID = 51, @TypeSizeID = 494, @Quantity = 58, @PurchasingDate = '2023-07-18';
EXEC InsertPurchasingDetails @PurchasingID = 995, @PurchaseID = 469, @SupplierID = 84, @TypeSizeID = 495, @Quantity = 54, @PurchasingDate = '2023-07-18';
EXEC InsertPurchasingDetails @PurchasingID = 996, @PurchaseID = 165, @SupplierID = 87, @TypeSizeID = 496, @Quantity = 96, @PurchasingDate = '2023-07-19';
EXEC InsertPurchasingDetails @PurchasingID = 997, @PurchaseID = 328, @SupplierID = 51, @TypeSizeID = 497, @Quantity = 61, @PurchasingDate = '2023-07-19';
EXEC InsertPurchasingDetails @PurchasingID = 998, @PurchaseID = 209, @SupplierID = 6, @TypeSizeID = 498, @Quantity = 76, @PurchasingDate = '2023-07-19';
EXEC InsertPurchasingDetails @PurchasingID = 999, @PurchaseID = 209, @SupplierID = 39, @TypeSizeID = 499, @Quantity = 72, @PurchasingDate = '2023-07-19';
EXEC InsertPurchasingDetails @PurchasingID = 1000, @PurchaseID = 333, @SupplierID = 5, @TypeSizeID = 500, @Quantity = 90, @PurchasingDate = '2023-07-19';
-- #endregion

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


GO
CREATE PROCEDURE InsertSalesDetails
    @SaleDetailsID INT,
    @SaleNo INT,
    @OrderNo INT,
    @Quantity INT,
    @TypeSizeID INT,
    @SaleDate DATE
AS
BEGIN
    INSERT INTO SalesDetails
        (SaleDetailsID, SaleNo, OrderNo, Quantity, TypeSizeID, SaleDate)
    VALUES
        (@SaleDetailsID, @SaleNo, @OrderNo, @Quantity, @TypeSizeID, @SaleDate);
END;


-- #region Insert SalesDetails

EXEC InsertSalesDetails @SaleDetailsID = 1, @SaleNo = 65, @OrderNo = 334, @Quantity = 22, @TypeSizeID = 41, @SaleDate = '2023-09-01';
EXEC InsertSalesDetails @SaleDetailsID = 2, @SaleNo = 111, @OrderNo = 377, @Quantity = 39, @TypeSizeID = 329, @SaleDate = '2023-09-01';
EXEC InsertSalesDetails @SaleDetailsID = 3, @SaleNo = 17, @OrderNo = 437, @Quantity = 41, @TypeSizeID = 21, @SaleDate = '2023-09-01';
EXEC InsertSalesDetails @SaleDetailsID = 4, @SaleNo = 145, @OrderNo = 117, @Quantity = 15, @TypeSizeID = 423, @SaleDate = '2023-09-01';
EXEC InsertSalesDetails @SaleDetailsID = 5, @SaleNo = 468, @OrderNo = 374, @Quantity = 12, @TypeSizeID = 496, @SaleDate = '2023-09-01';
EXEC InsertSalesDetails @SaleDetailsID = 6, @SaleNo = 427, @OrderNo = 107, @Quantity = 41, @TypeSizeID = 320, @SaleDate = '2023-09-02';
EXEC InsertSalesDetails @SaleDetailsID = 7, @SaleNo = 256, @OrderNo = 420, @Quantity = 22, @TypeSizeID = 94, @SaleDate = '2023-09-02';
EXEC InsertSalesDetails @SaleDetailsID = 8, @SaleNo = 182, @OrderNo = 236, @Quantity = 3, @TypeSizeID = 39, @SaleDate = '2023-09-02';
EXEC InsertSalesDetails @SaleDetailsID = 9, @SaleNo = 319, @OrderNo = 299, @Quantity = 4, @TypeSizeID = 263, @SaleDate = '2023-09-02';
EXEC InsertSalesDetails @SaleDetailsID = 10, @SaleNo = 457, @OrderNo = 350, @Quantity = 26, @TypeSizeID = 138, @SaleDate = '2023-09-02';
EXEC InsertSalesDetails @SaleDetailsID = 11, @SaleNo = 155, @OrderNo = 412, @Quantity = 19, @TypeSizeID = 130, @SaleDate = '2023-09-03';
EXEC InsertSalesDetails @SaleDetailsID = 12, @SaleNo = 613, @OrderNo = 3, @Quantity = 41, @TypeSizeID = 66, @SaleDate = '2023-09-03';
EXEC InsertSalesDetails @SaleDetailsID = 13, @SaleNo = 18, @OrderNo = 348, @Quantity = 2, @TypeSizeID = 400, @SaleDate = '2023-09-03';
EXEC InsertSalesDetails @SaleDetailsID = 14, @SaleNo = 183, @OrderNo = 392, @Quantity = 33, @TypeSizeID = 252, @SaleDate = '2023-09-03';
EXEC InsertSalesDetails @SaleDetailsID = 15, @SaleNo = 667, @OrderNo = 234, @Quantity = 5, @TypeSizeID = 429, @SaleDate = '2023-09-03';
EXEC InsertSalesDetails @SaleDetailsID = 16, @SaleNo = 146, @OrderNo = 443, @Quantity = 34, @TypeSizeID = 304, @SaleDate = '2023-09-04';
EXEC InsertSalesDetails @SaleDetailsID = 17, @SaleNo = 90, @OrderNo = 291, @Quantity = 25, @TypeSizeID = 269, @SaleDate = '2023-09-04';
EXEC InsertSalesDetails @SaleDetailsID = 18, @SaleNo = 570, @OrderNo = 211, @Quantity = 37, @TypeSizeID = 141, @SaleDate = '2023-09-04';
EXEC InsertSalesDetails @SaleDetailsID = 19, @SaleNo = 31, @OrderNo = 121, @Quantity = 23, @TypeSizeID = 478, @SaleDate = '2023-09-04';
EXEC InsertSalesDetails @SaleDetailsID = 20, @SaleNo = 176, @OrderNo = 35, @Quantity = 19, @TypeSizeID = 277, @SaleDate = '2023-09-04';
EXEC InsertSalesDetails @SaleDetailsID = 21, @SaleNo = 607, @OrderNo = 481, @Quantity = 37, @TypeSizeID = 104, @SaleDate = '2023-09-05';
EXEC InsertSalesDetails @SaleDetailsID = 22, @SaleNo = 413, @OrderNo = 395, @Quantity = 31, @TypeSizeID = 207, @SaleDate = '2023-09-05';
EXEC InsertSalesDetails @SaleDetailsID = 23, @SaleNo = 145, @OrderNo = 419, @Quantity = 9, @TypeSizeID = 260, @SaleDate = '2023-09-05';
EXEC InsertSalesDetails @SaleDetailsID = 24, @SaleNo = 179, @OrderNo = 420, @Quantity = 31, @TypeSizeID = 317, @SaleDate = '2023-09-05';
EXEC InsertSalesDetails @SaleDetailsID = 25, @SaleNo = 631, @OrderNo = 211, @Quantity = 44, @TypeSizeID = 275, @SaleDate = '2023-09-05';
EXEC InsertSalesDetails @SaleDetailsID = 26, @SaleNo = 443, @OrderNo = 188, @Quantity = 7, @TypeSizeID = 61, @SaleDate = '2023-09-06';
EXEC InsertSalesDetails @SaleDetailsID = 27, @SaleNo = 533, @OrderNo = 86, @Quantity = 43, @TypeSizeID = 241, @SaleDate = '2023-09-06';
EXEC InsertSalesDetails @SaleDetailsID = 28, @SaleNo = 535, @OrderNo = 255, @Quantity = 18, @TypeSizeID = 221, @SaleDate = '2023-09-06';
EXEC InsertSalesDetails @SaleDetailsID = 29, @SaleNo = 68, @OrderNo = 120, @Quantity = 3, @TypeSizeID = 306, @SaleDate = '2023-09-06';
EXEC InsertSalesDetails @SaleDetailsID = 30, @SaleNo = 320, @OrderNo = 354, @Quantity = 35, @TypeSizeID = 83, @SaleDate = '2023-09-06';
EXEC InsertSalesDetails @SaleDetailsID = 31, @SaleNo = 582, @OrderNo = 80, @Quantity = 32, @TypeSizeID = 84, @SaleDate = '2023-09-07';
EXEC InsertSalesDetails @SaleDetailsID = 32, @SaleNo = 675, @OrderNo = 353, @Quantity = 50, @TypeSizeID = 441, @SaleDate = '2023-09-07';
EXEC InsertSalesDetails @SaleDetailsID = 33, @SaleNo = 359, @OrderNo = 380, @Quantity = 22, @TypeSizeID = 279, @SaleDate = '2023-09-07';
EXEC InsertSalesDetails @SaleDetailsID = 34, @SaleNo = 93, @OrderNo = 19, @Quantity = 27, @TypeSizeID = 170, @SaleDate = '2023-09-07';
EXEC InsertSalesDetails @SaleDetailsID = 35, @SaleNo = 91, @OrderNo = 227, @Quantity = 41, @TypeSizeID = 76, @SaleDate = '2023-09-07';
EXEC InsertSalesDetails @SaleDetailsID = 36, @SaleNo = 155, @OrderNo = 318, @Quantity = 4, @TypeSizeID = 324, @SaleDate = '2023-09-08';
EXEC InsertSalesDetails @SaleDetailsID = 37, @SaleNo = 153, @OrderNo = 326, @Quantity = 34, @TypeSizeID = 312, @SaleDate = '2023-09-08';
EXEC InsertSalesDetails @SaleDetailsID = 38, @SaleNo = 511, @OrderNo = 483, @Quantity = 36, @TypeSizeID = 42, @SaleDate = '2023-09-08';
EXEC InsertSalesDetails @SaleDetailsID = 39, @SaleNo = 482, @OrderNo = 466, @Quantity = 31, @TypeSizeID = 269, @SaleDate = '2023-09-08';
EXEC InsertSalesDetails @SaleDetailsID = 40, @SaleNo = 638, @OrderNo = 178, @Quantity = 6, @TypeSizeID = 105, @SaleDate = '2023-09-08';
EXEC InsertSalesDetails @SaleDetailsID = 41, @SaleNo = 530, @OrderNo = 63, @Quantity = 5, @TypeSizeID = 259, @SaleDate = '2023-09-09';
EXEC InsertSalesDetails @SaleDetailsID = 42, @SaleNo = 34, @OrderNo = 412, @Quantity = 47, @TypeSizeID = 38, @SaleDate = '2023-09-09';
EXEC InsertSalesDetails @SaleDetailsID = 43, @SaleNo = 321, @OrderNo = 256, @Quantity = 8, @TypeSizeID = 388, @SaleDate = '2023-09-09';
EXEC InsertSalesDetails @SaleDetailsID = 44, @SaleNo = 435, @OrderNo = 413, @Quantity = 1, @TypeSizeID = 288, @SaleDate = '2023-09-09';
EXEC InsertSalesDetails @SaleDetailsID = 45, @SaleNo = 110, @OrderNo = 371, @Quantity = 50, @TypeSizeID = 267, @SaleDate = '2023-09-09';
EXEC InsertSalesDetails @SaleDetailsID = 46, @SaleNo = 276, @OrderNo = 97, @Quantity = 6, @TypeSizeID = 73, @SaleDate = '2023-09-10';
EXEC InsertSalesDetails @SaleDetailsID = 47, @SaleNo = 434, @OrderNo = 118, @Quantity = 48, @TypeSizeID = 225, @SaleDate = '2023-09-10';
EXEC InsertSalesDetails @SaleDetailsID = 48, @SaleNo = 202, @OrderNo = 225, @Quantity = 17, @TypeSizeID = 73, @SaleDate = '2023-09-10';
EXEC InsertSalesDetails @SaleDetailsID = 49, @SaleNo = 468, @OrderNo = 434, @Quantity = 23, @TypeSizeID = 217, @SaleDate = '2023-09-10';
EXEC InsertSalesDetails @SaleDetailsID = 50, @SaleNo = 661, @OrderNo = 113, @Quantity = 11, @TypeSizeID = 14, @SaleDate = '2023-09-10';
EXEC InsertSalesDetails @SaleDetailsID = 51, @SaleNo = 413, @OrderNo = 425, @Quantity = 11, @TypeSizeID = 320, @SaleDate = '2023-09-11';
EXEC InsertSalesDetails @SaleDetailsID = 52, @SaleNo = 592, @OrderNo = 248, @Quantity = 2, @TypeSizeID = 99, @SaleDate = '2023-09-11';
EXEC InsertSalesDetails @SaleDetailsID = 53, @SaleNo = 350, @OrderNo = 170, @Quantity = 47, @TypeSizeID = 4, @SaleDate = '2023-09-11';
EXEC InsertSalesDetails @SaleDetailsID = 54, @SaleNo = 199, @OrderNo = 500, @Quantity = 33, @TypeSizeID = 461, @SaleDate = '2023-09-11';
EXEC InsertSalesDetails @SaleDetailsID = 55, @SaleNo = 628, @OrderNo = 377, @Quantity = 32, @TypeSizeID = 393, @SaleDate = '2023-09-11';
EXEC InsertSalesDetails @SaleDetailsID = 56, @SaleNo = 329, @OrderNo = 75, @Quantity = 50, @TypeSizeID = 468, @SaleDate = '2023-09-12';
EXEC InsertSalesDetails @SaleDetailsID = 57, @SaleNo = 179, @OrderNo = 261, @Quantity = 15, @TypeSizeID = 422, @SaleDate = '2023-09-12';
EXEC InsertSalesDetails @SaleDetailsID = 58, @SaleNo = 170, @OrderNo = 215, @Quantity = 31, @TypeSizeID = 407, @SaleDate = '2023-09-12';
EXEC InsertSalesDetails @SaleDetailsID = 59, @SaleNo = 317, @OrderNo = 237, @Quantity = 22, @TypeSizeID = 189, @SaleDate = '2023-09-12';
EXEC InsertSalesDetails @SaleDetailsID = 60, @SaleNo = 607, @OrderNo = 78, @Quantity = 24, @TypeSizeID = 430, @SaleDate = '2023-09-12';
EXEC InsertSalesDetails @SaleDetailsID = 61, @SaleNo = 90, @OrderNo = 445, @Quantity = 45, @TypeSizeID = 291, @SaleDate = '2023-09-13';
EXEC InsertSalesDetails @SaleDetailsID = 62, @SaleNo = 412, @OrderNo = 420, @Quantity = 30, @TypeSizeID = 290, @SaleDate = '2023-09-13';
EXEC InsertSalesDetails @SaleDetailsID = 63, @SaleNo = 634, @OrderNo = 112, @Quantity = 15, @TypeSizeID = 378, @SaleDate = '2023-09-13';
EXEC InsertSalesDetails @SaleDetailsID = 64, @SaleNo = 231, @OrderNo = 47, @Quantity = 19, @TypeSizeID = 230, @SaleDate = '2023-09-13';
EXEC InsertSalesDetails @SaleDetailsID = 65, @SaleNo = 289, @OrderNo = 274, @Quantity = 50, @TypeSizeID = 234, @SaleDate = '2023-09-13';
EXEC InsertSalesDetails @SaleDetailsID = 66, @SaleNo = 179, @OrderNo = 381, @Quantity = 27, @TypeSizeID = 140, @SaleDate = '2023-09-14';
EXEC InsertSalesDetails @SaleDetailsID = 67, @SaleNo = 688, @OrderNo = 150, @Quantity = 46, @TypeSizeID = 330, @SaleDate = '2023-09-14';
EXEC InsertSalesDetails @SaleDetailsID = 68, @SaleNo = 240, @OrderNo = 70, @Quantity = 22, @TypeSizeID = 332, @SaleDate = '2023-09-14';
EXEC InsertSalesDetails @SaleDetailsID = 69, @SaleNo = 428, @OrderNo = 329, @Quantity = 31, @TypeSizeID = 261, @SaleDate = '2023-09-14';
EXEC InsertSalesDetails @SaleDetailsID = 70, @SaleNo = 570, @OrderNo = 254, @Quantity = 3, @TypeSizeID = 111, @SaleDate = '2023-09-14';
EXEC InsertSalesDetails @SaleDetailsID = 71, @SaleNo = 567, @OrderNo = 89, @Quantity = 3, @TypeSizeID = 441, @SaleDate = '2023-09-15';
EXEC InsertSalesDetails @SaleDetailsID = 72, @SaleNo = 297, @OrderNo = 354, @Quantity = 19, @TypeSizeID = 76, @SaleDate = '2023-09-15';
EXEC InsertSalesDetails @SaleDetailsID = 73, @SaleNo = 569, @OrderNo = 223, @Quantity = 1, @TypeSizeID = 378, @SaleDate = '2023-09-15';
EXEC InsertSalesDetails @SaleDetailsID = 74, @SaleNo = 492, @OrderNo = 313, @Quantity = 18, @TypeSizeID = 55, @SaleDate = '2023-09-15';
EXEC InsertSalesDetails @SaleDetailsID = 75, @SaleNo = 30, @OrderNo = 289, @Quantity = 49, @TypeSizeID = 46, @SaleDate = '2023-09-15';
EXEC InsertSalesDetails @SaleDetailsID = 76, @SaleNo = 289, @OrderNo = 85, @Quantity = 1, @TypeSizeID = 222, @SaleDate = '2023-09-16';
EXEC InsertSalesDetails @SaleDetailsID = 77, @SaleNo = 373, @OrderNo = 325, @Quantity = 29, @TypeSizeID = 282, @SaleDate = '2023-09-16';
EXEC InsertSalesDetails @SaleDetailsID = 78, @SaleNo = 194, @OrderNo = 271, @Quantity = 20, @TypeSizeID = 293, @SaleDate = '2023-09-16';
EXEC InsertSalesDetails @SaleDetailsID = 79, @SaleNo = 463, @OrderNo = 279, @Quantity = 27, @TypeSizeID = 428, @SaleDate = '2023-09-16';
EXEC InsertSalesDetails @SaleDetailsID = 80, @SaleNo = 149, @OrderNo = 460, @Quantity = 2, @TypeSizeID = 10, @SaleDate = '2023-09-16';
EXEC InsertSalesDetails @SaleDetailsID = 81, @SaleNo = 167, @OrderNo = 276, @Quantity = 25, @TypeSizeID = 473, @SaleDate = '2023-09-17';
EXEC InsertSalesDetails @SaleDetailsID = 82, @SaleNo = 519, @OrderNo = 309, @Quantity = 25, @TypeSizeID = 429, @SaleDate = '2023-09-17';
EXEC InsertSalesDetails @SaleDetailsID = 83, @SaleNo = 28, @OrderNo = 15, @Quantity = 12, @TypeSizeID = 36, @SaleDate = '2023-09-17';
EXEC InsertSalesDetails @SaleDetailsID = 84, @SaleNo = 179, @OrderNo = 381, @Quantity = 18, @TypeSizeID = 301, @SaleDate = '2023-09-17';
EXEC InsertSalesDetails @SaleDetailsID = 85, @SaleNo = 375, @OrderNo = 237, @Quantity = 44, @TypeSizeID = 319, @SaleDate = '2023-09-17';
EXEC InsertSalesDetails @SaleDetailsID = 86, @SaleNo = 358, @OrderNo = 448, @Quantity = 28, @TypeSizeID = 89, @SaleDate = '2023-09-18';
EXEC InsertSalesDetails @SaleDetailsID = 87, @SaleNo = 156, @OrderNo = 400, @Quantity = 32, @TypeSizeID = 6, @SaleDate = '2023-09-18';
EXEC InsertSalesDetails @SaleDetailsID = 88, @SaleNo = 192, @OrderNo = 205, @Quantity = 20, @TypeSizeID = 461, @SaleDate = '2023-09-18';
EXEC InsertSalesDetails @SaleDetailsID = 89, @SaleNo = 555, @OrderNo = 304, @Quantity = 26, @TypeSizeID = 468, @SaleDate = '2023-09-18';
EXEC InsertSalesDetails @SaleDetailsID = 90, @SaleNo = 454, @OrderNo = 142, @Quantity = 16, @TypeSizeID = 323, @SaleDate = '2023-09-18';
EXEC InsertSalesDetails @SaleDetailsID = 91, @SaleNo = 475, @OrderNo = 221, @Quantity = 44, @TypeSizeID = 409, @SaleDate = '2023-09-19';
EXEC InsertSalesDetails @SaleDetailsID = 92, @SaleNo = 259, @OrderNo = 302, @Quantity = 7, @TypeSizeID = 360, @SaleDate = '2023-09-19';
EXEC InsertSalesDetails @SaleDetailsID = 93, @SaleNo = 473, @OrderNo = 491, @Quantity = 4, @TypeSizeID = 448, @SaleDate = '2023-09-19';
EXEC InsertSalesDetails @SaleDetailsID = 94, @SaleNo = 541, @OrderNo = 195, @Quantity = 8, @TypeSizeID = 97, @SaleDate = '2023-09-19';
EXEC InsertSalesDetails @SaleDetailsID = 95, @SaleNo = 301, @OrderNo = 23, @Quantity = 18, @TypeSizeID = 292, @SaleDate = '2023-09-19';
EXEC InsertSalesDetails @SaleDetailsID = 96, @SaleNo = 645, @OrderNo = 465, @Quantity = 47, @TypeSizeID = 493, @SaleDate = '2023-09-20';
EXEC InsertSalesDetails @SaleDetailsID = 97, @SaleNo = 254, @OrderNo = 81, @Quantity = 21, @TypeSizeID = 288, @SaleDate = '2023-09-20';
EXEC InsertSalesDetails @SaleDetailsID = 98, @SaleNo = 36, @OrderNo = 254, @Quantity = 46, @TypeSizeID = 323, @SaleDate = '2023-09-20';
EXEC InsertSalesDetails @SaleDetailsID = 99, @SaleNo = 384, @OrderNo = 119, @Quantity = 14, @TypeSizeID = 468, @SaleDate = '2023-09-20';
EXEC InsertSalesDetails @SaleDetailsID = 100, @SaleNo = 640, @OrderNo = 192, @Quantity = 27, @TypeSizeID = 399, @SaleDate = '2023-09-20';
EXEC InsertSalesDetails @SaleDetailsID = 101, @SaleNo = 134, @OrderNo = 156, @Quantity = 30, @TypeSizeID = 29, @SaleDate = '2023-09-21';
EXEC InsertSalesDetails @SaleDetailsID = 102, @SaleNo = 490, @OrderNo = 183, @Quantity = 32, @TypeSizeID = 174, @SaleDate = '2023-09-21';
EXEC InsertSalesDetails @SaleDetailsID = 103, @SaleNo = 495, @OrderNo = 457, @Quantity = 49, @TypeSizeID = 361, @SaleDate = '2023-09-21';
EXEC InsertSalesDetails @SaleDetailsID = 104, @SaleNo = 639, @OrderNo = 3, @Quantity = 38, @TypeSizeID = 95, @SaleDate = '2023-09-21';
EXEC InsertSalesDetails @SaleDetailsID = 105, @SaleNo = 562, @OrderNo = 431, @Quantity = 1, @TypeSizeID = 480, @SaleDate = '2023-09-21';
EXEC InsertSalesDetails @SaleDetailsID = 106, @SaleNo = 432, @OrderNo = 84, @Quantity = 7, @TypeSizeID = 435, @SaleDate = '2023-09-22';
EXEC InsertSalesDetails @SaleDetailsID = 107, @SaleNo = 649, @OrderNo = 369, @Quantity = 39, @TypeSizeID = 359, @SaleDate = '2023-09-22';
EXEC InsertSalesDetails @SaleDetailsID = 108, @SaleNo = 536, @OrderNo = 203, @Quantity = 47, @TypeSizeID = 405, @SaleDate = '2023-09-22';
EXEC InsertSalesDetails @SaleDetailsID = 109, @SaleNo = 672, @OrderNo = 77, @Quantity = 46, @TypeSizeID = 335, @SaleDate = '2023-09-22';
EXEC InsertSalesDetails @SaleDetailsID = 110, @SaleNo = 164, @OrderNo = 151, @Quantity = 17, @TypeSizeID = 425, @SaleDate = '2023-09-22';
EXEC InsertSalesDetails @SaleDetailsID = 111, @SaleNo = 235, @OrderNo = 483, @Quantity = 4, @TypeSizeID = 270, @SaleDate = '2023-09-23';
EXEC InsertSalesDetails @SaleDetailsID = 112, @SaleNo = 15, @OrderNo = 492, @Quantity = 2, @TypeSizeID = 88, @SaleDate = '2023-09-23';
EXEC InsertSalesDetails @SaleDetailsID = 113, @SaleNo = 58, @OrderNo = 460, @Quantity = 3, @TypeSizeID = 267, @SaleDate = '2023-09-23';
EXEC InsertSalesDetails @SaleDetailsID = 114, @SaleNo = 570, @OrderNo = 332, @Quantity = 39, @TypeSizeID = 223, @SaleDate = '2023-09-23';
EXEC InsertSalesDetails @SaleDetailsID = 115, @SaleNo = 424, @OrderNo = 285, @Quantity = 49, @TypeSizeID = 406, @SaleDate = '2023-09-23';
EXEC InsertSalesDetails @SaleDetailsID = 116, @SaleNo = 584, @OrderNo = 141, @Quantity = 41, @TypeSizeID = 60, @SaleDate = '2023-09-24';
EXEC InsertSalesDetails @SaleDetailsID = 117, @SaleNo = 94, @OrderNo = 382, @Quantity = 22, @TypeSizeID = 294, @SaleDate = '2023-09-24';
EXEC InsertSalesDetails @SaleDetailsID = 118, @SaleNo = 89, @OrderNo = 493, @Quantity = 38, @TypeSizeID = 454, @SaleDate = '2023-09-24';
EXEC InsertSalesDetails @SaleDetailsID = 119, @SaleNo = 699, @OrderNo = 107, @Quantity = 34, @TypeSizeID = 14, @SaleDate = '2023-09-24';
EXEC InsertSalesDetails @SaleDetailsID = 120, @SaleNo = 278, @OrderNo = 384, @Quantity = 3, @TypeSizeID = 443, @SaleDate = '2023-09-24';
EXEC InsertSalesDetails @SaleDetailsID = 121, @SaleNo = 120, @OrderNo = 483, @Quantity = 29, @TypeSizeID = 459, @SaleDate = '2023-09-25';
EXEC InsertSalesDetails @SaleDetailsID = 122, @SaleNo = 11, @OrderNo = 206, @Quantity = 12, @TypeSizeID = 423, @SaleDate = '2023-09-25';
EXEC InsertSalesDetails @SaleDetailsID = 123, @SaleNo = 315, @OrderNo = 497, @Quantity = 41, @TypeSizeID = 484, @SaleDate = '2023-09-25';
EXEC InsertSalesDetails @SaleDetailsID = 124, @SaleNo = 234, @OrderNo = 486, @Quantity = 31, @TypeSizeID = 10, @SaleDate = '2023-09-25';
EXEC InsertSalesDetails @SaleDetailsID = 125, @SaleNo = 22, @OrderNo = 410, @Quantity = 36, @TypeSizeID = 249, @SaleDate = '2023-09-25';
EXEC InsertSalesDetails @SaleDetailsID = 126, @SaleNo = 409, @OrderNo = 295, @Quantity = 18, @TypeSizeID = 133, @SaleDate = '2023-09-26';
EXEC InsertSalesDetails @SaleDetailsID = 127, @SaleNo = 497, @OrderNo = 314, @Quantity = 50, @TypeSizeID = 459, @SaleDate = '2023-09-26';
EXEC InsertSalesDetails @SaleDetailsID = 128, @SaleNo = 442, @OrderNo = 313, @Quantity = 42, @TypeSizeID = 41, @SaleDate = '2023-09-26';
EXEC InsertSalesDetails @SaleDetailsID = 129, @SaleNo = 466, @OrderNo = 74, @Quantity = 42, @TypeSizeID = 191, @SaleDate = '2023-09-26';
EXEC InsertSalesDetails @SaleDetailsID = 130, @SaleNo = 46, @OrderNo = 440, @Quantity = 42, @TypeSizeID = 243, @SaleDate = '2023-09-26';
EXEC InsertSalesDetails @SaleDetailsID = 131, @SaleNo = 426, @OrderNo = 258, @Quantity = 38, @TypeSizeID = 275, @SaleDate = '2023-09-27';
EXEC InsertSalesDetails @SaleDetailsID = 132, @SaleNo = 331, @OrderNo = 219, @Quantity = 21, @TypeSizeID = 468, @SaleDate = '2023-09-27';
EXEC InsertSalesDetails @SaleDetailsID = 133, @SaleNo = 24, @OrderNo = 163, @Quantity = 27, @TypeSizeID = 284, @SaleDate = '2023-09-27';
EXEC InsertSalesDetails @SaleDetailsID = 134, @SaleNo = 574, @OrderNo = 165, @Quantity = 48, @TypeSizeID = 477, @SaleDate = '2023-09-27';
EXEC InsertSalesDetails @SaleDetailsID = 135, @SaleNo = 116, @OrderNo = 398, @Quantity = 7, @TypeSizeID = 112, @SaleDate = '2023-09-27';
EXEC InsertSalesDetails @SaleDetailsID = 136, @SaleNo = 552, @OrderNo = 58, @Quantity = 41, @TypeSizeID = 500, @SaleDate = '2023-09-28';
EXEC InsertSalesDetails @SaleDetailsID = 137, @SaleNo = 316, @OrderNo = 78, @Quantity = 11, @TypeSizeID = 446, @SaleDate = '2023-09-28';
EXEC InsertSalesDetails @SaleDetailsID = 138, @SaleNo = 20, @OrderNo = 141, @Quantity = 45, @TypeSizeID = 335, @SaleDate = '2023-09-28';
EXEC InsertSalesDetails @SaleDetailsID = 139, @SaleNo = 372, @OrderNo = 471, @Quantity = 11, @TypeSizeID = 200, @SaleDate = '2023-09-28';
EXEC InsertSalesDetails @SaleDetailsID = 140, @SaleNo = 118, @OrderNo = 77, @Quantity = 23, @TypeSizeID = 60, @SaleDate = '2023-09-28';
EXEC InsertSalesDetails @SaleDetailsID = 141, @SaleNo = 83, @OrderNo = 485, @Quantity = 34, @TypeSizeID = 494, @SaleDate = '2023-09-29';
EXEC InsertSalesDetails @SaleDetailsID = 142, @SaleNo = 510, @OrderNo = 476, @Quantity = 46, @TypeSizeID = 48, @SaleDate = '2023-09-29';
EXEC InsertSalesDetails @SaleDetailsID = 143, @SaleNo = 245, @OrderNo = 13, @Quantity = 36, @TypeSizeID = 254, @SaleDate = '2023-09-29';
EXEC InsertSalesDetails @SaleDetailsID = 144, @SaleNo = 289, @OrderNo = 225, @Quantity = 7, @TypeSizeID = 54, @SaleDate = '2023-09-29';
EXEC InsertSalesDetails @SaleDetailsID = 145, @SaleNo = 479, @OrderNo = 481, @Quantity = 21, @TypeSizeID = 204, @SaleDate = '2023-09-29';
EXEC InsertSalesDetails @SaleDetailsID = 146, @SaleNo = 472, @OrderNo = 362, @Quantity = 43, @TypeSizeID = 173, @SaleDate = '2023-09-30';
EXEC InsertSalesDetails @SaleDetailsID = 147, @SaleNo = 462, @OrderNo = 484, @Quantity = 45, @TypeSizeID = 431, @SaleDate = '2023-09-30';
EXEC InsertSalesDetails @SaleDetailsID = 148, @SaleNo = 557, @OrderNo = 196, @Quantity = 21, @TypeSizeID = 494, @SaleDate = '2023-09-30';
EXEC InsertSalesDetails @SaleDetailsID = 149, @SaleNo = 19, @OrderNo = 214, @Quantity = 41, @TypeSizeID = 316, @SaleDate = '2023-09-30';
EXEC InsertSalesDetails @SaleDetailsID = 150, @SaleNo = 343, @OrderNo = 284, @Quantity = 27, @TypeSizeID = 242, @SaleDate = '2023-09-30';
EXEC InsertSalesDetails @SaleDetailsID = 151, @SaleNo = 42, @OrderNo = 72, @Quantity = 21, @TypeSizeID = 352, @SaleDate = '2023-10-01';
EXEC InsertSalesDetails @SaleDetailsID = 152, @SaleNo = 199, @OrderNo = 109, @Quantity = 33, @TypeSizeID = 225, @SaleDate = '2023-10-01';
EXEC InsertSalesDetails @SaleDetailsID = 153, @SaleNo = 406, @OrderNo = 354, @Quantity = 19, @TypeSizeID = 151, @SaleDate = '2023-10-01';
EXEC InsertSalesDetails @SaleDetailsID = 154, @SaleNo = 591, @OrderNo = 208, @Quantity = 1, @TypeSizeID = 7, @SaleDate = '2023-10-01';
EXEC InsertSalesDetails @SaleDetailsID = 155, @SaleNo = 70, @OrderNo = 256, @Quantity = 46, @TypeSizeID = 315, @SaleDate = '2023-10-01';
EXEC InsertSalesDetails @SaleDetailsID = 156, @SaleNo = 593, @OrderNo = 340, @Quantity = 37, @TypeSizeID = 407, @SaleDate = '2023-10-02';
EXEC InsertSalesDetails @SaleDetailsID = 157, @SaleNo = 112, @OrderNo = 40, @Quantity = 38, @TypeSizeID = 375, @SaleDate = '2023-10-02';
EXEC InsertSalesDetails @SaleDetailsID = 158, @SaleNo = 567, @OrderNo = 11, @Quantity = 26, @TypeSizeID = 25, @SaleDate = '2023-10-02';
EXEC InsertSalesDetails @SaleDetailsID = 159, @SaleNo = 631, @OrderNo = 228, @Quantity = 42, @TypeSizeID = 438, @SaleDate = '2023-10-02';
EXEC InsertSalesDetails @SaleDetailsID = 160, @SaleNo = 558, @OrderNo = 177, @Quantity = 15, @TypeSizeID = 69, @SaleDate = '2023-10-02';
EXEC InsertSalesDetails @SaleDetailsID = 161, @SaleNo = 67, @OrderNo = 49, @Quantity = 8, @TypeSizeID = 182, @SaleDate = '2023-10-03';
EXEC InsertSalesDetails @SaleDetailsID = 162, @SaleNo = 600, @OrderNo = 399, @Quantity = 8, @TypeSizeID = 477, @SaleDate = '2023-10-03';
EXEC InsertSalesDetails @SaleDetailsID = 163, @SaleNo = 256, @OrderNo = 338, @Quantity = 8, @TypeSizeID = 162, @SaleDate = '2023-10-03';
EXEC InsertSalesDetails @SaleDetailsID = 164, @SaleNo = 193, @OrderNo = 26, @Quantity = 14, @TypeSizeID = 471, @SaleDate = '2023-10-03';
EXEC InsertSalesDetails @SaleDetailsID = 165, @SaleNo = 162, @OrderNo = 179, @Quantity = 13, @TypeSizeID = 383, @SaleDate = '2023-10-03';
EXEC InsertSalesDetails @SaleDetailsID = 166, @SaleNo = 474, @OrderNo = 117, @Quantity = 45, @TypeSizeID = 29, @SaleDate = '2023-10-04';
EXEC InsertSalesDetails @SaleDetailsID = 167, @SaleNo = 544, @OrderNo = 190, @Quantity = 45, @TypeSizeID = 219, @SaleDate = '2023-10-04';
EXEC InsertSalesDetails @SaleDetailsID = 168, @SaleNo = 180, @OrderNo = 151, @Quantity = 41, @TypeSizeID = 309, @SaleDate = '2023-10-04';
EXEC InsertSalesDetails @SaleDetailsID = 169, @SaleNo = 274, @OrderNo = 46, @Quantity = 25, @TypeSizeID = 43, @SaleDate = '2023-10-04';
EXEC InsertSalesDetails @SaleDetailsID = 170, @SaleNo = 377, @OrderNo = 209, @Quantity = 7, @TypeSizeID = 76, @SaleDate = '2023-10-04';
EXEC InsertSalesDetails @SaleDetailsID = 171, @SaleNo = 210, @OrderNo = 466, @Quantity = 20, @TypeSizeID = 326, @SaleDate = '2023-10-05';
EXEC InsertSalesDetails @SaleDetailsID = 172, @SaleNo = 472, @OrderNo = 372, @Quantity = 21, @TypeSizeID = 231, @SaleDate = '2023-10-05';
EXEC InsertSalesDetails @SaleDetailsID = 173, @SaleNo = 162, @OrderNo = 286, @Quantity = 33, @TypeSizeID = 15, @SaleDate = '2023-10-05';
EXEC InsertSalesDetails @SaleDetailsID = 174, @SaleNo = 403, @OrderNo = 223, @Quantity = 29, @TypeSizeID = 308, @SaleDate = '2023-10-05';
EXEC InsertSalesDetails @SaleDetailsID = 175, @SaleNo = 144, @OrderNo = 495, @Quantity = 38, @TypeSizeID = 307, @SaleDate = '2023-10-05';
EXEC InsertSalesDetails @SaleDetailsID = 176, @SaleNo = 251, @OrderNo = 350, @Quantity = 50, @TypeSizeID = 354, @SaleDate = '2023-10-06';
EXEC InsertSalesDetails @SaleDetailsID = 177, @SaleNo = 693, @OrderNo = 178, @Quantity = 3, @TypeSizeID = 352, @SaleDate = '2023-10-06';
EXEC InsertSalesDetails @SaleDetailsID = 178, @SaleNo = 265, @OrderNo = 68, @Quantity = 40, @TypeSizeID = 97, @SaleDate = '2023-10-06';
EXEC InsertSalesDetails @SaleDetailsID = 179, @SaleNo = 40, @OrderNo = 476, @Quantity = 42, @TypeSizeID = 433, @SaleDate = '2023-10-06';
EXEC InsertSalesDetails @SaleDetailsID = 180, @SaleNo = 642, @OrderNo = 462, @Quantity = 28, @TypeSizeID = 328, @SaleDate = '2023-10-06';
EXEC InsertSalesDetails @SaleDetailsID = 181, @SaleNo = 348, @OrderNo = 453, @Quantity = 45, @TypeSizeID = 100, @SaleDate = '2023-10-07';
EXEC InsertSalesDetails @SaleDetailsID = 182, @SaleNo = 508, @OrderNo = 342, @Quantity = 11, @TypeSizeID = 284, @SaleDate = '2023-10-07';
EXEC InsertSalesDetails @SaleDetailsID = 183, @SaleNo = 112, @OrderNo = 147, @Quantity = 12, @TypeSizeID = 283, @SaleDate = '2023-10-07';
EXEC InsertSalesDetails @SaleDetailsID = 184, @SaleNo = 433, @OrderNo = 442, @Quantity = 11, @TypeSizeID = 230, @SaleDate = '2023-10-07';
EXEC InsertSalesDetails @SaleDetailsID = 185, @SaleNo = 170, @OrderNo = 160, @Quantity = 29, @TypeSizeID = 88, @SaleDate = '2023-10-07';
EXEC InsertSalesDetails @SaleDetailsID = 186, @SaleNo = 451, @OrderNo = 280, @Quantity = 14, @TypeSizeID = 304, @SaleDate = '2023-10-08';
EXEC InsertSalesDetails @SaleDetailsID = 187, @SaleNo = 549, @OrderNo = 315, @Quantity = 25, @TypeSizeID = 188, @SaleDate = '2023-10-08';
EXEC InsertSalesDetails @SaleDetailsID = 188, @SaleNo = 172, @OrderNo = 489, @Quantity = 46, @TypeSizeID = 492, @SaleDate = '2023-10-08';
EXEC InsertSalesDetails @SaleDetailsID = 189, @SaleNo = 52, @OrderNo = 206, @Quantity = 19, @TypeSizeID = 152, @SaleDate = '2023-10-08';
EXEC InsertSalesDetails @SaleDetailsID = 190, @SaleNo = 385, @OrderNo = 82, @Quantity = 34, @TypeSizeID = 79, @SaleDate = '2023-10-08';
EXEC InsertSalesDetails @SaleDetailsID = 191, @SaleNo = 422, @OrderNo = 5, @Quantity = 24, @TypeSizeID = 20, @SaleDate = '2023-10-09';
EXEC InsertSalesDetails @SaleDetailsID = 192, @SaleNo = 648, @OrderNo = 413, @Quantity = 27, @TypeSizeID = 283, @SaleDate = '2023-10-09';
EXEC InsertSalesDetails @SaleDetailsID = 193, @SaleNo = 40, @OrderNo = 258, @Quantity = 8, @TypeSizeID = 430, @SaleDate = '2023-10-09';
EXEC InsertSalesDetails @SaleDetailsID = 194, @SaleNo = 469, @OrderNo = 10, @Quantity = 4, @TypeSizeID = 267, @SaleDate = '2023-10-09';
EXEC InsertSalesDetails @SaleDetailsID = 195, @SaleNo = 139, @OrderNo = 132, @Quantity = 24, @TypeSizeID = 79, @SaleDate = '2023-10-09';
EXEC InsertSalesDetails @SaleDetailsID = 196, @SaleNo = 671, @OrderNo = 31, @Quantity = 48, @TypeSizeID = 202, @SaleDate = '2023-10-10';
EXEC InsertSalesDetails @SaleDetailsID = 197, @SaleNo = 78, @OrderNo = 492, @Quantity = 32, @TypeSizeID = 59, @SaleDate = '2023-10-10';
EXEC InsertSalesDetails @SaleDetailsID = 198, @SaleNo = 540, @OrderNo = 67, @Quantity = 7, @TypeSizeID = 330, @SaleDate = '2023-10-10';
EXEC InsertSalesDetails @SaleDetailsID = 199, @SaleNo = 122, @OrderNo = 170, @Quantity = 2, @TypeSizeID = 86, @SaleDate = '2023-10-10';
EXEC InsertSalesDetails @SaleDetailsID = 200, @SaleNo = 53, @OrderNo = 39, @Quantity = 24, @TypeSizeID = 66, @SaleDate = '2023-10-10';
EXEC InsertSalesDetails @SaleDetailsID = 201, @SaleNo = 676, @OrderNo = 126, @Quantity = 39, @TypeSizeID = 455, @SaleDate = '2023-10-11';
EXEC InsertSalesDetails @SaleDetailsID = 202, @SaleNo = 661, @OrderNo = 384, @Quantity = 37, @TypeSizeID = 232, @SaleDate = '2023-10-11';
EXEC InsertSalesDetails @SaleDetailsID = 203, @SaleNo = 137, @OrderNo = 24, @Quantity = 48, @TypeSizeID = 467, @SaleDate = '2023-10-11';
EXEC InsertSalesDetails @SaleDetailsID = 204, @SaleNo = 330, @OrderNo = 331, @Quantity = 45, @TypeSizeID = 321, @SaleDate = '2023-10-11';
EXEC InsertSalesDetails @SaleDetailsID = 205, @SaleNo = 157, @OrderNo = 433, @Quantity = 29, @TypeSizeID = 415, @SaleDate = '2023-10-11';
EXEC InsertSalesDetails @SaleDetailsID = 206, @SaleNo = 447, @OrderNo = 384, @Quantity = 31, @TypeSizeID = 456, @SaleDate = '2023-10-12';
EXEC InsertSalesDetails @SaleDetailsID = 207, @SaleNo = 619, @OrderNo = 250, @Quantity = 19, @TypeSizeID = 321, @SaleDate = '2023-10-12';
EXEC InsertSalesDetails @SaleDetailsID = 208, @SaleNo = 457, @OrderNo = 435, @Quantity = 22, @TypeSizeID = 191, @SaleDate = '2023-10-12';
EXEC InsertSalesDetails @SaleDetailsID = 209, @SaleNo = 452, @OrderNo = 310, @Quantity = 11, @TypeSizeID = 485, @SaleDate = '2023-10-12';
EXEC InsertSalesDetails @SaleDetailsID = 210, @SaleNo = 144, @OrderNo = 381, @Quantity = 36, @TypeSizeID = 334, @SaleDate = '2023-10-12';
EXEC InsertSalesDetails @SaleDetailsID = 211, @SaleNo = 339, @OrderNo = 44, @Quantity = 38, @TypeSizeID = 72, @SaleDate = '2023-10-13';
EXEC InsertSalesDetails @SaleDetailsID = 212, @SaleNo = 193, @OrderNo = 389, @Quantity = 37, @TypeSizeID = 402, @SaleDate = '2023-10-13';
EXEC InsertSalesDetails @SaleDetailsID = 213, @SaleNo = 429, @OrderNo = 368, @Quantity = 43, @TypeSizeID = 402, @SaleDate = '2023-10-13';
EXEC InsertSalesDetails @SaleDetailsID = 214, @SaleNo = 199, @OrderNo = 220, @Quantity = 8, @TypeSizeID = 401, @SaleDate = '2023-10-13';
EXEC InsertSalesDetails @SaleDetailsID = 215, @SaleNo = 312, @OrderNo = 191, @Quantity = 20, @TypeSizeID = 138, @SaleDate = '2023-10-13';
EXEC InsertSalesDetails @SaleDetailsID = 216, @SaleNo = 382, @OrderNo = 235, @Quantity = 6, @TypeSizeID = 173, @SaleDate = '2023-10-14';
EXEC InsertSalesDetails @SaleDetailsID = 217, @SaleNo = 666, @OrderNo = 7, @Quantity = 45, @TypeSizeID = 171, @SaleDate = '2023-10-14';
EXEC InsertSalesDetails @SaleDetailsID = 218, @SaleNo = 210, @OrderNo = 34, @Quantity = 42, @TypeSizeID = 132, @SaleDate = '2023-10-14';
EXEC InsertSalesDetails @SaleDetailsID = 219, @SaleNo = 543, @OrderNo = 123, @Quantity = 3, @TypeSizeID = 280, @SaleDate = '2023-10-14';
EXEC InsertSalesDetails @SaleDetailsID = 220, @SaleNo = 6, @OrderNo = 14, @Quantity = 6, @TypeSizeID = 255, @SaleDate = '2023-10-14';
EXEC InsertSalesDetails @SaleDetailsID = 221, @SaleNo = 403, @OrderNo = 144, @Quantity = 26, @TypeSizeID = 500, @SaleDate = '2023-10-15';
EXEC InsertSalesDetails @SaleDetailsID = 222, @SaleNo = 267, @OrderNo = 408, @Quantity = 18, @TypeSizeID = 168, @SaleDate = '2023-10-15';
EXEC InsertSalesDetails @SaleDetailsID = 223, @SaleNo = 456, @OrderNo = 423, @Quantity = 27, @TypeSizeID = 284, @SaleDate = '2023-10-15';
EXEC InsertSalesDetails @SaleDetailsID = 224, @SaleNo = 689, @OrderNo = 42, @Quantity = 28, @TypeSizeID = 84, @SaleDate = '2023-10-15';
EXEC InsertSalesDetails @SaleDetailsID = 225, @SaleNo = 696, @OrderNo = 257, @Quantity = 9, @TypeSizeID = 67, @SaleDate = '2023-10-15';
EXEC InsertSalesDetails @SaleDetailsID = 226, @SaleNo = 236, @OrderNo = 427, @Quantity = 41, @TypeSizeID = 431, @SaleDate = '2023-10-16';
EXEC InsertSalesDetails @SaleDetailsID = 227, @SaleNo = 94, @OrderNo = 225, @Quantity = 33, @TypeSizeID = 219, @SaleDate = '2023-10-16';
EXEC InsertSalesDetails @SaleDetailsID = 228, @SaleNo = 193, @OrderNo = 177, @Quantity = 34, @TypeSizeID = 212, @SaleDate = '2023-10-16';
EXEC InsertSalesDetails @SaleDetailsID = 229, @SaleNo = 241, @OrderNo = 449, @Quantity = 16, @TypeSizeID = 112, @SaleDate = '2023-10-16';
EXEC InsertSalesDetails @SaleDetailsID = 230, @SaleNo = 1, @OrderNo = 472, @Quantity = 37, @TypeSizeID = 260, @SaleDate = '2023-10-16';
EXEC InsertSalesDetails @SaleDetailsID = 231, @SaleNo = 668, @OrderNo = 385, @Quantity = 9, @TypeSizeID = 168, @SaleDate = '2023-10-17';
EXEC InsertSalesDetails @SaleDetailsID = 232, @SaleNo = 71, @OrderNo = 172, @Quantity = 50, @TypeSizeID = 255, @SaleDate = '2023-10-17';
EXEC InsertSalesDetails @SaleDetailsID = 233, @SaleNo = 25, @OrderNo = 368, @Quantity = 30, @TypeSizeID = 142, @SaleDate = '2023-10-17';
EXEC InsertSalesDetails @SaleDetailsID = 234, @SaleNo = 350, @OrderNo = 32, @Quantity = 3, @TypeSizeID = 144, @SaleDate = '2023-10-17';
EXEC InsertSalesDetails @SaleDetailsID = 235, @SaleNo = 544, @OrderNo = 198, @Quantity = 10, @TypeSizeID = 130, @SaleDate = '2023-10-17';
EXEC InsertSalesDetails @SaleDetailsID = 236, @SaleNo = 605, @OrderNo = 257, @Quantity = 25, @TypeSizeID = 36, @SaleDate = '2023-10-18';
EXEC InsertSalesDetails @SaleDetailsID = 237, @SaleNo = 244, @OrderNo = 398, @Quantity = 36, @TypeSizeID = 101, @SaleDate = '2023-10-18';
EXEC InsertSalesDetails @SaleDetailsID = 238, @SaleNo = 116, @OrderNo = 313, @Quantity = 17, @TypeSizeID = 199, @SaleDate = '2023-10-18';
EXEC InsertSalesDetails @SaleDetailsID = 239, @SaleNo = 170, @OrderNo = 209, @Quantity = 40, @TypeSizeID = 41, @SaleDate = '2023-10-18';
EXEC InsertSalesDetails @SaleDetailsID = 240, @SaleNo = 63, @OrderNo = 193, @Quantity = 5, @TypeSizeID = 457, @SaleDate = '2023-10-18';
EXEC InsertSalesDetails @SaleDetailsID = 241, @SaleNo = 34, @OrderNo = 435, @Quantity = 40, @TypeSizeID = 479, @SaleDate = '2023-10-19';
EXEC InsertSalesDetails @SaleDetailsID = 242, @SaleNo = 140, @OrderNo = 95, @Quantity = 21, @TypeSizeID = 210, @SaleDate = '2023-10-19';
EXEC InsertSalesDetails @SaleDetailsID = 243, @SaleNo = 182, @OrderNo = 237, @Quantity = 1, @TypeSizeID = 453, @SaleDate = '2023-10-19';
EXEC InsertSalesDetails @SaleDetailsID = 244, @SaleNo = 453, @OrderNo = 500, @Quantity = 46, @TypeSizeID = 202, @SaleDate = '2023-10-19';
EXEC InsertSalesDetails @SaleDetailsID = 245, @SaleNo = 224, @OrderNo = 361, @Quantity = 11, @TypeSizeID = 126, @SaleDate = '2023-10-19';
EXEC InsertSalesDetails @SaleDetailsID = 246, @SaleNo = 186, @OrderNo = 131, @Quantity = 6, @TypeSizeID = 33, @SaleDate = '2023-10-20';
EXEC InsertSalesDetails @SaleDetailsID = 247, @SaleNo = 30, @OrderNo = 182, @Quantity = 3, @TypeSizeID = 355, @SaleDate = '2023-10-20';
EXEC InsertSalesDetails @SaleDetailsID = 248, @SaleNo = 557, @OrderNo = 61, @Quantity = 26, @TypeSizeID = 337, @SaleDate = '2023-10-20';
EXEC InsertSalesDetails @SaleDetailsID = 249, @SaleNo = 63, @OrderNo = 392, @Quantity = 20, @TypeSizeID = 293, @SaleDate = '2023-10-20';
EXEC InsertSalesDetails @SaleDetailsID = 250, @SaleNo = 418, @OrderNo = 224, @Quantity = 28, @TypeSizeID = 264, @SaleDate = '2023-10-20';
EXEC InsertSalesDetails @SaleDetailsID = 251, @SaleNo = 536, @OrderNo = 128, @Quantity = 25, @TypeSizeID = 92, @SaleDate = '2023-10-21';
EXEC InsertSalesDetails @SaleDetailsID = 252, @SaleNo = 229, @OrderNo = 59, @Quantity = 15, @TypeSizeID = 259, @SaleDate = '2023-10-21';
EXEC InsertSalesDetails @SaleDetailsID = 253, @SaleNo = 631, @OrderNo = 275, @Quantity = 16, @TypeSizeID = 98, @SaleDate = '2023-10-21';
EXEC InsertSalesDetails @SaleDetailsID = 254, @SaleNo = 579, @OrderNo = 289, @Quantity = 28, @TypeSizeID = 249, @SaleDate = '2023-10-21';
EXEC InsertSalesDetails @SaleDetailsID = 255, @SaleNo = 535, @OrderNo = 494, @Quantity = 3, @TypeSizeID = 390, @SaleDate = '2023-10-21';
EXEC InsertSalesDetails @SaleDetailsID = 256, @SaleNo = 114, @OrderNo = 296, @Quantity = 15, @TypeSizeID = 359, @SaleDate = '2023-10-22';
EXEC InsertSalesDetails @SaleDetailsID = 257, @SaleNo = 87, @OrderNo = 125, @Quantity = 45, @TypeSizeID = 107, @SaleDate = '2023-10-22';
EXEC InsertSalesDetails @SaleDetailsID = 258, @SaleNo = 513, @OrderNo = 197, @Quantity = 32, @TypeSizeID = 341, @SaleDate = '2023-10-22';
EXEC InsertSalesDetails @SaleDetailsID = 259, @SaleNo = 442, @OrderNo = 444, @Quantity = 43, @TypeSizeID = 33, @SaleDate = '2023-10-22';
EXEC InsertSalesDetails @SaleDetailsID = 260, @SaleNo = 182, @OrderNo = 369, @Quantity = 9, @TypeSizeID = 308, @SaleDate = '2023-10-22';
EXEC InsertSalesDetails @SaleDetailsID = 261, @SaleNo = 65, @OrderNo = 106, @Quantity = 8, @TypeSizeID = 1, @SaleDate = '2023-10-23';
EXEC InsertSalesDetails @SaleDetailsID = 262, @SaleNo = 484, @OrderNo = 32, @Quantity = 10, @TypeSizeID = 180, @SaleDate = '2023-10-23';
EXEC InsertSalesDetails @SaleDetailsID = 263, @SaleNo = 354, @OrderNo = 353, @Quantity = 3, @TypeSizeID = 110, @SaleDate = '2023-10-23';
EXEC InsertSalesDetails @SaleDetailsID = 264, @SaleNo = 405, @OrderNo = 289, @Quantity = 42, @TypeSizeID = 297, @SaleDate = '2023-10-23';
EXEC InsertSalesDetails @SaleDetailsID = 265, @SaleNo = 201, @OrderNo = 383, @Quantity = 7, @TypeSizeID = 399, @SaleDate = '2023-10-23';
EXEC InsertSalesDetails @SaleDetailsID = 266, @SaleNo = 298, @OrderNo = 76, @Quantity = 42, @TypeSizeID = 329, @SaleDate = '2023-10-24';
EXEC InsertSalesDetails @SaleDetailsID = 267, @SaleNo = 606, @OrderNo = 457, @Quantity = 38, @TypeSizeID = 314, @SaleDate = '2023-10-24';
EXEC InsertSalesDetails @SaleDetailsID = 268, @SaleNo = 458, @OrderNo = 223, @Quantity = 36, @TypeSizeID = 329, @SaleDate = '2023-10-24';
EXEC InsertSalesDetails @SaleDetailsID = 269, @SaleNo = 675, @OrderNo = 331, @Quantity = 42, @TypeSizeID = 63, @SaleDate = '2023-10-24';
EXEC InsertSalesDetails @SaleDetailsID = 270, @SaleNo = 3, @OrderNo = 8, @Quantity = 2, @TypeSizeID = 307, @SaleDate = '2023-10-24';
EXEC InsertSalesDetails @SaleDetailsID = 271, @SaleNo = 365, @OrderNo = 352, @Quantity = 45, @TypeSizeID = 393, @SaleDate = '2023-10-25';
EXEC InsertSalesDetails @SaleDetailsID = 272, @SaleNo = 700, @OrderNo = 363, @Quantity = 37, @TypeSizeID = 443, @SaleDate = '2023-10-25';
EXEC InsertSalesDetails @SaleDetailsID = 273, @SaleNo = 300, @OrderNo = 413, @Quantity = 45, @TypeSizeID = 357, @SaleDate = '2023-10-25';
EXEC InsertSalesDetails @SaleDetailsID = 274, @SaleNo = 604, @OrderNo = 253, @Quantity = 14, @TypeSizeID = 185, @SaleDate = '2023-10-25';
EXEC InsertSalesDetails @SaleDetailsID = 275, @SaleNo = 99, @OrderNo = 260, @Quantity = 14, @TypeSizeID = 129, @SaleDate = '2023-10-25';
EXEC InsertSalesDetails @SaleDetailsID = 276, @SaleNo = 303, @OrderNo = 90, @Quantity = 4, @TypeSizeID = 171, @SaleDate = '2023-10-26';
EXEC InsertSalesDetails @SaleDetailsID = 277, @SaleNo = 8, @OrderNo = 155, @Quantity = 44, @TypeSizeID = 383, @SaleDate = '2023-10-26';
EXEC InsertSalesDetails @SaleDetailsID = 278, @SaleNo = 590, @OrderNo = 177, @Quantity = 8, @TypeSizeID = 356, @SaleDate = '2023-10-26';
EXEC InsertSalesDetails @SaleDetailsID = 279, @SaleNo = 182, @OrderNo = 281, @Quantity = 47, @TypeSizeID = 57, @SaleDate = '2023-10-26';
EXEC InsertSalesDetails @SaleDetailsID = 280, @SaleNo = 455, @OrderNo = 391, @Quantity = 47, @TypeSizeID = 359, @SaleDate = '2023-10-26';
EXEC InsertSalesDetails @SaleDetailsID = 281, @SaleNo = 269, @OrderNo = 289, @Quantity = 44, @TypeSizeID = 292, @SaleDate = '2023-10-27';
EXEC InsertSalesDetails @SaleDetailsID = 282, @SaleNo = 267, @OrderNo = 32, @Quantity = 31, @TypeSizeID = 11, @SaleDate = '2023-10-27';
EXEC InsertSalesDetails @SaleDetailsID = 283, @SaleNo = 79, @OrderNo = 258, @Quantity = 46, @TypeSizeID = 250, @SaleDate = '2023-10-27';
EXEC InsertSalesDetails @SaleDetailsID = 284, @SaleNo = 412, @OrderNo = 388, @Quantity = 25, @TypeSizeID = 234, @SaleDate = '2023-10-27';
EXEC InsertSalesDetails @SaleDetailsID = 285, @SaleNo = 86, @OrderNo = 487, @Quantity = 39, @TypeSizeID = 107, @SaleDate = '2023-10-27';
EXEC InsertSalesDetails @SaleDetailsID = 286, @SaleNo = 542, @OrderNo = 372, @Quantity = 34, @TypeSizeID = 136, @SaleDate = '2023-10-28';
EXEC InsertSalesDetails @SaleDetailsID = 287, @SaleNo = 482, @OrderNo = 296, @Quantity = 25, @TypeSizeID = 84, @SaleDate = '2023-10-28';
EXEC InsertSalesDetails @SaleDetailsID = 288, @SaleNo = 627, @OrderNo = 412, @Quantity = 28, @TypeSizeID = 247, @SaleDate = '2023-10-28';
EXEC InsertSalesDetails @SaleDetailsID = 289, @SaleNo = 550, @OrderNo = 116, @Quantity = 47, @TypeSizeID = 145, @SaleDate = '2023-10-28';
EXEC InsertSalesDetails @SaleDetailsID = 290, @SaleNo = 168, @OrderNo = 314, @Quantity = 16, @TypeSizeID = 158, @SaleDate = '2023-10-28';
EXEC InsertSalesDetails @SaleDetailsID = 291, @SaleNo = 55, @OrderNo = 448, @Quantity = 9, @TypeSizeID = 336, @SaleDate = '2023-10-29';
EXEC InsertSalesDetails @SaleDetailsID = 292, @SaleNo = 104, @OrderNo = 337, @Quantity = 43, @TypeSizeID = 485, @SaleDate = '2023-10-29';
EXEC InsertSalesDetails @SaleDetailsID = 293, @SaleNo = 211, @OrderNo = 478, @Quantity = 5, @TypeSizeID = 487, @SaleDate = '2023-10-29';
EXEC InsertSalesDetails @SaleDetailsID = 294, @SaleNo = 176, @OrderNo = 244, @Quantity = 40, @TypeSizeID = 353, @SaleDate = '2023-10-29';
EXEC InsertSalesDetails @SaleDetailsID = 295, @SaleNo = 430, @OrderNo = 29, @Quantity = 16, @TypeSizeID = 463, @SaleDate = '2023-10-29';
EXEC InsertSalesDetails @SaleDetailsID = 296, @SaleNo = 54, @OrderNo = 499, @Quantity = 22, @TypeSizeID = 367, @SaleDate = '2023-10-30';
EXEC InsertSalesDetails @SaleDetailsID = 297, @SaleNo = 29, @OrderNo = 149, @Quantity = 41, @TypeSizeID = 459, @SaleDate = '2023-10-30';
EXEC InsertSalesDetails @SaleDetailsID = 298, @SaleNo = 151, @OrderNo = 148, @Quantity = 23, @TypeSizeID = 491, @SaleDate = '2023-10-30';
EXEC InsertSalesDetails @SaleDetailsID = 299, @SaleNo = 450, @OrderNo = 380, @Quantity = 12, @TypeSizeID = 24, @SaleDate = '2023-10-30';
EXEC InsertSalesDetails @SaleDetailsID = 300, @SaleNo = 51, @OrderNo = 420, @Quantity = 37, @TypeSizeID = 218, @SaleDate = '2023-10-30';
EXEC InsertSalesDetails @SaleDetailsID = 301, @SaleNo = 92, @OrderNo = 301, @Quantity = 5, @TypeSizeID = 107, @SaleDate = '2023-10-31';
EXEC InsertSalesDetails @SaleDetailsID = 302, @SaleNo = 6, @OrderNo = 425, @Quantity = 7, @TypeSizeID = 388, @SaleDate = '2023-10-31';
EXEC InsertSalesDetails @SaleDetailsID = 303, @SaleNo = 631, @OrderNo = 151, @Quantity = 9, @TypeSizeID = 367, @SaleDate = '2023-10-31';
EXEC InsertSalesDetails @SaleDetailsID = 304, @SaleNo = 379, @OrderNo = 18, @Quantity = 20, @TypeSizeID = 95, @SaleDate = '2023-10-31';
EXEC InsertSalesDetails @SaleDetailsID = 305, @SaleNo = 445, @OrderNo = 229, @Quantity = 43, @TypeSizeID = 208, @SaleDate = '2023-10-31';
EXEC InsertSalesDetails @SaleDetailsID = 306, @SaleNo = 478, @OrderNo = 27, @Quantity = 41, @TypeSizeID = 365, @SaleDate = '2023-11-01';
EXEC InsertSalesDetails @SaleDetailsID = 307, @SaleNo = 495, @OrderNo = 59, @Quantity = 43, @TypeSizeID = 203, @SaleDate = '2023-11-01';
EXEC InsertSalesDetails @SaleDetailsID = 308, @SaleNo = 632, @OrderNo = 498, @Quantity = 49, @TypeSizeID = 500, @SaleDate = '2023-11-01';
EXEC InsertSalesDetails @SaleDetailsID = 309, @SaleNo = 381, @OrderNo = 378, @Quantity = 36, @TypeSizeID = 482, @SaleDate = '2023-11-01';
EXEC InsertSalesDetails @SaleDetailsID = 310, @SaleNo = 446, @OrderNo = 110, @Quantity = 19, @TypeSizeID = 407, @SaleDate = '2023-11-01';
EXEC InsertSalesDetails @SaleDetailsID = 311, @SaleNo = 373, @OrderNo = 482, @Quantity = 24, @TypeSizeID = 433, @SaleDate = '2023-11-02';
EXEC InsertSalesDetails @SaleDetailsID = 312, @SaleNo = 680, @OrderNo = 77, @Quantity = 16, @TypeSizeID = 312, @SaleDate = '2023-11-02';
EXEC InsertSalesDetails @SaleDetailsID = 313, @SaleNo = 79, @OrderNo = 400, @Quantity = 26, @TypeSizeID = 240, @SaleDate = '2023-11-02';
EXEC InsertSalesDetails @SaleDetailsID = 314, @SaleNo = 193, @OrderNo = 250, @Quantity = 18, @TypeSizeID = 301, @SaleDate = '2023-11-02';
EXEC InsertSalesDetails @SaleDetailsID = 315, @SaleNo = 357, @OrderNo = 328, @Quantity = 48, @TypeSizeID = 276, @SaleDate = '2023-11-02';
EXEC InsertSalesDetails @SaleDetailsID = 316, @SaleNo = 679, @OrderNo = 455, @Quantity = 22, @TypeSizeID = 33, @SaleDate = '2023-11-03';
EXEC InsertSalesDetails @SaleDetailsID = 317, @SaleNo = 611, @OrderNo = 128, @Quantity = 18, @TypeSizeID = 278, @SaleDate = '2023-11-03';
EXEC InsertSalesDetails @SaleDetailsID = 318, @SaleNo = 236, @OrderNo = 89, @Quantity = 22, @TypeSizeID = 499, @SaleDate = '2023-11-03';
EXEC InsertSalesDetails @SaleDetailsID = 319, @SaleNo = 348, @OrderNo = 34, @Quantity = 2, @TypeSizeID = 314, @SaleDate = '2023-11-03';
EXEC InsertSalesDetails @SaleDetailsID = 320, @SaleNo = 341, @OrderNo = 25, @Quantity = 25, @TypeSizeID = 201, @SaleDate = '2023-11-03';
EXEC InsertSalesDetails @SaleDetailsID = 321, @SaleNo = 183, @OrderNo = 210, @Quantity = 18, @TypeSizeID = 491, @SaleDate = '2023-11-04';
EXEC InsertSalesDetails @SaleDetailsID = 322, @SaleNo = 296, @OrderNo = 378, @Quantity = 28, @TypeSizeID = 257, @SaleDate = '2023-11-04';
EXEC InsertSalesDetails @SaleDetailsID = 323, @SaleNo = 181, @OrderNo = 194, @Quantity = 24, @TypeSizeID = 83, @SaleDate = '2023-11-04';
EXEC InsertSalesDetails @SaleDetailsID = 324, @SaleNo = 42, @OrderNo = 259, @Quantity = 28, @TypeSizeID = 314, @SaleDate = '2023-11-04';
EXEC InsertSalesDetails @SaleDetailsID = 325, @SaleNo = 609, @OrderNo = 395, @Quantity = 29, @TypeSizeID = 56, @SaleDate = '2023-11-04';
EXEC InsertSalesDetails @SaleDetailsID = 326, @SaleNo = 35, @OrderNo = 302, @Quantity = 6, @TypeSizeID = 374, @SaleDate = '2023-11-05';
EXEC InsertSalesDetails @SaleDetailsID = 327, @SaleNo = 52, @OrderNo = 274, @Quantity = 46, @TypeSizeID = 181, @SaleDate = '2023-11-05';
EXEC InsertSalesDetails @SaleDetailsID = 328, @SaleNo = 82, @OrderNo = 197, @Quantity = 22, @TypeSizeID = 262, @SaleDate = '2023-11-05';
EXEC InsertSalesDetails @SaleDetailsID = 329, @SaleNo = 184, @OrderNo = 419, @Quantity = 1, @TypeSizeID = 308, @SaleDate = '2023-11-05';
EXEC InsertSalesDetails @SaleDetailsID = 330, @SaleNo = 526, @OrderNo = 75, @Quantity = 41, @TypeSizeID = 344, @SaleDate = '2023-11-05';
EXEC InsertSalesDetails @SaleDetailsID = 331, @SaleNo = 661, @OrderNo = 344, @Quantity = 14, @TypeSizeID = 59, @SaleDate = '2023-11-06';
EXEC InsertSalesDetails @SaleDetailsID = 332, @SaleNo = 376, @OrderNo = 348, @Quantity = 27, @TypeSizeID = 56, @SaleDate = '2023-11-06';
EXEC InsertSalesDetails @SaleDetailsID = 333, @SaleNo = 484, @OrderNo = 447, @Quantity = 8, @TypeSizeID = 75, @SaleDate = '2023-11-06';
EXEC InsertSalesDetails @SaleDetailsID = 334, @SaleNo = 361, @OrderNo = 375, @Quantity = 48, @TypeSizeID = 411, @SaleDate = '2023-11-06';
EXEC InsertSalesDetails @SaleDetailsID = 335, @SaleNo = 389, @OrderNo = 369, @Quantity = 50, @TypeSizeID = 443, @SaleDate = '2023-11-06';
EXEC InsertSalesDetails @SaleDetailsID = 336, @SaleNo = 637, @OrderNo = 456, @Quantity = 19, @TypeSizeID = 147, @SaleDate = '2023-11-07';
EXEC InsertSalesDetails @SaleDetailsID = 337, @SaleNo = 368, @OrderNo = 340, @Quantity = 27, @TypeSizeID = 153, @SaleDate = '2023-11-07';
EXEC InsertSalesDetails @SaleDetailsID = 338, @SaleNo = 143, @OrderNo = 390, @Quantity = 28, @TypeSizeID = 446, @SaleDate = '2023-11-07';
EXEC InsertSalesDetails @SaleDetailsID = 339, @SaleNo = 463, @OrderNo = 387, @Quantity = 4, @TypeSizeID = 218, @SaleDate = '2023-11-07';
EXEC InsertSalesDetails @SaleDetailsID = 340, @SaleNo = 35, @OrderNo = 494, @Quantity = 4, @TypeSizeID = 19, @SaleDate = '2023-11-07';
EXEC InsertSalesDetails @SaleDetailsID = 341, @SaleNo = 679, @OrderNo = 448, @Quantity = 21, @TypeSizeID = 338, @SaleDate = '2023-11-08';
EXEC InsertSalesDetails @SaleDetailsID = 342, @SaleNo = 187, @OrderNo = 116, @Quantity = 46, @TypeSizeID = 199, @SaleDate = '2023-11-08';
EXEC InsertSalesDetails @SaleDetailsID = 343, @SaleNo = 493, @OrderNo = 362, @Quantity = 27, @TypeSizeID = 343, @SaleDate = '2023-11-08';
EXEC InsertSalesDetails @SaleDetailsID = 344, @SaleNo = 41, @OrderNo = 67, @Quantity = 1, @TypeSizeID = 500, @SaleDate = '2023-11-08';
EXEC InsertSalesDetails @SaleDetailsID = 345, @SaleNo = 243, @OrderNo = 498, @Quantity = 34, @TypeSizeID = 75, @SaleDate = '2023-11-08';
EXEC InsertSalesDetails @SaleDetailsID = 346, @SaleNo = 659, @OrderNo = 402, @Quantity = 20, @TypeSizeID = 376, @SaleDate = '2023-11-09';
EXEC InsertSalesDetails @SaleDetailsID = 347, @SaleNo = 675, @OrderNo = 246, @Quantity = 32, @TypeSizeID = 417, @SaleDate = '2023-11-09';
EXEC InsertSalesDetails @SaleDetailsID = 348, @SaleNo = 643, @OrderNo = 140, @Quantity = 30, @TypeSizeID = 472, @SaleDate = '2023-11-09';
EXEC InsertSalesDetails @SaleDetailsID = 349, @SaleNo = 151, @OrderNo = 447, @Quantity = 45, @TypeSizeID = 441, @SaleDate = '2023-11-09';
EXEC InsertSalesDetails @SaleDetailsID = 350, @SaleNo = 189, @OrderNo = 227, @Quantity = 38, @TypeSizeID = 264, @SaleDate = '2023-11-09';
EXEC InsertSalesDetails @SaleDetailsID = 351, @SaleNo = 355, @OrderNo = 232, @Quantity = 50, @TypeSizeID = 235, @SaleDate = '2023-11-10';
EXEC InsertSalesDetails @SaleDetailsID = 352, @SaleNo = 677, @OrderNo = 289, @Quantity = 18, @TypeSizeID = 47, @SaleDate = '2023-11-10';
EXEC InsertSalesDetails @SaleDetailsID = 353, @SaleNo = 287, @OrderNo = 89, @Quantity = 21, @TypeSizeID = 260, @SaleDate = '2023-11-10';
EXEC InsertSalesDetails @SaleDetailsID = 354, @SaleNo = 480, @OrderNo = 196, @Quantity = 43, @TypeSizeID = 378, @SaleDate = '2023-11-10';
EXEC InsertSalesDetails @SaleDetailsID = 355, @SaleNo = 649, @OrderNo = 371, @Quantity = 9, @TypeSizeID = 315, @SaleDate = '2023-11-10';
EXEC InsertSalesDetails @SaleDetailsID = 356, @SaleNo = 671, @OrderNo = 230, @Quantity = 2, @TypeSizeID = 172, @SaleDate = '2023-11-11';
EXEC InsertSalesDetails @SaleDetailsID = 357, @SaleNo = 107, @OrderNo = 445, @Quantity = 32, @TypeSizeID = 468, @SaleDate = '2023-11-11';
EXEC InsertSalesDetails @SaleDetailsID = 358, @SaleNo = 282, @OrderNo = 89, @Quantity = 26, @TypeSizeID = 124, @SaleDate = '2023-11-11';
EXEC InsertSalesDetails @SaleDetailsID = 359, @SaleNo = 261, @OrderNo = 151, @Quantity = 27, @TypeSizeID = 307, @SaleDate = '2023-11-11';
EXEC InsertSalesDetails @SaleDetailsID = 360, @SaleNo = 321, @OrderNo = 247, @Quantity = 11, @TypeSizeID = 1, @SaleDate = '2023-11-11';
EXEC InsertSalesDetails @SaleDetailsID = 361, @SaleNo = 96, @OrderNo = 343, @Quantity = 32, @TypeSizeID = 309, @SaleDate = '2023-11-12';
EXEC InsertSalesDetails @SaleDetailsID = 362, @SaleNo = 354, @OrderNo = 357, @Quantity = 35, @TypeSizeID = 282, @SaleDate = '2023-11-12';
EXEC InsertSalesDetails @SaleDetailsID = 363, @SaleNo = 437, @OrderNo = 100, @Quantity = 32, @TypeSizeID = 448, @SaleDate = '2023-11-12';
EXEC InsertSalesDetails @SaleDetailsID = 364, @SaleNo = 174, @OrderNo = 142, @Quantity = 8, @TypeSizeID = 190, @SaleDate = '2023-11-12';
EXEC InsertSalesDetails @SaleDetailsID = 365, @SaleNo = 290, @OrderNo = 406, @Quantity = 16, @TypeSizeID = 108, @SaleDate = '2023-11-12';
EXEC InsertSalesDetails @SaleDetailsID = 366, @SaleNo = 426, @OrderNo = 218, @Quantity = 50, @TypeSizeID = 487, @SaleDate = '2023-11-13';
EXEC InsertSalesDetails @SaleDetailsID = 367, @SaleNo = 121, @OrderNo = 18, @Quantity = 24, @TypeSizeID = 383, @SaleDate = '2023-11-13';
EXEC InsertSalesDetails @SaleDetailsID = 368, @SaleNo = 558, @OrderNo = 92, @Quantity = 34, @TypeSizeID = 22, @SaleDate = '2023-11-13';
EXEC InsertSalesDetails @SaleDetailsID = 369, @SaleNo = 563, @OrderNo = 344, @Quantity = 1, @TypeSizeID = 319, @SaleDate = '2023-11-13';
EXEC InsertSalesDetails @SaleDetailsID = 370, @SaleNo = 362, @OrderNo = 420, @Quantity = 43, @TypeSizeID = 389, @SaleDate = '2023-11-13';
EXEC InsertSalesDetails @SaleDetailsID = 371, @SaleNo = 252, @OrderNo = 263, @Quantity = 1, @TypeSizeID = 451, @SaleDate = '2023-11-14';
EXEC InsertSalesDetails @SaleDetailsID = 372, @SaleNo = 163, @OrderNo = 419, @Quantity = 37, @TypeSizeID = 166, @SaleDate = '2023-11-14';
EXEC InsertSalesDetails @SaleDetailsID = 373, @SaleNo = 202, @OrderNo = 78, @Quantity = 23, @TypeSizeID = 12, @SaleDate = '2023-11-14';
EXEC InsertSalesDetails @SaleDetailsID = 374, @SaleNo = 611, @OrderNo = 42, @Quantity = 30, @TypeSizeID = 34, @SaleDate = '2023-11-14';
EXEC InsertSalesDetails @SaleDetailsID = 375, @SaleNo = 686, @OrderNo = 30, @Quantity = 36, @TypeSizeID = 345, @SaleDate = '2023-11-14';
EXEC InsertSalesDetails @SaleDetailsID = 376, @SaleNo = 482, @OrderNo = 323, @Quantity = 9, @TypeSizeID = 425, @SaleDate = '2023-11-15';
EXEC InsertSalesDetails @SaleDetailsID = 377, @SaleNo = 184, @OrderNo = 472, @Quantity = 25, @TypeSizeID = 498, @SaleDate = '2023-11-15';
EXEC InsertSalesDetails @SaleDetailsID = 378, @SaleNo = 405, @OrderNo = 375, @Quantity = 50, @TypeSizeID = 46, @SaleDate = '2023-11-15';
EXEC InsertSalesDetails @SaleDetailsID = 379, @SaleNo = 136, @OrderNo = 487, @Quantity = 36, @TypeSizeID = 458, @SaleDate = '2023-11-15';
EXEC InsertSalesDetails @SaleDetailsID = 380, @SaleNo = 447, @OrderNo = 10, @Quantity = 34, @TypeSizeID = 126, @SaleDate = '2023-11-15';
EXEC InsertSalesDetails @SaleDetailsID = 381, @SaleNo = 149, @OrderNo = 39, @Quantity = 15, @TypeSizeID = 105, @SaleDate = '2023-11-16';
EXEC InsertSalesDetails @SaleDetailsID = 382, @SaleNo = 312, @OrderNo = 384, @Quantity = 40, @TypeSizeID = 442, @SaleDate = '2023-11-16';
EXEC InsertSalesDetails @SaleDetailsID = 383, @SaleNo = 188, @OrderNo = 265, @Quantity = 17, @TypeSizeID = 348, @SaleDate = '2023-11-16';
EXEC InsertSalesDetails @SaleDetailsID = 384, @SaleNo = 658, @OrderNo = 209, @Quantity = 24, @TypeSizeID = 97, @SaleDate = '2023-11-16';
EXEC InsertSalesDetails @SaleDetailsID = 385, @SaleNo = 547, @OrderNo = 469, @Quantity = 39, @TypeSizeID = 455, @SaleDate = '2023-11-16';
EXEC InsertSalesDetails @SaleDetailsID = 386, @SaleNo = 319, @OrderNo = 380, @Quantity = 17, @TypeSizeID = 151, @SaleDate = '2023-11-17';
EXEC InsertSalesDetails @SaleDetailsID = 387, @SaleNo = 238, @OrderNo = 169, @Quantity = 15, @TypeSizeID = 295, @SaleDate = '2023-11-17';
EXEC InsertSalesDetails @SaleDetailsID = 388, @SaleNo = 408, @OrderNo = 448, @Quantity = 23, @TypeSizeID = 422, @SaleDate = '2023-11-17';
EXEC InsertSalesDetails @SaleDetailsID = 389, @SaleNo = 455, @OrderNo = 221, @Quantity = 34, @TypeSizeID = 312, @SaleDate = '2023-11-17';
EXEC InsertSalesDetails @SaleDetailsID = 390, @SaleNo = 451, @OrderNo = 95, @Quantity = 28, @TypeSizeID = 246, @SaleDate = '2023-11-17';
EXEC InsertSalesDetails @SaleDetailsID = 391, @SaleNo = 15, @OrderNo = 258, @Quantity = 49, @TypeSizeID = 79, @SaleDate = '2023-11-18';
EXEC InsertSalesDetails @SaleDetailsID = 392, @SaleNo = 584, @OrderNo = 200, @Quantity = 18, @TypeSizeID = 489, @SaleDate = '2023-11-18';
EXEC InsertSalesDetails @SaleDetailsID = 393, @SaleNo = 593, @OrderNo = 268, @Quantity = 46, @TypeSizeID = 416, @SaleDate = '2023-11-18';
EXEC InsertSalesDetails @SaleDetailsID = 394, @SaleNo = 404, @OrderNo = 500, @Quantity = 37, @TypeSizeID = 332, @SaleDate = '2023-11-18';
EXEC InsertSalesDetails @SaleDetailsID = 395, @SaleNo = 263, @OrderNo = 303, @Quantity = 35, @TypeSizeID = 182, @SaleDate = '2023-11-18';
EXEC InsertSalesDetails @SaleDetailsID = 396, @SaleNo = 164, @OrderNo = 458, @Quantity = 26, @TypeSizeID = 490, @SaleDate = '2023-11-19';
EXEC InsertSalesDetails @SaleDetailsID = 397, @SaleNo = 524, @OrderNo = 203, @Quantity = 1, @TypeSizeID = 382, @SaleDate = '2023-11-19';
EXEC InsertSalesDetails @SaleDetailsID = 398, @SaleNo = 411, @OrderNo = 455, @Quantity = 28, @TypeSizeID = 96, @SaleDate = '2023-11-19';
EXEC InsertSalesDetails @SaleDetailsID = 399, @SaleNo = 325, @OrderNo = 432, @Quantity = 41, @TypeSizeID = 134, @SaleDate = '2023-11-19';
EXEC InsertSalesDetails @SaleDetailsID = 400, @SaleNo = 222, @OrderNo = 118, @Quantity = 38, @TypeSizeID = 256, @SaleDate = '2023-11-19';
EXEC InsertSalesDetails @SaleDetailsID = 401, @SaleNo = 287, @OrderNo = 30, @Quantity = 47, @TypeSizeID = 8, @SaleDate = '2023-11-20';
EXEC InsertSalesDetails @SaleDetailsID = 402, @SaleNo = 517, @OrderNo = 329, @Quantity = 38, @TypeSizeID = 463, @SaleDate = '2023-11-20';
EXEC InsertSalesDetails @SaleDetailsID = 403, @SaleNo = 556, @OrderNo = 342, @Quantity = 45, @TypeSizeID = 344, @SaleDate = '2023-11-20';
EXEC InsertSalesDetails @SaleDetailsID = 404, @SaleNo = 652, @OrderNo = 218, @Quantity = 29, @TypeSizeID = 421, @SaleDate = '2023-11-20';
EXEC InsertSalesDetails @SaleDetailsID = 405, @SaleNo = 512, @OrderNo = 272, @Quantity = 35, @TypeSizeID = 376, @SaleDate = '2023-11-20';
EXEC InsertSalesDetails @SaleDetailsID = 406, @SaleNo = 88, @OrderNo = 4, @Quantity = 12, @TypeSizeID = 34, @SaleDate = '2023-11-21';
EXEC InsertSalesDetails @SaleDetailsID = 407, @SaleNo = 577, @OrderNo = 309, @Quantity = 49, @TypeSizeID = 210, @SaleDate = '2023-11-21';
EXEC InsertSalesDetails @SaleDetailsID = 408, @SaleNo = 365, @OrderNo = 430, @Quantity = 4, @TypeSizeID = 251, @SaleDate = '2023-11-21';
EXEC InsertSalesDetails @SaleDetailsID = 409, @SaleNo = 123, @OrderNo = 49, @Quantity = 23, @TypeSizeID = 124, @SaleDate = '2023-11-21';
EXEC InsertSalesDetails @SaleDetailsID = 410, @SaleNo = 674, @OrderNo = 197, @Quantity = 46, @TypeSizeID = 381, @SaleDate = '2023-11-21';
EXEC InsertSalesDetails @SaleDetailsID = 411, @SaleNo = 684, @OrderNo = 492, @Quantity = 49, @TypeSizeID = 278, @SaleDate = '2023-11-22';
EXEC InsertSalesDetails @SaleDetailsID = 412, @SaleNo = 192, @OrderNo = 20, @Quantity = 3, @TypeSizeID = 298, @SaleDate = '2023-11-22';
EXEC InsertSalesDetails @SaleDetailsID = 413, @SaleNo = 368, @OrderNo = 498, @Quantity = 11, @TypeSizeID = 216, @SaleDate = '2023-11-22';
EXEC InsertSalesDetails @SaleDetailsID = 414, @SaleNo = 320, @OrderNo = 43, @Quantity = 43, @TypeSizeID = 37, @SaleDate = '2023-11-22';
EXEC InsertSalesDetails @SaleDetailsID = 415, @SaleNo = 100, @OrderNo = 488, @Quantity = 47, @TypeSizeID = 439, @SaleDate = '2023-11-22';
EXEC InsertSalesDetails @SaleDetailsID = 416, @SaleNo = 14, @OrderNo = 381, @Quantity = 44, @TypeSizeID = 76, @SaleDate = '2023-11-23';
EXEC InsertSalesDetails @SaleDetailsID = 417, @SaleNo = 682, @OrderNo = 103, @Quantity = 39, @TypeSizeID = 486, @SaleDate = '2023-11-23';
EXEC InsertSalesDetails @SaleDetailsID = 418, @SaleNo = 86, @OrderNo = 101, @Quantity = 25, @TypeSizeID = 108, @SaleDate = '2023-11-23';
EXEC InsertSalesDetails @SaleDetailsID = 419, @SaleNo = 617, @OrderNo = 482, @Quantity = 16, @TypeSizeID = 183, @SaleDate = '2023-11-23';
EXEC InsertSalesDetails @SaleDetailsID = 420, @SaleNo = 380, @OrderNo = 362, @Quantity = 34, @TypeSizeID = 322, @SaleDate = '2023-11-23';
EXEC InsertSalesDetails @SaleDetailsID = 421, @SaleNo = 529, @OrderNo = 283, @Quantity = 6, @TypeSizeID = 254, @SaleDate = '2023-11-24';
EXEC InsertSalesDetails @SaleDetailsID = 422, @SaleNo = 518, @OrderNo = 196, @Quantity = 28, @TypeSizeID = 177, @SaleDate = '2023-11-24';
EXEC InsertSalesDetails @SaleDetailsID = 423, @SaleNo = 558, @OrderNo = 165, @Quantity = 29, @TypeSizeID = 268, @SaleDate = '2023-11-24';
EXEC InsertSalesDetails @SaleDetailsID = 424, @SaleNo = 15, @OrderNo = 403, @Quantity = 20, @TypeSizeID = 343, @SaleDate = '2023-11-24';
EXEC InsertSalesDetails @SaleDetailsID = 425, @SaleNo = 685, @OrderNo = 278, @Quantity = 1, @TypeSizeID = 191, @SaleDate = '2023-11-24';
EXEC InsertSalesDetails @SaleDetailsID = 426, @SaleNo = 177, @OrderNo = 374, @Quantity = 36, @TypeSizeID = 329, @SaleDate = '2023-11-25';
EXEC InsertSalesDetails @SaleDetailsID = 427, @SaleNo = 270, @OrderNo = 443, @Quantity = 30, @TypeSizeID = 206, @SaleDate = '2023-11-25';
EXEC InsertSalesDetails @SaleDetailsID = 428, @SaleNo = 143, @OrderNo = 417, @Quantity = 21, @TypeSizeID = 82, @SaleDate = '2023-11-25';
EXEC InsertSalesDetails @SaleDetailsID = 429, @SaleNo = 597, @OrderNo = 195, @Quantity = 23, @TypeSizeID = 77, @SaleDate = '2023-11-25';
EXEC InsertSalesDetails @SaleDetailsID = 430, @SaleNo = 124, @OrderNo = 20, @Quantity = 23, @TypeSizeID = 211, @SaleDate = '2023-11-25';
EXEC InsertSalesDetails @SaleDetailsID = 431, @SaleNo = 670, @OrderNo = 248, @Quantity = 20, @TypeSizeID = 207, @SaleDate = '2023-11-26';
EXEC InsertSalesDetails @SaleDetailsID = 432, @SaleNo = 618, @OrderNo = 192, @Quantity = 7, @TypeSizeID = 373, @SaleDate = '2023-11-26';
EXEC InsertSalesDetails @SaleDetailsID = 433, @SaleNo = 471, @OrderNo = 461, @Quantity = 3, @TypeSizeID = 337, @SaleDate = '2023-11-26';
EXEC InsertSalesDetails @SaleDetailsID = 434, @SaleNo = 618, @OrderNo = 440, @Quantity = 28, @TypeSizeID = 140, @SaleDate = '2023-11-26';
EXEC InsertSalesDetails @SaleDetailsID = 435, @SaleNo = 158, @OrderNo = 213, @Quantity = 35, @TypeSizeID = 127, @SaleDate = '2023-11-26';
EXEC InsertSalesDetails @SaleDetailsID = 436, @SaleNo = 121, @OrderNo = 212, @Quantity = 6, @TypeSizeID = 93, @SaleDate = '2023-11-27';
EXEC InsertSalesDetails @SaleDetailsID = 437, @SaleNo = 558, @OrderNo = 478, @Quantity = 43, @TypeSizeID = 185, @SaleDate = '2023-11-27';
EXEC InsertSalesDetails @SaleDetailsID = 438, @SaleNo = 357, @OrderNo = 114, @Quantity = 28, @TypeSizeID = 322, @SaleDate = '2023-11-27';
EXEC InsertSalesDetails @SaleDetailsID = 439, @SaleNo = 26, @OrderNo = 104, @Quantity = 26, @TypeSizeID = 165, @SaleDate = '2023-11-27';
EXEC InsertSalesDetails @SaleDetailsID = 440, @SaleNo = 499, @OrderNo = 241, @Quantity = 45, @TypeSizeID = 107, @SaleDate = '2023-11-27';
EXEC InsertSalesDetails @SaleDetailsID = 441, @SaleNo = 320, @OrderNo = 226, @Quantity = 43, @TypeSizeID = 412, @SaleDate = '2023-11-28';
EXEC InsertSalesDetails @SaleDetailsID = 442, @SaleNo = 677, @OrderNo = 175, @Quantity = 31, @TypeSizeID = 439, @SaleDate = '2023-11-28';
EXEC InsertSalesDetails @SaleDetailsID = 443, @SaleNo = 640, @OrderNo = 284, @Quantity = 50, @TypeSizeID = 366, @SaleDate = '2023-11-28';
EXEC InsertSalesDetails @SaleDetailsID = 444, @SaleNo = 302, @OrderNo = 57, @Quantity = 30, @TypeSizeID = 74, @SaleDate = '2023-11-28';
EXEC InsertSalesDetails @SaleDetailsID = 445, @SaleNo = 348, @OrderNo = 408, @Quantity = 39, @TypeSizeID = 92, @SaleDate = '2023-11-28';
EXEC InsertSalesDetails @SaleDetailsID = 446, @SaleNo = 486, @OrderNo = 212, @Quantity = 6, @TypeSizeID = 75, @SaleDate = '2023-11-29';
EXEC InsertSalesDetails @SaleDetailsID = 447, @SaleNo = 552, @OrderNo = 396, @Quantity = 30, @TypeSizeID = 218, @SaleDate = '2023-11-29';
EXEC InsertSalesDetails @SaleDetailsID = 448, @SaleNo = 629, @OrderNo = 92, @Quantity = 21, @TypeSizeID = 189, @SaleDate = '2023-11-29';
EXEC InsertSalesDetails @SaleDetailsID = 449, @SaleNo = 446, @OrderNo = 375, @Quantity = 12, @TypeSizeID = 305, @SaleDate = '2023-11-29';
EXEC InsertSalesDetails @SaleDetailsID = 450, @SaleNo = 644, @OrderNo = 312, @Quantity = 6, @TypeSizeID = 332, @SaleDate = '2023-11-29';
EXEC InsertSalesDetails @SaleDetailsID = 451, @SaleNo = 502, @OrderNo = 204, @Quantity = 46, @TypeSizeID = 407, @SaleDate = '2023-11-30';
EXEC InsertSalesDetails @SaleDetailsID = 452, @SaleNo = 415, @OrderNo = 492, @Quantity = 38, @TypeSizeID = 170, @SaleDate = '2023-11-30';
EXEC InsertSalesDetails @SaleDetailsID = 453, @SaleNo = 367, @OrderNo = 386, @Quantity = 4, @TypeSizeID = 448, @SaleDate = '2023-11-30';
EXEC InsertSalesDetails @SaleDetailsID = 454, @SaleNo = 426, @OrderNo = 335, @Quantity = 28, @TypeSizeID = 30, @SaleDate = '2023-11-30';
EXEC InsertSalesDetails @SaleDetailsID = 455, @SaleNo = 283, @OrderNo = 232, @Quantity = 42, @TypeSizeID = 331, @SaleDate = '2023-11-30';
EXEC InsertSalesDetails @SaleDetailsID = 456, @SaleNo = 279, @OrderNo = 93, @Quantity = 9, @TypeSizeID = 241, @SaleDate = '2023-12-01';
EXEC InsertSalesDetails @SaleDetailsID = 457, @SaleNo = 149, @OrderNo = 265, @Quantity = 37, @TypeSizeID = 119, @SaleDate = '2023-12-01';
EXEC InsertSalesDetails @SaleDetailsID = 458, @SaleNo = 518, @OrderNo = 314, @Quantity = 42, @TypeSizeID = 271, @SaleDate = '2023-12-01';
EXEC InsertSalesDetails @SaleDetailsID = 459, @SaleNo = 311, @OrderNo = 340, @Quantity = 21, @TypeSizeID = 326, @SaleDate = '2023-12-01';
EXEC InsertSalesDetails @SaleDetailsID = 460, @SaleNo = 566, @OrderNo = 113, @Quantity = 32, @TypeSizeID = 473, @SaleDate = '2023-12-01';
EXEC InsertSalesDetails @SaleDetailsID = 461, @SaleNo = 63, @OrderNo = 431, @Quantity = 40, @TypeSizeID = 399, @SaleDate = '2023-12-02';
EXEC InsertSalesDetails @SaleDetailsID = 462, @SaleNo = 489, @OrderNo = 7, @Quantity = 4, @TypeSizeID = 42, @SaleDate = '2023-12-02';
EXEC InsertSalesDetails @SaleDetailsID = 463, @SaleNo = 324, @OrderNo = 173, @Quantity = 8, @TypeSizeID = 414, @SaleDate = '2023-12-02';
EXEC InsertSalesDetails @SaleDetailsID = 464, @SaleNo = 66, @OrderNo = 434, @Quantity = 26, @TypeSizeID = 466, @SaleDate = '2023-12-02';
EXEC InsertSalesDetails @SaleDetailsID = 465, @SaleNo = 276, @OrderNo = 460, @Quantity = 2, @TypeSizeID = 486, @SaleDate = '2023-12-02';
EXEC InsertSalesDetails @SaleDetailsID = 466, @SaleNo = 672, @OrderNo = 315, @Quantity = 35, @TypeSizeID = 232, @SaleDate = '2023-12-03';
EXEC InsertSalesDetails @SaleDetailsID = 467, @SaleNo = 684, @OrderNo = 19, @Quantity = 50, @TypeSizeID = 284, @SaleDate = '2023-12-03';
EXEC InsertSalesDetails @SaleDetailsID = 468, @SaleNo = 165, @OrderNo = 4, @Quantity = 39, @TypeSizeID = 438, @SaleDate = '2023-12-03';
EXEC InsertSalesDetails @SaleDetailsID = 469, @SaleNo = 226, @OrderNo = 255, @Quantity = 44, @TypeSizeID = 257, @SaleDate = '2023-12-03';
EXEC InsertSalesDetails @SaleDetailsID = 470, @SaleNo = 700, @OrderNo = 257, @Quantity = 14, @TypeSizeID = 322, @SaleDate = '2023-12-03';
EXEC InsertSalesDetails @SaleDetailsID = 471, @SaleNo = 365, @OrderNo = 274, @Quantity = 40, @TypeSizeID = 323, @SaleDate = '2023-12-04';
EXEC InsertSalesDetails @SaleDetailsID = 472, @SaleNo = 516, @OrderNo = 189, @Quantity = 16, @TypeSizeID = 39, @SaleDate = '2023-12-04';
EXEC InsertSalesDetails @SaleDetailsID = 473, @SaleNo = 685, @OrderNo = 128, @Quantity = 47, @TypeSizeID = 81, @SaleDate = '2023-12-04';
EXEC InsertSalesDetails @SaleDetailsID = 474, @SaleNo = 517, @OrderNo = 466, @Quantity = 32, @TypeSizeID = 350, @SaleDate = '2023-12-04';
EXEC InsertSalesDetails @SaleDetailsID = 475, @SaleNo = 574, @OrderNo = 496, @Quantity = 7, @TypeSizeID = 387, @SaleDate = '2023-12-04';
EXEC InsertSalesDetails @SaleDetailsID = 476, @SaleNo = 199, @OrderNo = 435, @Quantity = 18, @TypeSizeID = 385, @SaleDate = '2023-12-05';
EXEC InsertSalesDetails @SaleDetailsID = 477, @SaleNo = 252, @OrderNo = 7, @Quantity = 10, @TypeSizeID = 149, @SaleDate = '2023-12-05';
EXEC InsertSalesDetails @SaleDetailsID = 478, @SaleNo = 187, @OrderNo = 96, @Quantity = 6, @TypeSizeID = 470, @SaleDate = '2023-12-05';
EXEC InsertSalesDetails @SaleDetailsID = 479, @SaleNo = 618, @OrderNo = 235, @Quantity = 38, @TypeSizeID = 160, @SaleDate = '2023-12-05';
EXEC InsertSalesDetails @SaleDetailsID = 480, @SaleNo = 36, @OrderNo = 132, @Quantity = 1, @TypeSizeID = 292, @SaleDate = '2023-12-05';
EXEC InsertSalesDetails @SaleDetailsID = 481, @SaleNo = 333, @OrderNo = 171, @Quantity = 37, @TypeSizeID = 463, @SaleDate = '2023-12-06';
EXEC InsertSalesDetails @SaleDetailsID = 482, @SaleNo = 467, @OrderNo = 176, @Quantity = 40, @TypeSizeID = 353, @SaleDate = '2023-12-06';
EXEC InsertSalesDetails @SaleDetailsID = 483, @SaleNo = 476, @OrderNo = 119, @Quantity = 39, @TypeSizeID = 478, @SaleDate = '2023-12-06';
EXEC InsertSalesDetails @SaleDetailsID = 484, @SaleNo = 225, @OrderNo = 398, @Quantity = 30, @TypeSizeID = 180, @SaleDate = '2023-12-06';
EXEC InsertSalesDetails @SaleDetailsID = 485, @SaleNo = 663, @OrderNo = 9, @Quantity = 18, @TypeSizeID = 383, @SaleDate = '2023-12-06';
EXEC InsertSalesDetails @SaleDetailsID = 486, @SaleNo = 39, @OrderNo = 169, @Quantity = 35, @TypeSizeID = 463, @SaleDate = '2023-12-07';
EXEC InsertSalesDetails @SaleDetailsID = 487, @SaleNo = 525, @OrderNo = 193, @Quantity = 4, @TypeSizeID = 384, @SaleDate = '2023-12-07';
EXEC InsertSalesDetails @SaleDetailsID = 488, @SaleNo = 246, @OrderNo = 114, @Quantity = 14, @TypeSizeID = 313, @SaleDate = '2023-12-07';
EXEC InsertSalesDetails @SaleDetailsID = 489, @SaleNo = 32, @OrderNo = 53, @Quantity = 45, @TypeSizeID = 128, @SaleDate = '2023-12-07';
EXEC InsertSalesDetails @SaleDetailsID = 490, @SaleNo = 536, @OrderNo = 265, @Quantity = 14, @TypeSizeID = 145, @SaleDate = '2023-12-07';
EXEC InsertSalesDetails @SaleDetailsID = 491, @SaleNo = 623, @OrderNo = 464, @Quantity = 29, @TypeSizeID = 149, @SaleDate = '2023-12-08';
EXEC InsertSalesDetails @SaleDetailsID = 492, @SaleNo = 678, @OrderNo = 172, @Quantity = 36, @TypeSizeID = 304, @SaleDate = '2023-12-08';
EXEC InsertSalesDetails @SaleDetailsID = 493, @SaleNo = 654, @OrderNo = 108, @Quantity = 47, @TypeSizeID = 456, @SaleDate = '2023-12-08';
EXEC InsertSalesDetails @SaleDetailsID = 494, @SaleNo = 149, @OrderNo = 280, @Quantity = 50, @TypeSizeID = 224, @SaleDate = '2023-12-08';
EXEC InsertSalesDetails @SaleDetailsID = 495, @SaleNo = 619, @OrderNo = 358, @Quantity = 17, @TypeSizeID = 293, @SaleDate = '2023-12-08';
EXEC InsertSalesDetails @SaleDetailsID = 496, @SaleNo = 408, @OrderNo = 338, @Quantity = 6, @TypeSizeID = 327, @SaleDate = '2023-12-09';
EXEC InsertSalesDetails @SaleDetailsID = 497, @SaleNo = 262, @OrderNo = 230, @Quantity = 17, @TypeSizeID = 116, @SaleDate = '2023-12-09';
EXEC InsertSalesDetails @SaleDetailsID = 498, @SaleNo = 561, @OrderNo = 233, @Quantity = 5, @TypeSizeID = 122, @SaleDate = '2023-12-09';
EXEC InsertSalesDetails @SaleDetailsID = 499, @SaleNo = 223, @OrderNo = 355, @Quantity = 3, @TypeSizeID = 273, @SaleDate = '2023-12-09';
EXEC InsertSalesDetails @SaleDetailsID = 500, @SaleNo = 202, @OrderNo = 447, @Quantity = 46, @TypeSizeID = 81, @SaleDate = '2023-12-09';
EXEC InsertSalesDetails @SaleDetailsID = 501, @SaleNo = 242, @OrderNo = 341, @Quantity = 15, @TypeSizeID = 462, @SaleDate = '2023-12-10';
EXEC InsertSalesDetails @SaleDetailsID = 502, @SaleNo = 216, @OrderNo = 237, @Quantity = 41, @TypeSizeID = 57, @SaleDate = '2023-12-10';
EXEC InsertSalesDetails @SaleDetailsID = 503, @SaleNo = 86, @OrderNo = 31, @Quantity = 1, @TypeSizeID = 405, @SaleDate = '2023-12-10';
EXEC InsertSalesDetails @SaleDetailsID = 504, @SaleNo = 64, @OrderNo = 209, @Quantity = 29, @TypeSizeID = 365, @SaleDate = '2023-12-10';
EXEC InsertSalesDetails @SaleDetailsID = 505, @SaleNo = 659, @OrderNo = 112, @Quantity = 3, @TypeSizeID = 470, @SaleDate = '2023-12-10';
EXEC InsertSalesDetails @SaleDetailsID = 506, @SaleNo = 618, @OrderNo = 372, @Quantity = 29, @TypeSizeID = 254, @SaleDate = '2023-12-11';
EXEC InsertSalesDetails @SaleDetailsID = 507, @SaleNo = 82, @OrderNo = 411, @Quantity = 47, @TypeSizeID = 120, @SaleDate = '2023-12-11';
EXEC InsertSalesDetails @SaleDetailsID = 508, @SaleNo = 625, @OrderNo = 236, @Quantity = 9, @TypeSizeID = 387, @SaleDate = '2023-12-11';
EXEC InsertSalesDetails @SaleDetailsID = 509, @SaleNo = 440, @OrderNo = 160, @Quantity = 7, @TypeSizeID = 88, @SaleDate = '2023-12-11';
EXEC InsertSalesDetails @SaleDetailsID = 510, @SaleNo = 20, @OrderNo = 50, @Quantity = 42, @TypeSizeID = 175, @SaleDate = '2023-12-11';
EXEC InsertSalesDetails @SaleDetailsID = 511, @SaleNo = 79, @OrderNo = 399, @Quantity = 26, @TypeSizeID = 13, @SaleDate = '2023-12-12';
EXEC InsertSalesDetails @SaleDetailsID = 512, @SaleNo = 182, @OrderNo = 75, @Quantity = 10, @TypeSizeID = 104, @SaleDate = '2023-12-12';
EXEC InsertSalesDetails @SaleDetailsID = 513, @SaleNo = 322, @OrderNo = 194, @Quantity = 22, @TypeSizeID = 211, @SaleDate = '2023-12-12';
EXEC InsertSalesDetails @SaleDetailsID = 514, @SaleNo = 358, @OrderNo = 73, @Quantity = 48, @TypeSizeID = 441, @SaleDate = '2023-12-12';
EXEC InsertSalesDetails @SaleDetailsID = 515, @SaleNo = 384, @OrderNo = 37, @Quantity = 13, @TypeSizeID = 215, @SaleDate = '2023-12-12';
EXEC InsertSalesDetails @SaleDetailsID = 516, @SaleNo = 567, @OrderNo = 18, @Quantity = 14, @TypeSizeID = 196, @SaleDate = '2023-12-13';
EXEC InsertSalesDetails @SaleDetailsID = 517, @SaleNo = 331, @OrderNo = 469, @Quantity = 22, @TypeSizeID = 280, @SaleDate = '2023-12-13';
EXEC InsertSalesDetails @SaleDetailsID = 518, @SaleNo = 509, @OrderNo = 485, @Quantity = 37, @TypeSizeID = 208, @SaleDate = '2023-12-13';
EXEC InsertSalesDetails @SaleDetailsID = 519, @SaleNo = 358, @OrderNo = 24, @Quantity = 18, @TypeSizeID = 447, @SaleDate = '2023-12-13';
EXEC InsertSalesDetails @SaleDetailsID = 520, @SaleNo = 489, @OrderNo = 296, @Quantity = 5, @TypeSizeID = 237, @SaleDate = '2023-12-13';
EXEC InsertSalesDetails @SaleDetailsID = 521, @SaleNo = 695, @OrderNo = 188, @Quantity = 24, @TypeSizeID = 224, @SaleDate = '2023-12-14';
EXEC InsertSalesDetails @SaleDetailsID = 522, @SaleNo = 605, @OrderNo = 377, @Quantity = 13, @TypeSizeID = 166, @SaleDate = '2023-12-14';
EXEC InsertSalesDetails @SaleDetailsID = 523, @SaleNo = 650, @OrderNo = 15, @Quantity = 50, @TypeSizeID = 356, @SaleDate = '2023-12-14';
EXEC InsertSalesDetails @SaleDetailsID = 524, @SaleNo = 250, @OrderNo = 70, @Quantity = 34, @TypeSizeID = 16, @SaleDate = '2023-12-14';
EXEC InsertSalesDetails @SaleDetailsID = 525, @SaleNo = 463, @OrderNo = 84, @Quantity = 46, @TypeSizeID = 20, @SaleDate = '2023-12-14';
EXEC InsertSalesDetails @SaleDetailsID = 526, @SaleNo = 693, @OrderNo = 364, @Quantity = 23, @TypeSizeID = 160, @SaleDate = '2023-12-15';
EXEC InsertSalesDetails @SaleDetailsID = 527, @SaleNo = 472, @OrderNo = 103, @Quantity = 39, @TypeSizeID = 69, @SaleDate = '2023-12-15';
EXEC InsertSalesDetails @SaleDetailsID = 528, @SaleNo = 358, @OrderNo = 58, @Quantity = 26, @TypeSizeID = 400, @SaleDate = '2023-12-15';
EXEC InsertSalesDetails @SaleDetailsID = 529, @SaleNo = 24, @OrderNo = 74, @Quantity = 3, @TypeSizeID = 58, @SaleDate = '2023-12-15';
EXEC InsertSalesDetails @SaleDetailsID = 530, @SaleNo = 313, @OrderNo = 246, @Quantity = 12, @TypeSizeID = 83, @SaleDate = '2023-12-15';
EXEC InsertSalesDetails @SaleDetailsID = 531, @SaleNo = 472, @OrderNo = 425, @Quantity = 27, @TypeSizeID = 161, @SaleDate = '2023-12-16';
EXEC InsertSalesDetails @SaleDetailsID = 532, @SaleNo = 217, @OrderNo = 91, @Quantity = 41, @TypeSizeID = 475, @SaleDate = '2023-12-16';
EXEC InsertSalesDetails @SaleDetailsID = 533, @SaleNo = 565, @OrderNo = 122, @Quantity = 32, @TypeSizeID = 315, @SaleDate = '2023-12-16';
EXEC InsertSalesDetails @SaleDetailsID = 534, @SaleNo = 543, @OrderNo = 15, @Quantity = 32, @TypeSizeID = 83, @SaleDate = '2023-12-16';
EXEC InsertSalesDetails @SaleDetailsID = 535, @SaleNo = 596, @OrderNo = 230, @Quantity = 32, @TypeSizeID = 165, @SaleDate = '2023-12-16';
EXEC InsertSalesDetails @SaleDetailsID = 536, @SaleNo = 297, @OrderNo = 197, @Quantity = 11, @TypeSizeID = 168, @SaleDate = '2023-12-17';
EXEC InsertSalesDetails @SaleDetailsID = 537, @SaleNo = 528, @OrderNo = 181, @Quantity = 39, @TypeSizeID = 210, @SaleDate = '2023-12-17';
EXEC InsertSalesDetails @SaleDetailsID = 538, @SaleNo = 37, @OrderNo = 4, @Quantity = 32, @TypeSizeID = 2, @SaleDate = '2023-12-17';
EXEC InsertSalesDetails @SaleDetailsID = 539, @SaleNo = 272, @OrderNo = 242, @Quantity = 12, @TypeSizeID = 256, @SaleDate = '2023-12-17';
EXEC InsertSalesDetails @SaleDetailsID = 540, @SaleNo = 237, @OrderNo = 401, @Quantity = 36, @TypeSizeID = 308, @SaleDate = '2023-12-17';
EXEC InsertSalesDetails @SaleDetailsID = 541, @SaleNo = 155, @OrderNo = 378, @Quantity = 28, @TypeSizeID = 121, @SaleDate = '2023-12-18';
EXEC InsertSalesDetails @SaleDetailsID = 542, @SaleNo = 115, @OrderNo = 427, @Quantity = 21, @TypeSizeID = 21, @SaleDate = '2023-12-18';
EXEC InsertSalesDetails @SaleDetailsID = 543, @SaleNo = 4, @OrderNo = 129, @Quantity = 47, @TypeSizeID = 470, @SaleDate = '2023-12-18';
EXEC InsertSalesDetails @SaleDetailsID = 544, @SaleNo = 250, @OrderNo = 255, @Quantity = 15, @TypeSizeID = 97, @SaleDate = '2023-12-18';
EXEC InsertSalesDetails @SaleDetailsID = 545, @SaleNo = 428, @OrderNo = 188, @Quantity = 50, @TypeSizeID = 326, @SaleDate = '2023-12-18';
EXEC InsertSalesDetails @SaleDetailsID = 546, @SaleNo = 185, @OrderNo = 160, @Quantity = 37, @TypeSizeID = 492, @SaleDate = '2023-12-19';
EXEC InsertSalesDetails @SaleDetailsID = 547, @SaleNo = 596, @OrderNo = 356, @Quantity = 1, @TypeSizeID = 438, @SaleDate = '2023-12-19';
EXEC InsertSalesDetails @SaleDetailsID = 548, @SaleNo = 436, @OrderNo = 57, @Quantity = 47, @TypeSizeID = 130, @SaleDate = '2023-12-19';
EXEC InsertSalesDetails @SaleDetailsID = 549, @SaleNo = 436, @OrderNo = 122, @Quantity = 31, @TypeSizeID = 156, @SaleDate = '2023-12-19';
EXEC InsertSalesDetails @SaleDetailsID = 550, @SaleNo = 286, @OrderNo = 28, @Quantity = 33, @TypeSizeID = 437, @SaleDate = '2023-12-19';
EXEC InsertSalesDetails @SaleDetailsID = 551, @SaleNo = 622, @OrderNo = 467, @Quantity = 48, @TypeSizeID = 433, @SaleDate = '2023-12-20';
EXEC InsertSalesDetails @SaleDetailsID = 552, @SaleNo = 495, @OrderNo = 247, @Quantity = 50, @TypeSizeID = 405, @SaleDate = '2023-12-20';
EXEC InsertSalesDetails @SaleDetailsID = 553, @SaleNo = 127, @OrderNo = 54, @Quantity = 20, @TypeSizeID = 425, @SaleDate = '2023-12-20';
EXEC InsertSalesDetails @SaleDetailsID = 554, @SaleNo = 449, @OrderNo = 225, @Quantity = 49, @TypeSizeID = 440, @SaleDate = '2023-12-20';
EXEC InsertSalesDetails @SaleDetailsID = 555, @SaleNo = 206, @OrderNo = 29, @Quantity = 1, @TypeSizeID = 173, @SaleDate = '2023-12-20';
EXEC InsertSalesDetails @SaleDetailsID = 556, @SaleNo = 405, @OrderNo = 213, @Quantity = 2, @TypeSizeID = 337, @SaleDate = '2023-12-21';
EXEC InsertSalesDetails @SaleDetailsID = 557, @SaleNo = 198, @OrderNo = 256, @Quantity = 23, @TypeSizeID = 316, @SaleDate = '2023-12-21';
EXEC InsertSalesDetails @SaleDetailsID = 558, @SaleNo = 408, @OrderNo = 130, @Quantity = 15, @TypeSizeID = 196, @SaleDate = '2023-12-21';
EXEC InsertSalesDetails @SaleDetailsID = 559, @SaleNo = 343, @OrderNo = 354, @Quantity = 21, @TypeSizeID = 192, @SaleDate = '2023-12-21';
EXEC InsertSalesDetails @SaleDetailsID = 560, @SaleNo = 634, @OrderNo = 385, @Quantity = 27, @TypeSizeID = 310, @SaleDate = '2023-12-21';
EXEC InsertSalesDetails @SaleDetailsID = 561, @SaleNo = 3, @OrderNo = 272, @Quantity = 14, @TypeSizeID = 118, @SaleDate = '2023-12-22';
EXEC InsertSalesDetails @SaleDetailsID = 562, @SaleNo = 259, @OrderNo = 223, @Quantity = 2, @TypeSizeID = 223, @SaleDate = '2023-12-22';
EXEC InsertSalesDetails @SaleDetailsID = 563, @SaleNo = 208, @OrderNo = 342, @Quantity = 31, @TypeSizeID = 155, @SaleDate = '2023-12-22';
EXEC InsertSalesDetails @SaleDetailsID = 564, @SaleNo = 85, @OrderNo = 155, @Quantity = 19, @TypeSizeID = 239, @SaleDate = '2023-12-22';
EXEC InsertSalesDetails @SaleDetailsID = 565, @SaleNo = 582, @OrderNo = 172, @Quantity = 15, @TypeSizeID = 323, @SaleDate = '2023-12-22';
EXEC InsertSalesDetails @SaleDetailsID = 566, @SaleNo = 138, @OrderNo = 86, @Quantity = 1, @TypeSizeID = 410, @SaleDate = '2023-12-23';
EXEC InsertSalesDetails @SaleDetailsID = 567, @SaleNo = 338, @OrderNo = 66, @Quantity = 41, @TypeSizeID = 499, @SaleDate = '2023-12-23';
EXEC InsertSalesDetails @SaleDetailsID = 568, @SaleNo = 63, @OrderNo = 237, @Quantity = 31, @TypeSizeID = 432, @SaleDate = '2023-12-23';
EXEC InsertSalesDetails @SaleDetailsID = 569, @SaleNo = 190, @OrderNo = 117, @Quantity = 37, @TypeSizeID = 424, @SaleDate = '2023-12-23';
EXEC InsertSalesDetails @SaleDetailsID = 570, @SaleNo = 455, @OrderNo = 168, @Quantity = 28, @TypeSizeID = 337, @SaleDate = '2023-12-23';
EXEC InsertSalesDetails @SaleDetailsID = 571, @SaleNo = 430, @OrderNo = 422, @Quantity = 30, @TypeSizeID = 480, @SaleDate = '2023-12-24';
EXEC InsertSalesDetails @SaleDetailsID = 572, @SaleNo = 159, @OrderNo = 405, @Quantity = 14, @TypeSizeID = 276, @SaleDate = '2023-12-24';
EXEC InsertSalesDetails @SaleDetailsID = 573, @SaleNo = 585, @OrderNo = 278, @Quantity = 23, @TypeSizeID = 1, @SaleDate = '2023-12-24';
EXEC InsertSalesDetails @SaleDetailsID = 574, @SaleNo = 225, @OrderNo = 166, @Quantity = 7, @TypeSizeID = 181, @SaleDate = '2023-12-24';
EXEC InsertSalesDetails @SaleDetailsID = 575, @SaleNo = 40, @OrderNo = 418, @Quantity = 28, @TypeSizeID = 216, @SaleDate = '2023-12-24';
EXEC InsertSalesDetails @SaleDetailsID = 576, @SaleNo = 70, @OrderNo = 387, @Quantity = 11, @TypeSizeID = 83, @SaleDate = '2023-12-25';
EXEC InsertSalesDetails @SaleDetailsID = 577, @SaleNo = 668, @OrderNo = 267, @Quantity = 28, @TypeSizeID = 213, @SaleDate = '2023-12-25';
EXEC InsertSalesDetails @SaleDetailsID = 578, @SaleNo = 553, @OrderNo = 387, @Quantity = 40, @TypeSizeID = 467, @SaleDate = '2023-12-25';
EXEC InsertSalesDetails @SaleDetailsID = 579, @SaleNo = 637, @OrderNo = 105, @Quantity = 45, @TypeSizeID = 417, @SaleDate = '2023-12-25';
EXEC InsertSalesDetails @SaleDetailsID = 580, @SaleNo = 135, @OrderNo = 250, @Quantity = 3, @TypeSizeID = 461, @SaleDate = '2023-12-25';
EXEC InsertSalesDetails @SaleDetailsID = 581, @SaleNo = 269, @OrderNo = 163, @Quantity = 24, @TypeSizeID = 188, @SaleDate = '2023-12-26';
EXEC InsertSalesDetails @SaleDetailsID = 582, @SaleNo = 592, @OrderNo = 59, @Quantity = 18, @TypeSizeID = 61, @SaleDate = '2023-12-26';
EXEC InsertSalesDetails @SaleDetailsID = 583, @SaleNo = 169, @OrderNo = 142, @Quantity = 35, @TypeSizeID = 209, @SaleDate = '2023-12-26';
EXEC InsertSalesDetails @SaleDetailsID = 584, @SaleNo = 345, @OrderNo = 218, @Quantity = 24, @TypeSizeID = 243, @SaleDate = '2023-12-26';
EXEC InsertSalesDetails @SaleDetailsID = 585, @SaleNo = 92, @OrderNo = 199, @Quantity = 40, @TypeSizeID = 137, @SaleDate = '2023-12-26';
EXEC InsertSalesDetails @SaleDetailsID = 586, @SaleNo = 122, @OrderNo = 40, @Quantity = 16, @TypeSizeID = 141, @SaleDate = '2023-12-27';
EXEC InsertSalesDetails @SaleDetailsID = 587, @SaleNo = 202, @OrderNo = 131, @Quantity = 12, @TypeSizeID = 86, @SaleDate = '2023-12-27';
EXEC InsertSalesDetails @SaleDetailsID = 588, @SaleNo = 633, @OrderNo = 98, @Quantity = 36, @TypeSizeID = 492, @SaleDate = '2023-12-27';
EXEC InsertSalesDetails @SaleDetailsID = 589, @SaleNo = 174, @OrderNo = 161, @Quantity = 41, @TypeSizeID = 472, @SaleDate = '2023-12-27';
EXEC InsertSalesDetails @SaleDetailsID = 590, @SaleNo = 167, @OrderNo = 157, @Quantity = 6, @TypeSizeID = 240, @SaleDate = '2023-12-27';
EXEC InsertSalesDetails @SaleDetailsID = 591, @SaleNo = 66, @OrderNo = 172, @Quantity = 36, @TypeSizeID = 45, @SaleDate = '2023-12-28';
EXEC InsertSalesDetails @SaleDetailsID = 592, @SaleNo = 83, @OrderNo = 393, @Quantity = 39, @TypeSizeID = 295, @SaleDate = '2023-12-28';
EXEC InsertSalesDetails @SaleDetailsID = 593, @SaleNo = 260, @OrderNo = 378, @Quantity = 6, @TypeSizeID = 94, @SaleDate = '2023-12-28';
EXEC InsertSalesDetails @SaleDetailsID = 594, @SaleNo = 558, @OrderNo = 88, @Quantity = 23, @TypeSizeID = 245, @SaleDate = '2023-12-28';
EXEC InsertSalesDetails @SaleDetailsID = 595, @SaleNo = 177, @OrderNo = 176, @Quantity = 20, @TypeSizeID = 310, @SaleDate = '2023-12-28';
EXEC InsertSalesDetails @SaleDetailsID = 596, @SaleNo = 621, @OrderNo = 444, @Quantity = 10, @TypeSizeID = 480, @SaleDate = '2023-12-29';
EXEC InsertSalesDetails @SaleDetailsID = 597, @SaleNo = 187, @OrderNo = 473, @Quantity = 9, @TypeSizeID = 323, @SaleDate = '2023-12-29';
EXEC InsertSalesDetails @SaleDetailsID = 598, @SaleNo = 278, @OrderNo = 78, @Quantity = 37, @TypeSizeID = 14, @SaleDate = '2023-12-29';
EXEC InsertSalesDetails @SaleDetailsID = 599, @SaleNo = 212, @OrderNo = 176, @Quantity = 29, @TypeSizeID = 30, @SaleDate = '2023-12-29';
EXEC InsertSalesDetails @SaleDetailsID = 600, @SaleNo = 206, @OrderNo = 314, @Quantity = 36, @TypeSizeID = 495, @SaleDate = '2023-12-29';
EXEC InsertSalesDetails @SaleDetailsID = 601, @SaleNo = 183, @OrderNo = 126, @Quantity = 45, @TypeSizeID = 293, @SaleDate = '2023-12-30';
EXEC InsertSalesDetails @SaleDetailsID = 602, @SaleNo = 606, @OrderNo = 283, @Quantity = 12, @TypeSizeID = 437, @SaleDate = '2023-12-30';
EXEC InsertSalesDetails @SaleDetailsID = 603, @SaleNo = 633, @OrderNo = 284, @Quantity = 32, @TypeSizeID = 17, @SaleDate = '2023-12-30';
EXEC InsertSalesDetails @SaleDetailsID = 604, @SaleNo = 575, @OrderNo = 230, @Quantity = 13, @TypeSizeID = 494, @SaleDate = '2023-12-30';
EXEC InsertSalesDetails @SaleDetailsID = 605, @SaleNo = 638, @OrderNo = 487, @Quantity = 46, @TypeSizeID = 59, @SaleDate = '2023-12-30';
EXEC InsertSalesDetails @SaleDetailsID = 606, @SaleNo = 235, @OrderNo = 26, @Quantity = 18, @TypeSizeID = 153, @SaleDate = '2023-12-31';
EXEC InsertSalesDetails @SaleDetailsID = 607, @SaleNo = 28, @OrderNo = 463, @Quantity = 29, @TypeSizeID = 314, @SaleDate = '2023-12-31';
EXEC InsertSalesDetails @SaleDetailsID = 608, @SaleNo = 190, @OrderNo = 137, @Quantity = 2, @TypeSizeID = 189, @SaleDate = '2023-12-31';
EXEC InsertSalesDetails @SaleDetailsID = 609, @SaleNo = 76, @OrderNo = 220, @Quantity = 49, @TypeSizeID = 230, @SaleDate = '2023-12-31';
EXEC InsertSalesDetails @SaleDetailsID = 610, @SaleNo = 693, @OrderNo = 1, @Quantity = 28, @TypeSizeID = 14, @SaleDate = '2023-12-31';
EXEC InsertSalesDetails @SaleDetailsID = 611, @SaleNo = 371, @OrderNo = 451, @Quantity = 38, @TypeSizeID = 336, @SaleDate = '2024-01-01';
EXEC InsertSalesDetails @SaleDetailsID = 612, @SaleNo = 288, @OrderNo = 222, @Quantity = 28, @TypeSizeID = 438, @SaleDate = '2024-01-01';
EXEC InsertSalesDetails @SaleDetailsID = 613, @SaleNo = 367, @OrderNo = 472, @Quantity = 31, @TypeSizeID = 87, @SaleDate = '2024-01-01';
EXEC InsertSalesDetails @SaleDetailsID = 614, @SaleNo = 255, @OrderNo = 175, @Quantity = 37, @TypeSizeID = 300, @SaleDate = '2024-01-01';
EXEC InsertSalesDetails @SaleDetailsID = 615, @SaleNo = 257, @OrderNo = 367, @Quantity = 2, @TypeSizeID = 106, @SaleDate = '2024-01-01';
EXEC InsertSalesDetails @SaleDetailsID = 616, @SaleNo = 28, @OrderNo = 252, @Quantity = 48, @TypeSizeID = 189, @SaleDate = '2024-01-02';
EXEC InsertSalesDetails @SaleDetailsID = 617, @SaleNo = 199, @OrderNo = 225, @Quantity = 42, @TypeSizeID = 49, @SaleDate = '2024-01-02';
EXEC InsertSalesDetails @SaleDetailsID = 618, @SaleNo = 229, @OrderNo = 59, @Quantity = 46, @TypeSizeID = 492, @SaleDate = '2024-01-02';
EXEC InsertSalesDetails @SaleDetailsID = 619, @SaleNo = 62, @OrderNo = 176, @Quantity = 42, @TypeSizeID = 270, @SaleDate = '2024-01-02';
EXEC InsertSalesDetails @SaleDetailsID = 620, @SaleNo = 549, @OrderNo = 258, @Quantity = 50, @TypeSizeID = 354, @SaleDate = '2024-01-02';
EXEC InsertSalesDetails @SaleDetailsID = 621, @SaleNo = 354, @OrderNo = 358, @Quantity = 27, @TypeSizeID = 312, @SaleDate = '2024-01-03';
EXEC InsertSalesDetails @SaleDetailsID = 622, @SaleNo = 485, @OrderNo = 291, @Quantity = 49, @TypeSizeID = 112, @SaleDate = '2024-01-03';
EXEC InsertSalesDetails @SaleDetailsID = 623, @SaleNo = 262, @OrderNo = 75, @Quantity = 10, @TypeSizeID = 267, @SaleDate = '2024-01-03';
EXEC InsertSalesDetails @SaleDetailsID = 624, @SaleNo = 618, @OrderNo = 465, @Quantity = 4, @TypeSizeID = 456, @SaleDate = '2024-01-03';
EXEC InsertSalesDetails @SaleDetailsID = 625, @SaleNo = 53, @OrderNo = 449, @Quantity = 48, @TypeSizeID = 488, @SaleDate = '2024-01-03';
EXEC InsertSalesDetails @SaleDetailsID = 626, @SaleNo = 316, @OrderNo = 90, @Quantity = 29, @TypeSizeID = 137, @SaleDate = '2024-01-04';
EXEC InsertSalesDetails @SaleDetailsID = 627, @SaleNo = 466, @OrderNo = 453, @Quantity = 23, @TypeSizeID = 356, @SaleDate = '2024-01-04';
EXEC InsertSalesDetails @SaleDetailsID = 628, @SaleNo = 690, @OrderNo = 347, @Quantity = 21, @TypeSizeID = 336, @SaleDate = '2024-01-04';
EXEC InsertSalesDetails @SaleDetailsID = 629, @SaleNo = 308, @OrderNo = 443, @Quantity = 45, @TypeSizeID = 57, @SaleDate = '2024-01-04';
EXEC InsertSalesDetails @SaleDetailsID = 630, @SaleNo = 146, @OrderNo = 50, @Quantity = 46, @TypeSizeID = 485, @SaleDate = '2024-01-04';
EXEC InsertSalesDetails @SaleDetailsID = 631, @SaleNo = 562, @OrderNo = 61, @Quantity = 12, @TypeSizeID = 163, @SaleDate = '2024-01-05';
EXEC InsertSalesDetails @SaleDetailsID = 632, @SaleNo = 628, @OrderNo = 333, @Quantity = 25, @TypeSizeID = 21, @SaleDate = '2024-01-05';
EXEC InsertSalesDetails @SaleDetailsID = 633, @SaleNo = 248, @OrderNo = 44, @Quantity = 36, @TypeSizeID = 109, @SaleDate = '2024-01-05';
EXEC InsertSalesDetails @SaleDetailsID = 634, @SaleNo = 501, @OrderNo = 457, @Quantity = 29, @TypeSizeID = 424, @SaleDate = '2024-01-05';
EXEC InsertSalesDetails @SaleDetailsID = 635, @SaleNo = 690, @OrderNo = 351, @Quantity = 47, @TypeSizeID = 52, @SaleDate = '2024-01-05';
EXEC InsertSalesDetails @SaleDetailsID = 636, @SaleNo = 13, @OrderNo = 499, @Quantity = 28, @TypeSizeID = 213, @SaleDate = '2024-01-06';
EXEC InsertSalesDetails @SaleDetailsID = 637, @SaleNo = 421, @OrderNo = 205, @Quantity = 24, @TypeSizeID = 434, @SaleDate = '2024-01-06';
EXEC InsertSalesDetails @SaleDetailsID = 638, @SaleNo = 174, @OrderNo = 294, @Quantity = 16, @TypeSizeID = 340, @SaleDate = '2024-01-06';
EXEC InsertSalesDetails @SaleDetailsID = 639, @SaleNo = 193, @OrderNo = 307, @Quantity = 32, @TypeSizeID = 221, @SaleDate = '2024-01-06';
EXEC InsertSalesDetails @SaleDetailsID = 640, @SaleNo = 393, @OrderNo = 166, @Quantity = 17, @TypeSizeID = 495, @SaleDate = '2024-01-06';
EXEC InsertSalesDetails @SaleDetailsID = 641, @SaleNo = 438, @OrderNo = 140, @Quantity = 32, @TypeSizeID = 406, @SaleDate = '2024-01-07';
EXEC InsertSalesDetails @SaleDetailsID = 642, @SaleNo = 515, @OrderNo = 79, @Quantity = 7, @TypeSizeID = 6, @SaleDate = '2024-01-07';
EXEC InsertSalesDetails @SaleDetailsID = 643, @SaleNo = 200, @OrderNo = 48, @Quantity = 32, @TypeSizeID = 251, @SaleDate = '2024-01-07';
EXEC InsertSalesDetails @SaleDetailsID = 644, @SaleNo = 642, @OrderNo = 189, @Quantity = 6, @TypeSizeID = 126, @SaleDate = '2024-01-07';
EXEC InsertSalesDetails @SaleDetailsID = 645, @SaleNo = 30, @OrderNo = 432, @Quantity = 3, @TypeSizeID = 40, @SaleDate = '2024-01-07';
EXEC InsertSalesDetails @SaleDetailsID = 646, @SaleNo = 356, @OrderNo = 99, @Quantity = 29, @TypeSizeID = 85, @SaleDate = '2024-01-08';
EXEC InsertSalesDetails @SaleDetailsID = 647, @SaleNo = 116, @OrderNo = 336, @Quantity = 32, @TypeSizeID = 157, @SaleDate = '2024-01-08';
EXEC InsertSalesDetails @SaleDetailsID = 648, @SaleNo = 584, @OrderNo = 406, @Quantity = 42, @TypeSizeID = 452, @SaleDate = '2024-01-08';
EXEC InsertSalesDetails @SaleDetailsID = 649, @SaleNo = 605, @OrderNo = 424, @Quantity = 2, @TypeSizeID = 116, @SaleDate = '2024-01-08';
EXEC InsertSalesDetails @SaleDetailsID = 650, @SaleNo = 113, @OrderNo = 489, @Quantity = 27, @TypeSizeID = 81, @SaleDate = '2024-01-08';
EXEC InsertSalesDetails @SaleDetailsID = 651, @SaleNo = 144, @OrderNo = 229, @Quantity = 14, @TypeSizeID = 407, @SaleDate = '2024-01-09';
EXEC InsertSalesDetails @SaleDetailsID = 652, @SaleNo = 13, @OrderNo = 471, @Quantity = 31, @TypeSizeID = 83, @SaleDate = '2024-01-09';
EXEC InsertSalesDetails @SaleDetailsID = 653, @SaleNo = 489, @OrderNo = 138, @Quantity = 48, @TypeSizeID = 371, @SaleDate = '2024-01-09';
EXEC InsertSalesDetails @SaleDetailsID = 654, @SaleNo = 253, @OrderNo = 106, @Quantity = 37, @TypeSizeID = 421, @SaleDate = '2024-01-09';
EXEC InsertSalesDetails @SaleDetailsID = 655, @SaleNo = 30, @OrderNo = 367, @Quantity = 22, @TypeSizeID = 492, @SaleDate = '2024-01-09';
EXEC InsertSalesDetails @SaleDetailsID = 656, @SaleNo = 220, @OrderNo = 164, @Quantity = 43, @TypeSizeID = 284, @SaleDate = '2024-01-10';
EXEC InsertSalesDetails @SaleDetailsID = 657, @SaleNo = 695, @OrderNo = 107, @Quantity = 40, @TypeSizeID = 336, @SaleDate = '2024-01-10';
EXEC InsertSalesDetails @SaleDetailsID = 658, @SaleNo = 15, @OrderNo = 314, @Quantity = 39, @TypeSizeID = 311, @SaleDate = '2024-01-10';
EXEC InsertSalesDetails @SaleDetailsID = 659, @SaleNo = 55, @OrderNo = 397, @Quantity = 23, @TypeSizeID = 12, @SaleDate = '2024-01-10';
EXEC InsertSalesDetails @SaleDetailsID = 660, @SaleNo = 196, @OrderNo = 444, @Quantity = 3, @TypeSizeID = 100, @SaleDate = '2024-01-10';
EXEC InsertSalesDetails @SaleDetailsID = 661, @SaleNo = 130, @OrderNo = 496, @Quantity = 49, @TypeSizeID = 162, @SaleDate = '2024-01-11';
EXEC InsertSalesDetails @SaleDetailsID = 662, @SaleNo = 352, @OrderNo = 221, @Quantity = 47, @TypeSizeID = 220, @SaleDate = '2024-01-11';
EXEC InsertSalesDetails @SaleDetailsID = 663, @SaleNo = 386, @OrderNo = 470, @Quantity = 49, @TypeSizeID = 144, @SaleDate = '2024-01-11';
EXEC InsertSalesDetails @SaleDetailsID = 664, @SaleNo = 17, @OrderNo = 273, @Quantity = 44, @TypeSizeID = 17, @SaleDate = '2024-01-11';
EXEC InsertSalesDetails @SaleDetailsID = 665, @SaleNo = 675, @OrderNo = 245, @Quantity = 44, @TypeSizeID = 91, @SaleDate = '2024-01-11';
EXEC InsertSalesDetails @SaleDetailsID = 666, @SaleNo = 389, @OrderNo = 40, @Quantity = 38, @TypeSizeID = 300, @SaleDate = '2024-01-12';
EXEC InsertSalesDetails @SaleDetailsID = 667, @SaleNo = 299, @OrderNo = 113, @Quantity = 49, @TypeSizeID = 107, @SaleDate = '2024-01-12';
EXEC InsertSalesDetails @SaleDetailsID = 668, @SaleNo = 682, @OrderNo = 345, @Quantity = 27, @TypeSizeID = 79, @SaleDate = '2024-01-12';
EXEC InsertSalesDetails @SaleDetailsID = 669, @SaleNo = 524, @OrderNo = 339, @Quantity = 46, @TypeSizeID = 485, @SaleDate = '2024-01-12';
EXEC InsertSalesDetails @SaleDetailsID = 670, @SaleNo = 657, @OrderNo = 27, @Quantity = 34, @TypeSizeID = 300, @SaleDate = '2024-01-12';
EXEC InsertSalesDetails @SaleDetailsID = 671, @SaleNo = 152, @OrderNo = 4, @Quantity = 50, @TypeSizeID = 276, @SaleDate = '2024-01-13';
EXEC InsertSalesDetails @SaleDetailsID = 672, @SaleNo = 509, @OrderNo = 267, @Quantity = 41, @TypeSizeID = 370, @SaleDate = '2024-01-13';
EXEC InsertSalesDetails @SaleDetailsID = 673, @SaleNo = 362, @OrderNo = 456, @Quantity = 8, @TypeSizeID = 460, @SaleDate = '2024-01-13';
EXEC InsertSalesDetails @SaleDetailsID = 674, @SaleNo = 480, @OrderNo = 117, @Quantity = 37, @TypeSizeID = 465, @SaleDate = '2024-01-13';
EXEC InsertSalesDetails @SaleDetailsID = 675, @SaleNo = 67, @OrderNo = 403, @Quantity = 28, @TypeSizeID = 390, @SaleDate = '2024-01-13';
EXEC InsertSalesDetails @SaleDetailsID = 676, @SaleNo = 362, @OrderNo = 436, @Quantity = 3, @TypeSizeID = 297, @SaleDate = '2024-01-14';
EXEC InsertSalesDetails @SaleDetailsID = 677, @SaleNo = 223, @OrderNo = 451, @Quantity = 5, @TypeSizeID = 399, @SaleDate = '2024-01-14';
EXEC InsertSalesDetails @SaleDetailsID = 678, @SaleNo = 174, @OrderNo = 122, @Quantity = 21, @TypeSizeID = 308, @SaleDate = '2024-01-14';
EXEC InsertSalesDetails @SaleDetailsID = 679, @SaleNo = 65, @OrderNo = 186, @Quantity = 33, @TypeSizeID = 70, @SaleDate = '2024-01-14';
EXEC InsertSalesDetails @SaleDetailsID = 680, @SaleNo = 256, @OrderNo = 153, @Quantity = 47, @TypeSizeID = 384, @SaleDate = '2024-01-14';
EXEC InsertSalesDetails @SaleDetailsID = 681, @SaleNo = 272, @OrderNo = 31, @Quantity = 41, @TypeSizeID = 4, @SaleDate = '2024-01-15';
EXEC InsertSalesDetails @SaleDetailsID = 682, @SaleNo = 398, @OrderNo = 85, @Quantity = 17, @TypeSizeID = 323, @SaleDate = '2024-01-15';
EXEC InsertSalesDetails @SaleDetailsID = 683, @SaleNo = 299, @OrderNo = 390, @Quantity = 18, @TypeSizeID = 499, @SaleDate = '2024-01-15';
EXEC InsertSalesDetails @SaleDetailsID = 684, @SaleNo = 648, @OrderNo = 332, @Quantity = 14, @TypeSizeID = 224, @SaleDate = '2024-01-15';
EXEC InsertSalesDetails @SaleDetailsID = 685, @SaleNo = 27, @OrderNo = 73, @Quantity = 46, @TypeSizeID = 67, @SaleDate = '2024-01-15';
EXEC InsertSalesDetails @SaleDetailsID = 686, @SaleNo = 158, @OrderNo = 380, @Quantity = 41, @TypeSizeID = 179, @SaleDate = '2024-01-16';
EXEC InsertSalesDetails @SaleDetailsID = 687, @SaleNo = 658, @OrderNo = 142, @Quantity = 19, @TypeSizeID = 126, @SaleDate = '2024-01-16';
EXEC InsertSalesDetails @SaleDetailsID = 688, @SaleNo = 305, @OrderNo = 422, @Quantity = 40, @TypeSizeID = 87, @SaleDate = '2024-01-16';
EXEC InsertSalesDetails @SaleDetailsID = 689, @SaleNo = 422, @OrderNo = 397, @Quantity = 24, @TypeSizeID = 352, @SaleDate = '2024-01-16';
EXEC InsertSalesDetails @SaleDetailsID = 690, @SaleNo = 268, @OrderNo = 264, @Quantity = 42, @TypeSizeID = 467, @SaleDate = '2024-01-16';
EXEC InsertSalesDetails @SaleDetailsID = 691, @SaleNo = 150, @OrderNo = 192, @Quantity = 3, @TypeSizeID = 171, @SaleDate = '2024-01-17';
EXEC InsertSalesDetails @SaleDetailsID = 692, @SaleNo = 523, @OrderNo = 232, @Quantity = 43, @TypeSizeID = 26, @SaleDate = '2024-01-17';
EXEC InsertSalesDetails @SaleDetailsID = 693, @SaleNo = 106, @OrderNo = 99, @Quantity = 24, @TypeSizeID = 417, @SaleDate = '2024-01-17';
EXEC InsertSalesDetails @SaleDetailsID = 694, @SaleNo = 452, @OrderNo = 211, @Quantity = 43, @TypeSizeID = 449, @SaleDate = '2024-01-17';
EXEC InsertSalesDetails @SaleDetailsID = 695, @SaleNo = 215, @OrderNo = 211, @Quantity = 49, @TypeSizeID = 104, @SaleDate = '2024-01-17';
EXEC InsertSalesDetails @SaleDetailsID = 696, @SaleNo = 481, @OrderNo = 85, @Quantity = 3, @TypeSizeID = 381, @SaleDate = '2024-01-18';
EXEC InsertSalesDetails @SaleDetailsID = 697, @SaleNo = 4, @OrderNo = 117, @Quantity = 19, @TypeSizeID = 14, @SaleDate = '2024-01-18';
EXEC InsertSalesDetails @SaleDetailsID = 698, @SaleNo = 172, @OrderNo = 250, @Quantity = 6, @TypeSizeID = 282, @SaleDate = '2024-01-18';
EXEC InsertSalesDetails @SaleDetailsID = 699, @SaleNo = 214, @OrderNo = 106, @Quantity = 19, @TypeSizeID = 412, @SaleDate = '2024-01-18';
EXEC InsertSalesDetails @SaleDetailsID = 700, @SaleNo = 671, @OrderNo = 54, @Quantity = 42, @TypeSizeID = 400, @SaleDate = '2024-01-18';
EXEC InsertSalesDetails @SaleDetailsID = 701, @SaleNo = 327, @OrderNo = 269, @Quantity = 24, @TypeSizeID = 2, @SaleDate = '2024-01-19';
EXEC InsertSalesDetails @SaleDetailsID = 702, @SaleNo = 576, @OrderNo = 248, @Quantity = 49, @TypeSizeID = 206, @SaleDate = '2024-01-19';
EXEC InsertSalesDetails @SaleDetailsID = 703, @SaleNo = 108, @OrderNo = 429, @Quantity = 11, @TypeSizeID = 396, @SaleDate = '2024-01-19';
EXEC InsertSalesDetails @SaleDetailsID = 704, @SaleNo = 352, @OrderNo = 479, @Quantity = 11, @TypeSizeID = 234, @SaleDate = '2024-01-19';
EXEC InsertSalesDetails @SaleDetailsID = 705, @SaleNo = 169, @OrderNo = 393, @Quantity = 24, @TypeSizeID = 170, @SaleDate = '2024-01-19';
EXEC InsertSalesDetails @SaleDetailsID = 706, @SaleNo = 491, @OrderNo = 84, @Quantity = 18, @TypeSizeID = 207, @SaleDate = '2024-01-20';
EXEC InsertSalesDetails @SaleDetailsID = 707, @SaleNo = 626, @OrderNo = 67, @Quantity = 12, @TypeSizeID = 224, @SaleDate = '2024-01-20';
EXEC InsertSalesDetails @SaleDetailsID = 708, @SaleNo = 281, @OrderNo = 473, @Quantity = 21, @TypeSizeID = 246, @SaleDate = '2024-01-20';
EXEC InsertSalesDetails @SaleDetailsID = 709, @SaleNo = 215, @OrderNo = 500, @Quantity = 45, @TypeSizeID = 162, @SaleDate = '2024-01-20';
EXEC InsertSalesDetails @SaleDetailsID = 710, @SaleNo = 55, @OrderNo = 177, @Quantity = 20, @TypeSizeID = 18, @SaleDate = '2024-01-20';
EXEC InsertSalesDetails @SaleDetailsID = 711, @SaleNo = 644, @OrderNo = 500, @Quantity = 22, @TypeSizeID = 99, @SaleDate = '2024-01-21';
EXEC InsertSalesDetails @SaleDetailsID = 712, @SaleNo = 266, @OrderNo = 329, @Quantity = 28, @TypeSizeID = 314, @SaleDate = '2024-01-21';
EXEC InsertSalesDetails @SaleDetailsID = 713, @SaleNo = 485, @OrderNo = 63, @Quantity = 18, @TypeSizeID = 422, @SaleDate = '2024-01-21';
EXEC InsertSalesDetails @SaleDetailsID = 714, @SaleNo = 255, @OrderNo = 290, @Quantity = 44, @TypeSizeID = 348, @SaleDate = '2024-01-21';
EXEC InsertSalesDetails @SaleDetailsID = 715, @SaleNo = 444, @OrderNo = 229, @Quantity = 20, @TypeSizeID = 457, @SaleDate = '2024-01-21';
EXEC InsertSalesDetails @SaleDetailsID = 716, @SaleNo = 61, @OrderNo = 300, @Quantity = 6, @TypeSizeID = 209, @SaleDate = '2024-01-22';
EXEC InsertSalesDetails @SaleDetailsID = 717, @SaleNo = 302, @OrderNo = 261, @Quantity = 43, @TypeSizeID = 272, @SaleDate = '2024-01-22';
EXEC InsertSalesDetails @SaleDetailsID = 718, @SaleNo = 138, @OrderNo = 79, @Quantity = 11, @TypeSizeID = 315, @SaleDate = '2024-01-22';
EXEC InsertSalesDetails @SaleDetailsID = 719, @SaleNo = 575, @OrderNo = 286, @Quantity = 22, @TypeSizeID = 423, @SaleDate = '2024-01-22';
EXEC InsertSalesDetails @SaleDetailsID = 720, @SaleNo = 680, @OrderNo = 40, @Quantity = 37, @TypeSizeID = 297, @SaleDate = '2024-01-22';
EXEC InsertSalesDetails @SaleDetailsID = 721, @SaleNo = 20, @OrderNo = 99, @Quantity = 19, @TypeSizeID = 186, @SaleDate = '2024-01-23';
EXEC InsertSalesDetails @SaleDetailsID = 722, @SaleNo = 375, @OrderNo = 456, @Quantity = 26, @TypeSizeID = 255, @SaleDate = '2024-01-23';
EXEC InsertSalesDetails @SaleDetailsID = 723, @SaleNo = 77, @OrderNo = 478, @Quantity = 21, @TypeSizeID = 19, @SaleDate = '2024-01-23';
EXEC InsertSalesDetails @SaleDetailsID = 724, @SaleNo = 339, @OrderNo = 208, @Quantity = 6, @TypeSizeID = 364, @SaleDate = '2024-01-23';
EXEC InsertSalesDetails @SaleDetailsID = 725, @SaleNo = 555, @OrderNo = 155, @Quantity = 30, @TypeSizeID = 61, @SaleDate = '2024-01-23';
EXEC InsertSalesDetails @SaleDetailsID = 726, @SaleNo = 398, @OrderNo = 109, @Quantity = 7, @TypeSizeID = 321, @SaleDate = '2024-01-24';
EXEC InsertSalesDetails @SaleDetailsID = 727, @SaleNo = 117, @OrderNo = 357, @Quantity = 49, @TypeSizeID = 294, @SaleDate = '2024-01-24';
EXEC InsertSalesDetails @SaleDetailsID = 728, @SaleNo = 572, @OrderNo = 226, @Quantity = 12, @TypeSizeID = 110, @SaleDate = '2024-01-24';
EXEC InsertSalesDetails @SaleDetailsID = 729, @SaleNo = 655, @OrderNo = 279, @Quantity = 6, @TypeSizeID = 248, @SaleDate = '2024-01-24';
EXEC InsertSalesDetails @SaleDetailsID = 730, @SaleNo = 52, @OrderNo = 495, @Quantity = 7, @TypeSizeID = 83, @SaleDate = '2024-01-24';
EXEC InsertSalesDetails @SaleDetailsID = 731, @SaleNo = 523, @OrderNo = 479, @Quantity = 10, @TypeSizeID = 309, @SaleDate = '2024-01-25';
EXEC InsertSalesDetails @SaleDetailsID = 732, @SaleNo = 162, @OrderNo = 264, @Quantity = 30, @TypeSizeID = 131, @SaleDate = '2024-01-25';
EXEC InsertSalesDetails @SaleDetailsID = 733, @SaleNo = 156, @OrderNo = 490, @Quantity = 3, @TypeSizeID = 25, @SaleDate = '2024-01-25';
EXEC InsertSalesDetails @SaleDetailsID = 734, @SaleNo = 260, @OrderNo = 2, @Quantity = 4, @TypeSizeID = 371, @SaleDate = '2024-01-25';
EXEC InsertSalesDetails @SaleDetailsID = 735, @SaleNo = 11, @OrderNo = 33, @Quantity = 26, @TypeSizeID = 196, @SaleDate = '2024-01-25';
EXEC InsertSalesDetails @SaleDetailsID = 736, @SaleNo = 424, @OrderNo = 83, @Quantity = 11, @TypeSizeID = 343, @SaleDate = '2024-01-26';
EXEC InsertSalesDetails @SaleDetailsID = 737, @SaleNo = 445, @OrderNo = 154, @Quantity = 35, @TypeSizeID = 136, @SaleDate = '2024-01-26';
EXEC InsertSalesDetails @SaleDetailsID = 738, @SaleNo = 214, @OrderNo = 388, @Quantity = 11, @TypeSizeID = 463, @SaleDate = '2024-01-26';
EXEC InsertSalesDetails @SaleDetailsID = 739, @SaleNo = 153, @OrderNo = 228, @Quantity = 34, @TypeSizeID = 463, @SaleDate = '2024-01-26';
EXEC InsertSalesDetails @SaleDetailsID = 740, @SaleNo = 195, @OrderNo = 262, @Quantity = 27, @TypeSizeID = 381, @SaleDate = '2024-01-26';
EXEC InsertSalesDetails @SaleDetailsID = 741, @SaleNo = 601, @OrderNo = 206, @Quantity = 22, @TypeSizeID = 353, @SaleDate = '2024-01-27';
EXEC InsertSalesDetails @SaleDetailsID = 742, @SaleNo = 157, @OrderNo = 350, @Quantity = 24, @TypeSizeID = 230, @SaleDate = '2024-01-27';
EXEC InsertSalesDetails @SaleDetailsID = 743, @SaleNo = 206, @OrderNo = 288, @Quantity = 13, @TypeSizeID = 12, @SaleDate = '2024-01-27';
EXEC InsertSalesDetails @SaleDetailsID = 744, @SaleNo = 284, @OrderNo = 157, @Quantity = 35, @TypeSizeID = 387, @SaleDate = '2024-01-27';
EXEC InsertSalesDetails @SaleDetailsID = 745, @SaleNo = 389, @OrderNo = 107, @Quantity = 17, @TypeSizeID = 130, @SaleDate = '2024-01-27';
EXEC InsertSalesDetails @SaleDetailsID = 746, @SaleNo = 633, @OrderNo = 193, @Quantity = 41, @TypeSizeID = 191, @SaleDate = '2024-01-28';
EXEC InsertSalesDetails @SaleDetailsID = 747, @SaleNo = 404, @OrderNo = 458, @Quantity = 20, @TypeSizeID = 242, @SaleDate = '2024-01-28';
EXEC InsertSalesDetails @SaleDetailsID = 748, @SaleNo = 294, @OrderNo = 167, @Quantity = 30, @TypeSizeID = 452, @SaleDate = '2024-01-28';
EXEC InsertSalesDetails @SaleDetailsID = 749, @SaleNo = 612, @OrderNo = 87, @Quantity = 25, @TypeSizeID = 392, @SaleDate = '2024-01-28';
EXEC InsertSalesDetails @SaleDetailsID = 750, @SaleNo = 662, @OrderNo = 473, @Quantity = 38, @TypeSizeID = 152, @SaleDate = '2024-01-28';
EXEC InsertSalesDetails @SaleDetailsID = 751, @SaleNo = 624, @OrderNo = 277, @Quantity = 48, @TypeSizeID = 420, @SaleDate = '2024-01-29';
EXEC InsertSalesDetails @SaleDetailsID = 752, @SaleNo = 700, @OrderNo = 19, @Quantity = 11, @TypeSizeID = 158, @SaleDate = '2024-01-29';
EXEC InsertSalesDetails @SaleDetailsID = 753, @SaleNo = 498, @OrderNo = 437, @Quantity = 11, @TypeSizeID = 377, @SaleDate = '2024-01-29';
EXEC InsertSalesDetails @SaleDetailsID = 754, @SaleNo = 621, @OrderNo = 374, @Quantity = 1, @TypeSizeID = 250, @SaleDate = '2024-01-29';
EXEC InsertSalesDetails @SaleDetailsID = 755, @SaleNo = 459, @OrderNo = 161, @Quantity = 4, @TypeSizeID = 26, @SaleDate = '2024-01-29';
EXEC InsertSalesDetails @SaleDetailsID = 756, @SaleNo = 281, @OrderNo = 361, @Quantity = 1, @TypeSizeID = 396, @SaleDate = '2024-01-30';
EXEC InsertSalesDetails @SaleDetailsID = 757, @SaleNo = 290, @OrderNo = 218, @Quantity = 28, @TypeSizeID = 353, @SaleDate = '2024-01-30';
EXEC InsertSalesDetails @SaleDetailsID = 758, @SaleNo = 356, @OrderNo = 82, @Quantity = 38, @TypeSizeID = 344, @SaleDate = '2024-01-30';
EXEC InsertSalesDetails @SaleDetailsID = 759, @SaleNo = 33, @OrderNo = 456, @Quantity = 13, @TypeSizeID = 23, @SaleDate = '2024-01-30';
EXEC InsertSalesDetails @SaleDetailsID = 760, @SaleNo = 612, @OrderNo = 243, @Quantity = 7, @TypeSizeID = 42, @SaleDate = '2024-01-30';
EXEC InsertSalesDetails @SaleDetailsID = 761, @SaleNo = 557, @OrderNo = 206, @Quantity = 37, @TypeSizeID = 298, @SaleDate = '2024-01-31';
EXEC InsertSalesDetails @SaleDetailsID = 762, @SaleNo = 440, @OrderNo = 191, @Quantity = 41, @TypeSizeID = 359, @SaleDate = '2024-01-31';
EXEC InsertSalesDetails @SaleDetailsID = 763, @SaleNo = 371, @OrderNo = 89, @Quantity = 25, @TypeSizeID = 318, @SaleDate = '2024-01-31';
EXEC InsertSalesDetails @SaleDetailsID = 764, @SaleNo = 470, @OrderNo = 270, @Quantity = 37, @TypeSizeID = 237, @SaleDate = '2024-01-31';
EXEC InsertSalesDetails @SaleDetailsID = 765, @SaleNo = 202, @OrderNo = 128, @Quantity = 30, @TypeSizeID = 447, @SaleDate = '2024-01-31';
EXEC InsertSalesDetails @SaleDetailsID = 766, @SaleNo = 87, @OrderNo = 80, @Quantity = 40, @TypeSizeID = 308, @SaleDate = '2024-02-01';
EXEC InsertSalesDetails @SaleDetailsID = 767, @SaleNo = 449, @OrderNo = 293, @Quantity = 11, @TypeSizeID = 209, @SaleDate = '2024-02-01';
EXEC InsertSalesDetails @SaleDetailsID = 768, @SaleNo = 645, @OrderNo = 59, @Quantity = 26, @TypeSizeID = 487, @SaleDate = '2024-02-01';
EXEC InsertSalesDetails @SaleDetailsID = 769, @SaleNo = 594, @OrderNo = 496, @Quantity = 2, @TypeSizeID = 436, @SaleDate = '2024-02-01';
EXEC InsertSalesDetails @SaleDetailsID = 770, @SaleNo = 265, @OrderNo = 334, @Quantity = 22, @TypeSizeID = 85, @SaleDate = '2024-02-01';
EXEC InsertSalesDetails @SaleDetailsID = 771, @SaleNo = 173, @OrderNo = 138, @Quantity = 13, @TypeSizeID = 96, @SaleDate = '2024-02-02';
EXEC InsertSalesDetails @SaleDetailsID = 772, @SaleNo = 637, @OrderNo = 190, @Quantity = 28, @TypeSizeID = 325, @SaleDate = '2024-02-02';
EXEC InsertSalesDetails @SaleDetailsID = 773, @SaleNo = 633, @OrderNo = 228, @Quantity = 30, @TypeSizeID = 339, @SaleDate = '2024-02-02';
EXEC InsertSalesDetails @SaleDetailsID = 774, @SaleNo = 600, @OrderNo = 481, @Quantity = 22, @TypeSizeID = 185, @SaleDate = '2024-02-02';
EXEC InsertSalesDetails @SaleDetailsID = 775, @SaleNo = 199, @OrderNo = 415, @Quantity = 11, @TypeSizeID = 175, @SaleDate = '2024-02-02';
EXEC InsertSalesDetails @SaleDetailsID = 776, @SaleNo = 386, @OrderNo = 339, @Quantity = 3, @TypeSizeID = 436, @SaleDate = '2024-02-03';
EXEC InsertSalesDetails @SaleDetailsID = 777, @SaleNo = 263, @OrderNo = 208, @Quantity = 11, @TypeSizeID = 269, @SaleDate = '2024-02-03';
EXEC InsertSalesDetails @SaleDetailsID = 778, @SaleNo = 560, @OrderNo = 249, @Quantity = 42, @TypeSizeID = 69, @SaleDate = '2024-02-03';
EXEC InsertSalesDetails @SaleDetailsID = 779, @SaleNo = 203, @OrderNo = 411, @Quantity = 13, @TypeSizeID = 469, @SaleDate = '2024-02-03';
EXEC InsertSalesDetails @SaleDetailsID = 780, @SaleNo = 248, @OrderNo = 38, @Quantity = 48, @TypeSizeID = 198, @SaleDate = '2024-02-03';
EXEC InsertSalesDetails @SaleDetailsID = 781, @SaleNo = 97, @OrderNo = 480, @Quantity = 21, @TypeSizeID = 312, @SaleDate = '2024-02-04';
EXEC InsertSalesDetails @SaleDetailsID = 782, @SaleNo = 282, @OrderNo = 189, @Quantity = 18, @TypeSizeID = 223, @SaleDate = '2024-02-04';
EXEC InsertSalesDetails @SaleDetailsID = 783, @SaleNo = 403, @OrderNo = 477, @Quantity = 3, @TypeSizeID = 375, @SaleDate = '2024-02-04';
EXEC InsertSalesDetails @SaleDetailsID = 784, @SaleNo = 653, @OrderNo = 157, @Quantity = 35, @TypeSizeID = 360, @SaleDate = '2024-02-04';
EXEC InsertSalesDetails @SaleDetailsID = 785, @SaleNo = 564, @OrderNo = 314, @Quantity = 13, @TypeSizeID = 131, @SaleDate = '2024-02-04';
EXEC InsertSalesDetails @SaleDetailsID = 786, @SaleNo = 286, @OrderNo = 458, @Quantity = 50, @TypeSizeID = 295, @SaleDate = '2024-02-05';
EXEC InsertSalesDetails @SaleDetailsID = 787, @SaleNo = 340, @OrderNo = 179, @Quantity = 44, @TypeSizeID = 491, @SaleDate = '2024-02-05';
EXEC InsertSalesDetails @SaleDetailsID = 788, @SaleNo = 123, @OrderNo = 234, @Quantity = 18, @TypeSizeID = 350, @SaleDate = '2024-02-05';
EXEC InsertSalesDetails @SaleDetailsID = 789, @SaleNo = 572, @OrderNo = 84, @Quantity = 18, @TypeSizeID = 125, @SaleDate = '2024-02-05';
EXEC InsertSalesDetails @SaleDetailsID = 790, @SaleNo = 296, @OrderNo = 114, @Quantity = 25, @TypeSizeID = 142, @SaleDate = '2024-02-05';
EXEC InsertSalesDetails @SaleDetailsID = 791, @SaleNo = 692, @OrderNo = 223, @Quantity = 10, @TypeSizeID = 271, @SaleDate = '2024-02-06';
EXEC InsertSalesDetails @SaleDetailsID = 792, @SaleNo = 546, @OrderNo = 435, @Quantity = 37, @TypeSizeID = 55, @SaleDate = '2024-02-06';
EXEC InsertSalesDetails @SaleDetailsID = 793, @SaleNo = 113, @OrderNo = 159, @Quantity = 37, @TypeSizeID = 352, @SaleDate = '2024-02-06';
EXEC InsertSalesDetails @SaleDetailsID = 794, @SaleNo = 600, @OrderNo = 195, @Quantity = 10, @TypeSizeID = 160, @SaleDate = '2024-02-06';
EXEC InsertSalesDetails @SaleDetailsID = 795, @SaleNo = 331, @OrderNo = 260, @Quantity = 46, @TypeSizeID = 258, @SaleDate = '2024-02-06';
EXEC InsertSalesDetails @SaleDetailsID = 796, @SaleNo = 597, @OrderNo = 277, @Quantity = 14, @TypeSizeID = 442, @SaleDate = '2024-02-07';
EXEC InsertSalesDetails @SaleDetailsID = 797, @SaleNo = 121, @OrderNo = 141, @Quantity = 26, @TypeSizeID = 133, @SaleDate = '2024-02-07';
EXEC InsertSalesDetails @SaleDetailsID = 798, @SaleNo = 19, @OrderNo = 385, @Quantity = 36, @TypeSizeID = 90, @SaleDate = '2024-02-07';
EXEC InsertSalesDetails @SaleDetailsID = 799, @SaleNo = 303, @OrderNo = 125, @Quantity = 15, @TypeSizeID = 264, @SaleDate = '2024-02-07';
EXEC InsertSalesDetails @SaleDetailsID = 800, @SaleNo = 355, @OrderNo = 201, @Quantity = 19, @TypeSizeID = 81, @SaleDate = '2024-02-07';
EXEC InsertSalesDetails @SaleDetailsID = 801, @SaleNo = 569, @OrderNo = 328, @Quantity = 27, @TypeSizeID = 430, @SaleDate = '2024-02-08';
EXEC InsertSalesDetails @SaleDetailsID = 802, @SaleNo = 56, @OrderNo = 243, @Quantity = 33, @TypeSizeID = 17, @SaleDate = '2024-02-08';
EXEC InsertSalesDetails @SaleDetailsID = 803, @SaleNo = 680, @OrderNo = 10, @Quantity = 23, @TypeSizeID = 6, @SaleDate = '2024-02-08';
EXEC InsertSalesDetails @SaleDetailsID = 804, @SaleNo = 632, @OrderNo = 439, @Quantity = 8, @TypeSizeID = 76, @SaleDate = '2024-02-08';
EXEC InsertSalesDetails @SaleDetailsID = 805, @SaleNo = 455, @OrderNo = 306, @Quantity = 4, @TypeSizeID = 441, @SaleDate = '2024-02-08';
EXEC InsertSalesDetails @SaleDetailsID = 806, @SaleNo = 571, @OrderNo = 306, @Quantity = 28, @TypeSizeID = 246, @SaleDate = '2024-02-09';
EXEC InsertSalesDetails @SaleDetailsID = 807, @SaleNo = 446, @OrderNo = 105, @Quantity = 37, @TypeSizeID = 332, @SaleDate = '2024-02-09';
EXEC InsertSalesDetails @SaleDetailsID = 808, @SaleNo = 115, @OrderNo = 334, @Quantity = 45, @TypeSizeID = 196, @SaleDate = '2024-02-09';
EXEC InsertSalesDetails @SaleDetailsID = 809, @SaleNo = 103, @OrderNo = 139, @Quantity = 25, @TypeSizeID = 280, @SaleDate = '2024-02-09';
EXEC InsertSalesDetails @SaleDetailsID = 810, @SaleNo = 381, @OrderNo = 160, @Quantity = 20, @TypeSizeID = 74, @SaleDate = '2024-02-09';
EXEC InsertSalesDetails @SaleDetailsID = 811, @SaleNo = 508, @OrderNo = 81, @Quantity = 36, @TypeSizeID = 238, @SaleDate = '2024-02-10';
EXEC InsertSalesDetails @SaleDetailsID = 812, @SaleNo = 576, @OrderNo = 374, @Quantity = 38, @TypeSizeID = 491, @SaleDate = '2024-02-10';
EXEC InsertSalesDetails @SaleDetailsID = 813, @SaleNo = 47, @OrderNo = 159, @Quantity = 12, @TypeSizeID = 469, @SaleDate = '2024-02-10';
EXEC InsertSalesDetails @SaleDetailsID = 814, @SaleNo = 7, @OrderNo = 282, @Quantity = 48, @TypeSizeID = 191, @SaleDate = '2024-02-10';
EXEC InsertSalesDetails @SaleDetailsID = 815, @SaleNo = 356, @OrderNo = 6, @Quantity = 24, @TypeSizeID = 186, @SaleDate = '2024-02-10';
EXEC InsertSalesDetails @SaleDetailsID = 816, @SaleNo = 351, @OrderNo = 355, @Quantity = 8, @TypeSizeID = 492, @SaleDate = '2024-02-11';
EXEC InsertSalesDetails @SaleDetailsID = 817, @SaleNo = 571, @OrderNo = 77, @Quantity = 42, @TypeSizeID = 479, @SaleDate = '2024-02-11';
EXEC InsertSalesDetails @SaleDetailsID = 818, @SaleNo = 11, @OrderNo = 69, @Quantity = 48, @TypeSizeID = 102, @SaleDate = '2024-02-11';
EXEC InsertSalesDetails @SaleDetailsID = 819, @SaleNo = 516, @OrderNo = 429, @Quantity = 48, @TypeSizeID = 484, @SaleDate = '2024-02-11';
EXEC InsertSalesDetails @SaleDetailsID = 820, @SaleNo = 474, @OrderNo = 295, @Quantity = 26, @TypeSizeID = 260, @SaleDate = '2024-02-11';
EXEC InsertSalesDetails @SaleDetailsID = 821, @SaleNo = 390, @OrderNo = 363, @Quantity = 50, @TypeSizeID = 409, @SaleDate = '2024-02-12';
EXEC InsertSalesDetails @SaleDetailsID = 822, @SaleNo = 511, @OrderNo = 75, @Quantity = 18, @TypeSizeID = 308, @SaleDate = '2024-02-12';
EXEC InsertSalesDetails @SaleDetailsID = 823, @SaleNo = 463, @OrderNo = 401, @Quantity = 42, @TypeSizeID = 192, @SaleDate = '2024-02-12';
EXEC InsertSalesDetails @SaleDetailsID = 824, @SaleNo = 167, @OrderNo = 169, @Quantity = 50, @TypeSizeID = 462, @SaleDate = '2024-02-12';
EXEC InsertSalesDetails @SaleDetailsID = 825, @SaleNo = 96, @OrderNo = 7, @Quantity = 30, @TypeSizeID = 363, @SaleDate = '2024-02-12';
EXEC InsertSalesDetails @SaleDetailsID = 826, @SaleNo = 257, @OrderNo = 297, @Quantity = 7, @TypeSizeID = 228, @SaleDate = '2024-02-13';
EXEC InsertSalesDetails @SaleDetailsID = 827, @SaleNo = 126, @OrderNo = 430, @Quantity = 41, @TypeSizeID = 96, @SaleDate = '2024-02-13';
EXEC InsertSalesDetails @SaleDetailsID = 828, @SaleNo = 197, @OrderNo = 222, @Quantity = 43, @TypeSizeID = 432, @SaleDate = '2024-02-13';
EXEC InsertSalesDetails @SaleDetailsID = 829, @SaleNo = 237, @OrderNo = 241, @Quantity = 35, @TypeSizeID = 449, @SaleDate = '2024-02-13';
EXEC InsertSalesDetails @SaleDetailsID = 830, @SaleNo = 247, @OrderNo = 83, @Quantity = 20, @TypeSizeID = 251, @SaleDate = '2024-02-13';
EXEC InsertSalesDetails @SaleDetailsID = 831, @SaleNo = 344, @OrderNo = 176, @Quantity = 39, @TypeSizeID = 374, @SaleDate = '2024-02-14';
EXEC InsertSalesDetails @SaleDetailsID = 832, @SaleNo = 139, @OrderNo = 89, @Quantity = 46, @TypeSizeID = 374, @SaleDate = '2024-02-14';
EXEC InsertSalesDetails @SaleDetailsID = 833, @SaleNo = 494, @OrderNo = 66, @Quantity = 31, @TypeSizeID = 176, @SaleDate = '2024-02-14';
EXEC InsertSalesDetails @SaleDetailsID = 834, @SaleNo = 693, @OrderNo = 473, @Quantity = 7, @TypeSizeID = 440, @SaleDate = '2024-02-14';
EXEC InsertSalesDetails @SaleDetailsID = 835, @SaleNo = 193, @OrderNo = 27, @Quantity = 49, @TypeSizeID = 462, @SaleDate = '2024-02-14';
EXEC InsertSalesDetails @SaleDetailsID = 836, @SaleNo = 544, @OrderNo = 377, @Quantity = 27, @TypeSizeID = 495, @SaleDate = '2024-02-15';
EXEC InsertSalesDetails @SaleDetailsID = 837, @SaleNo = 279, @OrderNo = 70, @Quantity = 41, @TypeSizeID = 335, @SaleDate = '2024-02-15';
EXEC InsertSalesDetails @SaleDetailsID = 838, @SaleNo = 269, @OrderNo = 127, @Quantity = 47, @TypeSizeID = 7, @SaleDate = '2024-02-15';
EXEC InsertSalesDetails @SaleDetailsID = 839, @SaleNo = 151, @OrderNo = 164, @Quantity = 4, @TypeSizeID = 321, @SaleDate = '2024-02-15';
EXEC InsertSalesDetails @SaleDetailsID = 840, @SaleNo = 194, @OrderNo = 413, @Quantity = 31, @TypeSizeID = 99, @SaleDate = '2024-02-15';
EXEC InsertSalesDetails @SaleDetailsID = 841, @SaleNo = 146, @OrderNo = 291, @Quantity = 6, @TypeSizeID = 415, @SaleDate = '2024-02-16';
EXEC InsertSalesDetails @SaleDetailsID = 842, @SaleNo = 275, @OrderNo = 66, @Quantity = 34, @TypeSizeID = 422, @SaleDate = '2024-02-16';
EXEC InsertSalesDetails @SaleDetailsID = 843, @SaleNo = 100, @OrderNo = 229, @Quantity = 40, @TypeSizeID = 3, @SaleDate = '2024-02-16';
EXEC InsertSalesDetails @SaleDetailsID = 844, @SaleNo = 506, @OrderNo = 365, @Quantity = 11, @TypeSizeID = 341, @SaleDate = '2024-02-16';
EXEC InsertSalesDetails @SaleDetailsID = 845, @SaleNo = 388, @OrderNo = 264, @Quantity = 2, @TypeSizeID = 264, @SaleDate = '2024-02-16';
EXEC InsertSalesDetails @SaleDetailsID = 846, @SaleNo = 272, @OrderNo = 124, @Quantity = 28, @TypeSizeID = 247, @SaleDate = '2024-02-17';
EXEC InsertSalesDetails @SaleDetailsID = 847, @SaleNo = 470, @OrderNo = 12, @Quantity = 11, @TypeSizeID = 253, @SaleDate = '2024-02-17';
EXEC InsertSalesDetails @SaleDetailsID = 848, @SaleNo = 159, @OrderNo = 277, @Quantity = 18, @TypeSizeID = 252, @SaleDate = '2024-02-17';
EXEC InsertSalesDetails @SaleDetailsID = 849, @SaleNo = 608, @OrderNo = 44, @Quantity = 22, @TypeSizeID = 53, @SaleDate = '2024-02-17';
EXEC InsertSalesDetails @SaleDetailsID = 850, @SaleNo = 648, @OrderNo = 463, @Quantity = 5, @TypeSizeID = 92, @SaleDate = '2024-02-17';
EXEC InsertSalesDetails @SaleDetailsID = 851, @SaleNo = 508, @OrderNo = 244, @Quantity = 39, @TypeSizeID = 384, @SaleDate = '2024-02-18';
EXEC InsertSalesDetails @SaleDetailsID = 852, @SaleNo = 624, @OrderNo = 11, @Quantity = 15, @TypeSizeID = 90, @SaleDate = '2024-02-18';
EXEC InsertSalesDetails @SaleDetailsID = 853, @SaleNo = 450, @OrderNo = 315, @Quantity = 7, @TypeSizeID = 318, @SaleDate = '2024-02-18';
EXEC InsertSalesDetails @SaleDetailsID = 854, @SaleNo = 240, @OrderNo = 229, @Quantity = 1, @TypeSizeID = 39, @SaleDate = '2024-02-18';
EXEC InsertSalesDetails @SaleDetailsID = 855, @SaleNo = 466, @OrderNo = 281, @Quantity = 13, @TypeSizeID = 267, @SaleDate = '2024-02-18';
EXEC InsertSalesDetails @SaleDetailsID = 856, @SaleNo = 424, @OrderNo = 111, @Quantity = 20, @TypeSizeID = 293, @SaleDate = '2024-02-19';
EXEC InsertSalesDetails @SaleDetailsID = 857, @SaleNo = 448, @OrderNo = 409, @Quantity = 2, @TypeSizeID = 205, @SaleDate = '2024-02-19';
EXEC InsertSalesDetails @SaleDetailsID = 858, @SaleNo = 696, @OrderNo = 44, @Quantity = 22, @TypeSizeID = 95, @SaleDate = '2024-02-19';
EXEC InsertSalesDetails @SaleDetailsID = 859, @SaleNo = 44, @OrderNo = 125, @Quantity = 10, @TypeSizeID = 236, @SaleDate = '2024-02-19';
EXEC InsertSalesDetails @SaleDetailsID = 860, @SaleNo = 423, @OrderNo = 130, @Quantity = 23, @TypeSizeID = 77, @SaleDate = '2024-02-19';
EXEC InsertSalesDetails @SaleDetailsID = 861, @SaleNo = 90, @OrderNo = 468, @Quantity = 26, @TypeSizeID = 483, @SaleDate = '2024-02-20';
EXEC InsertSalesDetails @SaleDetailsID = 862, @SaleNo = 48, @OrderNo = 152, @Quantity = 42, @TypeSizeID = 145, @SaleDate = '2024-02-20';
EXEC InsertSalesDetails @SaleDetailsID = 863, @SaleNo = 198, @OrderNo = 122, @Quantity = 2, @TypeSizeID = 131, @SaleDate = '2024-02-20';
EXEC InsertSalesDetails @SaleDetailsID = 864, @SaleNo = 311, @OrderNo = 459, @Quantity = 5, @TypeSizeID = 46, @SaleDate = '2024-02-20';
EXEC InsertSalesDetails @SaleDetailsID = 865, @SaleNo = 367, @OrderNo = 327, @Quantity = 36, @TypeSizeID = 215, @SaleDate = '2024-02-20';
EXEC InsertSalesDetails @SaleDetailsID = 866, @SaleNo = 540, @OrderNo = 32, @Quantity = 25, @TypeSizeID = 163, @SaleDate = '2024-02-21';
EXEC InsertSalesDetails @SaleDetailsID = 867, @SaleNo = 206, @OrderNo = 366, @Quantity = 41, @TypeSizeID = 218, @SaleDate = '2024-02-21';
EXEC InsertSalesDetails @SaleDetailsID = 868, @SaleNo = 312, @OrderNo = 250, @Quantity = 49, @TypeSizeID = 468, @SaleDate = '2024-02-21';
EXEC InsertSalesDetails @SaleDetailsID = 869, @SaleNo = 269, @OrderNo = 495, @Quantity = 15, @TypeSizeID = 129, @SaleDate = '2024-02-21';
EXEC InsertSalesDetails @SaleDetailsID = 870, @SaleNo = 394, @OrderNo = 245, @Quantity = 14, @TypeSizeID = 140, @SaleDate = '2024-02-21';
EXEC InsertSalesDetails @SaleDetailsID = 871, @SaleNo = 174, @OrderNo = 404, @Quantity = 34, @TypeSizeID = 322, @SaleDate = '2024-02-22';
EXEC InsertSalesDetails @SaleDetailsID = 872, @SaleNo = 449, @OrderNo = 137, @Quantity = 11, @TypeSizeID = 274, @SaleDate = '2024-02-22';
EXEC InsertSalesDetails @SaleDetailsID = 873, @SaleNo = 348, @OrderNo = 402, @Quantity = 6, @TypeSizeID = 61, @SaleDate = '2024-02-22';
EXEC InsertSalesDetails @SaleDetailsID = 874, @SaleNo = 324, @OrderNo = 400, @Quantity = 7, @TypeSizeID = 388, @SaleDate = '2024-02-22';
EXEC InsertSalesDetails @SaleDetailsID = 875, @SaleNo = 580, @OrderNo = 86, @Quantity = 44, @TypeSizeID = 143, @SaleDate = '2024-02-22';
EXEC InsertSalesDetails @SaleDetailsID = 876, @SaleNo = 348, @OrderNo = 188, @Quantity = 50, @TypeSizeID = 467, @SaleDate = '2024-02-23';
EXEC InsertSalesDetails @SaleDetailsID = 877, @SaleNo = 489, @OrderNo = 443, @Quantity = 38, @TypeSizeID = 111, @SaleDate = '2024-02-23';
EXEC InsertSalesDetails @SaleDetailsID = 878, @SaleNo = 210, @OrderNo = 25, @Quantity = 46, @TypeSizeID = 306, @SaleDate = '2024-02-23';
EXEC InsertSalesDetails @SaleDetailsID = 879, @SaleNo = 224, @OrderNo = 225, @Quantity = 41, @TypeSizeID = 218, @SaleDate = '2024-02-23';
EXEC InsertSalesDetails @SaleDetailsID = 880, @SaleNo = 267, @OrderNo = 429, @Quantity = 21, @TypeSizeID = 11, @SaleDate = '2024-02-23';
EXEC InsertSalesDetails @SaleDetailsID = 881, @SaleNo = 391, @OrderNo = 179, @Quantity = 23, @TypeSizeID = 226, @SaleDate = '2024-02-24';
EXEC InsertSalesDetails @SaleDetailsID = 882, @SaleNo = 119, @OrderNo = 247, @Quantity = 6, @TypeSizeID = 342, @SaleDate = '2024-02-24';
EXEC InsertSalesDetails @SaleDetailsID = 883, @SaleNo = 172, @OrderNo = 199, @Quantity = 27, @TypeSizeID = 296, @SaleDate = '2024-02-24';
EXEC InsertSalesDetails @SaleDetailsID = 884, @SaleNo = 205, @OrderNo = 209, @Quantity = 17, @TypeSizeID = 373, @SaleDate = '2024-02-24';
EXEC InsertSalesDetails @SaleDetailsID = 885, @SaleNo = 125, @OrderNo = 417, @Quantity = 48, @TypeSizeID = 210, @SaleDate = '2024-02-24';
EXEC InsertSalesDetails @SaleDetailsID = 886, @SaleNo = 569, @OrderNo = 335, @Quantity = 30, @TypeSizeID = 187, @SaleDate = '2024-02-25';
EXEC InsertSalesDetails @SaleDetailsID = 887, @SaleNo = 17, @OrderNo = 270, @Quantity = 13, @TypeSizeID = 272, @SaleDate = '2024-02-25';
EXEC InsertSalesDetails @SaleDetailsID = 888, @SaleNo = 44, @OrderNo = 155, @Quantity = 17, @TypeSizeID = 374, @SaleDate = '2024-02-25';
EXEC InsertSalesDetails @SaleDetailsID = 889, @SaleNo = 85, @OrderNo = 224, @Quantity = 20, @TypeSizeID = 149, @SaleDate = '2024-02-25';
EXEC InsertSalesDetails @SaleDetailsID = 890, @SaleNo = 478, @OrderNo = 281, @Quantity = 45, @TypeSizeID = 462, @SaleDate = '2024-02-25';
EXEC InsertSalesDetails @SaleDetailsID = 891, @SaleNo = 593, @OrderNo = 106, @Quantity = 37, @TypeSizeID = 306, @SaleDate = '2024-02-26';
EXEC InsertSalesDetails @SaleDetailsID = 892, @SaleNo = 72, @OrderNo = 499, @Quantity = 2, @TypeSizeID = 333, @SaleDate = '2024-02-26';
EXEC InsertSalesDetails @SaleDetailsID = 893, @SaleNo = 663, @OrderNo = 494, @Quantity = 14, @TypeSizeID = 335, @SaleDate = '2024-02-26';
EXEC InsertSalesDetails @SaleDetailsID = 894, @SaleNo = 7, @OrderNo = 498, @Quantity = 19, @TypeSizeID = 279, @SaleDate = '2024-02-26';
EXEC InsertSalesDetails @SaleDetailsID = 895, @SaleNo = 100, @OrderNo = 416, @Quantity = 18, @TypeSizeID = 338, @SaleDate = '2024-02-26';
EXEC InsertSalesDetails @SaleDetailsID = 896, @SaleNo = 76, @OrderNo = 349, @Quantity = 25, @TypeSizeID = 144, @SaleDate = '2024-02-27';
EXEC InsertSalesDetails @SaleDetailsID = 897, @SaleNo = 202, @OrderNo = 470, @Quantity = 22, @TypeSizeID = 204, @SaleDate = '2024-02-27';
EXEC InsertSalesDetails @SaleDetailsID = 898, @SaleNo = 590, @OrderNo = 143, @Quantity = 5, @TypeSizeID = 492, @SaleDate = '2024-02-27';
EXEC InsertSalesDetails @SaleDetailsID = 899, @SaleNo = 554, @OrderNo = 244, @Quantity = 32, @TypeSizeID = 207, @SaleDate = '2024-02-27';
EXEC InsertSalesDetails @SaleDetailsID = 900, @SaleNo = 51, @OrderNo = 58, @Quantity = 31, @TypeSizeID = 291, @SaleDate = '2024-02-27';
EXEC InsertSalesDetails @SaleDetailsID = 901, @SaleNo = 337, @OrderNo = 19, @Quantity = 25, @TypeSizeID = 499, @SaleDate = '2024-02-28';
EXEC InsertSalesDetails @SaleDetailsID = 902, @SaleNo = 50, @OrderNo = 65, @Quantity = 31, @TypeSizeID = 384, @SaleDate = '2024-02-28';
EXEC InsertSalesDetails @SaleDetailsID = 903, @SaleNo = 348, @OrderNo = 234, @Quantity = 35, @TypeSizeID = 167, @SaleDate = '2024-02-28';
EXEC InsertSalesDetails @SaleDetailsID = 904, @SaleNo = 610, @OrderNo = 348, @Quantity = 35, @TypeSizeID = 48, @SaleDate = '2024-02-28';
EXEC InsertSalesDetails @SaleDetailsID = 905, @SaleNo = 416, @OrderNo = 36, @Quantity = 38, @TypeSizeID = 218, @SaleDate = '2024-02-28';
EXEC InsertSalesDetails @SaleDetailsID = 906, @SaleNo = 289, @OrderNo = 317, @Quantity = 44, @TypeSizeID = 398, @SaleDate = '2024-02-29';
EXEC InsertSalesDetails @SaleDetailsID = 907, @SaleNo = 302, @OrderNo = 271, @Quantity = 33, @TypeSizeID = 354, @SaleDate = '2024-02-29';
EXEC InsertSalesDetails @SaleDetailsID = 908, @SaleNo = 593, @OrderNo = 311, @Quantity = 7, @TypeSizeID = 262, @SaleDate = '2024-02-29';
EXEC InsertSalesDetails @SaleDetailsID = 909, @SaleNo = 173, @OrderNo = 259, @Quantity = 42, @TypeSizeID = 234, @SaleDate = '2024-02-29';
EXEC InsertSalesDetails @SaleDetailsID = 910, @SaleNo = 300, @OrderNo = 468, @Quantity = 19, @TypeSizeID = 278, @SaleDate = '2024-02-29';
EXEC InsertSalesDetails @SaleDetailsID = 911, @SaleNo = 597, @OrderNo = 58, @Quantity = 49, @TypeSizeID = 423, @SaleDate = '2024-03-01';
EXEC InsertSalesDetails @SaleDetailsID = 912, @SaleNo = 54, @OrderNo = 337, @Quantity = 4, @TypeSizeID = 60, @SaleDate = '2024-03-01';
EXEC InsertSalesDetails @SaleDetailsID = 913, @SaleNo = 111, @OrderNo = 309, @Quantity = 33, @TypeSizeID = 147, @SaleDate = '2024-03-01';
EXEC InsertSalesDetails @SaleDetailsID = 914, @SaleNo = 190, @OrderNo = 455, @Quantity = 41, @TypeSizeID = 165, @SaleDate = '2024-03-01';
EXEC InsertSalesDetails @SaleDetailsID = 915, @SaleNo = 407, @OrderNo = 163, @Quantity = 48, @TypeSizeID = 262, @SaleDate = '2024-03-01';
EXEC InsertSalesDetails @SaleDetailsID = 916, @SaleNo = 534, @OrderNo = 365, @Quantity = 28, @TypeSizeID = 41, @SaleDate = '2024-03-02';
EXEC InsertSalesDetails @SaleDetailsID = 917, @SaleNo = 63, @OrderNo = 422, @Quantity = 40, @TypeSizeID = 320, @SaleDate = '2024-03-02';
EXEC InsertSalesDetails @SaleDetailsID = 918, @SaleNo = 303, @OrderNo = 379, @Quantity = 18, @TypeSizeID = 470, @SaleDate = '2024-03-02';
EXEC InsertSalesDetails @SaleDetailsID = 919, @SaleNo = 679, @OrderNo = 411, @Quantity = 22, @TypeSizeID = 272, @SaleDate = '2024-03-02';
EXEC InsertSalesDetails @SaleDetailsID = 920, @SaleNo = 317, @OrderNo = 332, @Quantity = 7, @TypeSizeID = 332, @SaleDate = '2024-03-02';
EXEC InsertSalesDetails @SaleDetailsID = 921, @SaleNo = 112, @OrderNo = 404, @Quantity = 36, @TypeSizeID = 424, @SaleDate = '2024-03-03';
EXEC InsertSalesDetails @SaleDetailsID = 922, @SaleNo = 310, @OrderNo = 219, @Quantity = 41, @TypeSizeID = 137, @SaleDate = '2024-03-03';
EXEC InsertSalesDetails @SaleDetailsID = 923, @SaleNo = 73, @OrderNo = 435, @Quantity = 29, @TypeSizeID = 338, @SaleDate = '2024-03-03';
EXEC InsertSalesDetails @SaleDetailsID = 924, @SaleNo = 95, @OrderNo = 205, @Quantity = 13, @TypeSizeID = 249, @SaleDate = '2024-03-03';
EXEC InsertSalesDetails @SaleDetailsID = 925, @SaleNo = 22, @OrderNo = 469, @Quantity = 30, @TypeSizeID = 131, @SaleDate = '2024-03-03';
EXEC InsertSalesDetails @SaleDetailsID = 926, @SaleNo = 67, @OrderNo = 358, @Quantity = 8, @TypeSizeID = 4, @SaleDate = '2024-03-04';
EXEC InsertSalesDetails @SaleDetailsID = 927, @SaleNo = 686, @OrderNo = 111, @Quantity = 31, @TypeSizeID = 406, @SaleDate = '2024-03-04';
EXEC InsertSalesDetails @SaleDetailsID = 928, @SaleNo = 608, @OrderNo = 2, @Quantity = 28, @TypeSizeID = 370, @SaleDate = '2024-03-04';
EXEC InsertSalesDetails @SaleDetailsID = 929, @SaleNo = 9, @OrderNo = 242, @Quantity = 18, @TypeSizeID = 341, @SaleDate = '2024-03-04';
EXEC InsertSalesDetails @SaleDetailsID = 930, @SaleNo = 386, @OrderNo = 301, @Quantity = 4, @TypeSizeID = 131, @SaleDate = '2024-03-04';
EXEC InsertSalesDetails @SaleDetailsID = 931, @SaleNo = 561, @OrderNo = 88, @Quantity = 14, @TypeSizeID = 341, @SaleDate = '2024-03-05';
EXEC InsertSalesDetails @SaleDetailsID = 932, @SaleNo = 517, @OrderNo = 365, @Quantity = 19, @TypeSizeID = 398, @SaleDate = '2024-03-05';
EXEC InsertSalesDetails @SaleDetailsID = 933, @SaleNo = 482, @OrderNo = 53, @Quantity = 19, @TypeSizeID = 356, @SaleDate = '2024-03-05';
EXEC InsertSalesDetails @SaleDetailsID = 934, @SaleNo = 571, @OrderNo = 206, @Quantity = 41, @TypeSizeID = 403, @SaleDate = '2024-03-05';
EXEC InsertSalesDetails @SaleDetailsID = 935, @SaleNo = 217, @OrderNo = 286, @Quantity = 31, @TypeSizeID = 193, @SaleDate = '2024-03-05';
EXEC InsertSalesDetails @SaleDetailsID = 936, @SaleNo = 382, @OrderNo = 120, @Quantity = 12, @TypeSizeID = 249, @SaleDate = '2024-03-06';
EXEC InsertSalesDetails @SaleDetailsID = 937, @SaleNo = 107, @OrderNo = 340, @Quantity = 24, @TypeSizeID = 419, @SaleDate = '2024-03-06';
EXEC InsertSalesDetails @SaleDetailsID = 938, @SaleNo = 686, @OrderNo = 1, @Quantity = 32, @TypeSizeID = 364, @SaleDate = '2024-03-06';
EXEC InsertSalesDetails @SaleDetailsID = 939, @SaleNo = 11, @OrderNo = 48, @Quantity = 25, @TypeSizeID = 444, @SaleDate = '2024-03-06';
EXEC InsertSalesDetails @SaleDetailsID = 940, @SaleNo = 85, @OrderNo = 169, @Quantity = 45, @TypeSizeID = 202, @SaleDate = '2024-03-06';
EXEC InsertSalesDetails @SaleDetailsID = 941, @SaleNo = 56, @OrderNo = 306, @Quantity = 18, @TypeSizeID = 62, @SaleDate = '2024-03-07';
EXEC InsertSalesDetails @SaleDetailsID = 942, @SaleNo = 258, @OrderNo = 116, @Quantity = 27, @TypeSizeID = 226, @SaleDate = '2024-03-07';
EXEC InsertSalesDetails @SaleDetailsID = 943, @SaleNo = 484, @OrderNo = 56, @Quantity = 17, @TypeSizeID = 465, @SaleDate = '2024-03-07';
EXEC InsertSalesDetails @SaleDetailsID = 944, @SaleNo = 509, @OrderNo = 341, @Quantity = 32, @TypeSizeID = 249, @SaleDate = '2024-03-07';
EXEC InsertSalesDetails @SaleDetailsID = 945, @SaleNo = 323, @OrderNo = 404, @Quantity = 46, @TypeSizeID = 253, @SaleDate = '2024-03-07';
EXEC InsertSalesDetails @SaleDetailsID = 946, @SaleNo = 562, @OrderNo = 445, @Quantity = 33, @TypeSizeID = 157, @SaleDate = '2024-03-08';
EXEC InsertSalesDetails @SaleDetailsID = 947, @SaleNo = 45, @OrderNo = 253, @Quantity = 4, @TypeSizeID = 366, @SaleDate = '2024-03-08';
EXEC InsertSalesDetails @SaleDetailsID = 948, @SaleNo = 69, @OrderNo = 197, @Quantity = 22, @TypeSizeID = 213, @SaleDate = '2024-03-08';
EXEC InsertSalesDetails @SaleDetailsID = 949, @SaleNo = 574, @OrderNo = 376, @Quantity = 7, @TypeSizeID = 440, @SaleDate = '2024-03-08';
EXEC InsertSalesDetails @SaleDetailsID = 950, @SaleNo = 619, @OrderNo = 235, @Quantity = 12, @TypeSizeID = 104, @SaleDate = '2024-03-08';
EXEC InsertSalesDetails @SaleDetailsID = 951, @SaleNo = 664, @OrderNo = 146, @Quantity = 43, @TypeSizeID = 173, @SaleDate = '2024-03-09';
EXEC InsertSalesDetails @SaleDetailsID = 952, @SaleNo = 176, @OrderNo = 495, @Quantity = 35, @TypeSizeID = 397, @SaleDate = '2024-03-09';
EXEC InsertSalesDetails @SaleDetailsID = 953, @SaleNo = 103, @OrderNo = 148, @Quantity = 38, @TypeSizeID = 120, @SaleDate = '2024-03-09';
EXEC InsertSalesDetails @SaleDetailsID = 954, @SaleNo = 51, @OrderNo = 439, @Quantity = 8, @TypeSizeID = 401, @SaleDate = '2024-03-09';
EXEC InsertSalesDetails @SaleDetailsID = 955, @SaleNo = 555, @OrderNo = 214, @Quantity = 36, @TypeSizeID = 452, @SaleDate = '2024-03-09';
EXEC InsertSalesDetails @SaleDetailsID = 956, @SaleNo = 195, @OrderNo = 118, @Quantity = 15, @TypeSizeID = 134, @SaleDate = '2024-03-10';
EXEC InsertSalesDetails @SaleDetailsID = 957, @SaleNo = 337, @OrderNo = 382, @Quantity = 25, @TypeSizeID = 332, @SaleDate = '2024-03-10';
EXEC InsertSalesDetails @SaleDetailsID = 958, @SaleNo = 580, @OrderNo = 209, @Quantity = 21, @TypeSizeID = 160, @SaleDate = '2024-03-10';
EXEC InsertSalesDetails @SaleDetailsID = 959, @SaleNo = 657, @OrderNo = 350, @Quantity = 34, @TypeSizeID = 232, @SaleDate = '2024-03-10';
EXEC InsertSalesDetails @SaleDetailsID = 960, @SaleNo = 193, @OrderNo = 13, @Quantity = 37, @TypeSizeID = 163, @SaleDate = '2024-03-10';
EXEC InsertSalesDetails @SaleDetailsID = 961, @SaleNo = 328, @OrderNo = 17, @Quantity = 50, @TypeSizeID = 312, @SaleDate = '2024-03-11';
EXEC InsertSalesDetails @SaleDetailsID = 962, @SaleNo = 578, @OrderNo = 471, @Quantity = 27, @TypeSizeID = 164, @SaleDate = '2024-03-11';
EXEC InsertSalesDetails @SaleDetailsID = 963, @SaleNo = 600, @OrderNo = 254, @Quantity = 12, @TypeSizeID = 493, @SaleDate = '2024-03-11';
EXEC InsertSalesDetails @SaleDetailsID = 964, @SaleNo = 464, @OrderNo = 383, @Quantity = 6, @TypeSizeID = 1, @SaleDate = '2024-03-11';
EXEC InsertSalesDetails @SaleDetailsID = 965, @SaleNo = 667, @OrderNo = 82, @Quantity = 36, @TypeSizeID = 143, @SaleDate = '2024-03-11';
EXEC InsertSalesDetails @SaleDetailsID = 966, @SaleNo = 7, @OrderNo = 267, @Quantity = 13, @TypeSizeID = 333, @SaleDate = '2024-03-12';
EXEC InsertSalesDetails @SaleDetailsID = 967, @SaleNo = 204, @OrderNo = 480, @Quantity = 24, @TypeSizeID = 423, @SaleDate = '2024-03-12';
EXEC InsertSalesDetails @SaleDetailsID = 968, @SaleNo = 193, @OrderNo = 259, @Quantity = 23, @TypeSizeID = 256, @SaleDate = '2024-03-12';
EXEC InsertSalesDetails @SaleDetailsID = 969, @SaleNo = 355, @OrderNo = 95, @Quantity = 16, @TypeSizeID = 128, @SaleDate = '2024-03-12';
EXEC InsertSalesDetails @SaleDetailsID = 970, @SaleNo = 420, @OrderNo = 49, @Quantity = 36, @TypeSizeID = 93, @SaleDate = '2024-03-12';
EXEC InsertSalesDetails @SaleDetailsID = 971, @SaleNo = 566, @OrderNo = 474, @Quantity = 40, @TypeSizeID = 248, @SaleDate = '2024-03-13';
EXEC InsertSalesDetails @SaleDetailsID = 972, @SaleNo = 393, @OrderNo = 175, @Quantity = 35, @TypeSizeID = 137, @SaleDate = '2024-03-13';
EXEC InsertSalesDetails @SaleDetailsID = 973, @SaleNo = 335, @OrderNo = 186, @Quantity = 15, @TypeSizeID = 365, @SaleDate = '2024-03-13';
EXEC InsertSalesDetails @SaleDetailsID = 974, @SaleNo = 212, @OrderNo = 285, @Quantity = 43, @TypeSizeID = 151, @SaleDate = '2024-03-13';
EXEC InsertSalesDetails @SaleDetailsID = 975, @SaleNo = 700, @OrderNo = 417, @Quantity = 12, @TypeSizeID = 298, @SaleDate = '2024-03-13';
EXEC InsertSalesDetails @SaleDetailsID = 976, @SaleNo = 366, @OrderNo = 61, @Quantity = 37, @TypeSizeID = 82, @SaleDate = '2024-03-14';
EXEC InsertSalesDetails @SaleDetailsID = 977, @SaleNo = 7, @OrderNo = 294, @Quantity = 29, @TypeSizeID = 147, @SaleDate = '2024-03-14';
EXEC InsertSalesDetails @SaleDetailsID = 978, @SaleNo = 229, @OrderNo = 59, @Quantity = 7, @TypeSizeID = 78, @SaleDate = '2024-03-14';
EXEC InsertSalesDetails @SaleDetailsID = 979, @SaleNo = 242, @OrderNo = 194, @Quantity = 8, @TypeSizeID = 398, @SaleDate = '2024-03-14';
EXEC InsertSalesDetails @SaleDetailsID = 980, @SaleNo = 556, @OrderNo = 232, @Quantity = 10, @TypeSizeID = 343, @SaleDate = '2024-03-14';
EXEC InsertSalesDetails @SaleDetailsID = 981, @SaleNo = 352, @OrderNo = 107, @Quantity = 34, @TypeSizeID = 174, @SaleDate = '2024-03-15';
EXEC InsertSalesDetails @SaleDetailsID = 982, @SaleNo = 392, @OrderNo = 40, @Quantity = 17, @TypeSizeID = 329, @SaleDate = '2024-03-15';
EXEC InsertSalesDetails @SaleDetailsID = 983, @SaleNo = 272, @OrderNo = 104, @Quantity = 41, @TypeSizeID = 133, @SaleDate = '2024-03-15';
EXEC InsertSalesDetails @SaleDetailsID = 984, @SaleNo = 201, @OrderNo = 127, @Quantity = 16, @TypeSizeID = 48, @SaleDate = '2024-03-15';
EXEC InsertSalesDetails @SaleDetailsID = 985, @SaleNo = 133, @OrderNo = 455, @Quantity = 36, @TypeSizeID = 146, @SaleDate = '2024-03-15';
EXEC InsertSalesDetails @SaleDetailsID = 986, @SaleNo = 253, @OrderNo = 297, @Quantity = 20, @TypeSizeID = 106, @SaleDate = '2024-03-16';
EXEC InsertSalesDetails @SaleDetailsID = 987, @SaleNo = 490, @OrderNo = 431, @Quantity = 24, @TypeSizeID = 14, @SaleDate = '2024-03-16';
EXEC InsertSalesDetails @SaleDetailsID = 988, @SaleNo = 336, @OrderNo = 312, @Quantity = 3, @TypeSizeID = 77, @SaleDate = '2024-03-16';
EXEC InsertSalesDetails @SaleDetailsID = 989, @SaleNo = 367, @OrderNo = 28, @Quantity = 40, @TypeSizeID = 215, @SaleDate = '2024-03-16';
EXEC InsertSalesDetails @SaleDetailsID = 990, @SaleNo = 20, @OrderNo = 57, @Quantity = 10, @TypeSizeID = 445, @SaleDate = '2024-03-16';
EXEC InsertSalesDetails @SaleDetailsID = 991, @SaleNo = 30, @OrderNo = 315, @Quantity = 6, @TypeSizeID = 146, @SaleDate = '2024-03-17';
EXEC InsertSalesDetails @SaleDetailsID = 992, @SaleNo = 502, @OrderNo = 134, @Quantity = 3, @TypeSizeID = 413, @SaleDate = '2024-03-17';
EXEC InsertSalesDetails @SaleDetailsID = 993, @SaleNo = 517, @OrderNo = 48, @Quantity = 22, @TypeSizeID = 410, @SaleDate = '2024-03-17';
EXEC InsertSalesDetails @SaleDetailsID = 994, @SaleNo = 185, @OrderNo = 366, @Quantity = 28, @TypeSizeID = 463, @SaleDate = '2024-03-17';
EXEC InsertSalesDetails @SaleDetailsID = 995, @SaleNo = 697, @OrderNo = 402, @Quantity = 12, @TypeSizeID = 171, @SaleDate = '2024-03-17';
EXEC InsertSalesDetails @SaleDetailsID = 996, @SaleNo = 563, @OrderNo = 266, @Quantity = 22, @TypeSizeID = 133, @SaleDate = '2024-03-18';
EXEC InsertSalesDetails @SaleDetailsID = 997, @SaleNo = 379, @OrderNo = 490, @Quantity = 43, @TypeSizeID = 125, @SaleDate = '2024-03-18';
EXEC InsertSalesDetails @SaleDetailsID = 998, @SaleNo = 465, @OrderNo = 170, @Quantity = 4, @TypeSizeID = 198, @SaleDate = '2024-03-18';
EXEC InsertSalesDetails @SaleDetailsID = 999, @SaleNo = 533, @OrderNo = 243, @Quantity = 37, @TypeSizeID = 24, @SaleDate = '2024-03-18';
EXEC InsertSalesDetails @SaleDetailsID = 1000, @SaleNo = 512, @OrderNo = 41, @Quantity = 35, @TypeSizeID = 469, @SaleDate = '2024-03-18';



-- #endregion

SELECT *
FROM SalesDetails



CREATE TABLE OrderDetails
(
    OrderDetailsID INT PRIMARY KEY,
    OrderNo INT,
    TypeSizeID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderNo) REFERENCES Orders(OrderNo),
    FOREIGN KEY (TypeSizeID) REFERENCES TypeSize_details(TypeSizeID)
);


GO
CREATE PROCEDURE InsertOrderDetails
    @OrderDetailsID INT,
    @OrderNo INT,
    @TypeSizeID INT,
    @Quantity INT
AS
BEGIN
    INSERT INTO OrderDetails
        (OrderDetailsID, OrderNo, TypeSizeID, Quantity)
    VALUES
        (@OrderDetailsID, @OrderNo, @TypeSizeID, @Quantity);
END;


-- #region InsertOrderDetails
EXEC InsertOrderDetails @OrderDetailsID = 1, @OrderNo = 463, @TypeSizeID = 405, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 2, @OrderNo = 127, @TypeSizeID = 274, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 3, @OrderNo = 61, @TypeSizeID = 221, @Quantity = 56;
EXEC InsertOrderDetails @OrderDetailsID = 4, @OrderNo = 59, @TypeSizeID = 384, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 5, @OrderNo = 180, @TypeSizeID = 308, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 6, @OrderNo = 330, @TypeSizeID = 436, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 7, @OrderNo = 311, @TypeSizeID = 211, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 8, @OrderNo = 244, @TypeSizeID = 446, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 9, @OrderNo = 129, @TypeSizeID = 165, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 10, @OrderNo = 118, @TypeSizeID = 132, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 11, @OrderNo = 158, @TypeSizeID = 179, @Quantity = 2;
EXEC InsertOrderDetails @OrderDetailsID = 12, @OrderNo = 75, @TypeSizeID = 197, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 13, @OrderNo = 62, @TypeSizeID = 102, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 14, @OrderNo = 147, @TypeSizeID = 282, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 15, @OrderNo = 244, @TypeSizeID = 176, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 16, @OrderNo = 231, @TypeSizeID = 100, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 17, @OrderNo = 373, @TypeSizeID = 129, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 18, @OrderNo = 266, @TypeSizeID = 247, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 19, @OrderNo = 100, @TypeSizeID = 393, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 20, @OrderNo = 232, @TypeSizeID = 451, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 21, @OrderNo = 478, @TypeSizeID = 482, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 22, @OrderNo = 83, @TypeSizeID = 70, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 23, @OrderNo = 417, @TypeSizeID = 436, @Quantity = 53;
EXEC InsertOrderDetails @OrderDetailsID = 24, @OrderNo = 187, @TypeSizeID = 404, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 25, @OrderNo = 255, @TypeSizeID = 79, @Quantity = 20;
EXEC InsertOrderDetails @OrderDetailsID = 26, @OrderNo = 201, @TypeSizeID = 201, @Quantity = 56;
EXEC InsertOrderDetails @OrderDetailsID = 27, @OrderNo = 259, @TypeSizeID = 411, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 28, @OrderNo = 75, @TypeSizeID = 417, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 29, @OrderNo = 94, @TypeSizeID = 189, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 30, @OrderNo = 425, @TypeSizeID = 17, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 31, @OrderNo = 98, @TypeSizeID = 456, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 32, @OrderNo = 150, @TypeSizeID = 149, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 33, @OrderNo = 68, @TypeSizeID = 103, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 34, @OrderNo = 386, @TypeSizeID = 273, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 35, @OrderNo = 233, @TypeSizeID = 57, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 36, @OrderNo = 189, @TypeSizeID = 143, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 37, @OrderNo = 351, @TypeSizeID = 283, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 38, @OrderNo = 361, @TypeSizeID = 187, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 39, @OrderNo = 419, @TypeSizeID = 460, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 40, @OrderNo = 474, @TypeSizeID = 101, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 41, @OrderNo = 26, @TypeSizeID = 161, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 42, @OrderNo = 461, @TypeSizeID = 259, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 43, @OrderNo = 355, @TypeSizeID = 153, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 44, @OrderNo = 418, @TypeSizeID = 199, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 45, @OrderNo = 3, @TypeSizeID = 301, @Quantity = 21;
EXEC InsertOrderDetails @OrderDetailsID = 46, @OrderNo = 194, @TypeSizeID = 32, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 47, @OrderNo = 115, @TypeSizeID = 98, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 48, @OrderNo = 56, @TypeSizeID = 185, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 49, @OrderNo = 314, @TypeSizeID = 346, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 50, @OrderNo = 30, @TypeSizeID = 36, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 51, @OrderNo = 160, @TypeSizeID = 27, @Quantity = 56;
EXEC InsertOrderDetails @OrderDetailsID = 52, @OrderNo = 378, @TypeSizeID = 179, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 53, @OrderNo = 285, @TypeSizeID = 71, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 54, @OrderNo = 98, @TypeSizeID = 246, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 55, @OrderNo = 236, @TypeSizeID = 254, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 56, @OrderNo = 444, @TypeSizeID = 141, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 57, @OrderNo = 138, @TypeSizeID = 292, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 58, @OrderNo = 408, @TypeSizeID = 309, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 59, @OrderNo = 63, @TypeSizeID = 205, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 60, @OrderNo = 72, @TypeSizeID = 167, @Quantity = 53;
EXEC InsertOrderDetails @OrderDetailsID = 61, @OrderNo = 18, @TypeSizeID = 116, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 62, @OrderNo = 101, @TypeSizeID = 221, @Quantity = 2;
EXEC InsertOrderDetails @OrderDetailsID = 63, @OrderNo = 386, @TypeSizeID = 113, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 64, @OrderNo = 447, @TypeSizeID = 301, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 65, @OrderNo = 208, @TypeSizeID = 115, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 66, @OrderNo = 378, @TypeSizeID = 266, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 67, @OrderNo = 62, @TypeSizeID = 471, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 68, @OrderNo = 249, @TypeSizeID = 318, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 69, @OrderNo = 294, @TypeSizeID = 463, @Quantity = 67;
EXEC InsertOrderDetails @OrderDetailsID = 70, @OrderNo = 324, @TypeSizeID = 209, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 71, @OrderNo = 300, @TypeSizeID = 70, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 72, @OrderNo = 291, @TypeSizeID = 481, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 73, @OrderNo = 258, @TypeSizeID = 98, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 74, @OrderNo = 162, @TypeSizeID = 271, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 75, @OrderNo = 305, @TypeSizeID = 409, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 76, @OrderNo = 341, @TypeSizeID = 37, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 77, @OrderNo = 248, @TypeSizeID = 279, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 78, @OrderNo = 177, @TypeSizeID = 297, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 79, @OrderNo = 465, @TypeSizeID = 199, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 80, @OrderNo = 44, @TypeSizeID = 98, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 81, @OrderNo = 63, @TypeSizeID = 17, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 82, @OrderNo = 16, @TypeSizeID = 2, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 83, @OrderNo = 116, @TypeSizeID = 74, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 84, @OrderNo = 472, @TypeSizeID = 171, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 85, @OrderNo = 220, @TypeSizeID = 378, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 86, @OrderNo = 349, @TypeSizeID = 48, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 87, @OrderNo = 105, @TypeSizeID = 296, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 88, @OrderNo = 5, @TypeSizeID = 86, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 89, @OrderNo = 248, @TypeSizeID = 33, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 90, @OrderNo = 83, @TypeSizeID = 221, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 91, @OrderNo = 388, @TypeSizeID = 399, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 92, @OrderNo = 282, @TypeSizeID = 111, @Quantity = 56;
EXEC InsertOrderDetails @OrderDetailsID = 93, @OrderNo = 353, @TypeSizeID = 357, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 94, @OrderNo = 458, @TypeSizeID = 307, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 95, @OrderNo = 433, @TypeSizeID = 231, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 96, @OrderNo = 162, @TypeSizeID = 307, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 97, @OrderNo = 395, @TypeSizeID = 207, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 98, @OrderNo = 231, @TypeSizeID = 440, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 99, @OrderNo = 290, @TypeSizeID = 303, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 100, @OrderNo = 102, @TypeSizeID = 142, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 101, @OrderNo = 302, @TypeSizeID = 95, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 102, @OrderNo = 199, @TypeSizeID = 72, @Quantity = 91;
EXEC InsertOrderDetails @OrderDetailsID = 103, @OrderNo = 174, @TypeSizeID = 308, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 104, @OrderNo = 438, @TypeSizeID = 375, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 105, @OrderNo = 399, @TypeSizeID = 477, @Quantity = 49;
EXEC InsertOrderDetails @OrderDetailsID = 106, @OrderNo = 114, @TypeSizeID = 240, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 107, @OrderNo = 272, @TypeSizeID = 170, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 108, @OrderNo = 307, @TypeSizeID = 436, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 109, @OrderNo = 335, @TypeSizeID = 325, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 110, @OrderNo = 54, @TypeSizeID = 436, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 111, @OrderNo = 195, @TypeSizeID = 393, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 112, @OrderNo = 300, @TypeSizeID = 36, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 113, @OrderNo = 481, @TypeSizeID = 218, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 114, @OrderNo = 457, @TypeSizeID = 224, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 115, @OrderNo = 80, @TypeSizeID = 18, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 116, @OrderNo = 238, @TypeSizeID = 208, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 117, @OrderNo = 448, @TypeSizeID = 222, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 118, @OrderNo = 456, @TypeSizeID = 112, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 119, @OrderNo = 183, @TypeSizeID = 169, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 120, @OrderNo = 81, @TypeSizeID = 145, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 121, @OrderNo = 165, @TypeSizeID = 470, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 122, @OrderNo = 356, @TypeSizeID = 315, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 123, @OrderNo = 352, @TypeSizeID = 204, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 124, @OrderNo = 391, @TypeSizeID = 435, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 125, @OrderNo = 332, @TypeSizeID = 404, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 126, @OrderNo = 467, @TypeSizeID = 236, @Quantity = 54;
EXEC InsertOrderDetails @OrderDetailsID = 127, @OrderNo = 376, @TypeSizeID = 200, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 128, @OrderNo = 63, @TypeSizeID = 68, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 129, @OrderNo = 351, @TypeSizeID = 418, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 130, @OrderNo = 448, @TypeSizeID = 198, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 131, @OrderNo = 186, @TypeSizeID = 421, @Quantity = 73;
EXEC InsertOrderDetails @OrderDetailsID = 132, @OrderNo = 51, @TypeSizeID = 196, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 133, @OrderNo = 207, @TypeSizeID = 216, @Quantity = 86;
EXEC InsertOrderDetails @OrderDetailsID = 134, @OrderNo = 278, @TypeSizeID = 300, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 135, @OrderNo = 382, @TypeSizeID = 157, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 136, @OrderNo = 314, @TypeSizeID = 365, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 137, @OrderNo = 138, @TypeSizeID = 161, @Quantity = 85;
EXEC InsertOrderDetails @OrderDetailsID = 138, @OrderNo = 84, @TypeSizeID = 343, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 139, @OrderNo = 254, @TypeSizeID = 77, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 140, @OrderNo = 118, @TypeSizeID = 128, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 141, @OrderNo = 33, @TypeSizeID = 80, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 142, @OrderNo = 114, @TypeSizeID = 200, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 143, @OrderNo = 153, @TypeSizeID = 333, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 144, @OrderNo = 340, @TypeSizeID = 17, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 145, @OrderNo = 110, @TypeSizeID = 77, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 146, @OrderNo = 256, @TypeSizeID = 140, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 147, @OrderNo = 22, @TypeSizeID = 238, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 148, @OrderNo = 166, @TypeSizeID = 355, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 149, @OrderNo = 83, @TypeSizeID = 18, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 150, @OrderNo = 71, @TypeSizeID = 91, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 151, @OrderNo = 185, @TypeSizeID = 106, @Quantity = 2;
EXEC InsertOrderDetails @OrderDetailsID = 152, @OrderNo = 393, @TypeSizeID = 135, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 153, @OrderNo = 210, @TypeSizeID = 424, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 154, @OrderNo = 286, @TypeSizeID = 295, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 155, @OrderNo = 397, @TypeSizeID = 112, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 156, @OrderNo = 483, @TypeSizeID = 373, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 157, @OrderNo = 191, @TypeSizeID = 36, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 158, @OrderNo = 367, @TypeSizeID = 453, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 159, @OrderNo = 297, @TypeSizeID = 97, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 160, @OrderNo = 405, @TypeSizeID = 423, @Quantity = 73;
EXEC InsertOrderDetails @OrderDetailsID = 161, @OrderNo = 173, @TypeSizeID = 406, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 162, @OrderNo = 33, @TypeSizeID = 354, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 163, @OrderNo = 464, @TypeSizeID = 355, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 164, @OrderNo = 339, @TypeSizeID = 170, @Quantity = 14;
EXEC InsertOrderDetails @OrderDetailsID = 165, @OrderNo = 483, @TypeSizeID = 482, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 166, @OrderNo = 100, @TypeSizeID = 77, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 167, @OrderNo = 235, @TypeSizeID = 221, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 168, @OrderNo = 65, @TypeSizeID = 106, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 169, @OrderNo = 232, @TypeSizeID = 408, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 170, @OrderNo = 36, @TypeSizeID = 387, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 171, @OrderNo = 173, @TypeSizeID = 158, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 172, @OrderNo = 348, @TypeSizeID = 221, @Quantity = 37;
EXEC InsertOrderDetails @OrderDetailsID = 173, @OrderNo = 180, @TypeSizeID = 482, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 174, @OrderNo = 358, @TypeSizeID = 285, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 175, @OrderNo = 19, @TypeSizeID = 269, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 176, @OrderNo = 226, @TypeSizeID = 12, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 177, @OrderNo = 151, @TypeSizeID = 269, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 178, @OrderNo = 499, @TypeSizeID = 160, @Quantity = 20;
EXEC InsertOrderDetails @OrderDetailsID = 179, @OrderNo = 246, @TypeSizeID = 500, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 180, @OrderNo = 268, @TypeSizeID = 367, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 181, @OrderNo = 3, @TypeSizeID = 425, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 182, @OrderNo = 98, @TypeSizeID = 235, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 183, @OrderNo = 293, @TypeSizeID = 100, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 184, @OrderNo = 231, @TypeSizeID = 196, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 185, @OrderNo = 457, @TypeSizeID = 61, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 186, @OrderNo = 343, @TypeSizeID = 21, @Quantity = 21;
EXEC InsertOrderDetails @OrderDetailsID = 187, @OrderNo = 306, @TypeSizeID = 43, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 188, @OrderNo = 129, @TypeSizeID = 144, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 189, @OrderNo = 498, @TypeSizeID = 68, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 190, @OrderNo = 437, @TypeSizeID = 465, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 191, @OrderNo = 215, @TypeSizeID = 284, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 192, @OrderNo = 329, @TypeSizeID = 237, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 193, @OrderNo = 223, @TypeSizeID = 233, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 194, @OrderNo = 496, @TypeSizeID = 280, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 195, @OrderNo = 92, @TypeSizeID = 166, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 196, @OrderNo = 247, @TypeSizeID = 49, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 197, @OrderNo = 99, @TypeSizeID = 103, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 198, @OrderNo = 393, @TypeSizeID = 145, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 199, @OrderNo = 11, @TypeSizeID = 394, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 200, @OrderNo = 55, @TypeSizeID = 259, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 201, @OrderNo = 19, @TypeSizeID = 238, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 202, @OrderNo = 176, @TypeSizeID = 494, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 203, @OrderNo = 135, @TypeSizeID = 90, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 204, @OrderNo = 156, @TypeSizeID = 23, @Quantity = 14;
EXEC InsertOrderDetails @OrderDetailsID = 205, @OrderNo = 408, @TypeSizeID = 326, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 206, @OrderNo = 111, @TypeSizeID = 120, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 207, @OrderNo = 310, @TypeSizeID = 192, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 208, @OrderNo = 313, @TypeSizeID = 209, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 209, @OrderNo = 62, @TypeSizeID = 8, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 210, @OrderNo = 280, @TypeSizeID = 177, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 211, @OrderNo = 352, @TypeSizeID = 468, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 212, @OrderNo = 388, @TypeSizeID = 131, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 213, @OrderNo = 454, @TypeSizeID = 421, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 214, @OrderNo = 251, @TypeSizeID = 358, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 215, @OrderNo = 218, @TypeSizeID = 324, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 216, @OrderNo = 379, @TypeSizeID = 138, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 217, @OrderNo = 405, @TypeSizeID = 231, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 218, @OrderNo = 351, @TypeSizeID = 46, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 219, @OrderNo = 53, @TypeSizeID = 32, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 220, @OrderNo = 109, @TypeSizeID = 94, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 221, @OrderNo = 394, @TypeSizeID = 420, @Quantity = 52;
EXEC InsertOrderDetails @OrderDetailsID = 222, @OrderNo = 297, @TypeSizeID = 402, @Quantity = 49;
EXEC InsertOrderDetails @OrderDetailsID = 223, @OrderNo = 187, @TypeSizeID = 264, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 224, @OrderNo = 16, @TypeSizeID = 372, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 225, @OrderNo = 399, @TypeSizeID = 351, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 226, @OrderNo = 404, @TypeSizeID = 131, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 227, @OrderNo = 190, @TypeSizeID = 84, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 228, @OrderNo = 62, @TypeSizeID = 230, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 229, @OrderNo = 323, @TypeSizeID = 324, @Quantity = 54;
EXEC InsertOrderDetails @OrderDetailsID = 230, @OrderNo = 314, @TypeSizeID = 1, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 231, @OrderNo = 72, @TypeSizeID = 328, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 232, @OrderNo = 275, @TypeSizeID = 359, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 233, @OrderNo = 238, @TypeSizeID = 176, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 234, @OrderNo = 356, @TypeSizeID = 409, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 235, @OrderNo = 408, @TypeSizeID = 372, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 236, @OrderNo = 165, @TypeSizeID = 186, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 237, @OrderNo = 427, @TypeSizeID = 450, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 238, @OrderNo = 477, @TypeSizeID = 334, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 239, @OrderNo = 443, @TypeSizeID = 25, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 240, @OrderNo = 483, @TypeSizeID = 286, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 241, @OrderNo = 268, @TypeSizeID = 446, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 242, @OrderNo = 421, @TypeSizeID = 12, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 243, @OrderNo = 424, @TypeSizeID = 236, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 244, @OrderNo = 475, @TypeSizeID = 140, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 245, @OrderNo = 260, @TypeSizeID = 4, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 246, @OrderNo = 165, @TypeSizeID = 465, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 247, @OrderNo = 90, @TypeSizeID = 445, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 248, @OrderNo = 400, @TypeSizeID = 132, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 249, @OrderNo = 14, @TypeSizeID = 40, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 250, @OrderNo = 117, @TypeSizeID = 440, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 251, @OrderNo = 384, @TypeSizeID = 238, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 252, @OrderNo = 161, @TypeSizeID = 319, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 253, @OrderNo = 211, @TypeSizeID = 460, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 254, @OrderNo = 108, @TypeSizeID = 378, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 255, @OrderNo = 383, @TypeSizeID = 59, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 256, @OrderNo = 443, @TypeSizeID = 102, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 257, @OrderNo = 53, @TypeSizeID = 142, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 258, @OrderNo = 188, @TypeSizeID = 240, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 259, @OrderNo = 280, @TypeSizeID = 464, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 260, @OrderNo = 14, @TypeSizeID = 457, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 261, @OrderNo = 234, @TypeSizeID = 9, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 262, @OrderNo = 82, @TypeSizeID = 447, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 263, @OrderNo = 449, @TypeSizeID = 117, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 264, @OrderNo = 209, @TypeSizeID = 119, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 265, @OrderNo = 112, @TypeSizeID = 281, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 266, @OrderNo = 118, @TypeSizeID = 352, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 267, @OrderNo = 115, @TypeSizeID = 22, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 268, @OrderNo = 69, @TypeSizeID = 60, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 269, @OrderNo = 218, @TypeSizeID = 246, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 270, @OrderNo = 12, @TypeSizeID = 296, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 271, @OrderNo = 196, @TypeSizeID = 266, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 272, @OrderNo = 61, @TypeSizeID = 101, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 273, @OrderNo = 30, @TypeSizeID = 133, @Quantity = 67;
EXEC InsertOrderDetails @OrderDetailsID = 274, @OrderNo = 289, @TypeSizeID = 52, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 275, @OrderNo = 82, @TypeSizeID = 261, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 276, @OrderNo = 71, @TypeSizeID = 393, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 277, @OrderNo = 362, @TypeSizeID = 273, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 278, @OrderNo = 252, @TypeSizeID = 132, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 279, @OrderNo = 263, @TypeSizeID = 217, @Quantity = 86;
EXEC InsertOrderDetails @OrderDetailsID = 280, @OrderNo = 115, @TypeSizeID = 26, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 281, @OrderNo = 472, @TypeSizeID = 422, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 282, @OrderNo = 248, @TypeSizeID = 127, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 283, @OrderNo = 234, @TypeSizeID = 279, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 284, @OrderNo = 92, @TypeSizeID = 176, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 285, @OrderNo = 220, @TypeSizeID = 424, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 286, @OrderNo = 360, @TypeSizeID = 430, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 287, @OrderNo = 243, @TypeSizeID = 100, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 288, @OrderNo = 247, @TypeSizeID = 337, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 289, @OrderNo = 207, @TypeSizeID = 167, @Quantity = 94;
EXEC InsertOrderDetails @OrderDetailsID = 290, @OrderNo = 420, @TypeSizeID = 311, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 291, @OrderNo = 475, @TypeSizeID = 36, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 292, @OrderNo = 152, @TypeSizeID = 34, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 293, @OrderNo = 237, @TypeSizeID = 275, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 294, @OrderNo = 313, @TypeSizeID = 198, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 295, @OrderNo = 460, @TypeSizeID = 3, @Quantity = 86;
EXEC InsertOrderDetails @OrderDetailsID = 296, @OrderNo = 255, @TypeSizeID = 80, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 297, @OrderNo = 62, @TypeSizeID = 268, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 298, @OrderNo = 155, @TypeSizeID = 493, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 299, @OrderNo = 484, @TypeSizeID = 443, @Quantity = 36;
EXEC InsertOrderDetails @OrderDetailsID = 300, @OrderNo = 291, @TypeSizeID = 113, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 301, @OrderNo = 237, @TypeSizeID = 349, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 302, @OrderNo = 325, @TypeSizeID = 232, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 303, @OrderNo = 425, @TypeSizeID = 259, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 304, @OrderNo = 480, @TypeSizeID = 88, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 305, @OrderNo = 38, @TypeSizeID = 424, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 306, @OrderNo = 465, @TypeSizeID = 62, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 307, @OrderNo = 216, @TypeSizeID = 355, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 308, @OrderNo = 74, @TypeSizeID = 129, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 309, @OrderNo = 6, @TypeSizeID = 383, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 310, @OrderNo = 216, @TypeSizeID = 413, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 311, @OrderNo = 354, @TypeSizeID = 253, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 312, @OrderNo = 260, @TypeSizeID = 431, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 313, @OrderNo = 433, @TypeSizeID = 67, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 314, @OrderNo = 147, @TypeSizeID = 425, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 315, @OrderNo = 312, @TypeSizeID = 65, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 316, @OrderNo = 481, @TypeSizeID = 64, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 317, @OrderNo = 61, @TypeSizeID = 490, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 318, @OrderNo = 59, @TypeSizeID = 456, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 319, @OrderNo = 90, @TypeSizeID = 369, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 320, @OrderNo = 244, @TypeSizeID = 218, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 321, @OrderNo = 238, @TypeSizeID = 109, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 322, @OrderNo = 208, @TypeSizeID = 95, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 323, @OrderNo = 381, @TypeSizeID = 232, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 324, @OrderNo = 369, @TypeSizeID = 10, @Quantity = 73;
EXEC InsertOrderDetails @OrderDetailsID = 325, @OrderNo = 31, @TypeSizeID = 221, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 326, @OrderNo = 437, @TypeSizeID = 255, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 327, @OrderNo = 375, @TypeSizeID = 75, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 328, @OrderNo = 203, @TypeSizeID = 500, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 329, @OrderNo = 492, @TypeSizeID = 448, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 330, @OrderNo = 292, @TypeSizeID = 66, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 331, @OrderNo = 87, @TypeSizeID = 206, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 332, @OrderNo = 494, @TypeSizeID = 360, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 333, @OrderNo = 171, @TypeSizeID = 63, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 334, @OrderNo = 148, @TypeSizeID = 13, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 335, @OrderNo = 194, @TypeSizeID = 45, @Quantity = 67;
EXEC InsertOrderDetails @OrderDetailsID = 336, @OrderNo = 321, @TypeSizeID = 396, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 337, @OrderNo = 197, @TypeSizeID = 495, @Quantity = 53;
EXEC InsertOrderDetails @OrderDetailsID = 338, @OrderNo = 60, @TypeSizeID = 334, @Quantity = 41;
EXEC InsertOrderDetails @OrderDetailsID = 339, @OrderNo = 418, @TypeSizeID = 118, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 340, @OrderNo = 254, @TypeSizeID = 168, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 341, @OrderNo = 211, @TypeSizeID = 216, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 342, @OrderNo = 213, @TypeSizeID = 88, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 343, @OrderNo = 115, @TypeSizeID = 333, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 344, @OrderNo = 181, @TypeSizeID = 436, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 345, @OrderNo = 192, @TypeSizeID = 204, @Quantity = 56;
EXEC InsertOrderDetails @OrderDetailsID = 346, @OrderNo = 103, @TypeSizeID = 228, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 347, @OrderNo = 418, @TypeSizeID = 353, @Quantity = 52;
EXEC InsertOrderDetails @OrderDetailsID = 348, @OrderNo = 163, @TypeSizeID = 450, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 349, @OrderNo = 251, @TypeSizeID = 364, @Quantity = 36;
EXEC InsertOrderDetails @OrderDetailsID = 350, @OrderNo = 159, @TypeSizeID = 497, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 351, @OrderNo = 212, @TypeSizeID = 196, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 352, @OrderNo = 135, @TypeSizeID = 373, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 353, @OrderNo = 263, @TypeSizeID = 170, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 354, @OrderNo = 383, @TypeSizeID = 130, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 355, @OrderNo = 113, @TypeSizeID = 196, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 356, @OrderNo = 25, @TypeSizeID = 326, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 357, @OrderNo = 194, @TypeSizeID = 196, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 358, @OrderNo = 142, @TypeSizeID = 172, @Quantity = 41;
EXEC InsertOrderDetails @OrderDetailsID = 359, @OrderNo = 450, @TypeSizeID = 35, @Quantity = 86;
EXEC InsertOrderDetails @OrderDetailsID = 360, @OrderNo = 140, @TypeSizeID = 45, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 361, @OrderNo = 241, @TypeSizeID = 448, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 362, @OrderNo = 373, @TypeSizeID = 492, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 363, @OrderNo = 3, @TypeSizeID = 237, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 364, @OrderNo = 341, @TypeSizeID = 293, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 365, @OrderNo = 74, @TypeSizeID = 114, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 366, @OrderNo = 282, @TypeSizeID = 172, @Quantity = 85;
EXEC InsertOrderDetails @OrderDetailsID = 367, @OrderNo = 208, @TypeSizeID = 137, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 368, @OrderNo = 393, @TypeSizeID = 312, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 369, @OrderNo = 341, @TypeSizeID = 382, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 370, @OrderNo = 356, @TypeSizeID = 489, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 371, @OrderNo = 277, @TypeSizeID = 403, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 372, @OrderNo = 116, @TypeSizeID = 6, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 373, @OrderNo = 325, @TypeSizeID = 125, @Quantity = 67;
EXEC InsertOrderDetails @OrderDetailsID = 374, @OrderNo = 175, @TypeSizeID = 159, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 375, @OrderNo = 306, @TypeSizeID = 441, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 376, @OrderNo = 303, @TypeSizeID = 52, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 377, @OrderNo = 313, @TypeSizeID = 472, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 378, @OrderNo = 242, @TypeSizeID = 480, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 379, @OrderNo = 218, @TypeSizeID = 113, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 380, @OrderNo = 231, @TypeSizeID = 471, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 381, @OrderNo = 101, @TypeSizeID = 341, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 382, @OrderNo = 364, @TypeSizeID = 17, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 383, @OrderNo = 488, @TypeSizeID = 500, @Quantity = 91;
EXEC InsertOrderDetails @OrderDetailsID = 384, @OrderNo = 38, @TypeSizeID = 102, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 385, @OrderNo = 376, @TypeSizeID = 310, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 386, @OrderNo = 217, @TypeSizeID = 450, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 387, @OrderNo = 273, @TypeSizeID = 29, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 388, @OrderNo = 417, @TypeSizeID = 37, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 389, @OrderNo = 120, @TypeSizeID = 225, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 390, @OrderNo = 324, @TypeSizeID = 164, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 391, @OrderNo = 380, @TypeSizeID = 24, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 392, @OrderNo = 165, @TypeSizeID = 32, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 393, @OrderNo = 397, @TypeSizeID = 236, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 394, @OrderNo = 218, @TypeSizeID = 65, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 395, @OrderNo = 326, @TypeSizeID = 408, @Quantity = 94;
EXEC InsertOrderDetails @OrderDetailsID = 396, @OrderNo = 500, @TypeSizeID = 424, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 397, @OrderNo = 45, @TypeSizeID = 203, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 398, @OrderNo = 358, @TypeSizeID = 268, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 399, @OrderNo = 312, @TypeSizeID = 220, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 400, @OrderNo = 479, @TypeSizeID = 214, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 401, @OrderNo = 31, @TypeSizeID = 18, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 402, @OrderNo = 24, @TypeSizeID = 186, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 403, @OrderNo = 256, @TypeSizeID = 130, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 404, @OrderNo = 348, @TypeSizeID = 181, @Quantity = 91;
EXEC InsertOrderDetails @OrderDetailsID = 405, @OrderNo = 26, @TypeSizeID = 104, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 406, @OrderNo = 416, @TypeSizeID = 89, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 407, @OrderNo = 433, @TypeSizeID = 395, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 408, @OrderNo = 233, @TypeSizeID = 164, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 409, @OrderNo = 406, @TypeSizeID = 471, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 410, @OrderNo = 280, @TypeSizeID = 392, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 411, @OrderNo = 312, @TypeSizeID = 276, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 412, @OrderNo = 136, @TypeSizeID = 376, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 413, @OrderNo = 424, @TypeSizeID = 324, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 414, @OrderNo = 470, @TypeSizeID = 442, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 415, @OrderNo = 442, @TypeSizeID = 96, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 416, @OrderNo = 225, @TypeSizeID = 2, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 417, @OrderNo = 240, @TypeSizeID = 147, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 418, @OrderNo = 254, @TypeSizeID = 20, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 419, @OrderNo = 268, @TypeSizeID = 58, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 420, @OrderNo = 49, @TypeSizeID = 421, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 421, @OrderNo = 217, @TypeSizeID = 133, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 422, @OrderNo = 207, @TypeSizeID = 411, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 423, @OrderNo = 392, @TypeSizeID = 195, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 424, @OrderNo = 457, @TypeSizeID = 470, @Quantity = 53;
EXEC InsertOrderDetails @OrderDetailsID = 425, @OrderNo = 472, @TypeSizeID = 246, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 426, @OrderNo = 90, @TypeSizeID = 418, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 427, @OrderNo = 87, @TypeSizeID = 57, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 428, @OrderNo = 150, @TypeSizeID = 163, @Quantity = 36;
EXEC InsertOrderDetails @OrderDetailsID = 429, @OrderNo = 293, @TypeSizeID = 386, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 430, @OrderNo = 298, @TypeSizeID = 182, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 431, @OrderNo = 65, @TypeSizeID = 198, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 432, @OrderNo = 123, @TypeSizeID = 431, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 433, @OrderNo = 449, @TypeSizeID = 36, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 434, @OrderNo = 447, @TypeSizeID = 206, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 435, @OrderNo = 435, @TypeSizeID = 50, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 436, @OrderNo = 290, @TypeSizeID = 334, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 437, @OrderNo = 468, @TypeSizeID = 276, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 438, @OrderNo = 491, @TypeSizeID = 84, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 439, @OrderNo = 2, @TypeSizeID = 5, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 440, @OrderNo = 311, @TypeSizeID = 243, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 441, @OrderNo = 45, @TypeSizeID = 489, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 442, @OrderNo = 123, @TypeSizeID = 374, @Quantity = 52;
EXEC InsertOrderDetails @OrderDetailsID = 443, @OrderNo = 314, @TypeSizeID = 328, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 444, @OrderNo = 453, @TypeSizeID = 143, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 445, @OrderNo = 391, @TypeSizeID = 468, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 446, @OrderNo = 325, @TypeSizeID = 382, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 447, @OrderNo = 366, @TypeSizeID = 104, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 448, @OrderNo = 11, @TypeSizeID = 17, @Quantity = 85;
EXEC InsertOrderDetails @OrderDetailsID = 449, @OrderNo = 434, @TypeSizeID = 250, @Quantity = 52;
EXEC InsertOrderDetails @OrderDetailsID = 450, @OrderNo = 62, @TypeSizeID = 430, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 451, @OrderNo = 229, @TypeSizeID = 440, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 452, @OrderNo = 348, @TypeSizeID = 81, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 453, @OrderNo = 13, @TypeSizeID = 414, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 454, @OrderNo = 460, @TypeSizeID = 332, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 455, @OrderNo = 29, @TypeSizeID = 132, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 456, @OrderNo = 208, @TypeSizeID = 109, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 457, @OrderNo = 201, @TypeSizeID = 413, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 458, @OrderNo = 271, @TypeSizeID = 422, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 459, @OrderNo = 320, @TypeSizeID = 475, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 460, @OrderNo = 106, @TypeSizeID = 82, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 461, @OrderNo = 345, @TypeSizeID = 2, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 462, @OrderNo = 497, @TypeSizeID = 233, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 463, @OrderNo = 136, @TypeSizeID = 405, @Quantity = 86;
EXEC InsertOrderDetails @OrderDetailsID = 464, @OrderNo = 223, @TypeSizeID = 375, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 465, @OrderNo = 355, @TypeSizeID = 426, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 466, @OrderNo = 337, @TypeSizeID = 260, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 467, @OrderNo = 33, @TypeSizeID = 141, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 468, @OrderNo = 79, @TypeSizeID = 292, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 469, @OrderNo = 200, @TypeSizeID = 270, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 470, @OrderNo = 351, @TypeSizeID = 291, @Quantity = 2;
EXEC InsertOrderDetails @OrderDetailsID = 471, @OrderNo = 445, @TypeSizeID = 91, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 472, @OrderNo = 177, @TypeSizeID = 266, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 473, @OrderNo = 432, @TypeSizeID = 333, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 474, @OrderNo = 393, @TypeSizeID = 194, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 475, @OrderNo = 40, @TypeSizeID = 69, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 476, @OrderNo = 108, @TypeSizeID = 41, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 477, @OrderNo = 310, @TypeSizeID = 75, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 478, @OrderNo = 456, @TypeSizeID = 305, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 479, @OrderNo = 88, @TypeSizeID = 42, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 480, @OrderNo = 466, @TypeSizeID = 25, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 481, @OrderNo = 478, @TypeSizeID = 360, @Quantity = 54;
EXEC InsertOrderDetails @OrderDetailsID = 482, @OrderNo = 313, @TypeSizeID = 93, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 483, @OrderNo = 401, @TypeSizeID = 18, @Quantity = 36;
EXEC InsertOrderDetails @OrderDetailsID = 484, @OrderNo = 243, @TypeSizeID = 418, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 485, @OrderNo = 476, @TypeSizeID = 280, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 486, @OrderNo = 293, @TypeSizeID = 157, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 487, @OrderNo = 25, @TypeSizeID = 426, @Quantity = 73;
EXEC InsertOrderDetails @OrderDetailsID = 488, @OrderNo = 477, @TypeSizeID = 89, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 489, @OrderNo = 423, @TypeSizeID = 466, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 490, @OrderNo = 167, @TypeSizeID = 115, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 491, @OrderNo = 164, @TypeSizeID = 372, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 492, @OrderNo = 283, @TypeSizeID = 400, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 493, @OrderNo = 448, @TypeSizeID = 193, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 494, @OrderNo = 7, @TypeSizeID = 180, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 495, @OrderNo = 24, @TypeSizeID = 225, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 496, @OrderNo = 317, @TypeSizeID = 229, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 497, @OrderNo = 482, @TypeSizeID = 149, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 498, @OrderNo = 477, @TypeSizeID = 484, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 499, @OrderNo = 259, @TypeSizeID = 361, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 500, @OrderNo = 384, @TypeSizeID = 446, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 501, @OrderNo = 191, @TypeSizeID = 445, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 502, @OrderNo = 205, @TypeSizeID = 447, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 503, @OrderNo = 279, @TypeSizeID = 234, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 504, @OrderNo = 31, @TypeSizeID = 242, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 505, @OrderNo = 350, @TypeSizeID = 231, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 506, @OrderNo = 174, @TypeSizeID = 267, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 507, @OrderNo = 442, @TypeSizeID = 42, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 508, @OrderNo = 489, @TypeSizeID = 424, @Quantity = 85;
EXEC InsertOrderDetails @OrderDetailsID = 509, @OrderNo = 379, @TypeSizeID = 119, @Quantity = 37;
EXEC InsertOrderDetails @OrderDetailsID = 510, @OrderNo = 391, @TypeSizeID = 334, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 511, @OrderNo = 71, @TypeSizeID = 141, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 512, @OrderNo = 36, @TypeSizeID = 43, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 513, @OrderNo = 242, @TypeSizeID = 10, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 514, @OrderNo = 454, @TypeSizeID = 80, @Quantity = 20;
EXEC InsertOrderDetails @OrderDetailsID = 515, @OrderNo = 366, @TypeSizeID = 257, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 516, @OrderNo = 12, @TypeSizeID = 243, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 517, @OrderNo = 196, @TypeSizeID = 445, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 518, @OrderNo = 89, @TypeSizeID = 215, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 519, @OrderNo = 412, @TypeSizeID = 101, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 520, @OrderNo = 395, @TypeSizeID = 105, @Quantity = 14;
EXEC InsertOrderDetails @OrderDetailsID = 521, @OrderNo = 166, @TypeSizeID = 92, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 522, @OrderNo = 11, @TypeSizeID = 322, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 523, @OrderNo = 65, @TypeSizeID = 329, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 524, @OrderNo = 402, @TypeSizeID = 329, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 525, @OrderNo = 489, @TypeSizeID = 390, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 526, @OrderNo = 57, @TypeSizeID = 453, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 527, @OrderNo = 358, @TypeSizeID = 350, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 528, @OrderNo = 248, @TypeSizeID = 6, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 529, @OrderNo = 30, @TypeSizeID = 499, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 530, @OrderNo = 135, @TypeSizeID = 407, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 531, @OrderNo = 411, @TypeSizeID = 95, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 532, @OrderNo = 473, @TypeSizeID = 406, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 533, @OrderNo = 447, @TypeSizeID = 188, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 534, @OrderNo = 367, @TypeSizeID = 178, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 535, @OrderNo = 249, @TypeSizeID = 241, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 536, @OrderNo = 219, @TypeSizeID = 169, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 537, @OrderNo = 135, @TypeSizeID = 150, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 538, @OrderNo = 446, @TypeSizeID = 274, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 539, @OrderNo = 326, @TypeSizeID = 238, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 540, @OrderNo = 257, @TypeSizeID = 102, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 541, @OrderNo = 146, @TypeSizeID = 381, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 542, @OrderNo = 278, @TypeSizeID = 364, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 543, @OrderNo = 331, @TypeSizeID = 220, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 544, @OrderNo = 292, @TypeSizeID = 59, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 545, @OrderNo = 81, @TypeSizeID = 141, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 546, @OrderNo = 72, @TypeSizeID = 369, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 547, @OrderNo = 161, @TypeSizeID = 68, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 548, @OrderNo = 157, @TypeSizeID = 470, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 549, @OrderNo = 235, @TypeSizeID = 102, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 550, @OrderNo = 397, @TypeSizeID = 126, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 551, @OrderNo = 29, @TypeSizeID = 295, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 552, @OrderNo = 479, @TypeSizeID = 393, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 553, @OrderNo = 288, @TypeSizeID = 421, @Quantity = 54;
EXEC InsertOrderDetails @OrderDetailsID = 554, @OrderNo = 420, @TypeSizeID = 186, @Quantity = 91;
EXEC InsertOrderDetails @OrderDetailsID = 555, @OrderNo = 93, @TypeSizeID = 411, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 556, @OrderNo = 430, @TypeSizeID = 190, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 557, @OrderNo = 484, @TypeSizeID = 149, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 558, @OrderNo = 103, @TypeSizeID = 372, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 559, @OrderNo = 241, @TypeSizeID = 425, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 560, @OrderNo = 347, @TypeSizeID = 160, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 561, @OrderNo = 16, @TypeSizeID = 102, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 562, @OrderNo = 163, @TypeSizeID = 282, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 563, @OrderNo = 211, @TypeSizeID = 28, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 564, @OrderNo = 1, @TypeSizeID = 15, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 565, @OrderNo = 406, @TypeSizeID = 367, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 566, @OrderNo = 395, @TypeSizeID = 45, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 567, @OrderNo = 315, @TypeSizeID = 279, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 568, @OrderNo = 60, @TypeSizeID = 158, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 569, @OrderNo = 382, @TypeSizeID = 402, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 570, @OrderNo = 453, @TypeSizeID = 355, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 571, @OrderNo = 178, @TypeSizeID = 454, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 572, @OrderNo = 361, @TypeSizeID = 428, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 573, @OrderNo = 418, @TypeSizeID = 130, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 574, @OrderNo = 57, @TypeSizeID = 368, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 575, @OrderNo = 192, @TypeSizeID = 311, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 576, @OrderNo = 289, @TypeSizeID = 370, @Quantity = 94;
EXEC InsertOrderDetails @OrderDetailsID = 577, @OrderNo = 133, @TypeSizeID = 475, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 578, @OrderNo = 466, @TypeSizeID = 452, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 579, @OrderNo = 421, @TypeSizeID = 42, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 580, @OrderNo = 51, @TypeSizeID = 454, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 581, @OrderNo = 487, @TypeSizeID = 413, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 582, @OrderNo = 48, @TypeSizeID = 419, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 583, @OrderNo = 395, @TypeSizeID = 95, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 584, @OrderNo = 237, @TypeSizeID = 309, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 585, @OrderNo = 398, @TypeSizeID = 303, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 586, @OrderNo = 145, @TypeSizeID = 457, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 587, @OrderNo = 454, @TypeSizeID = 234, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 588, @OrderNo = 472, @TypeSizeID = 435, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 589, @OrderNo = 434, @TypeSizeID = 37, @Quantity = 94;
EXEC InsertOrderDetails @OrderDetailsID = 590, @OrderNo = 412, @TypeSizeID = 116, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 591, @OrderNo = 92, @TypeSizeID = 487, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 592, @OrderNo = 71, @TypeSizeID = 230, @Quantity = 49;
EXEC InsertOrderDetails @OrderDetailsID = 593, @OrderNo = 160, @TypeSizeID = 79, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 594, @OrderNo = 338, @TypeSizeID = 124, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 595, @OrderNo = 363, @TypeSizeID = 359, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 596, @OrderNo = 131, @TypeSizeID = 369, @Quantity = 2;
EXEC InsertOrderDetails @OrderDetailsID = 597, @OrderNo = 496, @TypeSizeID = 460, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 598, @OrderNo = 193, @TypeSizeID = 82, @Quantity = 21;
EXEC InsertOrderDetails @OrderDetailsID = 599, @OrderNo = 448, @TypeSizeID = 142, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 600, @OrderNo = 158, @TypeSizeID = 113, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 601, @OrderNo = 460, @TypeSizeID = 281, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 602, @OrderNo = 145, @TypeSizeID = 415, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 603, @OrderNo = 4, @TypeSizeID = 445, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 604, @OrderNo = 71, @TypeSizeID = 429, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 605, @OrderNo = 259, @TypeSizeID = 291, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 606, @OrderNo = 400, @TypeSizeID = 53, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 607, @OrderNo = 90, @TypeSizeID = 244, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 608, @OrderNo = 411, @TypeSizeID = 455, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 609, @OrderNo = 351, @TypeSizeID = 364, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 610, @OrderNo = 18, @TypeSizeID = 284, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 611, @OrderNo = 340, @TypeSizeID = 458, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 612, @OrderNo = 220, @TypeSizeID = 172, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 613, @OrderNo = 282, @TypeSizeID = 209, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 614, @OrderNo = 17, @TypeSizeID = 239, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 615, @OrderNo = 236, @TypeSizeID = 370, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 616, @OrderNo = 321, @TypeSizeID = 291, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 617, @OrderNo = 135, @TypeSizeID = 122, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 618, @OrderNo = 444, @TypeSizeID = 68, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 619, @OrderNo = 93, @TypeSizeID = 61, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 620, @OrderNo = 64, @TypeSizeID = 251, @Quantity = 85;
EXEC InsertOrderDetails @OrderDetailsID = 621, @OrderNo = 160, @TypeSizeID = 106, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 622, @OrderNo = 168, @TypeSizeID = 275, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 623, @OrderNo = 285, @TypeSizeID = 392, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 624, @OrderNo = 486, @TypeSizeID = 267, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 625, @OrderNo = 462, @TypeSizeID = 313, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 626, @OrderNo = 70, @TypeSizeID = 268, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 627, @OrderNo = 500, @TypeSizeID = 165, @Quantity = 36;
EXEC InsertOrderDetails @OrderDetailsID = 628, @OrderNo = 49, @TypeSizeID = 383, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 629, @OrderNo = 374, @TypeSizeID = 68, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 630, @OrderNo = 87, @TypeSizeID = 480, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 631, @OrderNo = 133, @TypeSizeID = 291, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 632, @OrderNo = 384, @TypeSizeID = 167, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 633, @OrderNo = 230, @TypeSizeID = 471, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 634, @OrderNo = 338, @TypeSizeID = 104, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 635, @OrderNo = 424, @TypeSizeID = 395, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 636, @OrderNo = 26, @TypeSizeID = 150, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 637, @OrderNo = 182, @TypeSizeID = 451, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 638, @OrderNo = 337, @TypeSizeID = 460, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 639, @OrderNo = 252, @TypeSizeID = 456, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 640, @OrderNo = 187, @TypeSizeID = 484, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 641, @OrderNo = 343, @TypeSizeID = 121, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 642, @OrderNo = 359, @TypeSizeID = 379, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 643, @OrderNo = 191, @TypeSizeID = 22, @Quantity = 36;
EXEC InsertOrderDetails @OrderDetailsID = 644, @OrderNo = 76, @TypeSizeID = 128, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 645, @OrderNo = 18, @TypeSizeID = 319, @Quantity = 52;
EXEC InsertOrderDetails @OrderDetailsID = 646, @OrderNo = 487, @TypeSizeID = 388, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 647, @OrderNo = 445, @TypeSizeID = 326, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 648, @OrderNo = 396, @TypeSizeID = 321, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 649, @OrderNo = 37, @TypeSizeID = 395, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 650, @OrderNo = 339, @TypeSizeID = 278, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 651, @OrderNo = 156, @TypeSizeID = 231, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 652, @OrderNo = 291, @TypeSizeID = 314, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 653, @OrderNo = 213, @TypeSizeID = 321, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 654, @OrderNo = 362, @TypeSizeID = 158, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 655, @OrderNo = 337, @TypeSizeID = 221, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 656, @OrderNo = 310, @TypeSizeID = 300, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 657, @OrderNo = 324, @TypeSizeID = 100, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 658, @OrderNo = 467, @TypeSizeID = 427, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 659, @OrderNo = 423, @TypeSizeID = 494, @Quantity = 41;
EXEC InsertOrderDetails @OrderDetailsID = 660, @OrderNo = 436, @TypeSizeID = 244, @Quantity = 86;
EXEC InsertOrderDetails @OrderDetailsID = 661, @OrderNo = 138, @TypeSizeID = 246, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 662, @OrderNo = 205, @TypeSizeID = 438, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 663, @OrderNo = 121, @TypeSizeID = 447, @Quantity = 24;
EXEC InsertOrderDetails @OrderDetailsID = 664, @OrderNo = 341, @TypeSizeID = 189, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 665, @OrderNo = 174, @TypeSizeID = 276, @Quantity = 22;
EXEC InsertOrderDetails @OrderDetailsID = 666, @OrderNo = 345, @TypeSizeID = 432, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 667, @OrderNo = 101, @TypeSizeID = 343, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 668, @OrderNo = 245, @TypeSizeID = 332, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 669, @OrderNo = 40, @TypeSizeID = 491, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 670, @OrderNo = 250, @TypeSizeID = 432, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 671, @OrderNo = 16, @TypeSizeID = 311, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 672, @OrderNo = 358, @TypeSizeID = 215, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 673, @OrderNo = 308, @TypeSizeID = 65, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 674, @OrderNo = 396, @TypeSizeID = 217, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 675, @OrderNo = 383, @TypeSizeID = 173, @Quantity = 32;
EXEC InsertOrderDetails @OrderDetailsID = 676, @OrderNo = 416, @TypeSizeID = 220, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 677, @OrderNo = 215, @TypeSizeID = 93, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 678, @OrderNo = 107, @TypeSizeID = 491, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 679, @OrderNo = 59, @TypeSizeID = 223, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 680, @OrderNo = 137, @TypeSizeID = 264, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 681, @OrderNo = 321, @TypeSizeID = 217, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 682, @OrderNo = 66, @TypeSizeID = 191, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 683, @OrderNo = 405, @TypeSizeID = 172, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 684, @OrderNo = 4, @TypeSizeID = 404, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 685, @OrderNo = 482, @TypeSizeID = 455, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 686, @OrderNo = 52, @TypeSizeID = 497, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 687, @OrderNo = 385, @TypeSizeID = 390, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 688, @OrderNo = 184, @TypeSizeID = 126, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 689, @OrderNo = 200, @TypeSizeID = 122, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 690, @OrderNo = 422, @TypeSizeID = 96, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 691, @OrderNo = 384, @TypeSizeID = 276, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 692, @OrderNo = 485, @TypeSizeID = 50, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 693, @OrderNo = 148, @TypeSizeID = 133, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 694, @OrderNo = 280, @TypeSizeID = 60, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 695, @OrderNo = 92, @TypeSizeID = 401, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 696, @OrderNo = 87, @TypeSizeID = 364, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 697, @OrderNo = 263, @TypeSizeID = 99, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 698, @OrderNo = 24, @TypeSizeID = 189, @Quantity = 85;
EXEC InsertOrderDetails @OrderDetailsID = 699, @OrderNo = 354, @TypeSizeID = 351, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 700, @OrderNo = 152, @TypeSizeID = 197, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 701, @OrderNo = 232, @TypeSizeID = 428, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 702, @OrderNo = 438, @TypeSizeID = 464, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 703, @OrderNo = 143, @TypeSizeID = 113, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 704, @OrderNo = 290, @TypeSizeID = 12, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 705, @OrderNo = 347, @TypeSizeID = 425, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 706, @OrderNo = 424, @TypeSizeID = 339, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 707, @OrderNo = 430, @TypeSizeID = 10, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 708, @OrderNo = 48, @TypeSizeID = 383, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 709, @OrderNo = 500, @TypeSizeID = 466, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 710, @OrderNo = 135, @TypeSizeID = 447, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 711, @OrderNo = 1, @TypeSizeID = 57, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 712, @OrderNo = 112, @TypeSizeID = 170, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 713, @OrderNo = 211, @TypeSizeID = 412, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 714, @OrderNo = 299, @TypeSizeID = 32, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 715, @OrderNo = 214, @TypeSizeID = 154, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 716, @OrderNo = 163, @TypeSizeID = 202, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 717, @OrderNo = 476, @TypeSizeID = 183, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 718, @OrderNo = 180, @TypeSizeID = 471, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 719, @OrderNo = 430, @TypeSizeID = 28, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 720, @OrderNo = 439, @TypeSizeID = 376, @Quantity = 94;
EXEC InsertOrderDetails @OrderDetailsID = 721, @OrderNo = 326, @TypeSizeID = 402, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 722, @OrderNo = 84, @TypeSizeID = 262, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 723, @OrderNo = 254, @TypeSizeID = 190, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 724, @OrderNo = 109, @TypeSizeID = 192, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 725, @OrderNo = 327, @TypeSizeID = 93, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 726, @OrderNo = 8, @TypeSizeID = 138, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 727, @OrderNo = 497, @TypeSizeID = 402, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 728, @OrderNo = 483, @TypeSizeID = 344, @Quantity = 81;
EXEC InsertOrderDetails @OrderDetailsID = 729, @OrderNo = 466, @TypeSizeID = 237, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 730, @OrderNo = 407, @TypeSizeID = 500, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 731, @OrderNo = 499, @TypeSizeID = 154, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 732, @OrderNo = 148, @TypeSizeID = 58, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 733, @OrderNo = 440, @TypeSizeID = 423, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 734, @OrderNo = 353, @TypeSizeID = 436, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 735, @OrderNo = 122, @TypeSizeID = 241, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 736, @OrderNo = 368, @TypeSizeID = 45, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 737, @OrderNo = 296, @TypeSizeID = 28, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 738, @OrderNo = 86, @TypeSizeID = 493, @Quantity = 20;
EXEC InsertOrderDetails @OrderDetailsID = 739, @OrderNo = 107, @TypeSizeID = 53, @Quantity = 80;
EXEC InsertOrderDetails @OrderDetailsID = 740, @OrderNo = 213, @TypeSizeID = 151, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 741, @OrderNo = 455, @TypeSizeID = 112, @Quantity = 21;
EXEC InsertOrderDetails @OrderDetailsID = 742, @OrderNo = 295, @TypeSizeID = 170, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 743, @OrderNo = 161, @TypeSizeID = 304, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 744, @OrderNo = 344, @TypeSizeID = 67, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 745, @OrderNo = 256, @TypeSizeID = 352, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 746, @OrderNo = 275, @TypeSizeID = 479, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 747, @OrderNo = 130, @TypeSizeID = 468, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 748, @OrderNo = 188, @TypeSizeID = 471, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 749, @OrderNo = 341, @TypeSizeID = 167, @Quantity = 85;
EXEC InsertOrderDetails @OrderDetailsID = 750, @OrderNo = 489, @TypeSizeID = 239, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 751, @OrderNo = 403, @TypeSizeID = 379, @Quantity = 59;
EXEC InsertOrderDetails @OrderDetailsID = 752, @OrderNo = 55, @TypeSizeID = 141, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 753, @OrderNo = 271, @TypeSizeID = 376, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 754, @OrderNo = 54, @TypeSizeID = 496, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 755, @OrderNo = 162, @TypeSizeID = 184, @Quantity = 66;
EXEC InsertOrderDetails @OrderDetailsID = 756, @OrderNo = 399, @TypeSizeID = 367, @Quantity = 36;
EXEC InsertOrderDetails @OrderDetailsID = 757, @OrderNo = 114, @TypeSizeID = 355, @Quantity = 41;
EXEC InsertOrderDetails @OrderDetailsID = 758, @OrderNo = 423, @TypeSizeID = 379, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 759, @OrderNo = 170, @TypeSizeID = 314, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 760, @OrderNo = 367, @TypeSizeID = 428, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 761, @OrderNo = 119, @TypeSizeID = 13, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 762, @OrderNo = 274, @TypeSizeID = 192, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 763, @OrderNo = 406, @TypeSizeID = 233, @Quantity = 9;
EXEC InsertOrderDetails @OrderDetailsID = 764, @OrderNo = 282, @TypeSizeID = 74, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 765, @OrderNo = 352, @TypeSizeID = 240, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 766, @OrderNo = 99, @TypeSizeID = 319, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 767, @OrderNo = 421, @TypeSizeID = 401, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 768, @OrderNo = 266, @TypeSizeID = 241, @Quantity = 73;
EXEC InsertOrderDetails @OrderDetailsID = 769, @OrderNo = 105, @TypeSizeID = 2, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 770, @OrderNo = 451, @TypeSizeID = 318, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 771, @OrderNo = 357, @TypeSizeID = 426, @Quantity = 1;
EXEC InsertOrderDetails @OrderDetailsID = 772, @OrderNo = 23, @TypeSizeID = 191, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 773, @OrderNo = 122, @TypeSizeID = 474, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 774, @OrderNo = 416, @TypeSizeID = 84, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 775, @OrderNo = 438, @TypeSizeID = 124, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 776, @OrderNo = 232, @TypeSizeID = 215, @Quantity = 73;
EXEC InsertOrderDetails @OrderDetailsID = 777, @OrderNo = 410, @TypeSizeID = 439, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 778, @OrderNo = 450, @TypeSizeID = 277, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 779, @OrderNo = 153, @TypeSizeID = 383, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 780, @OrderNo = 297, @TypeSizeID = 240, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 781, @OrderNo = 413, @TypeSizeID = 72, @Quantity = 91;
EXEC InsertOrderDetails @OrderDetailsID = 782, @OrderNo = 500, @TypeSizeID = 26, @Quantity = 41;
EXEC InsertOrderDetails @OrderDetailsID = 783, @OrderNo = 141, @TypeSizeID = 1, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 784, @OrderNo = 287, @TypeSizeID = 479, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 785, @OrderNo = 419, @TypeSizeID = 45, @Quantity = 52;
EXEC InsertOrderDetails @OrderDetailsID = 786, @OrderNo = 458, @TypeSizeID = 361, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 787, @OrderNo = 452, @TypeSizeID = 437, @Quantity = 72;
EXEC InsertOrderDetails @OrderDetailsID = 788, @OrderNo = 88, @TypeSizeID = 206, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 789, @OrderNo = 180, @TypeSizeID = 42, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 790, @OrderNo = 317, @TypeSizeID = 264, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 791, @OrderNo = 494, @TypeSizeID = 314, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 792, @OrderNo = 255, @TypeSizeID = 114, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 793, @OrderNo = 375, @TypeSizeID = 167, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 794, @OrderNo = 163, @TypeSizeID = 464, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 795, @OrderNo = 305, @TypeSizeID = 112, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 796, @OrderNo = 21, @TypeSizeID = 411, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 797, @OrderNo = 253, @TypeSizeID = 347, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 798, @OrderNo = 158, @TypeSizeID = 14, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 799, @OrderNo = 198, @TypeSizeID = 7, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 800, @OrderNo = 156, @TypeSizeID = 300, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 801, @OrderNo = 295, @TypeSizeID = 178, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 802, @OrderNo = 213, @TypeSizeID = 181, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 803, @OrderNo = 233, @TypeSizeID = 18, @Quantity = 86;
EXEC InsertOrderDetails @OrderDetailsID = 804, @OrderNo = 333, @TypeSizeID = 385, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 805, @OrderNo = 73, @TypeSizeID = 412, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 806, @OrderNo = 491, @TypeSizeID = 130, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 807, @OrderNo = 455, @TypeSizeID = 207, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 808, @OrderNo = 263, @TypeSizeID = 88, @Quantity = 90;
EXEC InsertOrderDetails @OrderDetailsID = 809, @OrderNo = 401, @TypeSizeID = 309, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 810, @OrderNo = 356, @TypeSizeID = 95, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 811, @OrderNo = 42, @TypeSizeID = 63, @Quantity = 62;
EXEC InsertOrderDetails @OrderDetailsID = 812, @OrderNo = 151, @TypeSizeID = 325, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 813, @OrderNo = 158, @TypeSizeID = 252, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 814, @OrderNo = 490, @TypeSizeID = 385, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 815, @OrderNo = 451, @TypeSizeID = 406, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 816, @OrderNo = 358, @TypeSizeID = 1, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 817, @OrderNo = 377, @TypeSizeID = 488, @Quantity = 58;
EXEC InsertOrderDetails @OrderDetailsID = 818, @OrderNo = 339, @TypeSizeID = 349, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 819, @OrderNo = 494, @TypeSizeID = 218, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 820, @OrderNo = 472, @TypeSizeID = 298, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 821, @OrderNo = 456, @TypeSizeID = 479, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 822, @OrderNo = 293, @TypeSizeID = 385, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 823, @OrderNo = 26, @TypeSizeID = 294, @Quantity = 21;
EXEC InsertOrderDetails @OrderDetailsID = 824, @OrderNo = 128, @TypeSizeID = 40, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 825, @OrderNo = 96, @TypeSizeID = 429, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 826, @OrderNo = 470, @TypeSizeID = 76, @Quantity = 42;
EXEC InsertOrderDetails @OrderDetailsID = 827, @OrderNo = 350, @TypeSizeID = 321, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 828, @OrderNo = 205, @TypeSizeID = 203, @Quantity = 21;
EXEC InsertOrderDetails @OrderDetailsID = 829, @OrderNo = 184, @TypeSizeID = 342, @Quantity = 82;
EXEC InsertOrderDetails @OrderDetailsID = 830, @OrderNo = 490, @TypeSizeID = 289, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 831, @OrderNo = 171, @TypeSizeID = 458, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 832, @OrderNo = 334, @TypeSizeID = 50, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 833, @OrderNo = 400, @TypeSizeID = 496, @Quantity = 56;
EXEC InsertOrderDetails @OrderDetailsID = 834, @OrderNo = 109, @TypeSizeID = 154, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 835, @OrderNo = 295, @TypeSizeID = 402, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 836, @OrderNo = 79, @TypeSizeID = 172, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 837, @OrderNo = 297, @TypeSizeID = 255, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 838, @OrderNo = 356, @TypeSizeID = 395, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 839, @OrderNo = 113, @TypeSizeID = 19, @Quantity = 43;
EXEC InsertOrderDetails @OrderDetailsID = 840, @OrderNo = 233, @TypeSizeID = 40, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 841, @OrderNo = 242, @TypeSizeID = 5, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 842, @OrderNo = 102, @TypeSizeID = 59, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 843, @OrderNo = 438, @TypeSizeID = 159, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 844, @OrderNo = 306, @TypeSizeID = 294, @Quantity = 100;
EXEC InsertOrderDetails @OrderDetailsID = 845, @OrderNo = 338, @TypeSizeID = 342, @Quantity = 37;
EXEC InsertOrderDetails @OrderDetailsID = 846, @OrderNo = 326, @TypeSizeID = 347, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 847, @OrderNo = 111, @TypeSizeID = 377, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 848, @OrderNo = 16, @TypeSizeID = 450, @Quantity = 37;
EXEC InsertOrderDetails @OrderDetailsID = 849, @OrderNo = 492, @TypeSizeID = 315, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 850, @OrderNo = 272, @TypeSizeID = 455, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 851, @OrderNo = 359, @TypeSizeID = 237, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 852, @OrderNo = 428, @TypeSizeID = 421, @Quantity = 3;
EXEC InsertOrderDetails @OrderDetailsID = 853, @OrderNo = 269, @TypeSizeID = 9, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 854, @OrderNo = 391, @TypeSizeID = 122, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 855, @OrderNo = 419, @TypeSizeID = 64, @Quantity = 14;
EXEC InsertOrderDetails @OrderDetailsID = 856, @OrderNo = 347, @TypeSizeID = 417, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 857, @OrderNo = 489, @TypeSizeID = 58, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 858, @OrderNo = 225, @TypeSizeID = 102, @Quantity = 28;
EXEC InsertOrderDetails @OrderDetailsID = 859, @OrderNo = 123, @TypeSizeID = 70, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 860, @OrderNo = 474, @TypeSizeID = 115, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 861, @OrderNo = 28, @TypeSizeID = 51, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 862, @OrderNo = 48, @TypeSizeID = 258, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 863, @OrderNo = 159, @TypeSizeID = 335, @Quantity = 96;
EXEC InsertOrderDetails @OrderDetailsID = 864, @OrderNo = 200, @TypeSizeID = 202, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 865, @OrderNo = 478, @TypeSizeID = 22, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 866, @OrderNo = 143, @TypeSizeID = 148, @Quantity = 54;
EXEC InsertOrderDetails @OrderDetailsID = 867, @OrderNo = 67, @TypeSizeID = 432, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 868, @OrderNo = 391, @TypeSizeID = 469, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 869, @OrderNo = 56, @TypeSizeID = 72, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 870, @OrderNo = 243, @TypeSizeID = 306, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 871, @OrderNo = 171, @TypeSizeID = 76, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 872, @OrderNo = 270, @TypeSizeID = 495, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 873, @OrderNo = 364, @TypeSizeID = 154, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 874, @OrderNo = 366, @TypeSizeID = 170, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 875, @OrderNo = 42, @TypeSizeID = 207, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 876, @OrderNo = 5, @TypeSizeID = 253, @Quantity = 57;
EXEC InsertOrderDetails @OrderDetailsID = 877, @OrderNo = 369, @TypeSizeID = 200, @Quantity = 99;
EXEC InsertOrderDetails @OrderDetailsID = 878, @OrderNo = 209, @TypeSizeID = 55, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 879, @OrderNo = 93, @TypeSizeID = 285, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 880, @OrderNo = 351, @TypeSizeID = 469, @Quantity = 14;
EXEC InsertOrderDetails @OrderDetailsID = 881, @OrderNo = 306, @TypeSizeID = 75, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 882, @OrderNo = 58, @TypeSizeID = 213, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 883, @OrderNo = 448, @TypeSizeID = 291, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 884, @OrderNo = 49, @TypeSizeID = 41, @Quantity = 14;
EXEC InsertOrderDetails @OrderDetailsID = 885, @OrderNo = 15, @TypeSizeID = 303, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 886, @OrderNo = 304, @TypeSizeID = 11, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 887, @OrderNo = 151, @TypeSizeID = 330, @Quantity = 14;
EXEC InsertOrderDetails @OrderDetailsID = 888, @OrderNo = 468, @TypeSizeID = 455, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 889, @OrderNo = 252, @TypeSizeID = 416, @Quantity = 88;
EXEC InsertOrderDetails @OrderDetailsID = 890, @OrderNo = 276, @TypeSizeID = 389, @Quantity = 83;
EXEC InsertOrderDetails @OrderDetailsID = 891, @OrderNo = 61, @TypeSizeID = 476, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 892, @OrderNo = 277, @TypeSizeID = 247, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 893, @OrderNo = 376, @TypeSizeID = 136, @Quantity = 5;
EXEC InsertOrderDetails @OrderDetailsID = 894, @OrderNo = 446, @TypeSizeID = 186, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 895, @OrderNo = 123, @TypeSizeID = 186, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 896, @OrderNo = 240, @TypeSizeID = 133, @Quantity = 93;
EXEC InsertOrderDetails @OrderDetailsID = 897, @OrderNo = 482, @TypeSizeID = 457, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 898, @OrderNo = 6, @TypeSizeID = 286, @Quantity = 44;
EXEC InsertOrderDetails @OrderDetailsID = 899, @OrderNo = 491, @TypeSizeID = 102, @Quantity = 71;
EXEC InsertOrderDetails @OrderDetailsID = 900, @OrderNo = 213, @TypeSizeID = 133, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 901, @OrderNo = 148, @TypeSizeID = 230, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 902, @OrderNo = 325, @TypeSizeID = 66, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 903, @OrderNo = 39, @TypeSizeID = 171, @Quantity = 49;
EXEC InsertOrderDetails @OrderDetailsID = 904, @OrderNo = 45, @TypeSizeID = 336, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 905, @OrderNo = 265, @TypeSizeID = 195, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 906, @OrderNo = 446, @TypeSizeID = 384, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 907, @OrderNo = 53, @TypeSizeID = 316, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 908, @OrderNo = 145, @TypeSizeID = 60, @Quantity = 10;
EXEC InsertOrderDetails @OrderDetailsID = 909, @OrderNo = 46, @TypeSizeID = 447, @Quantity = 64;
EXEC InsertOrderDetails @OrderDetailsID = 910, @OrderNo = 317, @TypeSizeID = 309, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 911, @OrderNo = 218, @TypeSizeID = 461, @Quantity = 68;
EXEC InsertOrderDetails @OrderDetailsID = 912, @OrderNo = 441, @TypeSizeID = 327, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 913, @OrderNo = 299, @TypeSizeID = 290, @Quantity = 50;
EXEC InsertOrderDetails @OrderDetailsID = 914, @OrderNo = 295, @TypeSizeID = 159, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 915, @OrderNo = 41, @TypeSizeID = 328, @Quantity = 45;
EXEC InsertOrderDetails @OrderDetailsID = 916, @OrderNo = 161, @TypeSizeID = 457, @Quantity = 23;
EXEC InsertOrderDetails @OrderDetailsID = 917, @OrderNo = 308, @TypeSizeID = 220, @Quantity = 47;
EXEC InsertOrderDetails @OrderDetailsID = 918, @OrderNo = 237, @TypeSizeID = 81, @Quantity = 6;
EXEC InsertOrderDetails @OrderDetailsID = 919, @OrderNo = 399, @TypeSizeID = 378, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 920, @OrderNo = 403, @TypeSizeID = 21, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 921, @OrderNo = 165, @TypeSizeID = 353, @Quantity = 54;
EXEC InsertOrderDetails @OrderDetailsID = 922, @OrderNo = 209, @TypeSizeID = 145, @Quantity = 75;
EXEC InsertOrderDetails @OrderDetailsID = 923, @OrderNo = 301, @TypeSizeID = 318, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 924, @OrderNo = 449, @TypeSizeID = 232, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 925, @OrderNo = 294, @TypeSizeID = 188, @Quantity = 87;
EXEC InsertOrderDetails @OrderDetailsID = 926, @OrderNo = 475, @TypeSizeID = 393, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 927, @OrderNo = 389, @TypeSizeID = 438, @Quantity = 73;
EXEC InsertOrderDetails @OrderDetailsID = 928, @OrderNo = 394, @TypeSizeID = 50, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 929, @OrderNo = 34, @TypeSizeID = 29, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 930, @OrderNo = 456, @TypeSizeID = 343, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 931, @OrderNo = 485, @TypeSizeID = 438, @Quantity = 41;
EXEC InsertOrderDetails @OrderDetailsID = 932, @OrderNo = 96, @TypeSizeID = 383, @Quantity = 21;
EXEC InsertOrderDetails @OrderDetailsID = 933, @OrderNo = 492, @TypeSizeID = 80, @Quantity = 94;
EXEC InsertOrderDetails @OrderDetailsID = 934, @OrderNo = 441, @TypeSizeID = 11, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 935, @OrderNo = 93, @TypeSizeID = 220, @Quantity = 35;
EXEC InsertOrderDetails @OrderDetailsID = 936, @OrderNo = 463, @TypeSizeID = 397, @Quantity = 2;
EXEC InsertOrderDetails @OrderDetailsID = 937, @OrderNo = 129, @TypeSizeID = 372, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 938, @OrderNo = 445, @TypeSizeID = 248, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 939, @OrderNo = 36, @TypeSizeID = 337, @Quantity = 55;
EXEC InsertOrderDetails @OrderDetailsID = 940, @OrderNo = 418, @TypeSizeID = 301, @Quantity = 60;
EXEC InsertOrderDetails @OrderDetailsID = 941, @OrderNo = 180, @TypeSizeID = 238, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 942, @OrderNo = 303, @TypeSizeID = 263, @Quantity = 17;
EXEC InsertOrderDetails @OrderDetailsID = 943, @OrderNo = 442, @TypeSizeID = 7, @Quantity = 8;
EXEC InsertOrderDetails @OrderDetailsID = 944, @OrderNo = 176, @TypeSizeID = 329, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 945, @OrderNo = 141, @TypeSizeID = 189, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 946, @OrderNo = 221, @TypeSizeID = 352, @Quantity = 63;
EXEC InsertOrderDetails @OrderDetailsID = 947, @OrderNo = 16, @TypeSizeID = 454, @Quantity = 16;
EXEC InsertOrderDetails @OrderDetailsID = 948, @OrderNo = 276, @TypeSizeID = 380, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 949, @OrderNo = 399, @TypeSizeID = 420, @Quantity = 78;
EXEC InsertOrderDetails @OrderDetailsID = 950, @OrderNo = 43, @TypeSizeID = 423, @Quantity = 27;
EXEC InsertOrderDetails @OrderDetailsID = 951, @OrderNo = 380, @TypeSizeID = 419, @Quantity = 29;
EXEC InsertOrderDetails @OrderDetailsID = 952, @OrderNo = 341, @TypeSizeID = 231, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 953, @OrderNo = 212, @TypeSizeID = 420, @Quantity = 53;
EXEC InsertOrderDetails @OrderDetailsID = 954, @OrderNo = 449, @TypeSizeID = 358, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 955, @OrderNo = 184, @TypeSizeID = 166, @Quantity = 69;
EXEC InsertOrderDetails @OrderDetailsID = 956, @OrderNo = 303, @TypeSizeID = 105, @Quantity = 12;
EXEC InsertOrderDetails @OrderDetailsID = 957, @OrderNo = 185, @TypeSizeID = 382, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 958, @OrderNo = 153, @TypeSizeID = 187, @Quantity = 79;
EXEC InsertOrderDetails @OrderDetailsID = 959, @OrderNo = 460, @TypeSizeID = 29, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 960, @OrderNo = 4, @TypeSizeID = 373, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 961, @OrderNo = 125, @TypeSizeID = 38, @Quantity = 89;
EXEC InsertOrderDetails @OrderDetailsID = 962, @OrderNo = 354, @TypeSizeID = 486, @Quantity = 61;
EXEC InsertOrderDetails @OrderDetailsID = 963, @OrderNo = 136, @TypeSizeID = 484, @Quantity = 30;
EXEC InsertOrderDetails @OrderDetailsID = 964, @OrderNo = 279, @TypeSizeID = 184, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 965, @OrderNo = 362, @TypeSizeID = 168, @Quantity = 74;
EXEC InsertOrderDetails @OrderDetailsID = 966, @OrderNo = 48, @TypeSizeID = 451, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 967, @OrderNo = 193, @TypeSizeID = 138, @Quantity = 95;
EXEC InsertOrderDetails @OrderDetailsID = 968, @OrderNo = 347, @TypeSizeID = 406, @Quantity = 7;
EXEC InsertOrderDetails @OrderDetailsID = 969, @OrderNo = 337, @TypeSizeID = 337, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 970, @OrderNo = 305, @TypeSizeID = 43, @Quantity = 31;
EXEC InsertOrderDetails @OrderDetailsID = 971, @OrderNo = 49, @TypeSizeID = 430, @Quantity = 48;
EXEC InsertOrderDetails @OrderDetailsID = 972, @OrderNo = 349, @TypeSizeID = 292, @Quantity = 19;
EXEC InsertOrderDetails @OrderDetailsID = 973, @OrderNo = 374, @TypeSizeID = 197, @Quantity = 20;
EXEC InsertOrderDetails @OrderDetailsID = 974, @OrderNo = 159, @TypeSizeID = 113, @Quantity = 46;
EXEC InsertOrderDetails @OrderDetailsID = 975, @OrderNo = 313, @TypeSizeID = 25, @Quantity = 76;
EXEC InsertOrderDetails @OrderDetailsID = 976, @OrderNo = 104, @TypeSizeID = 476, @Quantity = 34;
EXEC InsertOrderDetails @OrderDetailsID = 977, @OrderNo = 98, @TypeSizeID = 321, @Quantity = 70;
EXEC InsertOrderDetails @OrderDetailsID = 978, @OrderNo = 444, @TypeSizeID = 373, @Quantity = 26;
EXEC InsertOrderDetails @OrderDetailsID = 979, @OrderNo = 327, @TypeSizeID = 291, @Quantity = 97;
EXEC InsertOrderDetails @OrderDetailsID = 980, @OrderNo = 172, @TypeSizeID = 203, @Quantity = 4;
EXEC InsertOrderDetails @OrderDetailsID = 981, @OrderNo = 251, @TypeSizeID = 395, @Quantity = 84;
EXEC InsertOrderDetails @OrderDetailsID = 982, @OrderNo = 74, @TypeSizeID = 327, @Quantity = 38;
EXEC InsertOrderDetails @OrderDetailsID = 983, @OrderNo = 470, @TypeSizeID = 399, @Quantity = 33;
EXEC InsertOrderDetails @OrderDetailsID = 984, @OrderNo = 420, @TypeSizeID = 428, @Quantity = 94;
EXEC InsertOrderDetails @OrderDetailsID = 985, @OrderNo = 445, @TypeSizeID = 256, @Quantity = 40;
EXEC InsertOrderDetails @OrderDetailsID = 986, @OrderNo = 454, @TypeSizeID = 224, @Quantity = 51;
EXEC InsertOrderDetails @OrderDetailsID = 987, @OrderNo = 17, @TypeSizeID = 298, @Quantity = 65;
EXEC InsertOrderDetails @OrderDetailsID = 988, @OrderNo = 215, @TypeSizeID = 440, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 989, @OrderNo = 381, @TypeSizeID = 449, @Quantity = 13;
EXEC InsertOrderDetails @OrderDetailsID = 990, @OrderNo = 178, @TypeSizeID = 450, @Quantity = 11;
EXEC InsertOrderDetails @OrderDetailsID = 991, @OrderNo = 432, @TypeSizeID = 251, @Quantity = 37;
EXEC InsertOrderDetails @OrderDetailsID = 992, @OrderNo = 366, @TypeSizeID = 470, @Quantity = 39;
EXEC InsertOrderDetails @OrderDetailsID = 993, @OrderNo = 294, @TypeSizeID = 71, @Quantity = 92;
EXEC InsertOrderDetails @OrderDetailsID = 994, @OrderNo = 413, @TypeSizeID = 158, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 995, @OrderNo = 198, @TypeSizeID = 45, @Quantity = 15;
EXEC InsertOrderDetails @OrderDetailsID = 996, @OrderNo = 350, @TypeSizeID = 242, @Quantity = 77;
EXEC InsertOrderDetails @OrderDetailsID = 997, @OrderNo = 355, @TypeSizeID = 470, @Quantity = 18;
EXEC InsertOrderDetails @OrderDetailsID = 998, @OrderNo = 292, @TypeSizeID = 96, @Quantity = 98;
EXEC InsertOrderDetails @OrderDetailsID = 999, @OrderNo = 74, @TypeSizeID = 314, @Quantity = 25;
EXEC InsertOrderDetails @OrderDetailsID = 1000, @OrderNo = 490, @TypeSizeID = 54, @Quantity = 24;


-- #endregion


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

GO
CREATE PROCEDURE InsertPricesDetails
    @TypeSizeID INT,
    @PurchasePrice DECIMAL(10, 2),
    @SellingPrice DECIMAL(10, 2),
    @StartDate DATE,
    @EndDate DATE = NULL
AS
BEGIN
    -- Check that the PurchasePrice is less than or equal to the SellingPrice
    IF @PurchasePrice > @SellingPrice
    BEGIN
        RAISERROR ('PurchasePrice cannot be greater than SellingPrice', 16, 1);
        RETURN;
    END

    -- Insert the new record into PricesDetails
    INSERT INTO PricesDetails
        (TypeSizeID, PurchasePrice, SellingPrice, StartDate, EndDate)
    VALUES
        (@TypeSizeID, @PurchasePrice, @SellingPrice, @StartDate, @EndDate);
END;

-- #region InsertPricesDetails

EXEC InsertPricesDetails @TypeSizeID = 1, @PurchasePrice = 86.04, @SellingPrice = 139.16, @StartDate = '2023-10-27', @EndDate = '2024-01-28';
EXEC InsertPricesDetails @TypeSizeID = 2, @PurchasePrice = 70.73, @SellingPrice = 133.77, @StartDate = '2023-02-21', @EndDate = '2024-04-10';
EXEC InsertPricesDetails @TypeSizeID = 3, @PurchasePrice = 51.91, @SellingPrice = 61.16, @StartDate = '2024-03-12', @EndDate = '2024-04-11';
EXEC InsertPricesDetails @TypeSizeID = 4, @PurchasePrice = 83.93, @SellingPrice = 94.61, @StartDate = '2023-03-30', @EndDate = '2023-08-28';
EXEC InsertPricesDetails @TypeSizeID = 5, @PurchasePrice = 45.1, @SellingPrice = 70.24, @StartDate = '2024-02-26', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 6, @PurchasePrice = 59.44, @SellingPrice = 107.88, @StartDate = '2023-04-14', @EndDate = '2023-10-30';
EXEC InsertPricesDetails @TypeSizeID = 7, @PurchasePrice = 83.81, @SellingPrice = 97.58, @StartDate = '2024-04-28', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 8, @PurchasePrice = 15.88, @SellingPrice = 127.35, @StartDate = '2023-11-30', @EndDate = '2024-01-24';
EXEC InsertPricesDetails @TypeSizeID = 9, @PurchasePrice = 35.92, @SellingPrice = 143.33, @StartDate = '2023-10-05', @EndDate = '2023-12-15';
EXEC InsertPricesDetails @TypeSizeID = 10, @PurchasePrice = 95.75, @SellingPrice = 125.99, @StartDate = '2023-06-30', @EndDate = '2023-08-06';
EXEC InsertPricesDetails @TypeSizeID = 11, @PurchasePrice = 40.63, @SellingPrice = 91.55, @StartDate = '2023-12-23', @EndDate = '2024-02-16';
EXEC InsertPricesDetails @TypeSizeID = 12, @PurchasePrice = 79.81, @SellingPrice = 90.41, @StartDate = '2024-03-15', @EndDate = '2024-03-27';
EXEC InsertPricesDetails @TypeSizeID = 13, @PurchasePrice = 97.0, @SellingPrice = 109.42, @StartDate = '2023-05-06', @EndDate = '2023-05-31';
EXEC InsertPricesDetails @TypeSizeID = 14, @PurchasePrice = 11.31, @SellingPrice = 104.08, @StartDate = '2023-05-22', @EndDate = '2024-04-13';
EXEC InsertPricesDetails @TypeSizeID = 15, @PurchasePrice = 90.64, @SellingPrice = 143.71, @StartDate = '2024-03-18', @EndDate = '2024-04-23';
EXEC InsertPricesDetails @TypeSizeID = 16, @PurchasePrice = 18.46, @SellingPrice = 111.65, @StartDate = '2023-02-12', @EndDate = '2023-12-03';
EXEC InsertPricesDetails @TypeSizeID = 17, @PurchasePrice = 69.27, @SellingPrice = 132.37, @StartDate = '2023-10-10', @EndDate = '2024-02-21';
EXEC InsertPricesDetails @TypeSizeID = 18, @PurchasePrice = 62.62, @SellingPrice = 90.17, @StartDate = '2023-10-12', @EndDate = '2023-12-20';
EXEC InsertPricesDetails @TypeSizeID = 19, @PurchasePrice = 73.25, @SellingPrice = 104.77, @StartDate = '2023-01-10', @EndDate = '2023-07-31';
EXEC InsertPricesDetails @TypeSizeID = 20, @PurchasePrice = 74.4, @SellingPrice = 87.53, @StartDate = '2023-08-17', @EndDate = '2023-12-15';
EXEC InsertPricesDetails @TypeSizeID = 21, @PurchasePrice = 64.8, @SellingPrice = 111.01, @StartDate = '2023-01-05', @EndDate = '2023-10-23';
EXEC InsertPricesDetails @TypeSizeID = 22, @PurchasePrice = 59.06, @SellingPrice = 130.78, @StartDate = '2023-12-24', @EndDate = '2024-02-11';
EXEC InsertPricesDetails @TypeSizeID = 23, @PurchasePrice = 80.39, @SellingPrice = 149.41, @StartDate = '2023-05-13', @EndDate = '2023-12-14';
EXEC InsertPricesDetails @TypeSizeID = 24, @PurchasePrice = 91.9, @SellingPrice = 93.51, @StartDate = '2024-03-18', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 25, @PurchasePrice = 59.98, @SellingPrice = 96.53, @StartDate = '2023-09-27', @EndDate = '2023-09-27';
EXEC InsertPricesDetails @TypeSizeID = 26, @PurchasePrice = 73.62, @SellingPrice = 118.14, @StartDate = '2023-03-30', @EndDate = '2023-04-12';
EXEC InsertPricesDetails @TypeSizeID = 27, @PurchasePrice = 46.38, @SellingPrice = 142.15, @StartDate = '2023-08-29', @EndDate = '2024-03-18';
EXEC InsertPricesDetails @TypeSizeID = 28, @PurchasePrice = 64.84, @SellingPrice = 104.78, @StartDate = '2023-07-21', @EndDate = '2023-11-03';
EXEC InsertPricesDetails @TypeSizeID = 29, @PurchasePrice = 77.75, @SellingPrice = 137.34, @StartDate = '2023-09-19', @EndDate = '2024-02-20';
EXEC InsertPricesDetails @TypeSizeID = 30, @PurchasePrice = 74.62, @SellingPrice = 84.08, @StartDate = '2023-08-06', @EndDate = '2024-02-13';
EXEC InsertPricesDetails @TypeSizeID = 31, @PurchasePrice = 48.06, @SellingPrice = 90.27, @StartDate = '2024-03-17', @EndDate = '2024-04-14';
EXEC InsertPricesDetails @TypeSizeID = 32, @PurchasePrice = 56.75, @SellingPrice = 68.64, @StartDate = '2023-08-23', @EndDate = '2023-10-21';
EXEC InsertPricesDetails @TypeSizeID = 33, @PurchasePrice = 63.13, @SellingPrice = 97.57, @StartDate = '2023-09-09', @EndDate = '2024-02-06';
EXEC InsertPricesDetails @TypeSizeID = 34, @PurchasePrice = 99.42, @SellingPrice = 99.99, @StartDate = '2024-04-08', @EndDate = '2024-04-17';
EXEC InsertPricesDetails @TypeSizeID = 35, @PurchasePrice = 41.58, @SellingPrice = 145.87, @StartDate = '2023-12-30', @EndDate = '2024-04-25';
EXEC InsertPricesDetails @TypeSizeID = 36, @PurchasePrice = 23.84, @SellingPrice = 31.1, @StartDate = '2023-02-14', @EndDate = '2023-11-22';
EXEC InsertPricesDetails @TypeSizeID = 37, @PurchasePrice = 93.85, @SellingPrice = 138.1, @StartDate = '2024-02-10', @EndDate = '2024-03-16';
EXEC InsertPricesDetails @TypeSizeID = 38, @PurchasePrice = 23.08, @SellingPrice = 38.46, @StartDate = '2023-04-04', @EndDate = '2023-07-31';
EXEC InsertPricesDetails @TypeSizeID = 39, @PurchasePrice = 14.93, @SellingPrice = 83.26, @StartDate = '2023-01-17', @EndDate = '2023-07-10';
EXEC InsertPricesDetails @TypeSizeID = 40, @PurchasePrice = 14.66, @SellingPrice = 148.73, @StartDate = '2023-02-07', @EndDate = '2023-04-21';
EXEC InsertPricesDetails @TypeSizeID = 41, @PurchasePrice = 80.36, @SellingPrice = 99.65, @StartDate = '2024-04-24', @EndDate = '2024-04-27';
EXEC InsertPricesDetails @TypeSizeID = 42, @PurchasePrice = 22.26, @SellingPrice = 53.57, @StartDate = '2023-09-14', @EndDate = '2023-12-12';
EXEC InsertPricesDetails @TypeSizeID = 43, @PurchasePrice = 18.03, @SellingPrice = 102.11, @StartDate = '2023-07-22', @EndDate = '2024-01-09';
EXEC InsertPricesDetails @TypeSizeID = 44, @PurchasePrice = 90.26, @SellingPrice = 136.0, @StartDate = '2023-04-20', @EndDate = '2023-09-03';
EXEC InsertPricesDetails @TypeSizeID = 45, @PurchasePrice = 70.38, @SellingPrice = 144.12, @StartDate = '2023-09-26', @EndDate = '2024-03-01';
EXEC InsertPricesDetails @TypeSizeID = 46, @PurchasePrice = 86.32, @SellingPrice = 92.7, @StartDate = '2023-12-19', @EndDate = '2024-01-23';
EXEC InsertPricesDetails @TypeSizeID = 47, @PurchasePrice = 34.36, @SellingPrice = 34.88, @StartDate = '2023-02-08', @EndDate = '2023-06-17';
EXEC InsertPricesDetails @TypeSizeID = 48, @PurchasePrice = 12.2, @SellingPrice = 127.04, @StartDate = '2023-06-29', @EndDate = '2024-03-01';
EXEC InsertPricesDetails @TypeSizeID = 49, @PurchasePrice = 97.1, @SellingPrice = 130.24, @StartDate = '2024-02-09', @EndDate = '2024-03-04';
EXEC InsertPricesDetails @TypeSizeID = 50, @PurchasePrice = 35.2, @SellingPrice = 78.39, @StartDate = '2024-01-18', @EndDate = '2024-02-28';
EXEC InsertPricesDetails @TypeSizeID = 51, @PurchasePrice = 21.85, @SellingPrice = 124.23, @StartDate = '2023-03-08', @EndDate = '2023-08-06';
EXEC InsertPricesDetails @TypeSizeID = 52, @PurchasePrice = 69.03, @SellingPrice = 142.58, @StartDate = '2023-11-18', @EndDate = '2024-01-02';
EXEC InsertPricesDetails @TypeSizeID = 53, @PurchasePrice = 40.59, @SellingPrice = 52.02, @StartDate = '2024-04-19', @EndDate = '2024-04-29';
EXEC InsertPricesDetails @TypeSizeID = 54, @PurchasePrice = 99.38, @SellingPrice = 118.03, @StartDate = '2023-03-27', @EndDate = '2023-12-03';
EXEC InsertPricesDetails @TypeSizeID = 55, @PurchasePrice = 61.71, @SellingPrice = 139.32, @StartDate = '2023-08-19', @EndDate = '2023-11-27';
EXEC InsertPricesDetails @TypeSizeID = 56, @PurchasePrice = 69.5, @SellingPrice = 108.97, @StartDate = '2023-11-30', @EndDate = '2023-12-06';
EXEC InsertPricesDetails @TypeSizeID = 57, @PurchasePrice = 83.0, @SellingPrice = 127.37, @StartDate = '2023-04-07', @EndDate = '2023-12-06';
EXEC InsertPricesDetails @TypeSizeID = 58, @PurchasePrice = 33.9, @SellingPrice = 137.51, @StartDate = '2023-03-16', @EndDate = '2023-09-18';
EXEC InsertPricesDetails @TypeSizeID = 59, @PurchasePrice = 49.22, @SellingPrice = 53.84, @StartDate = '2024-01-25', @EndDate = '2024-01-26';
EXEC InsertPricesDetails @TypeSizeID = 60, @PurchasePrice = 40.15, @SellingPrice = 141.95, @StartDate = '2023-10-04', @EndDate = '2024-02-22';
EXEC InsertPricesDetails @TypeSizeID = 61, @PurchasePrice = 28.44, @SellingPrice = 72.38, @StartDate = '2023-05-18', @EndDate = '2023-08-25';
EXEC InsertPricesDetails @TypeSizeID = 62, @PurchasePrice = 95.35, @SellingPrice = 127.14, @StartDate = '2023-03-02', @EndDate = '2024-02-16';
EXEC InsertPricesDetails @TypeSizeID = 63, @PurchasePrice = 44.85, @SellingPrice = 139.16, @StartDate = '2023-11-11', @EndDate = '2024-02-16';
EXEC InsertPricesDetails @TypeSizeID = 64, @PurchasePrice = 56.41, @SellingPrice = 98.25, @StartDate = '2024-04-18', @EndDate = '2024-04-19';
EXEC InsertPricesDetails @TypeSizeID = 65, @PurchasePrice = 66.44, @SellingPrice = 140.69, @StartDate = '2023-03-06', @EndDate = '2023-08-05';
EXEC InsertPricesDetails @TypeSizeID = 66, @PurchasePrice = 26.75, @SellingPrice = 64.54, @StartDate = '2023-01-09', @EndDate = '2023-03-30';
EXEC InsertPricesDetails @TypeSizeID = 67, @PurchasePrice = 64.97, @SellingPrice = 110.39, @StartDate = '2023-05-19', @EndDate = '2024-04-20';
EXEC InsertPricesDetails @TypeSizeID = 68, @PurchasePrice = 61.29, @SellingPrice = 100.33, @StartDate = '2024-01-23', @EndDate = '2024-03-02';
EXEC InsertPricesDetails @TypeSizeID = 69, @PurchasePrice = 79.98, @SellingPrice = 126.88, @StartDate = '2023-09-19', @EndDate = '2024-02-22';
EXEC InsertPricesDetails @TypeSizeID = 70, @PurchasePrice = 49.9, @SellingPrice = 135.61, @StartDate = '2024-02-13', @EndDate = '2024-03-26';
EXEC InsertPricesDetails @TypeSizeID = 71, @PurchasePrice = 28.4, @SellingPrice = 81.92, @StartDate = '2023-06-07', @EndDate = '2024-04-27';
EXEC InsertPricesDetails @TypeSizeID = 72, @PurchasePrice = 47.67, @SellingPrice = 143.9, @StartDate = '2023-08-28', @EndDate = '2024-02-14';
EXEC InsertPricesDetails @TypeSizeID = 73, @PurchasePrice = 42.45, @SellingPrice = 103.25, @StartDate = '2023-10-21', @EndDate = '2023-12-20';
EXEC InsertPricesDetails @TypeSizeID = 74, @PurchasePrice = 73.97, @SellingPrice = 111.15, @StartDate = '2023-12-08', @EndDate = '2024-03-02';
EXEC InsertPricesDetails @TypeSizeID = 75, @PurchasePrice = 15.99, @SellingPrice = 98.16, @StartDate = '2023-03-06', @EndDate = '2023-03-13';
EXEC InsertPricesDetails @TypeSizeID = 76, @PurchasePrice = 95.96, @SellingPrice = 120.54, @StartDate = '2023-07-28', @EndDate = '2024-02-04';
EXEC InsertPricesDetails @TypeSizeID = 77, @PurchasePrice = 38.82, @SellingPrice = 67.75, @StartDate = '2024-03-21', @EndDate = '2024-03-26';
EXEC InsertPricesDetails @TypeSizeID = 78, @PurchasePrice = 98.22, @SellingPrice = 109.69, @StartDate = '2024-01-20', @EndDate = '2024-02-17';
EXEC InsertPricesDetails @TypeSizeID = 79, @PurchasePrice = 68.95, @SellingPrice = 103.13, @StartDate = '2023-05-05', @EndDate = '2024-01-10';
EXEC InsertPricesDetails @TypeSizeID = 80, @PurchasePrice = 40.48, @SellingPrice = 119.57, @StartDate = '2023-02-23', @EndDate = '2023-06-16';
EXEC InsertPricesDetails @TypeSizeID = 81, @PurchasePrice = 68.57, @SellingPrice = 109.44, @StartDate = '2023-06-20', @EndDate = '2023-08-22';
EXEC InsertPricesDetails @TypeSizeID = 82, @PurchasePrice = 12.2, @SellingPrice = 119.24, @StartDate = '2023-01-17', @EndDate = '2023-04-06';
EXEC InsertPricesDetails @TypeSizeID = 83, @PurchasePrice = 62.98, @SellingPrice = 72.24, @StartDate = '2023-05-07', @EndDate = '2024-01-09';
EXEC InsertPricesDetails @TypeSizeID = 84, @PurchasePrice = 76.23, @SellingPrice = 121.86, @StartDate = '2023-03-18', @EndDate = '2023-09-05';
EXEC InsertPricesDetails @TypeSizeID = 85, @PurchasePrice = 80.56, @SellingPrice = 136.85, @StartDate = '2023-07-03', @EndDate = '2024-01-10';
EXEC InsertPricesDetails @TypeSizeID = 86, @PurchasePrice = 62.83, @SellingPrice = 64.64, @StartDate = '2023-05-26', @EndDate = '2023-06-08';
EXEC InsertPricesDetails @TypeSizeID = 87, @PurchasePrice = 16.79, @SellingPrice = 48.78, @StartDate = '2023-08-06', @EndDate = '2023-12-25';
EXEC InsertPricesDetails @TypeSizeID = 88, @PurchasePrice = 81.0, @SellingPrice = 125.3, @StartDate = '2023-08-06', @EndDate = '2023-09-09';
EXEC InsertPricesDetails @TypeSizeID = 89, @PurchasePrice = 31.05, @SellingPrice = 94.47, @StartDate = '2023-11-22', @EndDate = '2024-02-17';
EXEC InsertPricesDetails @TypeSizeID = 90, @PurchasePrice = 46.03, @SellingPrice = 148.54, @StartDate = '2023-11-10', @EndDate = '2023-12-10';
EXEC InsertPricesDetails @TypeSizeID = 91, @PurchasePrice = 49.07, @SellingPrice = 76.63, @StartDate = '2023-11-11', @EndDate = '2024-03-28';
EXEC InsertPricesDetails @TypeSizeID = 92, @PurchasePrice = 99.21, @SellingPrice = 143.61, @StartDate = '2023-12-31', @EndDate = '2024-02-17';
EXEC InsertPricesDetails @TypeSizeID = 93, @PurchasePrice = 81.3, @SellingPrice = 139.35, @StartDate = '2023-05-23', @EndDate = '2023-07-11';
EXEC InsertPricesDetails @TypeSizeID = 94, @PurchasePrice = 79.16, @SellingPrice = 89.51, @StartDate = '2023-11-11', @EndDate = '2024-01-10';
EXEC InsertPricesDetails @TypeSizeID = 95, @PurchasePrice = 33.3, @SellingPrice = 115.89, @StartDate = '2023-10-05', @EndDate = '2023-10-26';
EXEC InsertPricesDetails @TypeSizeID = 96, @PurchasePrice = 47.64, @SellingPrice = 63.58, @StartDate = '2023-04-19', @EndDate = '2023-10-15';
EXEC InsertPricesDetails @TypeSizeID = 97, @PurchasePrice = 86.7, @SellingPrice = 117.49, @StartDate = '2023-01-05', @EndDate = '2023-04-01';
EXEC InsertPricesDetails @TypeSizeID = 98, @PurchasePrice = 20.37, @SellingPrice = 21.81, @StartDate = '2023-06-07', @EndDate = '2023-10-02';
EXEC InsertPricesDetails @TypeSizeID = 99, @PurchasePrice = 69.48, @SellingPrice = 122.2, @StartDate = '2023-08-07', @EndDate = '2024-03-16';
EXEC InsertPricesDetails @TypeSizeID = 100, @PurchasePrice = 84.65, @SellingPrice = 104.89, @StartDate = '2023-01-24', @EndDate = '2023-05-06';
EXEC InsertPricesDetails @TypeSizeID = 101, @PurchasePrice = 68.82, @SellingPrice = 97.5, @StartDate = '2023-08-18', @EndDate = '2023-11-11';
EXEC InsertPricesDetails @TypeSizeID = 102, @PurchasePrice = 40.15, @SellingPrice = 72.52, @StartDate = '2024-04-24', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 103, @PurchasePrice = 94.01, @SellingPrice = 113.78, @StartDate = '2024-05-01', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 104, @PurchasePrice = 15.3, @SellingPrice = 146.18, @StartDate = '2023-10-21', @EndDate = '2024-01-27';
EXEC InsertPricesDetails @TypeSizeID = 105, @PurchasePrice = 41.94, @SellingPrice = 147.69, @StartDate = '2023-09-16', @EndDate = '2023-12-22';
EXEC InsertPricesDetails @TypeSizeID = 106, @PurchasePrice = 49.61, @SellingPrice = 80.58, @StartDate = '2023-05-18', @EndDate = '2023-07-14';
EXEC InsertPricesDetails @TypeSizeID = 107, @PurchasePrice = 24.44, @SellingPrice = 103.88, @StartDate = '2024-03-11', @EndDate = '2024-04-07';
EXEC InsertPricesDetails @TypeSizeID = 108, @PurchasePrice = 41.77, @SellingPrice = 139.57, @StartDate = '2023-09-07', @EndDate = '2024-04-21';
EXEC InsertPricesDetails @TypeSizeID = 109, @PurchasePrice = 89.05, @SellingPrice = 98.71, @StartDate = '2023-03-29', @EndDate = '2024-01-16';
EXEC InsertPricesDetails @TypeSizeID = 110, @PurchasePrice = 30.14, @SellingPrice = 120.72, @StartDate = '2024-01-13', @EndDate = '2024-03-05';
EXEC InsertPricesDetails @TypeSizeID = 111, @PurchasePrice = 59.67, @SellingPrice = 123.16, @StartDate = '2023-09-25', @EndDate = '2024-03-06';
EXEC InsertPricesDetails @TypeSizeID = 112, @PurchasePrice = 60.22, @SellingPrice = 119.92, @StartDate = '2023-05-20', @EndDate = '2023-12-28';
EXEC InsertPricesDetails @TypeSizeID = 113, @PurchasePrice = 69.05, @SellingPrice = 116.92, @StartDate = '2023-06-14', @EndDate = '2023-11-03';
EXEC InsertPricesDetails @TypeSizeID = 114, @PurchasePrice = 43.77, @SellingPrice = 127.41, @StartDate = '2023-05-10', @EndDate = '2023-06-08';
EXEC InsertPricesDetails @TypeSizeID = 115, @PurchasePrice = 29.21, @SellingPrice = 103.69, @StartDate = '2023-05-20', @EndDate = '2024-02-11';
EXEC InsertPricesDetails @TypeSizeID = 116, @PurchasePrice = 55.99, @SellingPrice = 58.45, @StartDate = '2023-09-08', @EndDate = '2024-01-18';
EXEC InsertPricesDetails @TypeSizeID = 117, @PurchasePrice = 47.56, @SellingPrice = 128.08, @StartDate = '2023-01-12', @EndDate = '2023-05-18';
EXEC InsertPricesDetails @TypeSizeID = 118, @PurchasePrice = 26.83, @SellingPrice = 113.65, @StartDate = '2023-08-24', @EndDate = '2024-01-26';
EXEC InsertPricesDetails @TypeSizeID = 119, @PurchasePrice = 69.02, @SellingPrice = 115.29, @StartDate = '2023-07-15', @EndDate = '2023-12-11';
EXEC InsertPricesDetails @TypeSizeID = 120, @PurchasePrice = 81.31, @SellingPrice = 129.99, @StartDate = '2023-06-22', @EndDate = '2023-09-26';
EXEC InsertPricesDetails @TypeSizeID = 121, @PurchasePrice = 78.99, @SellingPrice = 144.72, @StartDate = '2024-03-05', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 122, @PurchasePrice = 18.06, @SellingPrice = 83.93, @StartDate = '2023-12-12', @EndDate = '2024-04-22';
EXEC InsertPricesDetails @TypeSizeID = 123, @PurchasePrice = 59.57, @SellingPrice = 102.89, @StartDate = '2023-07-18', @EndDate = '2024-03-04';
EXEC InsertPricesDetails @TypeSizeID = 124, @PurchasePrice = 26.83, @SellingPrice = 55.33, @StartDate = '2024-04-04', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 125, @PurchasePrice = 76.13, @SellingPrice = 101.52, @StartDate = '2023-09-25', @EndDate = '2023-11-11';
EXEC InsertPricesDetails @TypeSizeID = 126, @PurchasePrice = 75.14, @SellingPrice = 87.13, @StartDate = '2024-03-11', @EndDate = '2024-04-13';
EXEC InsertPricesDetails @TypeSizeID = 127, @PurchasePrice = 54.73, @SellingPrice = 97.68, @StartDate = '2023-07-20', @EndDate = '2023-11-26';
EXEC InsertPricesDetails @TypeSizeID = 128, @PurchasePrice = 98.03, @SellingPrice = 141.5, @StartDate = '2023-03-05', @EndDate = '2024-02-19';
EXEC InsertPricesDetails @TypeSizeID = 129, @PurchasePrice = 48.01, @SellingPrice = 86.39, @StartDate = '2023-12-23', @EndDate = '2024-03-04';
EXEC InsertPricesDetails @TypeSizeID = 130, @PurchasePrice = 39.73, @SellingPrice = 100.9, @StartDate = '2023-01-07', @EndDate = '2023-05-07';
EXEC InsertPricesDetails @TypeSizeID = 131, @PurchasePrice = 44.75, @SellingPrice = 118.45, @StartDate = '2023-06-10', @EndDate = '2024-04-09';
EXEC InsertPricesDetails @TypeSizeID = 132, @PurchasePrice = 15.34, @SellingPrice = 95.3, @StartDate = '2023-07-11', @EndDate = '2024-03-02';
EXEC InsertPricesDetails @TypeSizeID = 133, @PurchasePrice = 75.68, @SellingPrice = 96.56, @StartDate = '2024-02-26', @EndDate = '2024-03-26';
EXEC InsertPricesDetails @TypeSizeID = 134, @PurchasePrice = 71.59, @SellingPrice = 72.61, @StartDate = '2024-02-12', @EndDate = '2024-04-09';
EXEC InsertPricesDetails @TypeSizeID = 135, @PurchasePrice = 38.88, @SellingPrice = 61.81, @StartDate = '2023-10-31', @EndDate = '2024-02-27';
EXEC InsertPricesDetails @TypeSizeID = 136, @PurchasePrice = 23.69, @SellingPrice = 49.99, @StartDate = '2024-02-02', @EndDate = '2024-03-22';
EXEC InsertPricesDetails @TypeSizeID = 137, @PurchasePrice = 92.06, @SellingPrice = 102.23, @StartDate = '2023-04-05', @EndDate = '2023-10-16';
EXEC InsertPricesDetails @TypeSizeID = 138, @PurchasePrice = 20.18, @SellingPrice = 143.91, @StartDate = '2023-08-20', @EndDate = '2023-12-20';
EXEC InsertPricesDetails @TypeSizeID = 139, @PurchasePrice = 63.99, @SellingPrice = 116.44, @StartDate = '2023-10-18', @EndDate = '2024-02-17';
EXEC InsertPricesDetails @TypeSizeID = 140, @PurchasePrice = 56.06, @SellingPrice = 106.48, @StartDate = '2023-06-20', @EndDate = '2024-03-31';
EXEC InsertPricesDetails @TypeSizeID = 141, @PurchasePrice = 38.18, @SellingPrice = 67.46, @StartDate = '2023-05-26', @EndDate = '2024-03-02';
EXEC InsertPricesDetails @TypeSizeID = 142, @PurchasePrice = 21.77, @SellingPrice = 79.4, @StartDate = '2023-10-11', @EndDate = '2023-11-12';
EXEC InsertPricesDetails @TypeSizeID = 143, @PurchasePrice = 62.88, @SellingPrice = 139.87, @StartDate = '2023-02-12', @EndDate = '2024-01-28';
EXEC InsertPricesDetails @TypeSizeID = 144, @PurchasePrice = 55.62, @SellingPrice = 63.35, @StartDate = '2023-04-18', @EndDate = '2023-12-15';
EXEC InsertPricesDetails @TypeSizeID = 145, @PurchasePrice = 33.49, @SellingPrice = 97.17, @StartDate = '2023-12-25', @EndDate = '2024-01-05';
EXEC InsertPricesDetails @TypeSizeID = 146, @PurchasePrice = 12.75, @SellingPrice = 62.55, @StartDate = '2024-04-15', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 147, @PurchasePrice = 82.53, @SellingPrice = 113.99, @StartDate = '2024-04-16', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 148, @PurchasePrice = 29.05, @SellingPrice = 138.01, @StartDate = '2023-05-25', @EndDate = '2023-09-30';
EXEC InsertPricesDetails @TypeSizeID = 149, @PurchasePrice = 88.18, @SellingPrice = 112.5, @StartDate = '2024-02-09', @EndDate = '2024-02-10';
EXEC InsertPricesDetails @TypeSizeID = 150, @PurchasePrice = 94.49, @SellingPrice = 99.07, @StartDate = '2023-07-30', @EndDate = '2024-03-09';
EXEC InsertPricesDetails @TypeSizeID = 151, @PurchasePrice = 67.63, @SellingPrice = 130.61, @StartDate = '2023-06-27', @EndDate = '2023-07-13';
EXEC InsertPricesDetails @TypeSizeID = 152, @PurchasePrice = 18.95, @SellingPrice = 81.49, @StartDate = '2023-06-04', @EndDate = '2024-03-28';
EXEC InsertPricesDetails @TypeSizeID = 153, @PurchasePrice = 87.01, @SellingPrice = 94.87, @StartDate = '2023-03-14', @EndDate = '2023-04-21';
EXEC InsertPricesDetails @TypeSizeID = 154, @PurchasePrice = 76.74, @SellingPrice = 113.63, @StartDate = '2024-01-01', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 155, @PurchasePrice = 17.02, @SellingPrice = 41.67, @StartDate = '2023-04-21', @EndDate = '2023-05-22';
EXEC InsertPricesDetails @TypeSizeID = 156, @PurchasePrice = 60.67, @SellingPrice = 97.65, @StartDate = '2023-10-30', @EndDate = '2024-01-01';
EXEC InsertPricesDetails @TypeSizeID = 157, @PurchasePrice = 14.74, @SellingPrice = 106.27, @StartDate = '2023-08-11', @EndDate = '2024-01-05';
EXEC InsertPricesDetails @TypeSizeID = 158, @PurchasePrice = 36.65, @SellingPrice = 88.94, @StartDate = '2023-06-11', @EndDate = '2023-10-08';
EXEC InsertPricesDetails @TypeSizeID = 159, @PurchasePrice = 26.92, @SellingPrice = 94.11, @StartDate = '2023-06-16', @EndDate = '2023-09-04';
EXEC InsertPricesDetails @TypeSizeID = 160, @PurchasePrice = 93.14, @SellingPrice = 104.84, @StartDate = '2023-09-05', @EndDate = '2024-01-16';
EXEC InsertPricesDetails @TypeSizeID = 161, @PurchasePrice = 84.04, @SellingPrice = 102.53, @StartDate = '2023-12-26', @EndDate = '2024-04-20';
EXEC InsertPricesDetails @TypeSizeID = 162, @PurchasePrice = 98.15, @SellingPrice = 125.61, @StartDate = '2024-01-10', @EndDate = '2024-04-05';
EXEC InsertPricesDetails @TypeSizeID = 163, @PurchasePrice = 53.59, @SellingPrice = 103.91, @StartDate = '2023-11-13', @EndDate = '2024-03-15';
EXEC InsertPricesDetails @TypeSizeID = 164, @PurchasePrice = 95.27, @SellingPrice = 98.14, @StartDate = '2023-11-17', @EndDate = '2023-12-20';
EXEC InsertPricesDetails @TypeSizeID = 165, @PurchasePrice = 78.88, @SellingPrice = 102.4, @StartDate = '2023-08-04', @EndDate = '2024-01-25';
EXEC InsertPricesDetails @TypeSizeID = 166, @PurchasePrice = 79.81, @SellingPrice = 133.93, @StartDate = '2023-06-06', @EndDate = '2023-12-04';
EXEC InsertPricesDetails @TypeSizeID = 167, @PurchasePrice = 23.02, @SellingPrice = 91.78, @StartDate = '2023-10-09', @EndDate = '2024-01-09';
EXEC InsertPricesDetails @TypeSizeID = 168, @PurchasePrice = 15.57, @SellingPrice = 82.98, @StartDate = '2023-07-12', @EndDate = '2023-10-12';
EXEC InsertPricesDetails @TypeSizeID = 169, @PurchasePrice = 13.03, @SellingPrice = 147.05, @StartDate = '2023-02-25', @EndDate = '2023-05-09';
EXEC InsertPricesDetails @TypeSizeID = 170, @PurchasePrice = 35.08, @SellingPrice = 62.12, @StartDate = '2024-03-13', @EndDate = '2024-04-18';
EXEC InsertPricesDetails @TypeSizeID = 171, @PurchasePrice = 39.46, @SellingPrice = 55.73, @StartDate = '2023-06-25', @EndDate = '2023-07-08';
EXEC InsertPricesDetails @TypeSizeID = 172, @PurchasePrice = 90.22, @SellingPrice = 147.91, @StartDate = '2024-02-08', @EndDate = '2024-02-20';
EXEC InsertPricesDetails @TypeSizeID = 173, @PurchasePrice = 16.86, @SellingPrice = 139.62, @StartDate = '2023-06-19', @EndDate = '2024-04-27';
EXEC InsertPricesDetails @TypeSizeID = 174, @PurchasePrice = 25.08, @SellingPrice = 144.67, @StartDate = '2023-02-11', @EndDate = '2023-08-04';
EXEC InsertPricesDetails @TypeSizeID = 175, @PurchasePrice = 78.1, @SellingPrice = 110.0, @StartDate = '2023-09-05', @EndDate = '2023-10-14';
EXEC InsertPricesDetails @TypeSizeID = 176, @PurchasePrice = 35.48, @SellingPrice = 93.12, @StartDate = '2023-01-10', @EndDate = '2023-04-29';
EXEC InsertPricesDetails @TypeSizeID = 177, @PurchasePrice = 43.32, @SellingPrice = 140.64, @StartDate = '2023-09-23', @EndDate = '2023-11-14';
EXEC InsertPricesDetails @TypeSizeID = 178, @PurchasePrice = 57.99, @SellingPrice = 124.69, @StartDate = '2024-04-04', @EndDate = '2024-04-12';
EXEC InsertPricesDetails @TypeSizeID = 179, @PurchasePrice = 35.49, @SellingPrice = 78.29, @StartDate = '2024-02-13', @EndDate = '2024-02-23';
EXEC InsertPricesDetails @TypeSizeID = 180, @PurchasePrice = 86.35, @SellingPrice = 112.53, @StartDate = '2023-12-05', @EndDate = '2024-03-08';
EXEC InsertPricesDetails @TypeSizeID = 181, @PurchasePrice = 10.94, @SellingPrice = 145.43, @StartDate = '2023-05-06', @EndDate = '2023-11-17';
EXEC InsertPricesDetails @TypeSizeID = 182, @PurchasePrice = 14.85, @SellingPrice = 83.47, @StartDate = '2023-09-07', @EndDate = '2023-12-07';
EXEC InsertPricesDetails @TypeSizeID = 183, @PurchasePrice = 29.22, @SellingPrice = 115.01, @StartDate = '2023-01-02', @EndDate = '2023-05-15';
EXEC InsertPricesDetails @TypeSizeID = 184, @PurchasePrice = 30.86, @SellingPrice = 104.31, @StartDate = '2023-05-11', @EndDate = '2024-01-30';
EXEC InsertPricesDetails @TypeSizeID = 185, @PurchasePrice = 65.43, @SellingPrice = 109.61, @StartDate = '2023-08-13', @EndDate = '2023-12-10';
EXEC InsertPricesDetails @TypeSizeID = 186, @PurchasePrice = 35.76, @SellingPrice = 145.77, @StartDate = '2023-08-30', @EndDate = '2024-02-24';
EXEC InsertPricesDetails @TypeSizeID = 187, @PurchasePrice = 41.77, @SellingPrice = 76.2, @StartDate = '2023-04-03', @EndDate = '2023-11-21';
EXEC InsertPricesDetails @TypeSizeID = 188, @PurchasePrice = 39.64, @SellingPrice = 114.99, @StartDate = '2024-02-11', @EndDate = '2024-04-06';
EXEC InsertPricesDetails @TypeSizeID = 189, @PurchasePrice = 22.65, @SellingPrice = 126.19, @StartDate = '2023-02-19', @EndDate = '2023-03-26';
EXEC InsertPricesDetails @TypeSizeID = 190, @PurchasePrice = 22.89, @SellingPrice = 121.19, @StartDate = '2023-06-19', @EndDate = '2023-12-21';
EXEC InsertPricesDetails @TypeSizeID = 191, @PurchasePrice = 89.51, @SellingPrice = 122.45, @StartDate = '2024-01-05', @EndDate = '2024-01-08';
EXEC InsertPricesDetails @TypeSizeID = 192, @PurchasePrice = 39.49, @SellingPrice = 67.99, @StartDate = '2023-11-05', @EndDate = '2024-01-23';
EXEC InsertPricesDetails @TypeSizeID = 193, @PurchasePrice = 62.43, @SellingPrice = 82.24, @StartDate = '2023-11-25', @EndDate = '2024-04-19';
EXEC InsertPricesDetails @TypeSizeID = 194, @PurchasePrice = 72.14, @SellingPrice = 118.02, @StartDate = '2023-08-03', @EndDate = '2024-04-25';
EXEC InsertPricesDetails @TypeSizeID = 195, @PurchasePrice = 85.0, @SellingPrice = 97.5, @StartDate = '2023-03-22', @EndDate = '2023-12-29';
EXEC InsertPricesDetails @TypeSizeID = 196, @PurchasePrice = 10.51, @SellingPrice = 54.9, @StartDate = '2024-02-16', @EndDate = '2024-03-03';
EXEC InsertPricesDetails @TypeSizeID = 197, @PurchasePrice = 99.17, @SellingPrice = 136.09, @StartDate = '2023-07-29', @EndDate = '2023-09-01';
EXEC InsertPricesDetails @TypeSizeID = 198, @PurchasePrice = 21.99, @SellingPrice = 24.27, @StartDate = '2023-06-19', @EndDate = '2023-11-12';
EXEC InsertPricesDetails @TypeSizeID = 199, @PurchasePrice = 14.55, @SellingPrice = 114.36, @StartDate = '2023-12-24', @EndDate = '2024-04-29';
EXEC InsertPricesDetails @TypeSizeID = 200, @PurchasePrice = 88.42, @SellingPrice = 99.07, @StartDate = '2023-11-21', @EndDate = '2023-12-06';
EXEC InsertPricesDetails @TypeSizeID = 201, @PurchasePrice = 32.98, @SellingPrice = 88.67, @StartDate = '2023-12-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 202, @PurchasePrice = 39.7, @SellingPrice = 149.48, @StartDate = '2024-01-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 203, @PurchasePrice = 12.51, @SellingPrice = 108.84, @StartDate = '2023-06-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 204, @PurchasePrice = 91.58, @SellingPrice = 99.72, @StartDate = '2023-12-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 205, @PurchasePrice = 38.7, @SellingPrice = 116.55, @StartDate = '2023-03-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 206, @PurchasePrice = 29.71, @SellingPrice = 98.6, @StartDate = '2023-01-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 207, @PurchasePrice = 42.16, @SellingPrice = 125.94, @StartDate = '2024-03-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 208, @PurchasePrice = 67.04, @SellingPrice = 114.99, @StartDate = '2023-11-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 209, @PurchasePrice = 15.59, @SellingPrice = 31.73, @StartDate = '2023-06-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 210, @PurchasePrice = 76.2, @SellingPrice = 115.56, @StartDate = '2023-09-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 211, @PurchasePrice = 94.32, @SellingPrice = 106.65, @StartDate = '2023-04-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 212, @PurchasePrice = 83.63, @SellingPrice = 132.0, @StartDate = '2023-05-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 213, @PurchasePrice = 71.22, @SellingPrice = 98.31, @StartDate = '2023-02-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 214, @PurchasePrice = 69.57, @SellingPrice = 111.25, @StartDate = '2023-07-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 215, @PurchasePrice = 20.77, @SellingPrice = 24.05, @StartDate = '2023-05-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 216, @PurchasePrice = 98.26, @SellingPrice = 104.4, @StartDate = '2023-02-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 217, @PurchasePrice = 98.82, @SellingPrice = 115.96, @StartDate = '2023-05-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 218, @PurchasePrice = 42.9, @SellingPrice = 95.75, @StartDate = '2023-01-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 219, @PurchasePrice = 93.53, @SellingPrice = 116.37, @StartDate = '2023-07-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 220, @PurchasePrice = 96.59, @SellingPrice = 140.4, @StartDate = '2023-08-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 221, @PurchasePrice = 70.96, @SellingPrice = 146.11, @StartDate = '2023-04-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 222, @PurchasePrice = 78.51, @SellingPrice = 88.26, @StartDate = '2024-01-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 223, @PurchasePrice = 88.4, @SellingPrice = 127.05, @StartDate = '2023-11-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 224, @PurchasePrice = 65.01, @SellingPrice = 110.39, @StartDate = '2023-07-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 225, @PurchasePrice = 16.25, @SellingPrice = 43.89, @StartDate = '2023-04-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 226, @PurchasePrice = 89.96, @SellingPrice = 120.21, @StartDate = '2023-06-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 227, @PurchasePrice = 26.7, @SellingPrice = 93.41, @StartDate = '2023-03-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 228, @PurchasePrice = 32.75, @SellingPrice = 120.29, @StartDate = '2024-04-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 229, @PurchasePrice = 70.67, @SellingPrice = 81.53, @StartDate = '2023-09-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 230, @PurchasePrice = 94.78, @SellingPrice = 148.08, @StartDate = '2023-01-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 231, @PurchasePrice = 25.4, @SellingPrice = 88.76, @StartDate = '2023-10-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 232, @PurchasePrice = 73.77, @SellingPrice = 91.21, @StartDate = '2023-10-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 233, @PurchasePrice = 56.74, @SellingPrice = 108.05, @StartDate = '2023-09-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 234, @PurchasePrice = 57.51, @SellingPrice = 128.71, @StartDate = '2023-08-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 235, @PurchasePrice = 39.4, @SellingPrice = 46.76, @StartDate = '2024-01-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 236, @PurchasePrice = 85.53, @SellingPrice = 106.21, @StartDate = '2023-08-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 237, @PurchasePrice = 83.73, @SellingPrice = 128.52, @StartDate = '2023-04-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 238, @PurchasePrice = 72.35, @SellingPrice = 136.62, @StartDate = '2023-11-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 239, @PurchasePrice = 25.78, @SellingPrice = 115.74, @StartDate = '2023-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 240, @PurchasePrice = 62.42, @SellingPrice = 78.58, @StartDate = '2024-01-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 241, @PurchasePrice = 19.94, @SellingPrice = 40.14, @StartDate = '2023-01-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 242, @PurchasePrice = 69.37, @SellingPrice = 146.59, @StartDate = '2023-12-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 243, @PurchasePrice = 75.18, @SellingPrice = 132.98, @StartDate = '2024-04-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 244, @PurchasePrice = 14.16, @SellingPrice = 117.18, @StartDate = '2024-02-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 245, @PurchasePrice = 42.13, @SellingPrice = 42.19, @StartDate = '2023-08-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 246, @PurchasePrice = 28.62, @SellingPrice = 52.68, @StartDate = '2023-02-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 247, @PurchasePrice = 61.15, @SellingPrice = 99.63, @StartDate = '2023-07-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 248, @PurchasePrice = 54.01, @SellingPrice = 89.6, @StartDate = '2024-02-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 249, @PurchasePrice = 45.81, @SellingPrice = 135.02, @StartDate = '2023-01-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 250, @PurchasePrice = 32.08, @SellingPrice = 56.0, @StartDate = '2024-03-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 251, @PurchasePrice = 68.51, @SellingPrice = 131.46, @StartDate = '2023-12-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 252, @PurchasePrice = 43.28, @SellingPrice = 148.59, @StartDate = '2023-10-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 253, @PurchasePrice = 62.03, @SellingPrice = 149.83, @StartDate = '2023-03-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 254, @PurchasePrice = 22.37, @SellingPrice = 138.01, @StartDate = '2024-01-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 255, @PurchasePrice = 60.02, @SellingPrice = 85.78, @StartDate = '2023-04-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 256, @PurchasePrice = 57.83, @SellingPrice = 101.97, @StartDate = '2024-01-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 257, @PurchasePrice = 57.97, @SellingPrice = 94.54, @StartDate = '2023-10-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 258, @PurchasePrice = 12.17, @SellingPrice = 13.98, @StartDate = '2024-01-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 259, @PurchasePrice = 74.11, @SellingPrice = 79.1, @StartDate = '2023-01-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 260, @PurchasePrice = 93.33, @SellingPrice = 131.19, @StartDate = '2023-11-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 261, @PurchasePrice = 66.97, @SellingPrice = 138.62, @StartDate = '2023-03-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 262, @PurchasePrice = 33.67, @SellingPrice = 87.08, @StartDate = '2023-05-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 263, @PurchasePrice = 70.47, @SellingPrice = 94.44, @StartDate = '2023-10-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 264, @PurchasePrice = 89.48, @SellingPrice = 148.49, @StartDate = '2024-01-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 265, @PurchasePrice = 72.98, @SellingPrice = 80.62, @StartDate = '2023-12-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 266, @PurchasePrice = 40.21, @SellingPrice = 105.16, @StartDate = '2024-02-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 267, @PurchasePrice = 51.9, @SellingPrice = 140.98, @StartDate = '2023-08-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 268, @PurchasePrice = 93.05, @SellingPrice = 142.21, @StartDate = '2023-01-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 269, @PurchasePrice = 44.05, @SellingPrice = 83.76, @StartDate = '2024-02-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 270, @PurchasePrice = 86.61, @SellingPrice = 131.02, @StartDate = '2023-10-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 271, @PurchasePrice = 45.51, @SellingPrice = 129.81, @StartDate = '2023-11-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 272, @PurchasePrice = 58.69, @SellingPrice = 65.56, @StartDate = '2024-03-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 273, @PurchasePrice = 17.64, @SellingPrice = 55.27, @StartDate = '2023-05-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 274, @PurchasePrice = 45.06, @SellingPrice = 139.99, @StartDate = '2023-10-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 275, @PurchasePrice = 20.13, @SellingPrice = 30.75, @StartDate = '2024-01-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 276, @PurchasePrice = 52.95, @SellingPrice = 63.72, @StartDate = '2023-09-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 277, @PurchasePrice = 77.17, @SellingPrice = 83.75, @StartDate = '2023-08-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 278, @PurchasePrice = 72.56, @SellingPrice = 95.72, @StartDate = '2023-03-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 279, @PurchasePrice = 27.21, @SellingPrice = 95.51, @StartDate = '2023-11-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 280, @PurchasePrice = 77.97, @SellingPrice = 121.65, @StartDate = '2024-03-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 281, @PurchasePrice = 49.16, @SellingPrice = 69.3, @StartDate = '2024-02-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 282, @PurchasePrice = 38.62, @SellingPrice = 49.1, @StartDate = '2024-03-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 283, @PurchasePrice = 15.94, @SellingPrice = 123.72, @StartDate = '2023-03-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 284, @PurchasePrice = 32.23, @SellingPrice = 37.39, @StartDate = '2023-02-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 285, @PurchasePrice = 25.03, @SellingPrice = 66.72, @StartDate = '2023-05-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 286, @PurchasePrice = 44.9, @SellingPrice = 50.28, @StartDate = '2024-04-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 287, @PurchasePrice = 39.96, @SellingPrice = 83.35, @StartDate = '2023-10-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 288, @PurchasePrice = 73.79, @SellingPrice = 85.06, @StartDate = '2023-03-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 289, @PurchasePrice = 34.29, @SellingPrice = 84.22, @StartDate = '2023-01-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 290, @PurchasePrice = 45.66, @SellingPrice = 77.14, @StartDate = '2023-01-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 291, @PurchasePrice = 34.13, @SellingPrice = 136.62, @StartDate = '2024-04-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 292, @PurchasePrice = 50.64, @SellingPrice = 97.45, @StartDate = '2024-03-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 293, @PurchasePrice = 24.25, @SellingPrice = 130.69, @StartDate = '2023-03-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 294, @PurchasePrice = 14.16, @SellingPrice = 29.9, @StartDate = '2024-03-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 295, @PurchasePrice = 71.03, @SellingPrice = 136.61, @StartDate = '2023-06-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 296, @PurchasePrice = 10.94, @SellingPrice = 124.68, @StartDate = '2024-02-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 297, @PurchasePrice = 57.72, @SellingPrice = 144.58, @StartDate = '2023-11-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 298, @PurchasePrice = 86.02, @SellingPrice = 96.25, @StartDate = '2023-05-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 299, @PurchasePrice = 96.41, @SellingPrice = 113.32, @StartDate = '2023-06-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 300, @PurchasePrice = 77.3, @SellingPrice = 127.65, @StartDate = '2023-09-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 301, @PurchasePrice = 62.37, @SellingPrice = 74.26, @StartDate = '2023-08-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 302, @PurchasePrice = 70.15, @SellingPrice = 87.15, @StartDate = '2023-10-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 303, @PurchasePrice = 23.52, @SellingPrice = 148.67, @StartDate = '2023-08-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 304, @PurchasePrice = 73.0, @SellingPrice = 99.87, @StartDate = '2023-01-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 305, @PurchasePrice = 60.78, @SellingPrice = 117.51, @StartDate = '2023-09-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 306, @PurchasePrice = 90.27, @SellingPrice = 115.66, @StartDate = '2023-12-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 307, @PurchasePrice = 79.75, @SellingPrice = 126.24, @StartDate = '2023-12-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 308, @PurchasePrice = 91.27, @SellingPrice = 95.27, @StartDate = '2024-03-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 309, @PurchasePrice = 78.22, @SellingPrice = 146.16, @StartDate = '2023-11-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 310, @PurchasePrice = 86.1, @SellingPrice = 103.29, @StartDate = '2023-06-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 311, @PurchasePrice = 94.64, @SellingPrice = 106.47, @StartDate = '2023-08-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 312, @PurchasePrice = 27.66, @SellingPrice = 59.61, @StartDate = '2023-08-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 313, @PurchasePrice = 70.5, @SellingPrice = 121.66, @StartDate = '2024-01-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 314, @PurchasePrice = 94.91, @SellingPrice = 140.97, @StartDate = '2023-02-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 315, @PurchasePrice = 67.15, @SellingPrice = 96.02, @StartDate = '2023-03-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 316, @PurchasePrice = 20.84, @SellingPrice = 136.3, @StartDate = '2023-07-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 317, @PurchasePrice = 94.05, @SellingPrice = 148.3, @StartDate = '2023-07-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 318, @PurchasePrice = 65.41, @SellingPrice = 128.39, @StartDate = '2023-08-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 319, @PurchasePrice = 81.23, @SellingPrice = 108.59, @StartDate = '2024-04-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 320, @PurchasePrice = 21.48, @SellingPrice = 42.44, @StartDate = '2023-09-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 321, @PurchasePrice = 96.63, @SellingPrice = 116.8, @StartDate = '2023-12-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 322, @PurchasePrice = 28.3, @SellingPrice = 131.01, @StartDate = '2024-03-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 323, @PurchasePrice = 35.42, @SellingPrice = 41.81, @StartDate = '2023-09-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 324, @PurchasePrice = 65.14, @SellingPrice = 69.48, @StartDate = '2023-06-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 325, @PurchasePrice = 48.55, @SellingPrice = 135.71, @StartDate = '2023-01-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 326, @PurchasePrice = 55.13, @SellingPrice = 108.67, @StartDate = '2024-03-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 327, @PurchasePrice = 21.76, @SellingPrice = 99.65, @StartDate = '2023-01-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 328, @PurchasePrice = 59.77, @SellingPrice = 73.49, @StartDate = '2023-07-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 329, @PurchasePrice = 77.71, @SellingPrice = 149.15, @StartDate = '2023-02-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 330, @PurchasePrice = 14.33, @SellingPrice = 16.36, @StartDate = '2023-11-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 331, @PurchasePrice = 63.52, @SellingPrice = 113.16, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 332, @PurchasePrice = 49.89, @SellingPrice = 148.15, @StartDate = '2024-01-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 333, @PurchasePrice = 89.02, @SellingPrice = 142.9, @StartDate = '2024-04-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 334, @PurchasePrice = 60.72, @SellingPrice = 142.03, @StartDate = '2023-12-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 335, @PurchasePrice = 28.03, @SellingPrice = 57.07, @StartDate = '2023-05-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 336, @PurchasePrice = 64.99, @SellingPrice = 108.2, @StartDate = '2023-03-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 337, @PurchasePrice = 40.08, @SellingPrice = 54.19, @StartDate = '2024-04-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 338, @PurchasePrice = 58.97, @SellingPrice = 65.46, @StartDate = '2023-02-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 339, @PurchasePrice = 43.72, @SellingPrice = 90.75, @StartDate = '2023-09-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 340, @PurchasePrice = 89.68, @SellingPrice = 108.55, @StartDate = '2024-01-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 341, @PurchasePrice = 55.82, @SellingPrice = 135.23, @StartDate = '2023-06-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 342, @PurchasePrice = 27.13, @SellingPrice = 113.39, @StartDate = '2023-07-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 343, @PurchasePrice = 71.94, @SellingPrice = 83.06, @StartDate = '2023-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 344, @PurchasePrice = 30.41, @SellingPrice = 97.26, @StartDate = '2023-03-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 345, @PurchasePrice = 41.62, @SellingPrice = 114.35, @StartDate = '2023-09-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 346, @PurchasePrice = 45.27, @SellingPrice = 65.0, @StartDate = '2023-07-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 347, @PurchasePrice = 83.02, @SellingPrice = 128.37, @StartDate = '2023-08-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 348, @PurchasePrice = 62.59, @SellingPrice = 139.26, @StartDate = '2024-02-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 349, @PurchasePrice = 55.49, @SellingPrice = 116.57, @StartDate = '2023-07-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 350, @PurchasePrice = 55.47, @SellingPrice = 114.52, @StartDate = '2023-11-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 351, @PurchasePrice = 57.81, @SellingPrice = 125.32, @StartDate = '2023-12-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 352, @PurchasePrice = 23.14, @SellingPrice = 63.32, @StartDate = '2024-02-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 353, @PurchasePrice = 60.11, @SellingPrice = 64.81, @StartDate = '2023-01-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 354, @PurchasePrice = 94.62, @SellingPrice = 127.64, @StartDate = '2024-03-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 355, @PurchasePrice = 38.19, @SellingPrice = 40.05, @StartDate = '2023-11-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 356, @PurchasePrice = 81.14, @SellingPrice = 109.83, @StartDate = '2023-04-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 357, @PurchasePrice = 51.02, @SellingPrice = 99.55, @StartDate = '2023-08-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 358, @PurchasePrice = 55.32, @SellingPrice = 118.6, @StartDate = '2024-04-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 359, @PurchasePrice = 48.95, @SellingPrice = 146.16, @StartDate = '2023-06-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 360, @PurchasePrice = 93.71, @SellingPrice = 137.42, @StartDate = '2024-01-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 361, @PurchasePrice = 30.18, @SellingPrice = 44.21, @StartDate = '2024-03-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 362, @PurchasePrice = 67.61, @SellingPrice = 129.29, @StartDate = '2023-01-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 363, @PurchasePrice = 41.33, @SellingPrice = 130.56, @StartDate = '2024-01-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 364, @PurchasePrice = 75.66, @SellingPrice = 82.7, @StartDate = '2023-10-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 365, @PurchasePrice = 68.62, @SellingPrice = 94.27, @StartDate = '2023-02-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 366, @PurchasePrice = 33.83, @SellingPrice = 82.79, @StartDate = '2023-08-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 367, @PurchasePrice = 28.77, @SellingPrice = 105.23, @StartDate = '2023-01-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 368, @PurchasePrice = 72.54, @SellingPrice = 144.16, @StartDate = '2023-06-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 369, @PurchasePrice = 27.4, @SellingPrice = 63.43, @StartDate = '2023-11-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 370, @PurchasePrice = 36.34, @SellingPrice = 68.91, @StartDate = '2023-09-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 371, @PurchasePrice = 60.42, @SellingPrice = 78.59, @StartDate = '2023-12-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 372, @PurchasePrice = 87.56, @SellingPrice = 114.18, @StartDate = '2023-11-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 373, @PurchasePrice = 29.33, @SellingPrice = 46.3, @StartDate = '2023-07-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 374, @PurchasePrice = 55.29, @SellingPrice = 146.85, @StartDate = '2024-03-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 375, @PurchasePrice = 97.13, @SellingPrice = 127.68, @StartDate = '2024-02-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 376, @PurchasePrice = 40.52, @SellingPrice = 120.55, @StartDate = '2023-09-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 377, @PurchasePrice = 38.31, @SellingPrice = 130.04, @StartDate = '2024-04-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 378, @PurchasePrice = 83.59, @SellingPrice = 88.99, @StartDate = '2023-04-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 379, @PurchasePrice = 41.5, @SellingPrice = 125.11, @StartDate = '2024-02-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 380, @PurchasePrice = 76.28, @SellingPrice = 122.93, @StartDate = '2023-03-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 381, @PurchasePrice = 88.45, @SellingPrice = 108.51, @StartDate = '2024-03-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 382, @PurchasePrice = 66.72, @SellingPrice = 142.99, @StartDate = '2024-01-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 383, @PurchasePrice = 99.74, @SellingPrice = 122.53, @StartDate = '2024-04-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 384, @PurchasePrice = 22.82, @SellingPrice = 139.38, @StartDate = '2023-06-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 385, @PurchasePrice = 43.26, @SellingPrice = 141.87, @StartDate = '2023-08-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 386, @PurchasePrice = 68.19, @SellingPrice = 105.46, @StartDate = '2024-01-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 387, @PurchasePrice = 12.6, @SellingPrice = 111.35, @StartDate = '2024-03-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 388, @PurchasePrice = 16.71, @SellingPrice = 95.35, @StartDate = '2023-01-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 389, @PurchasePrice = 69.54, @SellingPrice = 92.72, @StartDate = '2024-03-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 390, @PurchasePrice = 68.56, @SellingPrice = 97.32, @StartDate = '2023-06-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 391, @PurchasePrice = 60.6, @SellingPrice = 133.02, @StartDate = '2023-12-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 392, @PurchasePrice = 64.52, @SellingPrice = 89.47, @StartDate = '2023-10-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 393, @PurchasePrice = 93.76, @SellingPrice = 140.59, @StartDate = '2023-12-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 394, @PurchasePrice = 66.2, @SellingPrice = 81.44, @StartDate = '2023-12-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 395, @PurchasePrice = 67.31, @SellingPrice = 136.47, @StartDate = '2024-04-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 396, @PurchasePrice = 92.61, @SellingPrice = 119.19, @StartDate = '2023-01-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 397, @PurchasePrice = 48.52, @SellingPrice = 129.23, @StartDate = '2023-12-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 398, @PurchasePrice = 19.83, @SellingPrice = 58.45, @StartDate = '2023-10-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 399, @PurchasePrice = 22.64, @SellingPrice = 32.89, @StartDate = '2023-03-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 400, @PurchasePrice = 80.87, @SellingPrice = 92.64, @StartDate = '2023-02-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 401, @PurchasePrice = 71.68, @SellingPrice = 124.61, @StartDate = '2024-03-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 402, @PurchasePrice = 82.26, @SellingPrice = 94.4, @StartDate = '2023-05-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 403, @PurchasePrice = 69.13, @SellingPrice = 127.21, @StartDate = '2023-03-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 404, @PurchasePrice = 60.11, @SellingPrice = 130.07, @StartDate = '2023-02-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 405, @PurchasePrice = 87.76, @SellingPrice = 123.42, @StartDate = '2023-04-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 406, @PurchasePrice = 70.85, @SellingPrice = 119.57, @StartDate = '2024-02-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 407, @PurchasePrice = 56.19, @SellingPrice = 131.55, @StartDate = '2024-03-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 408, @PurchasePrice = 99.89, @SellingPrice = 120.24, @StartDate = '2023-01-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 409, @PurchasePrice = 62.71, @SellingPrice = 79.19, @StartDate = '2024-02-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 410, @PurchasePrice = 13.96, @SellingPrice = 66.85, @StartDate = '2023-11-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 411, @PurchasePrice = 53.22, @SellingPrice = 68.52, @StartDate = '2024-04-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 412, @PurchasePrice = 24.24, @SellingPrice = 46.93, @StartDate = '2023-09-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 413, @PurchasePrice = 80.08, @SellingPrice = 138.76, @StartDate = '2023-05-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 414, @PurchasePrice = 41.02, @SellingPrice = 115.2, @StartDate = '2023-05-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 415, @PurchasePrice = 33.63, @SellingPrice = 137.38, @StartDate = '2023-09-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 416, @PurchasePrice = 15.34, @SellingPrice = 25.63, @StartDate = '2024-01-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 417, @PurchasePrice = 35.27, @SellingPrice = 147.18, @StartDate = '2023-02-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 418, @PurchasePrice = 12.76, @SellingPrice = 115.53, @StartDate = '2023-05-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 419, @PurchasePrice = 82.22, @SellingPrice = 125.63, @StartDate = '2023-04-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 420, @PurchasePrice = 86.45, @SellingPrice = 89.81, @StartDate = '2023-02-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 421, @PurchasePrice = 82.56, @SellingPrice = 139.3, @StartDate = '2023-01-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 422, @PurchasePrice = 61.73, @SellingPrice = 114.49, @StartDate = '2024-04-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 423, @PurchasePrice = 71.98, @SellingPrice = 91.07, @StartDate = '2023-09-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 424, @PurchasePrice = 42.19, @SellingPrice = 92.89, @StartDate = '2023-04-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 425, @PurchasePrice = 70.98, @SellingPrice = 81.73, @StartDate = '2024-02-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 426, @PurchasePrice = 92.07, @SellingPrice = 132.29, @StartDate = '2023-12-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 427, @PurchasePrice = 43.09, @SellingPrice = 90.86, @StartDate = '2023-01-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 428, @PurchasePrice = 82.05, @SellingPrice = 101.25, @StartDate = '2024-01-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 429, @PurchasePrice = 94.64, @SellingPrice = 139.43, @StartDate = '2023-11-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 430, @PurchasePrice = 25.7, @SellingPrice = 136.01, @StartDate = '2023-02-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 431, @PurchasePrice = 39.09, @SellingPrice = 66.81, @StartDate = '2023-11-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 432, @PurchasePrice = 40.13, @SellingPrice = 84.18, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 433, @PurchasePrice = 88.59, @SellingPrice = 125.79, @StartDate = '2024-03-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 434, @PurchasePrice = 61.46, @SellingPrice = 127.16, @StartDate = '2024-03-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 435, @PurchasePrice = 31.01, @SellingPrice = 90.12, @StartDate = '2023-06-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 436, @PurchasePrice = 99.1, @SellingPrice = 124.18, @StartDate = '2023-02-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 437, @PurchasePrice = 52.53, @SellingPrice = 137.91, @StartDate = '2023-02-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 438, @PurchasePrice = 34.32, @SellingPrice = 80.04, @StartDate = '2024-01-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 439, @PurchasePrice = 48.49, @SellingPrice = 91.89, @StartDate = '2023-05-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 440, @PurchasePrice = 56.9, @SellingPrice = 119.08, @StartDate = '2023-02-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 441, @PurchasePrice = 44.79, @SellingPrice = 113.58, @StartDate = '2023-06-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 442, @PurchasePrice = 90.92, @SellingPrice = 125.35, @StartDate = '2023-06-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 443, @PurchasePrice = 13.93, @SellingPrice = 80.69, @StartDate = '2023-04-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 444, @PurchasePrice = 51.25, @SellingPrice = 95.78, @StartDate = '2023-12-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 445, @PurchasePrice = 63.56, @SellingPrice = 82.26, @StartDate = '2024-01-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 446, @PurchasePrice = 43.79, @SellingPrice = 85.63, @StartDate = '2023-09-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 447, @PurchasePrice = 99.05, @SellingPrice = 148.03, @StartDate = '2023-05-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 448, @PurchasePrice = 43.17, @SellingPrice = 130.42, @StartDate = '2023-10-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 449, @PurchasePrice = 15.96, @SellingPrice = 16.2, @StartDate = '2023-04-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 450, @PurchasePrice = 38.62, @SellingPrice = 67.92, @StartDate = '2023-04-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 451, @PurchasePrice = 53.84, @SellingPrice = 73.19, @StartDate = '2023-02-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 452, @PurchasePrice = 34.63, @SellingPrice = 39.33, @StartDate = '2023-04-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 453, @PurchasePrice = 28.17, @SellingPrice = 31.9, @StartDate = '2024-03-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 454, @PurchasePrice = 61.07, @SellingPrice = 83.82, @StartDate = '2023-03-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 455, @PurchasePrice = 22.89, @SellingPrice = 74.24, @StartDate = '2023-10-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 456, @PurchasePrice = 29.69, @SellingPrice = 136.4, @StartDate = '2024-01-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 457, @PurchasePrice = 94.06, @SellingPrice = 135.28, @StartDate = '2023-03-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 458, @PurchasePrice = 22.96, @SellingPrice = 93.34, @StartDate = '2023-07-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 459, @PurchasePrice = 49.78, @SellingPrice = 128.14, @StartDate = '2023-07-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 460, @PurchasePrice = 83.43, @SellingPrice = 89.01, @StartDate = '2023-05-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 461, @PurchasePrice = 78.73, @SellingPrice = 103.76, @StartDate = '2023-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 462, @PurchasePrice = 27.08, @SellingPrice = 123.55, @StartDate = '2024-03-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 463, @PurchasePrice = 75.43, @SellingPrice = 81.48, @StartDate = '2023-09-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 464, @PurchasePrice = 59.19, @SellingPrice = 108.25, @StartDate = '2024-01-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 465, @PurchasePrice = 44.76, @SellingPrice = 77.87, @StartDate = '2024-01-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 466, @PurchasePrice = 33.42, @SellingPrice = 90.92, @StartDate = '2023-05-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 467, @PurchasePrice = 26.08, @SellingPrice = 97.14, @StartDate = '2023-11-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 468, @PurchasePrice = 69.97, @SellingPrice = 105.35, @StartDate = '2023-09-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 469, @PurchasePrice = 62.65, @SellingPrice = 140.79, @StartDate = '2023-06-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 470, @PurchasePrice = 48.46, @SellingPrice = 127.55, @StartDate = '2023-06-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 471, @PurchasePrice = 49.45, @SellingPrice = 54.28, @StartDate = '2023-11-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 472, @PurchasePrice = 58.01, @SellingPrice = 123.23, @StartDate = '2023-04-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 473, @PurchasePrice = 20.97, @SellingPrice = 139.75, @StartDate = '2023-01-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 474, @PurchasePrice = 45.98, @SellingPrice = 137.13, @StartDate = '2023-10-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 475, @PurchasePrice = 73.24, @SellingPrice = 105.76, @StartDate = '2024-01-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 476, @PurchasePrice = 65.06, @SellingPrice = 132.69, @StartDate = '2023-01-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 477, @PurchasePrice = 83.02, @SellingPrice = 109.5, @StartDate = '2024-03-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 478, @PurchasePrice = 85.8, @SellingPrice = 146.43, @StartDate = '2024-04-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 479, @PurchasePrice = 83.97, @SellingPrice = 85.02, @StartDate = '2023-04-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 480, @PurchasePrice = 89.02, @SellingPrice = 122.77, @StartDate = '2024-03-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 481, @PurchasePrice = 35.89, @SellingPrice = 102.61, @StartDate = '2023-05-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 482, @PurchasePrice = 23.15, @SellingPrice = 146.23, @StartDate = '2024-03-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 483, @PurchasePrice = 27.72, @SellingPrice = 108.71, @StartDate = '2023-05-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 484, @PurchasePrice = 31.43, @SellingPrice = 122.03, @StartDate = '2024-03-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 485, @PurchasePrice = 91.96, @SellingPrice = 98.37, @StartDate = '2023-11-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 486, @PurchasePrice = 13.43, @SellingPrice = 20.68, @StartDate = '2023-02-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 487, @PurchasePrice = 47.42, @SellingPrice = 75.42, @StartDate = '2023-04-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 488, @PurchasePrice = 33.97, @SellingPrice = 93.76, @StartDate = '2023-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 489, @PurchasePrice = 37.49, @SellingPrice = 54.91, @StartDate = '2024-04-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 490, @PurchasePrice = 78.49, @SellingPrice = 127.6, @StartDate = '2023-04-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 491, @PurchasePrice = 14.23, @SellingPrice = 46.22, @StartDate = '2023-11-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 492, @PurchasePrice = 27.93, @SellingPrice = 71.44, @StartDate = '2024-01-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 493, @PurchasePrice = 84.33, @SellingPrice = 145.82, @StartDate = '2024-02-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 494, @PurchasePrice = 77.53, @SellingPrice = 126.82, @StartDate = '2023-06-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 495, @PurchasePrice = 36.75, @SellingPrice = 92.33, @StartDate = '2023-03-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 496, @PurchasePrice = 62.63, @SellingPrice = 96.21, @StartDate = '2023-02-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 497, @PurchasePrice = 73.34, @SellingPrice = 140.32, @StartDate = '2024-01-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 498, @PurchasePrice = 67.38, @SellingPrice = 126.42, @StartDate = '2024-03-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 499, @PurchasePrice = 31.15, @SellingPrice = 55.81, @StartDate = '2023-09-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 500, @PurchasePrice = 98.34, @SellingPrice = 104.43, @StartDate = '2023-12-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 1, @PurchasePrice = 31.73, @SellingPrice = 145.88, @StartDate = '2024-01-28', @EndDate = '2024-04-17';
EXEC InsertPricesDetails @TypeSizeID = 1, @PurchasePrice = 97.0, @SellingPrice = 133.22, @StartDate = '2024-04-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 2, @PurchasePrice = 31.03, @SellingPrice = 145.95, @StartDate = '2024-04-10', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 2, @PurchasePrice = 98.49, @SellingPrice = 137.32, @StartDate = '2024-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 3, @PurchasePrice = 67.78, @SellingPrice = 108.51, @StartDate = '2024-04-11', @EndDate = '2024-04-25';
EXEC InsertPricesDetails @TypeSizeID = 3, @PurchasePrice = 23.36, @SellingPrice = 148.82, @StartDate = '2024-04-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 4, @PurchasePrice = 68.48, @SellingPrice = 117.67, @StartDate = '2023-08-28', @EndDate = '2024-04-15';
EXEC InsertPricesDetails @TypeSizeID = 4, @PurchasePrice = 50.81, @SellingPrice = 78.48, @StartDate = '2024-04-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 5, @PurchasePrice = 96.6, @SellingPrice = 136.94, @StartDate = '2024-04-30', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 5, @PurchasePrice = 31.31, @SellingPrice = 87.72, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 6, @PurchasePrice = 79.15, @SellingPrice = 80.41, @StartDate = '2023-10-30', @EndDate = '2023-11-16';
EXEC InsertPricesDetails @TypeSizeID = 6, @PurchasePrice = 60.13, @SellingPrice = 84.51, @StartDate = '2023-11-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 7, @PurchasePrice = 99.6, @SellingPrice = 102.16, @StartDate = '2024-04-28', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 7, @PurchasePrice = 28.96, @SellingPrice = 63.9, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 8, @PurchasePrice = 10.01, @SellingPrice = 112.01, @StartDate = '2024-01-24', @EndDate = '2024-03-08';
EXEC InsertPricesDetails @TypeSizeID = 8, @PurchasePrice = 11.06, @SellingPrice = 14.97, @StartDate = '2024-03-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 9, @PurchasePrice = 25.27, @SellingPrice = 136.75, @StartDate = '2023-12-15', @EndDate = '2024-03-12';
EXEC InsertPricesDetails @TypeSizeID = 9, @PurchasePrice = 99.71, @SellingPrice = 136.92, @StartDate = '2024-03-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 10, @PurchasePrice = 59.88, @SellingPrice = 93.43, @StartDate = '2023-08-06', @EndDate = '2023-12-27';
EXEC InsertPricesDetails @TypeSizeID = 10, @PurchasePrice = 65.01, @SellingPrice = 68.62, @StartDate = '2023-12-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 11, @PurchasePrice = 82.83, @SellingPrice = 104.26, @StartDate = '2024-02-16', @EndDate = '2024-03-05';
EXEC InsertPricesDetails @TypeSizeID = 11, @PurchasePrice = 60.3, @SellingPrice = 76.25, @StartDate = '2024-03-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 12, @PurchasePrice = 82.05, @SellingPrice = 129.65, @StartDate = '2024-03-27', @EndDate = '2024-04-12';
EXEC InsertPricesDetails @TypeSizeID = 12, @PurchasePrice = 66.47, @SellingPrice = 73.12, @StartDate = '2024-04-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 13, @PurchasePrice = 69.91, @SellingPrice = 77.64, @StartDate = '2023-05-31', @EndDate = '2024-01-01';
EXEC InsertPricesDetails @TypeSizeID = 13, @PurchasePrice = 62.99, @SellingPrice = 78.86, @StartDate = '2024-01-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 14, @PurchasePrice = 67.58, @SellingPrice = 74.55, @StartDate = '2024-04-13', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 14, @PurchasePrice = 33.76, @SellingPrice = 141.98, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 15, @PurchasePrice = 26.7, @SellingPrice = 102.69, @StartDate = '2024-04-23', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 15, @PurchasePrice = 18.26, @SellingPrice = 139.67, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 16, @PurchasePrice = 89.17, @SellingPrice = 99.33, @StartDate = '2023-12-03', @EndDate = '2024-01-20';
EXEC InsertPricesDetails @TypeSizeID = 16, @PurchasePrice = 62.8, @SellingPrice = 112.02, @StartDate = '2024-01-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 17, @PurchasePrice = 66.21, @SellingPrice = 116.14, @StartDate = '2024-02-21', @EndDate = '2024-04-02';
EXEC InsertPricesDetails @TypeSizeID = 17, @PurchasePrice = 34.04, @SellingPrice = 94.52, @StartDate = '2024-04-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 18, @PurchasePrice = 87.8, @SellingPrice = 140.02, @StartDate = '2023-12-20', @EndDate = '2024-03-15';
EXEC InsertPricesDetails @TypeSizeID = 18, @PurchasePrice = 19.26, @SellingPrice = 70.14, @StartDate = '2024-03-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 19, @PurchasePrice = 91.81, @SellingPrice = 126.95, @StartDate = '2023-07-31', @EndDate = '2024-01-12';
EXEC InsertPricesDetails @TypeSizeID = 19, @PurchasePrice = 93.72, @SellingPrice = 98.05, @StartDate = '2024-01-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 20, @PurchasePrice = 69.21, @SellingPrice = 106.4, @StartDate = '2023-12-15', @EndDate = '2024-01-28';
EXEC InsertPricesDetails @TypeSizeID = 20, @PurchasePrice = 47.57, @SellingPrice = 57.33, @StartDate = '2024-01-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 21, @PurchasePrice = 11.36, @SellingPrice = 60.28, @StartDate = '2023-10-23', @EndDate = '2024-02-02';
EXEC InsertPricesDetails @TypeSizeID = 21, @PurchasePrice = 24.88, @SellingPrice = 44.77, @StartDate = '2024-02-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 22, @PurchasePrice = 73.78, @SellingPrice = 107.81, @StartDate = '2024-02-11', @EndDate = '2024-02-19';
EXEC InsertPricesDetails @TypeSizeID = 22, @PurchasePrice = 51.78, @SellingPrice = 124.83, @StartDate = '2024-02-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 23, @PurchasePrice = 61.93, @SellingPrice = 106.7, @StartDate = '2023-12-14', @EndDate = '2024-02-09';
EXEC InsertPricesDetails @TypeSizeID = 23, @PurchasePrice = 14.14, @SellingPrice = 29.84, @StartDate = '2024-02-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 24, @PurchasePrice = 23.96, @SellingPrice = 68.69, @StartDate = '2024-05-01', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 24, @PurchasePrice = 74.36, @SellingPrice = 77.86, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 25, @PurchasePrice = 51.8, @SellingPrice = 55.46, @StartDate = '2023-09-27', @EndDate = '2023-12-25';
EXEC InsertPricesDetails @TypeSizeID = 25, @PurchasePrice = 85.31, @SellingPrice = 123.22, @StartDate = '2023-12-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 26, @PurchasePrice = 74.09, @SellingPrice = 145.05, @StartDate = '2023-04-12', @EndDate = '2024-04-13';
EXEC InsertPricesDetails @TypeSizeID = 26, @PurchasePrice = 94.2, @SellingPrice = 95.27, @StartDate = '2024-04-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 27, @PurchasePrice = 45.36, @SellingPrice = 104.23, @StartDate = '2024-03-18', @EndDate = '2024-03-29';
EXEC InsertPricesDetails @TypeSizeID = 27, @PurchasePrice = 40.51, @SellingPrice = 54.51, @StartDate = '2024-03-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 28, @PurchasePrice = 65.14, @SellingPrice = 149.69, @StartDate = '2023-11-03', @EndDate = '2024-03-04';
EXEC InsertPricesDetails @TypeSizeID = 28, @PurchasePrice = 40.74, @SellingPrice = 119.19, @StartDate = '2024-03-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 29, @PurchasePrice = 39.43, @SellingPrice = 127.55, @StartDate = '2024-02-20', @EndDate = '2024-03-12';
EXEC InsertPricesDetails @TypeSizeID = 29, @PurchasePrice = 11.16, @SellingPrice = 16.74, @StartDate = '2024-03-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 30, @PurchasePrice = 68.43, @SellingPrice = 109.95, @StartDate = '2024-02-13', @EndDate = '2024-04-14';
EXEC InsertPricesDetails @TypeSizeID = 30, @PurchasePrice = 69.28, @SellingPrice = 91.52, @StartDate = '2024-04-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 31, @PurchasePrice = 46.02, @SellingPrice = 125.48, @StartDate = '2024-04-14', @EndDate = '2024-04-19';
EXEC InsertPricesDetails @TypeSizeID = 31, @PurchasePrice = 50.45, @SellingPrice = 59.24, @StartDate = '2024-04-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 32, @PurchasePrice = 18.69, @SellingPrice = 72.04, @StartDate = '2023-10-21', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 32, @PurchasePrice = 28.32, @SellingPrice = 71.64, @StartDate = '2024-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 33, @PurchasePrice = 97.94, @SellingPrice = 148.09, @StartDate = '2024-02-06', @EndDate = '2024-04-21';
EXEC InsertPricesDetails @TypeSizeID = 33, @PurchasePrice = 78.67, @SellingPrice = 126.53, @StartDate = '2024-04-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 34, @PurchasePrice = 59.51, @SellingPrice = 84.89, @StartDate = '2024-04-17', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 34, @PurchasePrice = 37.86, @SellingPrice = 68.56, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 35, @PurchasePrice = 92.57, @SellingPrice = 144.69, @StartDate = '2024-04-25', @EndDate = '2024-04-26';
EXEC InsertPricesDetails @TypeSizeID = 35, @PurchasePrice = 14.92, @SellingPrice = 90.99, @StartDate = '2024-04-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 36, @PurchasePrice = 80.97, @SellingPrice = 116.95, @StartDate = '2023-11-22', @EndDate = '2024-03-11';
EXEC InsertPricesDetails @TypeSizeID = 36, @PurchasePrice = 25.31, @SellingPrice = 129.8, @StartDate = '2024-03-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 37, @PurchasePrice = 23.52, @SellingPrice = 103.42, @StartDate = '2024-03-16', @EndDate = '2024-04-07';
EXEC InsertPricesDetails @TypeSizeID = 37, @PurchasePrice = 54.15, @SellingPrice = 147.5, @StartDate = '2024-04-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 38, @PurchasePrice = 86.11, @SellingPrice = 114.05, @StartDate = '2023-07-31', @EndDate = '2023-11-15';
EXEC InsertPricesDetails @TypeSizeID = 38, @PurchasePrice = 49.91, @SellingPrice = 66.93, @StartDate = '2023-11-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 39, @PurchasePrice = 87.78, @SellingPrice = 104.79, @StartDate = '2023-07-10', @EndDate = '2023-10-29';
EXEC InsertPricesDetails @TypeSizeID = 39, @PurchasePrice = 10.21, @SellingPrice = 47.4, @StartDate = '2023-10-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 40, @PurchasePrice = 16.31, @SellingPrice = 140.32, @StartDate = '2023-04-21', @EndDate = '2024-04-17';
EXEC InsertPricesDetails @TypeSizeID = 40, @PurchasePrice = 90.23, @SellingPrice = 128.44, @StartDate = '2024-04-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 41, @PurchasePrice = 54.56, @SellingPrice = 74.0, @StartDate = '2024-04-27', @EndDate = '2024-04-27';
EXEC InsertPricesDetails @TypeSizeID = 41, @PurchasePrice = 51.77, @SellingPrice = 135.81, @StartDate = '2024-04-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 42, @PurchasePrice = 64.57, @SellingPrice = 80.63, @StartDate = '2023-12-12', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 42, @PurchasePrice = 49.13, @SellingPrice = 50.56, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 43, @PurchasePrice = 57.26, @SellingPrice = 71.26, @StartDate = '2024-01-09', @EndDate = '2024-03-14';
EXEC InsertPricesDetails @TypeSizeID = 43, @PurchasePrice = 33.39, @SellingPrice = 134.66, @StartDate = '2024-03-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 44, @PurchasePrice = 96.51, @SellingPrice = 145.04, @StartDate = '2023-09-03', @EndDate = '2023-10-01';
EXEC InsertPricesDetails @TypeSizeID = 44, @PurchasePrice = 85.76, @SellingPrice = 138.01, @StartDate = '2023-10-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 45, @PurchasePrice = 91.46, @SellingPrice = 126.79, @StartDate = '2024-03-01', @EndDate = '2024-03-11';
EXEC InsertPricesDetails @TypeSizeID = 45, @PurchasePrice = 15.46, @SellingPrice = 137.93, @StartDate = '2024-03-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 46, @PurchasePrice = 32.11, @SellingPrice = 104.67, @StartDate = '2024-01-23', @EndDate = '2024-03-11';
EXEC InsertPricesDetails @TypeSizeID = 46, @PurchasePrice = 60.78, @SellingPrice = 133.44, @StartDate = '2024-03-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 47, @PurchasePrice = 54.95, @SellingPrice = 78.14, @StartDate = '2023-06-17', @EndDate = '2023-10-31';
EXEC InsertPricesDetails @TypeSizeID = 47, @PurchasePrice = 44.23, @SellingPrice = 53.72, @StartDate = '2023-10-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 48, @PurchasePrice = 10.49, @SellingPrice = 128.96, @StartDate = '2024-03-01', @EndDate = '2024-04-11';
EXEC InsertPricesDetails @TypeSizeID = 48, @PurchasePrice = 70.48, @SellingPrice = 139.28, @StartDate = '2024-04-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 49, @PurchasePrice = 30.11, @SellingPrice = 121.33, @StartDate = '2024-03-04', @EndDate = '2024-04-22';
EXEC InsertPricesDetails @TypeSizeID = 49, @PurchasePrice = 61.81, @SellingPrice = 87.19, @StartDate = '2024-04-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 50, @PurchasePrice = 34.93, @SellingPrice = 139.76, @StartDate = '2024-02-28', @EndDate = '2024-03-05';
EXEC InsertPricesDetails @TypeSizeID = 50, @PurchasePrice = 89.84, @SellingPrice = 110.39, @StartDate = '2024-03-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 51, @PurchasePrice = 13.89, @SellingPrice = 28.85, @StartDate = '2023-08-06', @EndDate = '2024-03-11';
EXEC InsertPricesDetails @TypeSizeID = 51, @PurchasePrice = 52.98, @SellingPrice = 78.35, @StartDate = '2024-03-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 52, @PurchasePrice = 86.81, @SellingPrice = 111.49, @StartDate = '2024-01-02', @EndDate = '2024-03-30';
EXEC InsertPricesDetails @TypeSizeID = 52, @PurchasePrice = 40.83, @SellingPrice = 87.02, @StartDate = '2024-03-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 53, @PurchasePrice = 56.6, @SellingPrice = 86.57, @StartDate = '2024-04-29', @EndDate = '2024-04-29';
EXEC InsertPricesDetails @TypeSizeID = 53, @PurchasePrice = 14.77, @SellingPrice = 132.74, @StartDate = '2024-04-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 54, @PurchasePrice = 23.1, @SellingPrice = 109.76, @StartDate = '2023-12-03', @EndDate = '2023-12-16';
EXEC InsertPricesDetails @TypeSizeID = 54, @PurchasePrice = 81.08, @SellingPrice = 121.89, @StartDate = '2023-12-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 55, @PurchasePrice = 93.29, @SellingPrice = 144.44, @StartDate = '2023-11-27', @EndDate = '2024-02-22';
EXEC InsertPricesDetails @TypeSizeID = 55, @PurchasePrice = 58.07, @SellingPrice = 130.97, @StartDate = '2024-02-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 56, @PurchasePrice = 82.31, @SellingPrice = 91.97, @StartDate = '2023-12-06', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 56, @PurchasePrice = 38.22, @SellingPrice = 96.61, @StartDate = '2024-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 57, @PurchasePrice = 61.22, @SellingPrice = 110.66, @StartDate = '2023-12-06', @EndDate = '2023-12-20';
EXEC InsertPricesDetails @TypeSizeID = 57, @PurchasePrice = 63.48, @SellingPrice = 84.32, @StartDate = '2023-12-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 58, @PurchasePrice = 77.77, @SellingPrice = 81.18, @StartDate = '2023-09-18', @EndDate = '2023-09-30';
EXEC InsertPricesDetails @TypeSizeID = 58, @PurchasePrice = 28.02, @SellingPrice = 69.28, @StartDate = '2023-09-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 59, @PurchasePrice = 30.5, @SellingPrice = 98.87, @StartDate = '2024-01-26', @EndDate = '2024-03-21';
EXEC InsertPricesDetails @TypeSizeID = 59, @PurchasePrice = 46.04, @SellingPrice = 139.77, @StartDate = '2024-03-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 60, @PurchasePrice = 49.98, @SellingPrice = 125.13, @StartDate = '2024-02-22', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 60, @PurchasePrice = 39.83, @SellingPrice = 127.49, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 61, @PurchasePrice = 25.06, @SellingPrice = 79.03, @StartDate = '2023-08-25', @EndDate = '2024-03-26';
EXEC InsertPricesDetails @TypeSizeID = 61, @PurchasePrice = 93.21, @SellingPrice = 113.55, @StartDate = '2024-03-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 62, @PurchasePrice = 96.86, @SellingPrice = 144.62, @StartDate = '2024-02-16', @EndDate = '2024-04-07';
EXEC InsertPricesDetails @TypeSizeID = 62, @PurchasePrice = 79.89, @SellingPrice = 103.42, @StartDate = '2024-04-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 63, @PurchasePrice = 68.85, @SellingPrice = 102.55, @StartDate = '2024-02-16', @EndDate = '2024-02-25';
EXEC InsertPricesDetails @TypeSizeID = 63, @PurchasePrice = 93.9, @SellingPrice = 137.98, @StartDate = '2024-02-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 64, @PurchasePrice = 69.93, @SellingPrice = 122.73, @StartDate = '2024-04-19', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 64, @PurchasePrice = 36.44, @SellingPrice = 114.2, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 65, @PurchasePrice = 49.08, @SellingPrice = 131.46, @StartDate = '2023-08-05', @EndDate = '2023-12-18';
EXEC InsertPricesDetails @TypeSizeID = 65, @PurchasePrice = 29.79, @SellingPrice = 123.42, @StartDate = '2023-12-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 66, @PurchasePrice = 91.76, @SellingPrice = 100.78, @StartDate = '2023-03-30', @EndDate = '2023-06-22';
EXEC InsertPricesDetails @TypeSizeID = 66, @PurchasePrice = 91.65, @SellingPrice = 93.69, @StartDate = '2023-06-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 67, @PurchasePrice = 37.72, @SellingPrice = 85.28, @StartDate = '2024-04-20', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 67, @PurchasePrice = 13.43, @SellingPrice = 107.77, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 68, @PurchasePrice = 33.27, @SellingPrice = 101.99, @StartDate = '2024-03-02', @EndDate = '2024-03-09';
EXEC InsertPricesDetails @TypeSizeID = 68, @PurchasePrice = 63.52, @SellingPrice = 70.34, @StartDate = '2024-03-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 69, @PurchasePrice = 15.45, @SellingPrice = 129.55, @StartDate = '2024-02-22', @EndDate = '2024-03-19';
EXEC InsertPricesDetails @TypeSizeID = 69, @PurchasePrice = 59.38, @SellingPrice = 112.65, @StartDate = '2024-03-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 70, @PurchasePrice = 87.19, @SellingPrice = 123.75, @StartDate = '2024-03-26', @EndDate = '2024-04-01';
EXEC InsertPricesDetails @TypeSizeID = 70, @PurchasePrice = 53.47, @SellingPrice = 63.47, @StartDate = '2024-04-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 71, @PurchasePrice = 44.1, @SellingPrice = 123.87, @StartDate = '2024-04-27', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 71, @PurchasePrice = 27.98, @SellingPrice = 73.55, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 72, @PurchasePrice = 87.04, @SellingPrice = 141.22, @StartDate = '2024-02-14', @EndDate = '2024-03-29';
EXEC InsertPricesDetails @TypeSizeID = 72, @PurchasePrice = 87.89, @SellingPrice = 88.88, @StartDate = '2024-03-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 73, @PurchasePrice = 84.1, @SellingPrice = 149.7, @StartDate = '2023-12-20', @EndDate = '2024-03-13';
EXEC InsertPricesDetails @TypeSizeID = 73, @PurchasePrice = 71.45, @SellingPrice = 129.61, @StartDate = '2024-03-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 74, @PurchasePrice = 55.44, @SellingPrice = 127.51, @StartDate = '2024-03-02', @EndDate = '2024-03-10';
EXEC InsertPricesDetails @TypeSizeID = 74, @PurchasePrice = 86.07, @SellingPrice = 148.64, @StartDate = '2024-03-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 75, @PurchasePrice = 12.21, @SellingPrice = 70.22, @StartDate = '2023-03-13', @EndDate = '2023-03-29';
EXEC InsertPricesDetails @TypeSizeID = 75, @PurchasePrice = 10.2, @SellingPrice = 78.32, @StartDate = '2023-03-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 76, @PurchasePrice = 53.35, @SellingPrice = 74.27, @StartDate = '2024-02-04', @EndDate = '2024-03-31';
EXEC InsertPricesDetails @TypeSizeID = 76, @PurchasePrice = 56.01, @SellingPrice = 77.77, @StartDate = '2024-03-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 77, @PurchasePrice = 38.6, @SellingPrice = 139.4, @StartDate = '2024-03-26', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 77, @PurchasePrice = 35.9, @SellingPrice = 94.45, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 78, @PurchasePrice = 63.58, @SellingPrice = 133.98, @StartDate = '2024-02-17', @EndDate = '2024-03-31';
EXEC InsertPricesDetails @TypeSizeID = 78, @PurchasePrice = 15.83, @SellingPrice = 89.17, @StartDate = '2024-03-31', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 79, @PurchasePrice = 89.32, @SellingPrice = 111.99, @StartDate = '2024-01-10', @EndDate = '2024-02-15';
EXEC InsertPricesDetails @TypeSizeID = 79, @PurchasePrice = 81.81, @SellingPrice = 129.85, @StartDate = '2024-02-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 80, @PurchasePrice = 29.65, @SellingPrice = 30.71, @StartDate = '2023-06-16', @EndDate = '2024-03-28';
EXEC InsertPricesDetails @TypeSizeID = 80, @PurchasePrice = 58.99, @SellingPrice = 83.45, @StartDate = '2024-03-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 81, @PurchasePrice = 50.48, @SellingPrice = 121.58, @StartDate = '2023-08-22', @EndDate = '2024-01-23';
EXEC InsertPricesDetails @TypeSizeID = 81, @PurchasePrice = 88.99, @SellingPrice = 127.18, @StartDate = '2024-01-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 82, @PurchasePrice = 27.27, @SellingPrice = 142.39, @StartDate = '2023-04-06', @EndDate = '2023-04-12';
EXEC InsertPricesDetails @TypeSizeID = 82, @PurchasePrice = 71.25, @SellingPrice = 103.53, @StartDate = '2023-04-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 83, @PurchasePrice = 28.45, @SellingPrice = 69.13, @StartDate = '2024-01-09', @EndDate = '2024-04-02';
EXEC InsertPricesDetails @TypeSizeID = 83, @PurchasePrice = 14.36, @SellingPrice = 41.54, @StartDate = '2024-04-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 84, @PurchasePrice = 59.37, @SellingPrice = 84.27, @StartDate = '2023-09-05', @EndDate = '2023-11-15';
EXEC InsertPricesDetails @TypeSizeID = 84, @PurchasePrice = 97.17, @SellingPrice = 100.54, @StartDate = '2023-11-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 85, @PurchasePrice = 15.45, @SellingPrice = 76.56, @StartDate = '2024-01-10', @EndDate = '2024-01-23';
EXEC InsertPricesDetails @TypeSizeID = 85, @PurchasePrice = 25.74, @SellingPrice = 40.17, @StartDate = '2024-01-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 86, @PurchasePrice = 49.98, @SellingPrice = 149.18, @StartDate = '2023-06-08', @EndDate = '2023-10-07';
EXEC InsertPricesDetails @TypeSizeID = 86, @PurchasePrice = 98.67, @SellingPrice = 141.61, @StartDate = '2023-10-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 87, @PurchasePrice = 39.96, @SellingPrice = 107.58, @StartDate = '2023-12-25', @EndDate = '2024-04-17';
EXEC InsertPricesDetails @TypeSizeID = 87, @PurchasePrice = 32.95, @SellingPrice = 52.98, @StartDate = '2024-04-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 88, @PurchasePrice = 41.25, @SellingPrice = 147.26, @StartDate = '2023-09-09', @EndDate = '2023-12-21';
EXEC InsertPricesDetails @TypeSizeID = 88, @PurchasePrice = 83.82, @SellingPrice = 131.35, @StartDate = '2023-12-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 89, @PurchasePrice = 50.0, @SellingPrice = 72.1, @StartDate = '2024-02-17', @EndDate = '2024-03-27';
EXEC InsertPricesDetails @TypeSizeID = 89, @PurchasePrice = 55.47, @SellingPrice = 61.93, @StartDate = '2024-03-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 90, @PurchasePrice = 99.26, @SellingPrice = 141.11, @StartDate = '2023-12-10', @EndDate = '2024-01-02';
EXEC InsertPricesDetails @TypeSizeID = 90, @PurchasePrice = 33.01, @SellingPrice = 149.23, @StartDate = '2024-01-02', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 91, @PurchasePrice = 20.23, @SellingPrice = 140.32, @StartDate = '2024-03-28', @EndDate = '2024-04-11';
EXEC InsertPricesDetails @TypeSizeID = 91, @PurchasePrice = 95.5, @SellingPrice = 105.44, @StartDate = '2024-04-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 92, @PurchasePrice = 50.37, @SellingPrice = 61.67, @StartDate = '2024-02-17', @EndDate = '2024-04-25';
EXEC InsertPricesDetails @TypeSizeID = 92, @PurchasePrice = 10.76, @SellingPrice = 101.7, @StartDate = '2024-04-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 93, @PurchasePrice = 91.72, @SellingPrice = 124.25, @StartDate = '2023-07-11', @EndDate = '2023-12-19';
EXEC InsertPricesDetails @TypeSizeID = 93, @PurchasePrice = 57.69, @SellingPrice = 129.46, @StartDate = '2023-12-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 94, @PurchasePrice = 23.14, @SellingPrice = 30.23, @StartDate = '2024-01-10', @EndDate = '2024-02-06';
EXEC InsertPricesDetails @TypeSizeID = 94, @PurchasePrice = 61.48, @SellingPrice = 91.68, @StartDate = '2024-02-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 95, @PurchasePrice = 85.4, @SellingPrice = 90.44, @StartDate = '2023-10-26', @EndDate = '2024-03-28';
EXEC InsertPricesDetails @TypeSizeID = 95, @PurchasePrice = 10.76, @SellingPrice = 45.46, @StartDate = '2024-03-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 96, @PurchasePrice = 59.76, @SellingPrice = 60.01, @StartDate = '2023-10-15', @EndDate = '2023-11-04';
EXEC InsertPricesDetails @TypeSizeID = 96, @PurchasePrice = 50.83, @SellingPrice = 133.83, @StartDate = '2023-11-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 97, @PurchasePrice = 96.41, @SellingPrice = 96.64, @StartDate = '2023-04-01', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 97, @PurchasePrice = 99.88, @SellingPrice = 141.66, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 98, @PurchasePrice = 71.72, @SellingPrice = 136.99, @StartDate = '2023-10-02', @EndDate = '2023-10-03';
EXEC InsertPricesDetails @TypeSizeID = 98, @PurchasePrice = 79.41, @SellingPrice = 143.16, @StartDate = '2023-10-03', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 99, @PurchasePrice = 48.49, @SellingPrice = 67.34, @StartDate = '2024-03-16', @EndDate = '2024-04-14';
EXEC InsertPricesDetails @TypeSizeID = 99, @PurchasePrice = 71.35, @SellingPrice = 129.48, @StartDate = '2024-04-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 100, @PurchasePrice = 60.87, @SellingPrice = 62.05, @StartDate = '2023-05-06', @EndDate = '2024-01-09';
EXEC InsertPricesDetails @TypeSizeID = 100, @PurchasePrice = 12.02, @SellingPrice = 28.62, @StartDate = '2024-01-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 101, @PurchasePrice = 87.53, @SellingPrice = 100.17, @StartDate = '2023-11-11', @EndDate = '2024-01-25';
EXEC InsertPricesDetails @TypeSizeID = 101, @PurchasePrice = 79.2, @SellingPrice = 133.79, @StartDate = '2024-01-25', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 102, @PurchasePrice = 45.81, @SellingPrice = 137.13, @StartDate = '2024-05-01', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 102, @PurchasePrice = 54.95, @SellingPrice = 128.99, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 103, @PurchasePrice = 71.18, @SellingPrice = 137.31, @StartDate = '2024-05-01', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 103, @PurchasePrice = 35.64, @SellingPrice = 58.56, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 104, @PurchasePrice = 75.34, @SellingPrice = 136.91, @StartDate = '2024-01-27', @EndDate = '2024-03-08';
EXEC InsertPricesDetails @TypeSizeID = 104, @PurchasePrice = 84.75, @SellingPrice = 107.51, @StartDate = '2024-03-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 105, @PurchasePrice = 72.13, @SellingPrice = 116.62, @StartDate = '2023-12-22', @EndDate = '2024-03-21';
EXEC InsertPricesDetails @TypeSizeID = 105, @PurchasePrice = 59.01, @SellingPrice = 116.66, @StartDate = '2024-03-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 106, @PurchasePrice = 13.33, @SellingPrice = 51.27, @StartDate = '2023-07-14', @EndDate = '2023-10-17';
EXEC InsertPricesDetails @TypeSizeID = 106, @PurchasePrice = 51.5, @SellingPrice = 143.36, @StartDate = '2023-10-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 107, @PurchasePrice = 15.19, @SellingPrice = 120.94, @StartDate = '2024-04-07', @EndDate = '2024-04-22';
EXEC InsertPricesDetails @TypeSizeID = 107, @PurchasePrice = 53.11, @SellingPrice = 136.34, @StartDate = '2024-04-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 108, @PurchasePrice = 30.42, @SellingPrice = 98.69, @StartDate = '2024-04-21', @EndDate = '2024-04-26';
EXEC InsertPricesDetails @TypeSizeID = 108, @PurchasePrice = 94.15, @SellingPrice = 111.63, @StartDate = '2024-04-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 109, @PurchasePrice = 94.09, @SellingPrice = 126.78, @StartDate = '2024-01-16', @EndDate = '2024-03-28';
EXEC InsertPricesDetails @TypeSizeID = 109, @PurchasePrice = 88.4, @SellingPrice = 108.36, @StartDate = '2024-03-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 110, @PurchasePrice = 48.48, @SellingPrice = 146.47, @StartDate = '2024-03-05', @EndDate = '2024-03-23';
EXEC InsertPricesDetails @TypeSizeID = 110, @PurchasePrice = 55.77, @SellingPrice = 121.07, @StartDate = '2024-03-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 111, @PurchasePrice = 50.6, @SellingPrice = 129.4, @StartDate = '2024-03-06', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 111, @PurchasePrice = 57.56, @SellingPrice = 76.57, @StartDate = '2024-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 112, @PurchasePrice = 21.46, @SellingPrice = 94.76, @StartDate = '2023-12-28', @EndDate = '2024-04-01';
EXEC InsertPricesDetails @TypeSizeID = 112, @PurchasePrice = 47.7, @SellingPrice = 73.58, @StartDate = '2024-04-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 113, @PurchasePrice = 37.96, @SellingPrice = 148.67, @StartDate = '2023-11-03', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 113, @PurchasePrice = 29.42, @SellingPrice = 58.89, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 114, @PurchasePrice = 74.59, @SellingPrice = 98.61, @StartDate = '2023-06-08', @EndDate = '2024-02-14';
EXEC InsertPricesDetails @TypeSizeID = 114, @PurchasePrice = 87.56, @SellingPrice = 130.51, @StartDate = '2024-02-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 115, @PurchasePrice = 82.75, @SellingPrice = 84.32, @StartDate = '2024-02-11', @EndDate = '2024-03-14';
EXEC InsertPricesDetails @TypeSizeID = 115, @PurchasePrice = 14.47, @SellingPrice = 104.25, @StartDate = '2024-03-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 116, @PurchasePrice = 24.58, @SellingPrice = 62.25, @StartDate = '2024-01-18', @EndDate = '2024-03-12';
EXEC InsertPricesDetails @TypeSizeID = 116, @PurchasePrice = 35.32, @SellingPrice = 61.69, @StartDate = '2024-03-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 117, @PurchasePrice = 87.88, @SellingPrice = 108.52, @StartDate = '2023-05-18', @EndDate = '2023-10-01';
EXEC InsertPricesDetails @TypeSizeID = 117, @PurchasePrice = 52.74, @SellingPrice = 98.43, @StartDate = '2023-10-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 118, @PurchasePrice = 92.3, @SellingPrice = 109.6, @StartDate = '2024-01-26', @EndDate = '2024-03-27';
EXEC InsertPricesDetails @TypeSizeID = 118, @PurchasePrice = 77.02, @SellingPrice = 90.7, @StartDate = '2024-03-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 119, @PurchasePrice = 41.48, @SellingPrice = 127.28, @StartDate = '2023-12-11', @EndDate = '2024-04-24';
EXEC InsertPricesDetails @TypeSizeID = 119, @PurchasePrice = 76.52, @SellingPrice = 146.01, @StartDate = '2024-04-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 120, @PurchasePrice = 42.65, @SellingPrice = 74.63, @StartDate = '2023-09-26', @EndDate = '2023-12-26';
EXEC InsertPricesDetails @TypeSizeID = 120, @PurchasePrice = 71.75, @SellingPrice = 143.5, @StartDate = '2023-12-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 121, @PurchasePrice = 10.66, @SellingPrice = 117.34, @StartDate = '2024-04-30', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 121, @PurchasePrice = 75.53, @SellingPrice = 129.29, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 122, @PurchasePrice = 31.38, @SellingPrice = 105.48, @StartDate = '2024-04-22', @EndDate = '2024-04-24';
EXEC InsertPricesDetails @TypeSizeID = 122, @PurchasePrice = 47.35, @SellingPrice = 128.57, @StartDate = '2024-04-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 123, @PurchasePrice = 58.36, @SellingPrice = 135.52, @StartDate = '2024-03-04', @EndDate = '2024-03-28';
EXEC InsertPricesDetails @TypeSizeID = 123, @PurchasePrice = 64.08, @SellingPrice = 138.26, @StartDate = '2024-03-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 124, @PurchasePrice = 75.08, @SellingPrice = 119.09, @StartDate = '2024-04-30', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 124, @PurchasePrice = 23.49, @SellingPrice = 130.31, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 125, @PurchasePrice = 17.78, @SellingPrice = 99.6, @StartDate = '2023-11-11', @EndDate = '2024-03-15';
EXEC InsertPricesDetails @TypeSizeID = 125, @PurchasePrice = 89.62, @SellingPrice = 102.71, @StartDate = '2024-03-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 126, @PurchasePrice = 47.46, @SellingPrice = 94.58, @StartDate = '2024-04-13', @EndDate = '2024-04-13';
EXEC InsertPricesDetails @TypeSizeID = 126, @PurchasePrice = 65.15, @SellingPrice = 76.95, @StartDate = '2024-04-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 127, @PurchasePrice = 49.72, @SellingPrice = 57.87, @StartDate = '2023-11-26', @EndDate = '2024-02-15';
EXEC InsertPricesDetails @TypeSizeID = 127, @PurchasePrice = 99.89, @SellingPrice = 111.13, @StartDate = '2024-02-15', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 128, @PurchasePrice = 27.43, @SellingPrice = 123.37, @StartDate = '2024-02-19', @EndDate = '2024-04-18';
EXEC InsertPricesDetails @TypeSizeID = 128, @PurchasePrice = 67.05, @SellingPrice = 97.46, @StartDate = '2024-04-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 129, @PurchasePrice = 67.52, @SellingPrice = 123.4, @StartDate = '2024-03-04', @EndDate = '2024-03-22';
EXEC InsertPricesDetails @TypeSizeID = 129, @PurchasePrice = 67.49, @SellingPrice = 143.77, @StartDate = '2024-03-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 130, @PurchasePrice = 79.83, @SellingPrice = 137.56, @StartDate = '2023-05-07', @EndDate = '2023-10-23';
EXEC InsertPricesDetails @TypeSizeID = 130, @PurchasePrice = 93.59, @SellingPrice = 138.96, @StartDate = '2023-10-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 131, @PurchasePrice = 24.24, @SellingPrice = 78.24, @StartDate = '2024-04-09', @EndDate = '2024-04-10';
EXEC InsertPricesDetails @TypeSizeID = 131, @PurchasePrice = 51.64, @SellingPrice = 58.79, @StartDate = '2024-04-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 132, @PurchasePrice = 82.98, @SellingPrice = 119.48, @StartDate = '2024-03-02', @EndDate = '2024-04-20';
EXEC InsertPricesDetails @TypeSizeID = 132, @PurchasePrice = 77.12, @SellingPrice = 112.13, @StartDate = '2024-04-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 133, @PurchasePrice = 47.53, @SellingPrice = 67.02, @StartDate = '2024-03-26', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 133, @PurchasePrice = 81.76, @SellingPrice = 114.69, @StartDate = '2024-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 134, @PurchasePrice = 38.92, @SellingPrice = 145.28, @StartDate = '2024-04-09', @EndDate = '2024-04-13';
EXEC InsertPricesDetails @TypeSizeID = 134, @PurchasePrice = 50.73, @SellingPrice = 138.95, @StartDate = '2024-04-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 135, @PurchasePrice = 15.0, @SellingPrice = 32.16, @StartDate = '2024-02-27', @EndDate = '2024-04-13';
EXEC InsertPricesDetails @TypeSizeID = 135, @PurchasePrice = 60.73, @SellingPrice = 83.61, @StartDate = '2024-04-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 136, @PurchasePrice = 41.64, @SellingPrice = 87.99, @StartDate = '2024-03-22', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 136, @PurchasePrice = 20.14, @SellingPrice = 34.41, @StartDate = '2024-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 137, @PurchasePrice = 81.63, @SellingPrice = 94.57, @StartDate = '2023-10-16', @EndDate = '2024-01-22';
EXEC InsertPricesDetails @TypeSizeID = 137, @PurchasePrice = 22.02, @SellingPrice = 109.87, @StartDate = '2024-01-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 138, @PurchasePrice = 82.07, @SellingPrice = 106.16, @StartDate = '2023-12-20', @EndDate = '2024-03-04';
EXEC InsertPricesDetails @TypeSizeID = 138, @PurchasePrice = 43.25, @SellingPrice = 144.66, @StartDate = '2024-03-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 139, @PurchasePrice = 85.51, @SellingPrice = 141.31, @StartDate = '2024-02-17', @EndDate = '2024-04-27';
EXEC InsertPricesDetails @TypeSizeID = 139, @PurchasePrice = 94.82, @SellingPrice = 121.15, @StartDate = '2024-04-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 140, @PurchasePrice = 91.14, @SellingPrice = 94.22, @StartDate = '2024-03-31', @EndDate = '2024-04-20';
EXEC InsertPricesDetails @TypeSizeID = 140, @PurchasePrice = 40.74, @SellingPrice = 130.23, @StartDate = '2024-04-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 141, @PurchasePrice = 69.49, @SellingPrice = 102.86, @StartDate = '2024-03-02', @EndDate = '2024-04-16';
EXEC InsertPricesDetails @TypeSizeID = 141, @PurchasePrice = 46.45, @SellingPrice = 112.38, @StartDate = '2024-04-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 142, @PurchasePrice = 89.89, @SellingPrice = 103.97, @StartDate = '2023-11-12', @EndDate = '2024-03-14';
EXEC InsertPricesDetails @TypeSizeID = 142, @PurchasePrice = 78.72, @SellingPrice = 90.25, @StartDate = '2024-03-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 143, @PurchasePrice = 35.19, @SellingPrice = 129.43, @StartDate = '2024-01-28', @EndDate = '2024-04-14';
EXEC InsertPricesDetails @TypeSizeID = 143, @PurchasePrice = 60.34, @SellingPrice = 127.05, @StartDate = '2024-04-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 144, @PurchasePrice = 61.7, @SellingPrice = 109.01, @StartDate = '2023-12-15', @EndDate = '2024-03-07';
EXEC InsertPricesDetails @TypeSizeID = 144, @PurchasePrice = 32.99, @SellingPrice = 118.09, @StartDate = '2024-03-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 145, @PurchasePrice = 72.2, @SellingPrice = 83.11, @StartDate = '2024-01-05', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 145, @PurchasePrice = 44.35, @SellingPrice = 47.81, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 146, @PurchasePrice = 48.02, @SellingPrice = 71.21, @StartDate = '2024-04-16', @EndDate = '2024-04-21';
EXEC InsertPricesDetails @TypeSizeID = 146, @PurchasePrice = 33.55, @SellingPrice = 95.35, @StartDate = '2024-04-21', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 147, @PurchasePrice = 93.84, @SellingPrice = 120.47, @StartDate = '2024-04-16', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 147, @PurchasePrice = 73.53, @SellingPrice = 98.12, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 148, @PurchasePrice = 89.43, @SellingPrice = 147.72, @StartDate = '2023-09-30', @EndDate = '2024-04-08';
EXEC InsertPricesDetails @TypeSizeID = 148, @PurchasePrice = 50.31, @SellingPrice = 94.88, @StartDate = '2024-04-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 149, @PurchasePrice = 68.71, @SellingPrice = 117.46, @StartDate = '2024-02-10', @EndDate = '2024-02-22';
EXEC InsertPricesDetails @TypeSizeID = 149, @PurchasePrice = 55.71, @SellingPrice = 134.29, @StartDate = '2024-02-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 150, @PurchasePrice = 18.64, @SellingPrice = 79.09, @StartDate = '2024-03-09', @EndDate = '2024-04-17';
EXEC InsertPricesDetails @TypeSizeID = 150, @PurchasePrice = 46.27, @SellingPrice = 50.54, @StartDate = '2024-04-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 151, @PurchasePrice = 64.39, @SellingPrice = 86.54, @StartDate = '2023-07-13', @EndDate = '2023-08-26';
EXEC InsertPricesDetails @TypeSizeID = 151, @PurchasePrice = 39.6, @SellingPrice = 144.94, @StartDate = '2023-08-26', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 152, @PurchasePrice = 35.64, @SellingPrice = 43.89, @StartDate = '2024-03-28', @EndDate = '2024-04-27';
EXEC InsertPricesDetails @TypeSizeID = 152, @PurchasePrice = 74.8, @SellingPrice = 76.07, @StartDate = '2024-04-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 153, @PurchasePrice = 26.24, @SellingPrice = 120.05, @StartDate = '2023-04-21', @EndDate = '2023-11-14';
EXEC InsertPricesDetails @TypeSizeID = 153, @PurchasePrice = 48.14, @SellingPrice = 102.55, @StartDate = '2023-11-14', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 154, @PurchasePrice = 76.59, @SellingPrice = 112.7, @StartDate = '2024-04-28', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 154, @PurchasePrice = 37.26, @SellingPrice = 64.43, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 155, @PurchasePrice = 31.96, @SellingPrice = 120.57, @StartDate = '2023-05-22', @EndDate = '2023-06-09';
EXEC InsertPricesDetails @TypeSizeID = 155, @PurchasePrice = 34.09, @SellingPrice = 104.98, @StartDate = '2023-06-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 156, @PurchasePrice = 75.12, @SellingPrice = 111.84, @StartDate = '2024-01-01', @EndDate = '2024-02-09';
EXEC InsertPricesDetails @TypeSizeID = 156, @PurchasePrice = 15.42, @SellingPrice = 95.43, @StartDate = '2024-02-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 157, @PurchasePrice = 64.98, @SellingPrice = 109.45, @StartDate = '2024-01-05', @EndDate = '2024-02-13';
EXEC InsertPricesDetails @TypeSizeID = 157, @PurchasePrice = 42.26, @SellingPrice = 146.75, @StartDate = '2024-02-13', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 158, @PurchasePrice = 33.78, @SellingPrice = 134.02, @StartDate = '2023-10-08', @EndDate = '2024-02-27';
EXEC InsertPricesDetails @TypeSizeID = 158, @PurchasePrice = 97.57, @SellingPrice = 136.96, @StartDate = '2024-02-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 159, @PurchasePrice = 71.42, @SellingPrice = 123.09, @StartDate = '2023-09-04', @EndDate = '2023-11-16';
EXEC InsertPricesDetails @TypeSizeID = 159, @PurchasePrice = 49.33, @SellingPrice = 77.63, @StartDate = '2023-11-16', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 160, @PurchasePrice = 51.09, @SellingPrice = 81.3, @StartDate = '2024-01-16', @EndDate = '2024-01-24';
EXEC InsertPricesDetails @TypeSizeID = 160, @PurchasePrice = 41.49, @SellingPrice = 64.27, @StartDate = '2024-01-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 161, @PurchasePrice = 78.36, @SellingPrice = 89.28, @StartDate = '2024-04-20', @EndDate = '2024-05-01';
EXEC InsertPricesDetails @TypeSizeID = 161, @PurchasePrice = 24.06, @SellingPrice = 104.8, @StartDate = '2024-05-01', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 162, @PurchasePrice = 61.85, @SellingPrice = 91.27, @StartDate = '2024-04-05', @EndDate = '2024-04-27';
EXEC InsertPricesDetails @TypeSizeID = 162, @PurchasePrice = 32.3, @SellingPrice = 34.96, @StartDate = '2024-04-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 163, @PurchasePrice = 51.73, @SellingPrice = 70.79, @StartDate = '2024-03-15', @EndDate = '2024-04-07';
EXEC InsertPricesDetails @TypeSizeID = 163, @PurchasePrice = 66.12, @SellingPrice = 108.36, @StartDate = '2024-04-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 164, @PurchasePrice = 32.58, @SellingPrice = 145.03, @StartDate = '2023-12-20', @EndDate = '2024-03-30';
EXEC InsertPricesDetails @TypeSizeID = 164, @PurchasePrice = 27.53, @SellingPrice = 68.81, @StartDate = '2024-03-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 165, @PurchasePrice = 77.51, @SellingPrice = 124.67, @StartDate = '2024-01-25', @EndDate = '2024-02-06';
EXEC InsertPricesDetails @TypeSizeID = 165, @PurchasePrice = 11.68, @SellingPrice = 146.44, @StartDate = '2024-02-06', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 166, @PurchasePrice = 54.39, @SellingPrice = 123.86, @StartDate = '2023-12-04', @EndDate = '2023-12-05';
EXEC InsertPricesDetails @TypeSizeID = 166, @PurchasePrice = 75.07, @SellingPrice = 122.03, @StartDate = '2023-12-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 167, @PurchasePrice = 49.45, @SellingPrice = 100.22, @StartDate = '2024-01-09', @EndDate = '2024-02-22';
EXEC InsertPricesDetails @TypeSizeID = 167, @PurchasePrice = 75.73, @SellingPrice = 96.47, @StartDate = '2024-02-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 168, @PurchasePrice = 95.3, @SellingPrice = 121.44, @StartDate = '2023-10-12', @EndDate = '2024-02-22';
EXEC InsertPricesDetails @TypeSizeID = 168, @PurchasePrice = 31.95, @SellingPrice = 76.1, @StartDate = '2024-02-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 169, @PurchasePrice = 76.64, @SellingPrice = 136.97, @StartDate = '2023-05-09', @EndDate = '2023-06-11';
EXEC InsertPricesDetails @TypeSizeID = 169, @PurchasePrice = 50.81, @SellingPrice = 92.98, @StartDate = '2023-06-11', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 170, @PurchasePrice = 25.98, @SellingPrice = 88.91, @StartDate = '2024-04-18', @EndDate = '2024-04-20';
EXEC InsertPricesDetails @TypeSizeID = 170, @PurchasePrice = 19.43, @SellingPrice = 104.83, @StartDate = '2024-04-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 171, @PurchasePrice = 56.03, @SellingPrice = 113.69, @StartDate = '2023-07-08', @EndDate = '2023-07-24';
EXEC InsertPricesDetails @TypeSizeID = 171, @PurchasePrice = 10.5, @SellingPrice = 122.19, @StartDate = '2023-07-24', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 172, @PurchasePrice = 46.38, @SellingPrice = 108.41, @StartDate = '2024-02-20', @EndDate = '2024-02-23';
EXEC InsertPricesDetails @TypeSizeID = 172, @PurchasePrice = 78.15, @SellingPrice = 103.19, @StartDate = '2024-02-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 173, @PurchasePrice = 72.92, @SellingPrice = 146.72, @StartDate = '2024-04-27', @EndDate = '2024-04-28';
EXEC InsertPricesDetails @TypeSizeID = 173, @PurchasePrice = 85.09, @SellingPrice = 128.82, @StartDate = '2024-04-28', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 174, @PurchasePrice = 19.4, @SellingPrice = 102.04, @StartDate = '2023-08-04', @EndDate = '2023-12-04';
EXEC InsertPricesDetails @TypeSizeID = 174, @PurchasePrice = 53.04, @SellingPrice = 107.83, @StartDate = '2023-12-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 175, @PurchasePrice = 22.52, @SellingPrice = 75.43, @StartDate = '2023-10-14', @EndDate = '2024-02-12';
EXEC InsertPricesDetails @TypeSizeID = 175, @PurchasePrice = 89.17, @SellingPrice = 146.47, @StartDate = '2024-02-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 176, @PurchasePrice = 44.16, @SellingPrice = 51.74, @StartDate = '2023-04-29', @EndDate = '2023-09-08';
EXEC InsertPricesDetails @TypeSizeID = 176, @PurchasePrice = 28.11, @SellingPrice = 145.15, @StartDate = '2023-09-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 177, @PurchasePrice = 98.05, @SellingPrice = 129.01, @StartDate = '2023-11-14', @EndDate = '2024-02-23';
EXEC InsertPricesDetails @TypeSizeID = 177, @PurchasePrice = 90.92, @SellingPrice = 96.27, @StartDate = '2024-02-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 178, @PurchasePrice = 32.84, @SellingPrice = 38.36, @StartDate = '2024-04-12', @EndDate = '2024-04-19';
EXEC InsertPricesDetails @TypeSizeID = 178, @PurchasePrice = 65.16, @SellingPrice = 138.23, @StartDate = '2024-04-19', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 179, @PurchasePrice = 13.2, @SellingPrice = 108.93, @StartDate = '2024-02-23', @EndDate = '2024-02-23';
EXEC InsertPricesDetails @TypeSizeID = 179, @PurchasePrice = 14.53, @SellingPrice = 15.34, @StartDate = '2024-02-23', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 180, @PurchasePrice = 86.54, @SellingPrice = 132.62, @StartDate = '2024-03-08', @EndDate = '2024-04-12';
EXEC InsertPricesDetails @TypeSizeID = 180, @PurchasePrice = 66.71, @SellingPrice = 96.85, @StartDate = '2024-04-12', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 181, @PurchasePrice = 95.75, @SellingPrice = 106.01, @StartDate = '2023-11-17', @EndDate = '2023-12-29';
EXEC InsertPricesDetails @TypeSizeID = 181, @PurchasePrice = 22.36, @SellingPrice = 112.14, @StartDate = '2023-12-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 182, @PurchasePrice = 68.73, @SellingPrice = 114.38, @StartDate = '2023-12-07', @EndDate = '2024-01-22';
EXEC InsertPricesDetails @TypeSizeID = 182, @PurchasePrice = 61.82, @SellingPrice = 64.47, @StartDate = '2024-01-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 183, @PurchasePrice = 45.07, @SellingPrice = 127.19, @StartDate = '2023-05-15', @EndDate = '2023-07-27';
EXEC InsertPricesDetails @TypeSizeID = 183, @PurchasePrice = 90.47, @SellingPrice = 132.0, @StartDate = '2023-07-27', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 184, @PurchasePrice = 58.62, @SellingPrice = 60.49, @StartDate = '2024-01-30', @EndDate = '2024-02-22';
EXEC InsertPricesDetails @TypeSizeID = 184, @PurchasePrice = 39.28, @SellingPrice = 102.2, @StartDate = '2024-02-22', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 185, @PurchasePrice = 39.73, @SellingPrice = 75.14, @StartDate = '2023-12-10', @EndDate = '2024-02-05';
EXEC InsertPricesDetails @TypeSizeID = 185, @PurchasePrice = 18.6, @SellingPrice = 119.62, @StartDate = '2024-02-05', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 186, @PurchasePrice = 69.79, @SellingPrice = 134.18, @StartDate = '2024-02-24', @EndDate = '2024-04-20';
EXEC InsertPricesDetails @TypeSizeID = 186, @PurchasePrice = 71.27, @SellingPrice = 106.78, @StartDate = '2024-04-20', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 187, @PurchasePrice = 82.38, @SellingPrice = 136.0, @StartDate = '2023-11-21', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 187, @PurchasePrice = 90.81, @SellingPrice = 148.23, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 188, @PurchasePrice = 59.37, @SellingPrice = 137.34, @StartDate = '2024-04-06', @EndDate = '2024-04-18';
EXEC InsertPricesDetails @TypeSizeID = 188, @PurchasePrice = 99.62, @SellingPrice = 120.46, @StartDate = '2024-04-18', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 189, @PurchasePrice = 55.48, @SellingPrice = 142.3, @StartDate = '2023-03-26', @EndDate = '2023-06-30';
EXEC InsertPricesDetails @TypeSizeID = 189, @PurchasePrice = 89.44, @SellingPrice = 104.17, @StartDate = '2023-06-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 190, @PurchasePrice = 38.23, @SellingPrice = 119.29, @StartDate = '2023-12-21', @EndDate = '2024-02-10';
EXEC InsertPricesDetails @TypeSizeID = 190, @PurchasePrice = 83.76, @SellingPrice = 89.64, @StartDate = '2024-02-10', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 191, @PurchasePrice = 93.17, @SellingPrice = 139.48, @StartDate = '2024-01-08', @EndDate = '2024-03-08';
EXEC InsertPricesDetails @TypeSizeID = 191, @PurchasePrice = 79.05, @SellingPrice = 97.5, @StartDate = '2024-03-08', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 192, @PurchasePrice = 20.65, @SellingPrice = 26.96, @StartDate = '2024-01-23', @EndDate = '2024-02-29';
EXEC InsertPricesDetails @TypeSizeID = 192, @PurchasePrice = 94.08, @SellingPrice = 113.82, @StartDate = '2024-02-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 193, @PurchasePrice = 13.75, @SellingPrice = 17.88, @StartDate = '2024-04-19', @EndDate = '2024-04-29';
EXEC InsertPricesDetails @TypeSizeID = 193, @PurchasePrice = 91.61, @SellingPrice = 126.65, @StartDate = '2024-04-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 194, @PurchasePrice = 77.82, @SellingPrice = 120.91, @StartDate = '2024-04-25', @EndDate = '2024-04-29';
EXEC InsertPricesDetails @TypeSizeID = 194, @PurchasePrice = 73.96, @SellingPrice = 147.8, @StartDate = '2024-04-29', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 195, @PurchasePrice = 10.0, @SellingPrice = 35.16, @StartDate = '2023-12-29', @EndDate = '2024-04-09';
EXEC InsertPricesDetails @TypeSizeID = 195, @PurchasePrice = 10.02, @SellingPrice = 84.38, @StartDate = '2024-04-09', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 196, @PurchasePrice = 52.95, @SellingPrice = 82.79, @StartDate = '2024-03-03', @EndDate = '2024-03-04';
EXEC InsertPricesDetails @TypeSizeID = 196, @PurchasePrice = 70.93, @SellingPrice = 85.6, @StartDate = '2024-03-04', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 197, @PurchasePrice = 46.97, @SellingPrice = 147.52, @StartDate = '2023-09-01', @EndDate = '2024-01-07';
EXEC InsertPricesDetails @TypeSizeID = 197, @PurchasePrice = 84.19, @SellingPrice = 135.07, @StartDate = '2024-01-07', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 198, @PurchasePrice = 62.96, @SellingPrice = 91.76, @StartDate = '2023-11-12', @EndDate = '2024-02-17';
EXEC InsertPricesDetails @TypeSizeID = 198, @PurchasePrice = 16.94, @SellingPrice = 144.44, @StartDate = '2024-02-17', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 199, @PurchasePrice = 12.92, @SellingPrice = 107.09, @StartDate = '2024-04-29', @EndDate = '2024-04-30';
EXEC InsertPricesDetails @TypeSizeID = 199, @PurchasePrice = 58.21, @SellingPrice = 121.78, @StartDate = '2024-04-30', @EndDate = NULL;
EXEC InsertPricesDetails @TypeSizeID = 200, @PurchasePrice = 78.98, @SellingPrice = 108.05, @StartDate = '2023-12-06', @EndDate = '2024-02-01';
EXEC InsertPricesDetails @TypeSizeID = 200, @PurchasePrice = 83.76, @SellingPrice = 125.25, @StartDate = '2024-02-01', @EndDate = NULL;

-- #endregion

SELECT *
from PricesDetails
WHERE TypeSizeID = 111

drop table PricesDetails