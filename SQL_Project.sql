create database project;
use project;

create table books(
Book_id int primary key,
title varchar(50),
auother varchar(100),
Genre varchar(50),
Published_Year int,
price numeric(10 ,2),
stock int);
create table customers(
customers_id int primary key,
name varchar(50),
Email varchar(100),
phone varchar(50),
city varchar(50),
country varchar(100)
);

create table Orders(
Order_id int primary key,
customer_id int references customers(customer_id),
book_id int references books(book_id),
Order_Date Date,
Quntity int,
Total_amount numeric(10 ,2)
);
select * from books;
select * from customers;
select * from Orders;


select * from books where Published_Year >1950;

select * from customers where City='canada';

select * from orders where date(30-11-2023)=date(01-11-2023);

select sum(stock) as Total_stock from books;

select * from books order by price desc limit 1;

select customer_id from Orders where quantity >1;

select Total_amount from Orders where Total_amount>20; 

select  distinct genre from books; 

select * from books order by stock asc limit 5;

select sum(revenue) as Total_revenue from Orders;

select auother, count(Book_id) as totalbooks from books
group by auother
order by totalbooks desc;
 
 select sum(Total_Amount) as TotalRevenue from Orders;
 
select genre,avg(price) as AveragePrice from Books
group by genre
order by Averageprice desc; 

select max(price) as HighestPrice, min(price) as LowestPrice from Books;
 
select b.genre,sum(o.quantity) from Orders o
join books b on b.book_id=o.book_id 
group by b.genre;

select avg(price) as average_price from books
 where genre='fantasy';
 
select o.customer_id , c.name, count(o.order_id) as Order_count from Orders o
join customers c on c.customer_id=o.order_id 
 group by o.customer_id , c.name
 having count(Order_id) >=2;
 
 select o.book_id, b.title,count(o.order_id) as order_count from Orders o
 join books b on o.book_id=b.book_id
 group by o.book_id , b.title
 order  by Order_count desc limit 1;
 
 select * from books
 where genre='fantasy'
 order by price desc limit 1;
 
 select b.auother ,sum(o.quantity) as Total_book_sold from Orders o
 join books b on o.book_id=b.book_id
 group by b.auother;
 
 select distinct c.city from orders o
 join customers c on o.customer_id=c.customer_id
 where o.Total_amount >30;
 
select author, count(bookID) as totalbooks from books
group by author
order by totalbooks desc;

select B.Genre,sum(O.Quantity*B.price) as TotalGenreRevenue from Books B
inner join Orders O ON b.Book_id=O.Book_id
group by B.Genre;

select B.title, B.auother,
SUM(O.Quantity) AS TotalQuantitySold
from Books B
inner join
    Orders O ON B.Book_id = O.Book_id
group by
    B.Book_id, B.title, B.auother
order by TotalQuantitySold DESC
LIMIT 5;

SELECT C.Name,
COUNT(O.Order_ID) AS TotalOrders,
AVG(O.Total_Amount) AS AverageOrderValue
FROM Customers C
INNER JOIN
    Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY
    C.Customer_ID, C.Name
HAVING
    AVG(O.Total_Amount) > 1000 
ORDER BY
    AverageOrderValue DESC;


SELECT B.title, B.Genre, SUM(O.Quantity) AS TotalQuantitySold,
RANK() OVER (PARTITION BY B.Genre
ORDER BY SUM(O.Quantity) DESC) AS SalesRankInGenre
FROM Books B
INNER JOIN Orders O ON B.Book_id = O.Book_id
GROUP BY B.Book_id, B.title, B.Genre 
ORDER BY B.Genre, SalesRankInGenre;
 

 SELECT Order_Date AS SalesMonth,
SUM(Total_Amount) AS MonthlyTotal
FROM Orders
GROUP BY SalesMonth;

 SELECT Title,Genre,Price,
 AVG(Price) OVER (PARTITION BY Genre) AS GenreAveragePrice,
 Price - AVG(Price) OVER (PARTITION BY Genre) AS PriceDifferenceFromAverage
FROM Books
ORDER BY Genre, Price DESC;

 SELECT Genre, price,
SUM(price) OVER () AS OverallTotalPrice,
(price * 100.0) / SUM(price) OVER () AS PercentageOfTotalPrice
FROM Books
ORDER BY PercentageOfTotalPrice DESC limit 5;
 
 SELECT C.Customer_ID,C.Name,
SUM(O.Total_Amount) AS TotalLifetimeSpend,
DENSE_RANK() OVER (ORDER BY SUM(O.Total_Amount) DESC) AS CustomerValueRank
FROM Customers C
INNER JOIN
    Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY
    C.Customer_ID, C.Name
ORDER BY
    CustomerValueRank, TotalLifetimeSpend DESC;
 
 
