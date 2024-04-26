
-- create

create table Programmer (
name varchar(100) not null,
dob date not null,
doj date not null,
sex varchar(1),
prof1 varchar(20),
prof2 varchar(20),
salary integer not null
);
INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2, salary) 
VALUES 
    ('John Doe', '1990-05-15', '2015-08-20', 'M', 'Java', 'Python', 75000),
    ('Jane Smith', '1988-12-10', '2014-07-12', 'F', 'C++', 'JavaScript', 80000),
    ('David Johnson', '1995-02-28', '2018-04-30', 'M', 'Python', 'SQL', 70000),
    ('Emily Brown', '1992-09-20', '2017-03-15', 'F', 'Java', 'C#', 85000),
    ('Michael Lee', '1985-06-25', '2012-01-10', 'M', 'JavaScript', 'HTML/CSS', 90000),
    ('Jennifer Garcia', '1993-04-18', '2016-11-05', 'F', 'Python', 'Ruby', 78000),
    ('Christopher Martinez', '1991-11-07', '2019-09-22', 'M', 'C#', 'Java', 82000),
    ('Amanda Hernandez', '1989-08-12', '2013-06-08', 'F', 'SQL', 'Python', 76000),
    ('Daniel Lopez', '1987-03-30', '2010-12-05', 'M', 'Java', 'JavaScript', 88000),
    ('Jessica Perez', '1994-07-03', '2015-05-18', 'F', 'C++', 'Python', 83000);
select * from Programmer;

create table software (
name varchar(30) not null,
title varchar(30) not null,
dev_in varchar (30) not null,
scost integer,
dcost integer,
sold integer
);

INSERT INTO software (dev_in, title, name, scost, dcost, sold) 
VALUES 
    ('Pascal', 'Word Processor', 'Microsoft Word', 50.00, 10.00, 1000),
    ('Adobe', 'Photo Editing', 'Adobe Photoshop', 200.00, 25.00, 500),
    ('Autodesk', '3D Modeling', 'Autodesk Maya', 3000.00, 500.00, 200),
    ('Epic Games', 'Game Development', 'Unreal Engine', 0.00, 0.00, 5000),
    ('Oracle', 'Database Management', 'Oracle Database', 5000.00, 1000.00, 100),
    ('Pascal', 'Accounting Software', 'QuickBooks', 200.00, 50.00, 1000),
    ('Salesforce', 'CRM', 'Salesforce CRM', 100.00, 20.00, 2000),
    ('Pascal', 'Virtualization', 'VMware vSphere', 4000.00, 800.00, 300),
    ('Symantec', 'Security Software', 'Norton Security', 50.00, 15.00, 1500),
    ('IBM', 'Business Intelligence', 'IBM Cognos', 3000.00, 600.00, 400);
    select * from software;
CREATE TABLE Studies (
    name VARCHAR(20) NOT NULL,
    splace VARCHAR(20) NOT NULL,
    course VARCHAR(20) NOT NULL,
    ccost VARCHAR(20) NOT NULL
);
INSERT INTO Studies (name, splace, course, ccost) VALUES ('John', 'ABC College', 'BSc', '6000'),
('Alice', 'XYZ Institute', 'MBA', '8000'), 
('Michael', 'LMN University', 'Engineering', '7000'), 
('Emily', 'PQR Academy', 'Accounting', '5500'),
('David', 'DEF School', 'IT', '6500'), 
('Sophia', 'GHI College', 'Marketing', '7500'), 
('James', 'JKL Institute', 'Medicine', '9000'),
 ('Emma', 'NOP University', 'Law', '8500'),
 ('William', 'QRS Academy', 'Finance', '7200'),
 ('Olivia', 'TUV School', 'Psychology', '5800');
 select * from Studies;
 SELECT course
FROM studies
ORDER BY CAST(ccost AS DECIMAL) DESC
LIMIT 1;
SELECT name
FROM programmer
WHERE sex = 'M' 
  AND salary < (
    SELECT AVG(salary)
    FROM programmer
    WHERE sex = 'F'
  );
SELECT AVG(salary)
    FROM programmer
    WHERE sex = 'F';
    
  SELECT course, COUNT(*) AS num_students
FROM studies
GROUP BY course
ORDER BY num_students DESC
LIMIT 1;

SELECT splace AS institute, course
FROM studies
WHERE CAST(ccost AS DECIMAL) < (
    SELECT AVG(CAST(ccost AS DECIMAL))
    FROM studies
);
SELECT course, COUNT(*) AS num_students
FROM studies
GROUP BY course
HAVING COUNT(*) = (
    SELECT MAX(num_students)
    FROM (
        SELECT COUNT(*) AS num_students
        FROM studies
        GROUP BY course
    ) AS course_counts
);

SELECT splace AS institute, course
FROM studies
WHERE CAST(ccost AS DECIMAL) = (
    SELECT MAX(CAST(ccost AS DECIMAL))
    FROM studies
);
