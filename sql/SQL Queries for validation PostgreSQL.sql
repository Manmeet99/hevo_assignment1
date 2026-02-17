
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

select current_database();


select * from customers;
select * from feedback;
ALTER TABLE feedback
DROP CONSTRAINT feedback_order_id_key;

CREATE PUBLICATION hevo_pub
FOR ALL TABLES;

SELECT slot_name, plugin FROM pg_replication_slots;

INSERT INTO orders
VALUES (9999, 1, 'placed');



SELECT * 
FROM pg_create_logical_replication_slot(
  'hevo_slot',
  'pgoutput'
);



ALTER TABLE feedback
DROP CONSTRAINT feedback_order_id_key;


SELECT COUNT(*) AS customers_count FROM customers;
SELECT COUNT(*) AS orders_count FROM orders;
SELECT COUNT(*) AS feedback_count FROM feedback;

CREATE PUBLICATION hevo_pub
FOR ALL TABLES;

SHOW wal_level;

show Config_file;

