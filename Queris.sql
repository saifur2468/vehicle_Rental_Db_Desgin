create database vehicle;

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  phone_number VARCHAR(20),
  role VARCHAR(20)
);

CREATE TABLE vehicles (
  vehicle_id SERIAL PRIMARY KEY,
  vehicle_name VARCHAR(100),
  vehicle_type VARCHAR(50),
  model VARCHAR(100),
  registration_number VARCHAR(50) UNIQUE,
  rental_price_per_day DECIMAL(10, 2),
  availability_status VARCHAR(20)
);

CREATE TABLE bookings (
  booking_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users (user_id),
  vehicle_id INT REFERENCES vehicles (vehicle_id),
  start_date DATE,
  end_date DATE,
  booking_status VARCHAR(20),
  total_cost DECIMAL(10, 2)
);