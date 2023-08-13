-- ## Create a table

-- CREATE TABLE

--     student (

--         student_id INT,

--         first_name VARCHAR(50),

--         last_name VARCHAR(50),

--         cgpa NUMERIC(1, 2)

--     )

-- ## Rename a table

-- ALTER TABLE student RENAME TO learners;

-- ## Delete a table

-- DROP Table learners;

-- ## Create a table with constrains

-- CREATE TABLE

--     "user1"(

--         user_id SERIAL PRIMARY KEY,

--         username VARCHAR(255) UNIQUE NOT NULL,

--         email VARCHAR(255) UNIQUE NOT NULL,

--         PRIMARY KEY (user_id, username)

--     )

-- ## Department table

CREATE TABLE
    Department(
        deptID SERIAL PRIMARY KEY,
        deptName VARCHAR(50) NOT NULL
    );

INSERT INTO Department
VALUES (2, 'HR'), (3, 'Marketing'), (4, 'Housing'), (5, 'Money Loan');

DELETE FROM Department WHERE deptID = 1;

SELECT * FROM Department;

-- ## Employee table

CREATE TABLE
    Employee (
        empID SERIAL PRIMARY KEY,
        emp_name VARCHAR(50) NOT NULL,
        email VARCHAR(100) NOT NULL,
        salary INT NOT NULL,
        departmentID INT,
        CONSTRAINT fk_constraint_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID)
    );

SELECT * FROM Employee;

DROP TABLE Employee;

INSERT INTO
    Employee (
        emp_name,
        email,
        salary,
        departmentID
    )
VALUES (
        'Robert Black',
        'robert.black@example.com',
        310000,
        1
    ), (
        'Jennifer White',
        'jennifer.white@example.com',
        320000,
        2
    ), (
        'Mark Blue',
        'mark.blue@example.com',
        330000,
        3
    ), (
        'Laura Pink',
        'laura.pink@example.com',
        340000,
        4
    ), (
        'Steven Orange',
        'steven.orange@example.com',
        350000,
        5
    ), (
        'Daniel Purple',
        'daniel.purple@example.com',
        360000,
        1
    ), (
        'Jessica Green',
        'jessica.green@example.com',
        370000,
        2
    ), (
        'Matthew Blue',
        'matthew.blue@example.com',
        380000,
        3
    ), (
        'Sarah Pink',
        'sarah.pink@example.com',
        390000,
        4
    ), (
        'Christopher Orange',
        'christopher.orange@example.com',
        400000,
        5
    );

CREATE Table
    courses (
        course_id serial primary key not null,
        course_name VARCHAR(255) not null,
        description VARCHAR(255),
        published_date DATE
    );

SELECT * from courses;

INSERT INTO
    courses (
        course_name,
        description,
        published_date
    )
VALUES (
        'PostgreSQL for Developers',
        'A complete PostgreSQL for Developers',
        '2020-07-13'
    ), (
        'Javascript for Developers',
        'A complete Javascript for Developers',
        NULL
    ), (
        'Python for Developers',
        'A complete Python for Developers',
        NULL
    ), (
        'CSS for Developers',
        'A complete CSS for Developers',
        '2013-07-01'
    ), (
        'HTML for Developers',
        'A complete HTML for Developers',
        '2012-04-24'
    );

update courses
set
    course_name = 'React for new',
    description = 'Wow, this is a description'
where course_id = 1;

SELECT *
FROM Employee
WHERE empid IN (2, 3, 5)
SELECT *
FROM Employee
ORDER BY name
SELECT *
FROM Employee
WHERE
    salary BETWEEN 10000 and 40000;