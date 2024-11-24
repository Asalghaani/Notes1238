--Step 3 - run some queries to get started
-- 1.Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;
"1" "COMP1151" "Network Setup Assignment" "Not Started" "2024-09-15"
"2" "COMP1151" "Hardware Installation Project" "In Progress" "2024-10-01"
"3" "COMP1236" "Logic Gates Exercise" "Completed" "2024-09-10"
"4" "COMP1236" "Algorithm Design Task" "In Progress" "2024-10-05"
"5" "COMP1234" "HTML/CSS Basics" "Not Started" "2024-09-20"
"6" "COMP1234" "JavaScript Interactive Page" "Not Started" "2024-10-10"
"7" "COMP1238" "SQL Query Assignment" "Completed" "2024-09-18"
"8" "COMP1238" "Data Normalization Task" "In Progress" "2024-10-08"
"9" "MATH1162" "Calculus Problem Set" "Completed" "2024-09-12"
"10" "MATH1162" "Linear Algebra Quiz" "Not Started" "2024-10-15"
-- 2.SUBSTRING(string, start, length)
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');
SELECT DISTINCT SUBSTR(course_id, 1, 4) AS prefix
FROM courses;
"COMM"
"COMP"
"GNED"
"GSSC"
"MATH"
-- 3.Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;
"COMM" "1"
"COMP" "29"
"GNED" "2"
"GSSC" "1"
"MATH" "2"
-- 4.Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed' 
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;
"COMM2000" "Communication Skills Essay" "In Progress" "2024-09-25"
"COMM2000" "Presentation Project" "Not Started" "2024-10-20"

--Step 4 - write queries for the following tasks
-- 1.Query to concatenate course_name and semester fields with a hyphen between them
SELECT course_name  ' - '  semester AS course_details
FROM courses;
"IT Essentials - 2024-3"
"Fundamentals of Computing Logic - 2024-3"
"Introduction To Web Development - 2024-3"
"Introduction to Data Management - 2024-3"
"Mathematics for Computer Technology I - 2024-3"
"Communicating Across Contexts - 2024-3"
"Database Management - 2025-1"
"Object-Oriented Programming - 2025-1"
"Introduction To Full-Stack Development - 2025-1"
"Linux Essentials - 2025-1"
"Personal Finance - 2025-1"
"Mathematics for Computer Technology II - 2025-1"
"Advanced Web Programming - 2025-3"
"Application Development using Java - 2025-3"
"Software Quality Assurance - 2025-3"
"Web Application Development - 2025-3"
"System Analysis, Design And Testing - 2025-3"
"General Education Elective - 2025-3"
"Data Structures and Algorithms - 2026-1"
"Professional Workplace Competencies - 2026-1"
"Agile Software Development - 2026-1"
"Open Source Development - 2026-1"
"System Development Project - 2026-1"
"General Education Elective - 2026-1"
"Capstone Project I - 2026-3"
"Mobile Application Development I - 2026-3"
"Web Application Development Using Java - 2026-3"
"DevOps - 2026-3"
"Applied Data Science - 2026-3"
"Full Stack Development I - 2026-3"
"Capstone Project II - 2027-1"
"Introduction to Cyber Security - 2027-1"
"Mobile Application Development II - 2027-1"
"Applied Machine Learning - 2027-1"
"Full Stack Development II - 2027-1"
-- 2.Query to find all courses with lab sessions scheduled on Friday
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';
null
--'%Friday%' didint work but '%Fri%' did
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Fri%';
"COMP1234" "Introduction To Web Development" "Fri 11"
"COMP1168" "Database Management" "Fri 10"
"GSSC1027" "Personal Finance" "Fri 09"
"COMP2136" "Software Quality Assurance" "Fri 12"
"COMP2154" "System Development Project" "Fri 14"
"COMP3095" "Web Application Development Using Java" "Fri 13"
"COMP3078" "Capstone Project II" "Fri 15"
-- 3.Query to list all assignments with due_date after the current date
SELECT *
FROM assignments
WHERE due_date > date('now');
"13" "COMP1168" "Database Design Project" "Not Started" "2025-02-10"
"14" "COMP1168" "SQL Optimization Assignment" "In Progress" "2025-03-01"
"15" "COMP1202" "Java OOP Basics" "Completed" "2025-02-05"
"16" "COMP1202" "Inheritance and Polymorphism Task" "Not Started" "2025-03-15"
"17" "COMP1235" "Frontend Development Exercise" "Completed" "2025-02-18"
"18" "COMP1235" "Backend API Development" "In Progress" "2025-03-10"
"19" "COMP3044" "Linux Command Line Basics" "Not Started" "2025-02-25"
"20" "COMP3044" "Shell Scripting Project" "Completed" "2025-03-20"
"21" "GSSC1027" "Budget Planning Assignment" "In Progress" "2025-02-22"
"22" "GSSC1027" "Investment Strategies Essay" "Not Started" "2025-03-12"
"23" "MATH1172" "Probability Problem Set" "Completed" "2025-02-15"
"24" "MATH1172" "Complex Numbers Quiz" "In Progress" "2025-03-05"
-- 4.Query to count the number of assignments for each status
SELECT status, COUNT(*) AS total_assignments
FROM assignments
GROUP BY status;
"Completed" "7"
"In Progress" "8"
"Not Started" "16"
-- 5.Query to find the course with the longest course_name
SELECT course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;
"Introduction To Full-Stack Development" "38"
-- 6.Query to return all course names in uppercase
SELECT UPPER(course_name) AS uppercase_name
FROM courses;
"IT ESSENTIALS"
"FUNDAMENTALS OF COMPUTING LOGIC"
"INTRODUCTION TO WEB DEVELOPMENT"
"INTRODUCTION TO DATA MANAGEMENT"
"MATHEMATICS FOR COMPUTER TECHNOLOGY I"
"COMMUNICATING ACROSS CONTEXTS"
"DATABASE MANAGEMENT"
"OBJECT-ORIENTED PROGRAMMING"
"INTRODUCTION TO FULL-STACK DEVELOPMENT"
"LINUX ESSENTIALS"
"PERSONAL FINANCE"
"MATHEMATICS FOR COMPUTER TECHNOLOGY II"
"ADVANCED WEB PROGRAMMING"
"APPLICATION DEVELOPMENT USING JAVA"
"SOFTWARE QUALITY ASSURANCE"
"WEB APPLICATION DEVELOPMENT"
"SYSTEM ANALYSIS, DESIGN AND TESTING"
"GENERAL EDUCATION ELECTIVE"
"DATA STRUCTURES AND ALGORITHMS"
"PROFESSIONAL WORKPLACE COMPETENCIES"
"AGILE SOFTWARE DEVELOPMENT"
"OPEN SOURCE DEVELOPMENT"
"SYSTEM DEVELOPMENT PROJECT"
"GENERAL EDUCATION ELECTIVE"
"CAPSTONE PROJECT I"
"MOBILE APPLICATION DEVELOPMENT I"
"WEB APPLICATION DEVELOPMENT USING JAVA"
"DEVOPS"
"APPLIED DATA SCIENCE"
"FULL STACK DEVELOPMENT I"
"CAPSTONE PROJECT II"
"INTRODUCTION TO CYBER SECURITY"
"MOBILE APPLICATION DEVELOPMENT II"
"APPLIED MACHINE LEARNING"
"FULL STACK DEVELOPMENT II"
-- 7.Query to list all assignments due in September (any year)
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';
"Network Setup Assignment"
"Logic Gates Exercise"
"HTML/CSS Basics"
"SQL Query Assignment"
"Calculus Problem Set"
"Communication Skills Essay"
-- 8.Query to find all assignments where the due_date is NULL
SELECT *
FROM assignments
WHERE due_date IS NULL;
"25" "COMP1238" "Assignment with no date" "Not Started" "null"
"26" "COMP1238" "Assignment with no date" "Not Started" "null"
"27" "COMP1238" "Assignment with no date" "Not Started" "null"
"28" "COMP1238" "Assignment with no date" "Not Started" "null"
"29" "COMP1238" "Assignment with no date" "Not Started" "null"
"30" "COMP1238" "Assignment with no date" "Not Started" "null"
"31" "COMP1238" "Assignment with no date" "Not Started" "null"
--Optional Tasks
-- 1.Query to list each course_id with the total number of assignments associated with it
SELECT courses.course_id, courses.course_name, COUNT(assignments.id) AS total_assignments
FROM courses
LEFT JOIN assignments
ON courses.course_id = assignments.course_id
GROUP BY courses.course_id, courses.course_name;
"COMM2000" "Communicating Across Contexts" "2"
"COMP1151" "IT Essentials" "2"
"COMP1168" "Database Management" "2"
"COMP1202" "Object-Oriented Programming" "2"
"COMP1230" "Advanced Web Programming" "0"
"COMP1234" "Introduction To Web Development" "2"
"COMP1235" "Introduction To Full-Stack Development" "2"
"COMP1236" "Fundamentals of Computing Logic" "2"
"COMP1238" "Introduction to Data Management" "9"
"COMP2080" "Data Structures and Algorithms" "0"
"COMP2130" "Application Development using Java" "0"
"COMP2136" "Software Quality Assurance" "0"
"COMP2139" "Web Application Development" "0"
"COMP2147" "System Analysis, Design And Testing" "0"
"COMP2148" "Professional Workplace Competencies" "0"
"COMP2151" "Agile Software Development" "0"
"COMP2152" "Open Source Development" "0"
"COMP2154" "System Development Project" "0"
"COMP3044" "Linux Essentials" "2"
"COMP3059" "Capstone Project I" "0"
"COMP3074" "Mobile Application Development I" "0"
"COMP3078" "Capstone Project II" "0"
"COMP3095" "Web Application Development Using Java" "0"
"COMP3097" "Mobile Application Development II" "0"
"COMP3104" "DevOps" "0"
"COMP3122" "Applied Data Science" "0"
"COMP3123" "Full Stack Development I" "0"
"COMP3132" "Applied Machine Learning" "0"
"COMP3133" "Full Stack Development II" "0"
"COMP3134" "Introduction to Cyber Security" "0"
"GNED" "General Education Elective" "0"
"GNED1" "General Education Elective" "0"
"GSSC1027" "Personal Finance" "2"
"MATH1162" "Mathematics for Computer Technology I" "2"
"MATH1172" "Mathematics for Computer Technology II" "2"
-- 2.Query to find courses that do not have any assignments
SELECT courses.course_id, courses.course_name
FROM courses
LEFT JOIN assignments
ON courses.course_id = assignments.course_id
WHERE assignments.id IS NULL;
"COMP1230" "Advanced Web Programming"
"COMP2130" "Application Development using Java"
"COMP2136" "Software Quality Assurance"
"COMP2139" "Web Application Development"
"COMP2147" "System Analysis, Design And Testing"
"GNED" "General Education Elective"
"COMP2080" "Data Structures and Algorithms"
"COMP2148" "Professional Workplace Competencies"
"COMP2151" "Agile Software Development"
"COMP2152" "Open Source Development"
"COMP2154" "System Development Project"
"GNED1" "General Education Elective"
"COMP3059" "Capstone Project I"
"COMP3074" "Mobile Application Development I"
"COMP3095" "Web Application Development Using Java"
"COMP3104" "DevOps"
"COMP3122" "Applied Data Science"
"COMP3123" "Full Stack Development I"
"COMP3078" "Capstone Project II"
"COMP3134" "Introduction to Cyber Security"
"COMP3097" "Mobile Application Development II"
"COMP3132" "Applied Machine Learning"
"COMP3133" "Full Stack Development II"
