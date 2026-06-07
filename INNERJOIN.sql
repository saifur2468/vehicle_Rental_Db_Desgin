SELECT
  b.booking_id,
  u.name AS customer_name,
  v.vehicle_name,
  b.start_date,
  b.end_date,
  b.booking_status
FROM
  bookings b
  INNER JOIN users u ON b.user_id = u.user_id
  INNER JOIN vehicles v ON b.vehicle_id = v.vehicle_id;

-- No exists
SELECT
  *
FROM
  vehicles v
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      bookings b
    WHERE
      b.vehicle_id = v.vehicle_id
  );


-- where 
SELECT * FROM vehicles WHERE vehicle_type = 'Car' AND availability_status = 'available';

-- group by+ having
SELECT vehicle_id, COUNT(*) AS total_bookings FROM bookings GROUP BY vehicle_id HAVING COUNT(*) > 2;

 select * from bookings