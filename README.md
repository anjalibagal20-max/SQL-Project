
💻 Project Title
Online Book Store 

🎯 Purpose
This project demonstrates the design, creation, and management of a relational database for a functional online book store. The primary purpose is to efficiently store, retrieve, and manage data related to books, customers, orders, and authors. The project aims to establish a robust and scalable backend for an e-commerce platform, enabling key business operations and analysis.

🛠️ Tech Stack
Database: SQL (e.g., MySQL, PostgreSQL, SQL Server)
Data Modeling: SQL queries for creating tables (CREATE TABLE), defining relationships (Primary Keys, Foreign Keys), and populating data (INSERT INTO).
Data Manipulation & Querying: Advanced SQL queries for data retrieval, analysis, and reporting (e.g., JOINs, GROUP BY, HAVING, Subqueries).
Documentation: Entity-Relationship Diagram (ERD) to visualize the database schema.
Version Control: Git, GitHub

💾 Data Source

The project is built on a custom-designed database schema. The data is either manually inserted or loaded from CSV files, representing a simulated online book store environment. The core entities and their relationships are as follows:

Books: Details about each book (Title, Author, Genre, Price, Stock).
Authors: Information about the authors.
Customers: Customer details (Name, Email, Address).
Orders: Records of placed orders (Order ID, Customer ID, Order Date).
Order_Items: A linking table to track which books are in each order and their quantities.

✨ Features & Highlights

Relational Database Design: A normalized database schema with clearly defined primary and foreign keys to maintain data integrity and prevent redundancy
Advanced Querying: The project includes a variety of SQL queries that showcase analytical capabilities, such as:
Sales Analysis: Identifying total revenue by genre, author, or time period.
Top N Analysis: Finding the best-selling books, top customers by spending, and most active authors.
Inventory Management: Queries to track low stock levels and manage inventory effectively.
Customer Insights: Analyzing customer purchasing habits and segmenting customers.
Scalability: The database structure is designed to handle a growing volume of data, making it a solid foundation for a real-world e-commerce application.
Clear Documentation: The project includes a detailed ERD to help other developers or stakeholders understand the database schema at a glance.
