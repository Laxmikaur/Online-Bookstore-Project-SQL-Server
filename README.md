# Online-Bookstore-Project-SQL-Server

This project is a SQL Server based Online Bookstore Management System developed using Microsoft SQL Server Management Studio (SSMS).

The project manages:
- Books
- Customers
- Orders
- Inventory Stock
- Revenue Calculations

It also includes beginner to advanced SQL queries for data analysis and management.

---

## 🛠 Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL Queries
- CSV Data Import using BULK INSERT

---

## 📂 Database Structure

### 1. Books Table
Stores book information:
- Book_ID
- Title
- Author
- Genre
- Published_Year
- Price
- Stock

### 2. Customers Table
Stores customer details:
- Customer_ID
- Name
- Email
- Phone
- City
- Country

### 3. Orders Table
Stores order records:
- Order_ID
- Customer_ID
- Book_ID
- Order_Date
- Quantity
- Total_Amount

---

## 🔗 Relationships

- Customers and Orders are connected using `Customer_ID`
- Books and Orders are connected using `Book_ID`

Foreign Keys are used to maintain database integrity.

---

## 📥 Data Import
## 📄 SQL File

Main SQL project file:

- online_bookstore.sql

GitHub SQL Solution File Link:
https://github.com/Laxmikaur/Online-Bookstore-Project-SQL-Server/blob/main/online_bookstore%20-%20Copy.sql
CSV files are imported using: 

```sql
BULK INSERT

## 📂 Dataset Files

### 📘 Books Dataset
https://github.com/Laxmikaur/Online-Bookstore-Project-SQL-Server/blob/main/Books.csv

### 👥 Customers Dataset
https://github.com/Laxmikaur/Online-Bookstore-Project-SQL-Server/blob/main/Customers.csv

### 🛒 Orders Dataset
https://github.com/Laxmikaur/Online-Bookstore-Project-SQL-Server/blob/main/Orders.csv

📊 Features & SQL Queries
Basic Queries
Retrieve books by genre
Find books published after a specific year
Show customer details by country
Calculate total stock
Find most expensive book
Retrieve orders above specific amount
Advanced Queries
Total books sold per genre
Average book price by genre
Customers with multiple orders
Most frequently ordered book
Top expensive fantasy books
Revenue calculations
Remaining stock after orders
Customer spending analysis

🚀 How to Run
Open SQL Server Management Studio (SSMS)
Create database:
CREATE DATABASE online_bookstore;
Run all table creation queries
Import CSV files using BULK INSERT
Execute SQL queries

📌 Learning Outcomes
This project helped in understanding:

Database Design
Primary & Foreign Keys
SQL Queries
Aggregate Functions
Joins
Group By & Having
Data Import Techniques
Real-world Database Management

👨‍💻 Author
Developed by Laxmi Kaur

https://github.com/Laxmikaur/Online-Bookstore-Project-SQL-Server/blob/main/online_bookstore%20-%20Copy.sql  

online-bookstore-sql-project
