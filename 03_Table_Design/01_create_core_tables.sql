CREATE TABLE Customers (
    customer_id NVARCHAR(50) NOT NULL,
    customer_unique_id NVARCHAR(50) NOT NULL,
    customer_zip_code_prefix INT,
    customer_city NVARCHAR(100),
    customer_state NVARCHAR(10),
    CONSTRAINT PK_Customers PRIMARY KEY (customer_id)
);
GO


CREATE TABLE Orders (
    order_id NVARCHAR(50) NOT NULL,
    customer_id NVARCHAR(50) NOT NULL,
    order_status NVARCHAR(30),
    order_purchase_timestamp DATETIME,
    order_delivered_customer_date DATETIME,
    CONSTRAINT PK_Orders PRIMARY KEY (order_id),
    CONSTRAINT FK_Orders_Customers 
        FOREIGN KEY (customer_id) 
        REFERENCES Customers(customer_id)
);
GO

CREATE TABLE Order_Items (
    order_id NVARCHAR(50) NOT NULL,
    order_item_id INT NOT NULL,
    product_id NVARCHAR(50),
    seller_id NVARCHAR(50),
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2),
    CONSTRAINT PK_Order_Items 
        PRIMARY KEY (order_id, order_item_id),
    CONSTRAINT FK_OrderItems_Orders 
        FOREIGN KEY (order_id) 
        REFERENCES Orders(order_id)
);
GO

CREATE TABLE Products (
    product_id NVARCHAR(50) NOT NULL,
    product_category_name NVARCHAR(100),
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT,
    CONSTRAINT PK_Products PRIMARY KEY (product_id)
);
GO

CREATE TABLE Payments (
    order_id NVARCHAR(50) NOT NULL,
    payment_sequential INT NOT NULL,
    payment_type NVARCHAR(30),
    payment_installments INT,
    payment_value DECIMAL(10,2),
    CONSTRAINT PK_Payments 
        PRIMARY KEY (order_id, payment_sequential),
    CONSTRAINT FK_Payments_Orders 
        FOREIGN KEY (order_id) 
        REFERENCES Orders(order_id)
);
GO


CREATE TABLE Reviews (
    review_id NVARCHAR(50) NOT NULL,
    order_id NVARCHAR(50) NOT NULL,
    review_score INT,
    review_creation_date DATETIME,
    review_answer_timestamp DATETIME,
    CONSTRAINT PK_Reviews PRIMARY KEY (review_id),
    CONSTRAINT FK_Reviews_Orders 
        FOREIGN KEY (order_id) 
        REFERENCES Orders(order_id)
);
GO
