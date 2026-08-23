CREATE TABLE customers (
    CustomerID       VARCHAR(10)     PRIMARY KEY,
    CustomerName     VARCHAR(100)    NOT NULL,
    Segment          VARCHAR(50)     NOT NULL,
    City             VARCHAR(100)    NOT NULL,
    Country          VARCHAR(50)     NOT NULL,
    Phone            VARCHAR(30)     NOT NULL,
    RegisteredDate   DATE            NOT NULL
);

CREATE TABLE suppliers (
    SupplierID       VARCHAR(10)     PRIMARY KEY,
    SupplierName     VARCHAR(150)    NOT NULL,
    Category         VARCHAR(50)     NOT NULL,
    City             VARCHAR(100)    NOT NULL,
    Country          VARCHAR(50)     NOT NULL,
    ContractStart    DATE            NOT NULL,
    Rating           NUMBER(2,1)     NOT NULL
);

CREATE TABLE inventory (
    InventoryID        VARCHAR(10)     PRIMARY KEY,
    ProductID          VARCHAR(10)     NOT NULL,
    Warehouse          VARCHAR(50)     NOT NULL,
    QuantityAvailable  NUMBER(10,0)    NOT NULL,
    ReorderLevel       NUMBER(10,0)    NOT NULL,
    LastRestocked      DATE            NOT NULL,
    StorageCost        NUMBER(10,2)    NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);

CREATE TABLE payments (
    PaymentID        VARCHAR(10)     PRIMARY KEY,
    OrderID          VARCHAR(10)     NOT NULL,
    Amount           NUMBER(12,2)    NOT NULL,
    Mode             VARCHAR(30)     NOT NULL,
    Status           VARCHAR(20)     NOT NULL,
    PaymentDate      DATE            NOT NULL,
    TransactionRef   VARCHAR(20)     NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID)
);

CREATE TABLE employee_performance (
    ReviewID            VARCHAR(10)     PRIMARY KEY,
    EmployeeID           VARCHAR(10)     NOT NULL,
    ReviewPeriod         VARCHAR(10)     NOT NULL,
    PerformanceRating    VARCHAR(30)     NOT NULL,
    ProjectsCompleted    NUMBER(5,0)     NOT NULL,
    BonusAmount          NUMBER(10,2)    NOT NULL,
    ReviewedBy           VARCHAR(100)    NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES employee_details(EmployeeID)
);


-->Instert the Data through internall load


copy into Employee_performance 
from @stage_csv/employee_performance
purge=True;