CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255),
    address JSON
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    status VARCHAR(50)
);

CREATE TABLE feedback (
    id SERIAL PRIMARY KEY,
    order_id INT ,
    feedback_comment TEXT,
    rating INT
);
