CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Authors(
    author_id (Primary Key),
    author_name VARCHAR(215)
);

CREATE TABLE Books(
    book_id (PRIMARY KEY),
    title VARCHAR(130),
    author_id (Foreign Key referencing Authors table),
    price DOUBLE,
    publication_date DATE
);


CREATE TABLE Customers(
    customer_id (PRIMARY KEY),
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders(
    order_id (PRIMARY KEY),
    customer_id (Foreign Key referencing Customers table),
    order_date DATE
);

CREATE TABLE Order_Details(
    orderdetailid (PRIMARY KEY),
    order_id (Foreign Key referencing Orders table),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE
);
