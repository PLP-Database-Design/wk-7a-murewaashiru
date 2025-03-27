--Question 1
CREATE TABLE ProductDetail (
    ID INT PRIMARY KEY,
    Name VARCHAR(255)
);
CREATE TABLE OrderDetails (
    OrderID INT,
    CustomerName VARCHAR(255),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ID)
);



-- Question 2 Achieving 2NF (Second Normal Form) 🧩
CREATE TABLE Customer (
    Id INT PRIMARY KEY,
    Name VARCHAR(255)
);
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    CustomerID INT,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(Id)
);