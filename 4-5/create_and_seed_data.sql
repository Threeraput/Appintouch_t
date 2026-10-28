-- 1. สร้างตาราง Customer
CREATE TABLE Customer (
    ID TEXT PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT,
    CountryCode TEXT,
    Budget INTEGER,
    Used INTEGER
);

-- 2. สร้างตาราง Order
CREATE TABLE "Order" (
    ID TEXT PRIMARY KEY,
    Date TEXT NOT NULL,
    CustomerID TEXT,
    Amount INTEGER,
    FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);

-- เพิ่มข้อมูลลงในตาราง Customer
INSERT INTO Customer (ID, Name, Email, CountryCode, Budget, Used) VALUES
('C001', 'Will Peter', 'will.p@hotmail.com', 'TH', 1000000, 600000),
('C002', 'John Smith', 'john.smith@hotmail.com', 'EN', 2000000, 800000),
('C003', 'Jame Born', 'jame.born@hotmail.com', 'US', 3000000, 600000),
('C004', 'Charlie Angel', 'charlie.angel@hotmail.com', 'US', 4000000, 1000000),
('C005', 'Mickey Brown', 'mickey.b@hotmail.com', 'JP', 5000000, 1000000);

-- เพิ่มข้อมูลลงในตาราง Order
INSERT INTO "Order" (ID, Date, CustomerID, Amount) VALUES
('O001', '2019-10-08', 'C002', 50000),
('O002', '2019-10-08', 'C002', 45000),
('O003', '2019-11-20', 'C003', 50000),
('O004', '2019-05-20', 'C004', 40000);