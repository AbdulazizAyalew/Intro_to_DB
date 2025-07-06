Create Table Books(
    book_id (Primary Key),
    title VARCHAR(130),
    author_id (Foreign Key referencing Authors table),
    price DOUBLE,
    publication_date DATE
);
create Table Authors(
    author_id (Primary Key),
    author_name VARCHAR(215)
);

create Table Customers(
    customer_id (Primary Key),
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

create Table Orders(
    order_id (Primary Key),
    customer_id (Foreign Key referencing Customers table),
    order_date DATE
);

create Table Order_Details(
    orderdetailid (Primary Key),
    order_id (Foreign Key referencing Orders table),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE
);
