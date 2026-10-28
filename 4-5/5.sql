SELECT 
    Customer.ID AS CustomerID,
    Customer.Name,
    Customer.Email,
    Customer.CountryCode,
    Customer.Budget,
    Customer.Used,
    "Order".ID AS OrderID,
    "Order".Date,
    "Order".Amount
FROM Customer
LEFT JOIN "Order" ON Customer.ID = "Order".CustomerID;