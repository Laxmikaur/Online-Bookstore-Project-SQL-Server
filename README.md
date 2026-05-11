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

CSV files are imported using: 

```sql
BULK INSERT
