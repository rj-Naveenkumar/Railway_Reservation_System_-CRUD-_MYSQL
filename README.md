## Railway Reservation System 
A comprehensive database system for managing railway reservations, including user details, train schedules, reservations, stations, and routes. This project was built using MySQL and demonstrates the use of CRUD operations for effective data management
## Features

- User Management: Add, update, or delete user records.
- Train Schedule Management: Maintain details of trains, routes, and schedules.
- Reservation System: Book, update, or cancel reservations.
- Integration of Multiple Tables: Includes tables for users, trains, reservations, stations, and schedules.
## Database Structure
The system consists of the following tables:

  1.Users: Stores user information such as name, email, and phone number. <br>
  2.Trains: Contains details about trains, including name, source, destination, and capacity.<br>
  3.Reservations: Tracks reservations made by users for specific trains. <br>
  4.Stations: Includes details about stations and their locations. <br>
  5.Schedules: Maintains the schedule of trains at various stations. <br>

## ER-Diagram
![ER-Diagram](https://github.com/user-attachments/assets/2527c89c-6862-4d3f-8c92-11a463b37585)

## Setup Instructions
To set up the database on your system, follow these steps:
1. Prerequisites
Install MySQL Server on your system.
Ensure mysqldump and mysql commands are accessible in your terminal.
2. Import the Database
Download the railway_reservation.sql file.
Open your terminal and run: <br>
mysql -u root -p railway_reservation < railway_reservation.sql  <br>
Replace root with your MySQL username and database name with the name you want for the database.
## Screenshots
### **Tables**
 **Users Table** <br>
<img width="527" alt="users" src="https://github.com/user-attachments/assets/9ec84faf-42a2-4a14-ab8d-96220c836066">

**Trains Table** <br>
<img width="869" alt="trains" src="https://github.com/user-attachments/assets/a86ef758-0c40-48cd-826d-4f741d46eafc">

**Reservations Table** <br>
<img width="606" alt="reservations" src="https://github.com/user-attachments/assets/8021387c-4cd7-4baf-80f9-948a4a8cfed7">

 **Stations Table** <br>
<img width="358" alt="stations" src="https://github.com/user-attachments/assets/47ab52c8-e7c0-49f2-87f5-3ca42f7b5260">

 **Routes Table**<br>
<img width="500" alt="routes" src="https://github.com/user-attachments/assets/5ea5f614-c5a8-4497-b664-416a1324ba67">

**Tickets Table** <br>
<img width="391" alt="tickets" src="https://github.com/user-attachments/assets/af2a9a37-ccaa-426d-b37f-91f9b3e0e180">

**admins Table** <br>
<img width="272" alt="admins" src="https://github.com/user-attachments/assets/b9f1a8f4-d761-4276-853c-aabbef45878a">

## **CRUD Operations**
### **Sample Queries**
Here are some example CRUD operations you can perform:

1. **Create**  
   Insert a new train:
   ```sql
   INSERT INTO Trains (train_id, name, source, destination, capacity)
   VALUES (101, 'Express 101', 'City A', 'City Z', 200);
 
2. **Read**
Fetch all reservations for a specific user:
   ```sql
   SELECT * FROM Reservations WHERE user_id = 5;

3. **Update**
Update train capacity:
   ```sql
   UPDATE Trains SET capacity = 250 WHERE train_id = 101;
4. **Delete**
Delete a specific reservation:
   ```sql
   DELETE FROM Reservations WHERE reservation_id = 15; 

## **Conclusion**

The Railway Reservation System project provides a comprehensive solution for managing railway operations, including user management, train schedules, reservations, stations, and schedules. This project demonstrates how to efficiently handle data using **CRUD operations** and **relational databases** in **MySQL**.  <br>
By integrating multiple tables and establishing relationships between them, this system showcases fundamental concepts of database design and management. The project allows for the creation, reading, updating, and deletion of records in the users, trains, reservations, stations, and schedules tables, enabling seamless management of the railway reservation process.
