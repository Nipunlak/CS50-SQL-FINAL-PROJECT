# Daily Travel & Expense Tracker Database

**Author:** Nipun Jayawantha  
**Course:** CS50 SQL  
**Video Overview:** https://youtu.be/bYeTqYZW1FA  

---

## Project Overview

This project is a relational database built for my CS50 SQL final project.

My job requires me to travel 150–200 km daily. Because of that, I needed a system to track:

- Travel mileage  
- Daily expenses  
- Personal tasks  

The goal is to manage my fuel, time, and money more efficiently.

---

## Database Structure

The database contains four main tables:

- User  
- Task  
- Expense  
- Travel  

---

## Tables

### User
Stores user information.

- id (Primary Key)  
- username (Unique)  
- email (Unique)  
- password  
- user_role (user, admin)  
- created_at  

---

### Task
Stores personal tasks.

- id (Primary Key)  
- name  
- description  
- is_done (default: false)  
- created_at  
- user_id (Foreign Key → User)

---

### Expense
Stores expense records.

- id (Primary Key)  
- name  
- description  
- amount  
- expense_type (need, want)  
- created_at  
- user_id (Foreign Key → User)

---

### Travel
Stores travel records.

- id (Primary Key)  
- name  
- description  
- milage  
- created_at  
- user_id (Foreign Key → User)

---

## Relationships

- One User can have many Tasks  
- One User can have many Expenses  
- One User can have many Travel records  

All foreign keys use `ON DELETE CASCADE`.

---

## Features

- Full CRUD operations  
- ENUM types for roles and expense types  
- Timestamp tracking  
- Foreign key relationships  

---

## Limitations

- Designed mainly for single-user use  
- No GPS tracking  
- No payment or bank integration  
- Travel and expenses are not linked  

---

## Future Improvements

- Web interface (Flask or Django)  
- Analytics dashboard  
- Monthly reports  
- Better optimization for scaling  

---

## Conclusion

This database was built as my CS50 SQL final project.  
It solves a real problem in my daily life and serves as the foundation for a future web application.
