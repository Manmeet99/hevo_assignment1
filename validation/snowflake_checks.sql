-- Check row counts
SELECT COUNT(*) AS customers_count FROM customers;
SELECT COUNT(*) AS orders_count FROM orders;
SELECT COUNT(*) AS feedback_count FROM feedback;

-- Validate username transformation
SELECT email, username
FROM customers_transformed
LIMIT 10;

-- Validate order events
SELECT event_type, COUNT(*) AS cnt
FROM order_events
GROUP BY event_type;

-- Verify CDC test record
SELECT *
FROM orders
WHERE id = 88888;
