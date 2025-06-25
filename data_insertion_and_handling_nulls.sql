-- Task 2: Data Insertion and Handling Nulls

-- Sample table creation for demonstration
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT,
    age INTEGER,
    country TEXT DEFAULT 'Unknown'
);

-- 1. INSERT INTO for adding rows
INSERT INTO users (name, email, age, country) VALUES
('Alice', 'alice@example.com', 30, 'USA'),
('Bob', 'bob@example.com', 25, NULL), -- country missing, will insert NULL
('Charlie', NULL, 22, 'Canada'),      -- email missing, will insert NULL
('Dana', 'dana@example.com', NULL, 'UK'), -- age missing, will insert NULL
('Eve', 'eve@example.com', 28, DEFAULT);  -- uses default for country

-- 2. Handle missing values using NULL or default
INSERT INTO users (name, email, age) VALUES
('Frank', 'frank@example.com', 35); -- country uses default ('Unknown')

-- 3. UPDATE with WHERE conditions
-- Update Bob's country from NULL to 'Australia'
UPDATE users
SET country = 'Australia'
WHERE name = 'Bob';

-- Update Dana's age (was NULL) to 27
UPDATE users
SET age = 27
WHERE name = 'Dana';

-- Set email to NULL for user 'Eve'
UPDATE users
SET email = NULL
WHERE name = 'Eve';

-- 4. DELETE with WHERE conditions
-- Delete user where email is NULL (for example, Charlie and Eve)
DELETE FROM users
WHERE email IS NULL;

-- Delete user with age less than 25
DELETE FROM users
WHERE age < 25;