create database online_bookstore;
use online_bookstore;

create table books(
Book_ID	int primary key,
Title varchar(100),
Author varchar(100),
Genre varchar(100),
Published_Year int,
Price decimal(10,2),
Stock int
);	

create table customers(
Customer_ID	int primary key,
Name varchar(50),
Email varchar(100),
Phone int,
City varchar(50),
Country	varchar(50)
);

create table orders(
Order_ID int primary key,
Customer_ID	int,
Book_ID	int,
Order_Date date,
Quantity int,
Total_Amount decimal(10,2),
foreign key (customer_id) references customers(customer_id),
foreign key (book_id) references books(book_id)
);

select * from books
select * from customers
select * from orders


bulk insert books 
from 'E:\excel\Book1.csv'
with(
fieldterminator = ',', --csv field delimiter
rowterminator = '\n', -- row delimiter
firstrow = 2 --skip the header of row (if your csv has headers)
)

bulk insert customers 
from 'E:\excel\setup\my sql\Customers.csv'
with(
fieldterminator = ',', --csv field delimiter
rowterminator = '\n', -- row delimiter
firstrow = 2 --skip the header of row (if your csv has headers)
)

bulk insert orders 
from 'E:\excel\orders 1.csv'
with(
fieldterminator = ',', --csv field delimiter
rowterminator = '\n', -- row delimiter
firstrow = 2 --skip the header of row (if your csv has headers)
);

1) Retrieve all books in the "Fiction" genre.

select * from books
where Genre = 'fiction'

2) Find books published after the year 1950.

select *  from books
where Published_Year > 1950

3) List all customers from the Canada.

select * from customers
where country = 'canada'

4) Show orders placed in November 2023.

select * from orders
where order_date >= '2023-11-01' and Order_Date <= '2023-11-30'

5) Retrieve the total stock of books available.

select sum(stock) as totalstock from books

6) Find the details of the most expensive book.

select * from books
where price = (select max(price)  from books)

7) Show all customers who ordered more than 1 quantity of a book.

select * from orders
where Quantity > 1

8) Retrieve all orders where the total amount exceeds $20.

select * from orders
where Total_Amount >20

9) List all genres available in the Books table.

select distinct genre from books

10) Find the book with the lowest stock.

select top 1* from books
where stock = (select min(stock) from books)

11) Calculate the total revenue generated from all orders.

select sum(Total_Amount) as totalrevenue from orders


Advance Queries

1) Retrieve the total number of books sold for each genre.

select b.genre , sum(o.quantity) as numofbooks from books b
inner join orders o on b.book_id = o.Book_ID
group by genre

2) Find the average price of books in the "Fantasy" genre.

select avg(price) as avgprice from books 
where genre = 'fantasy'

3) List customers who have placed at least 2 orders.

SELECT o.customer_id, c.name, COUNT(o.Order_id) AS ORDER_COUNT
FROM orders o
INNER JOIN customers c ON o.customer_id=c.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(Order_id) >=2

4) Find the most frequently ordered book.

SELECT TOP 1 o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
INNER JOIN books b ON o.book_id=b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC 

5) Show the top 3 most expensive books of 'Fantasy' Genre.

select top 3 * from books 
where genre = 'fantasy' 
order by price desc

6) Retrieve the total quantity of books sold by each author.

select b.author , sum(o.quantity) as totalquantity from books b
inner join orders o on b.Book_ID = o.Book_ID
group by b.Author
order by totalquantity desc

7) List the cities where customers who spent over $30 are located.

SELECT DISTINCT c.city, total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id=c.customer_id
WHERE o.total_amount > 30

8) Find the customer who spent the most on orders.

SELECT TOP 1 c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_spent Desc


9) Calculate the stock remaining after fulfilling all orders.

SELECT b.book_id, b.title, b.stock, 
SUM(o.quantity) AS Order_quantity,  
b.stock - SUM(o.quantity) AS Remaining_Quantity
FROM books b LEFT JOIN orders o 
ON b.book_id = o.book_id
GROUP BY b.book_id, b.title,  b.stock
ORDER BY b.book_id;