-- =========================================
-- 1. Create Database
-- =========================================
CREATE DATABASE student_course_db;

-- =========================================
-- 2. Use Database
-- =========================================
USE student_course_db;

-- =========================================
-- 3. Create students Table
-- =========================================
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number BIGINT UNIQUE,
    course_name VARCHAR(30),
    date_of_birth DATE,
    registration_date DATETIME
);

-- =========================================
-- 4. Insert 20 Student Records
-- =========================================
INSERT INTO students 
(student_id, full_name, email, phone_number, course_name, date_of_birth, registration_date)
VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', 9876543210, 'BCA', '2002-05-14', NOW()),
(2, 'Diya Patel', 'diya.patel@gmail.com', 9876543211, 'BBA', '2001-08-21', NOW()),
(3, 'Rohan Verma', 'rohan.verma@gmail.com', 9876543212, 'BSc IT', '2003-01-10', NOW()),
(4, 'Sneha Iyer', 'sneha.iyer@gmail.com', 9876543213, 'BCom', '2002-11-02', NOW()),
(5, 'Kunal Singh', 'kunal.singh@gmail.com', 9876543214, 'MBA', '2000-03-18', NOW()),
(6, 'Meera Nair', 'meera.nair@gmail.com', 9876543215, 'MCA', '2001-07-09', NOW()),
(7, 'Aditya Rao', 'aditya.rao@gmail.com', 9876543216, 'BTech', '2002-09-25', NOW()),
(8, 'Pooja Mehta', 'pooja.mehta@gmail.com', 9876543217, 'BCA', '2003-04-30', NOW()),
(9, 'Vikram Joshi', 'vikram.joshi@gmail.com', 9876543218, 'BBA', '2001-12-12', NOW()),
(10, 'Ananya Gupta', 'ananya.gupta@gmail.com', 9876543219, 'BSc IT', '2002-06-06', NOW()),
(11, 'Harsh Desai', 'harsh.desai@gmail.com', 9876543220, 'BCom', '2000-10-19', NOW()),
(12, 'Ishita Kapoor', 'ishita.kapoor@gmail.com', 9876543221, 'MBA', '2001-02-27', NOW()),
(13, 'Rahul Malhotra', 'rahul.malhotra@gmail.com', 9876543222, 'MCA', '2002-03-15', NOW()),
(14, 'Tanya Choudhary', 'tanya.choudhary@gmail.com', 9876543223, 'BTech', '2003-08-08', NOW()),
(15, 'Manish Yadav', 'manish.yadav@gmail.com', 9876543224, 'BCA', '2001-09-17', NOW()),
(16, 'Neha Arora', 'neha.arora@gmail.com', 9876543225, 'BBA', '2002-01-22', NOW()),
(17, 'Siddharth Jain', 'siddharth.jain@gmail.com', 9876543226, 'BSc IT', '2000-05-11', NOW()),
(18, 'Ritika Sen', 'ritika.sen@gmail.com', 9876543227, 'BCom', '2003-07-03', NOW()),
(19, 'Yash Thakur', 'yash.thakur@gmail.com', 9876543228, 'MBA', '2001-11-29', NOW()),
(20, 'Priyanka Das', 'priyanka.das@gmail.com', 9876543229, 'MCA', '2002-12-05', NOW());

-- =========================================
-- 5. Verify Data
-- =========================================

-- View all records
SELECT * FROM students;

-- Count total students
SELECT COUNT(*) AS total_students FROM students;

-- View students from BCA course
SELECT * FROM students WHERE course_name = 'BCA';

-- Describe table structure
DESCRIBE students;
