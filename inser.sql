INSERT INTO
    users (name, email, password, phone_number, role)
VALUES
    (
        'Saifur Rahman',
        'saifur@gmail.com',
        'pass123',
        '01711111111',
        'Customer'
    ),
    (
        'Jewel Ahmed',
        'jewel@gmail.com',
        'pass123',
        '01722222222',
        'Customer'
    ),
    (
        'Mehedi Hasan',
        'mehedi@gmail.com',
        'pass123',
        '01733333333',
        'Customer'
    ),
    (
        'Admin User',
        'admin@gmail.com',
        'admin123',
        '01744444444',
        'Admin'
    );

INSERT INTO
    vehicles (
        vehicle_name,
        vehicle_type,
        model,
        registration_number,
        rental_price_per_day,
        availability_status
    )
VALUES
    (
        'Toyota Corolla',
        'Car',
        '2022',
        'DHA-1001',
        3500,
        'available'
    ),
    (
        'Honda Civic',
        'Car',
        '2023',
        'DHA-1002',
        4000,
        'available'
    ),
    (
        'Yamaha R15',
        'Bike',
        '2022',
        'DHA-2001',
        1500,
        'rented'
    ),
    (
        'Suzuki Gixxer',
        'Bike',
        '2021',
        'DHA-2002',
        1200,
        'available'
    ),
    (
        'Tata Truck',
        'Truck',
        '2020',
        'DHA-3001',
        6000,
        'maintenance'
    );

INSERT INTO
    bookings (
        user_id,
        vehicle_id,
        start_date,
        end_date,
        booking_status,
        total_cost
    )
VALUES
    (
        1,
        1,
        '2025-06-01',
        '2025-06-03',
        'completed',
        7000
    ),
    (
        2,
        1,
        '2025-06-05',
        '2025-06-07',
        'completed',
        7000
    ),
    (
        3,
        1,
        '2025-06-10',
        '2025-06-12',
        'confirmed',
        7000
    ),
    (
        1,
        2,
        '2025-06-15',
        '2025-06-17',
        'completed',
        8000
    ),
    (
        2,
        3,
        '2025-06-20',
        '2025-06-21',
        'pending',
        1500
    );