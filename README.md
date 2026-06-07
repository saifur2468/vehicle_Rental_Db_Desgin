# 🚗 Vehicle Rental Database Design & SQL Queries

## 📖 Project Overview

This project demonstrates the design and implementation of a **Vehicle Rental System Database** using PostgreSQL.

The system manages:

* Users
* Vehicles
* Bookings

It includes:

* ER Diagram Design
* Primary & Foreign Keys
* Table Relationships
* SQL Queries using JOIN, NOT EXISTS, WHERE, GROUP BY, and HAVING

---

## 🖼 ER Diagram

**ERD Link:**

https://drawsql.app/teams/saif-rahmamn/diagrams/vehicle-rental-db-desgin

---

# 📋 Tables

## Users

| user_id | name          | email                                       | password | phone_number | role     |
| ------- | ------------- | ------------------------------------------- | -------- | ------------ | -------- |
| 1       | Saifur Rahman | [saifur@gmail.com](mailto:saifur@gmail.com) | pass123  | 01711111111  | Customer |
| 2       | Jewel Ahmed   | [jewel@gmail.com](mailto:jewel@gmail.com)   | pass123  | 01722222222  | Customer |
| 3       | Mehedi Hasan  | [mehedi@gmail.com](mailto:mehedi@gmail.com) | pass123  | 01733333333  | Customer |
| 4       | Admin User    | [admin@gmail.com](mailto:admin@gmail.com)   | admin123 | 01744444444  | Admin    |

---

## Vehicles

| vehicle_id | vehicle_name   | vehicle_type | model | registration_number | rental_price_per_day | availability_status |
| ---------- | -------------- | ------------ | ----- | ------------------- | -------------------- | ------------------- |
| 1          | Toyota Corolla | Car          | 2022  | DHA-1001            | 3500.00              | available           |
| 2          | Honda Civic    | Car          | 2023  | DHA-1002            | 4000.00              | available           |
| 3          | Yamaha R15     | Bike         | 2022  | DHA-2001            | 1500.00              | rented              |
| 4          | Suzuki Gixxer  | Bike         | 2021  | DHA-2002            | 1200.00              | available           |
| 5          | Tata Truck     | Truck        | 2020  | DHA-3001            | 6000.00              | maintenance         |

---

## Bookings

| booking_id | user_id | vehicle_id | start_date | end_date   | booking_status | total_cost |
| ---------- | ------- | ---------- | ---------- | ---------- | -------------- | ---------- |
| 1          | 1       | 1          | 2025-06-01 | 2025-06-03 | completed      | 7000.00    |
| 2          | 2       | 1          | 2025-06-05 | 2025-06-07 | completed      | 7000.00    |
| 3          | 3       | 1          | 2025-06-10 | 2025-06-12 | confirmed      | 7000.00    |
| 4          | 1       | 2          | 2025-06-15 | 2025-06-17 | completed      | 8000.00    |
| 5          | 2       | 3          | 2025-06-20 | 2025-06-21 | pending        | 1500.00    |

---

# 🔍 Query Results

## Query 1: INNER JOIN

Retrieve booking information along with customer name and vehicle name.

### Result

| booking_id | customer_name | vehicle_name   | start_date | end_date   | booking_status |
| ---------- | ------------- | -------------- | ---------- | ---------- | -------------- |
| 1          | Saifur Rahman | Toyota Corolla | 2025-06-01 | 2025-06-03 | completed      |
| 2          | Jewel Ahmed   | Toyota Corolla | 2025-06-05 | 2025-06-07 | completed      |
| 3          | Mehedi Hasan  | Toyota Corolla | 2025-06-10 | 2025-06-12 | confirmed      |
| 4          | Saifur Rahman | Honda Civic    | 2025-06-15 | 2025-06-17 | completed      |
| 5          | Jewel Ahmed   | Yamaha R15     | 2025-06-20 | 2025-06-21 | pending        |

---

## Query 2: NOT EXISTS

Find all vehicles that have never been booked.

### Result

| vehicle_id | vehicle_name  | vehicle_type | model | registration_number | rental_price_per_day | availability_status |
| ---------- | ------------- | ------------ | ----- | ------------------- | -------------------- | ------------------- |
| 4          | Suzuki Gixxer | Bike         | 2021  | DHA-2002            | 1200.00              | available           |
| 5          | Tata Truck    | Truck        | 2020  | DHA-3001            | 6000.00              | maintenance         |

---

## Query 3: WHERE

Retrieve all available vehicles of type Car.

### Result

| vehicle_id | vehicle_name   | vehicle_type | model | registration_number | rental_price_per_day | availability_status |
| ---------- | -------------- | ------------ | ----- | ------------------- | -------------------- | ------------------- |
| 1          | Toyota Corolla | Car          | 2022  | DHA-1001            | 3500.00              | available           |
| 2          | Honda Civic    | Car          | 2023  | DHA-1002            | 4000.00              | available           |

---

## Query 4: GROUP BY & HAVING

Find vehicles that have more than 2 bookings.

### Result

| vehicle_id | total_bookings |
| ---------- | -------------- |
| 1          | 3              |

---

## 🛠 Technologies Used

* PostgreSQL
* DrawSQL
* Beekeeper Studio

---


