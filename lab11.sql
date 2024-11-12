-- Retrieve all records from the "courses" table
SELECT * FROM courses;
"COMP1151" "2024-3" "IT Essentials" "Wed 09" "Mon 13" "Basics of IT infrastructure."
"COMP1236" "2024-3" "Fundamentals of Computing Logic" "Thu 14" "Tue 10" "Focus on logic and algorithms."
"COMP1234" "2024-3" "Introduction To Web Development" "Fri 11" "Wed 15" "Introduction to HTML, CSS, and JavaScript."
"COMP1238" "2024-3" "Introduction to Data Management" "Tue 13" "Thu 09" "Basic concepts of data storage and retrieval."
"MATH1162" "2024-3" "Mathematics for Computer Technology I" "Mon 10" "Fri 12" "Mathematical principles for computing."
"COMM2000" "2024-3" "Communicating Across Contexts" "Tue 09" "Thu 11" "Effective communication in various settings."
"COMP1168" "2025-1" "Database Management" "Fri 10" "Mon 14" "Introduction to database systems."
"COMP1202" "2025-1" "Object-Oriented Programming" "Wed 13" "Tue 11" "Core concepts of OOP using Java."
"COMP1235" "2025-1" "Introduction To Full-Stack Development" "Thu 10" "Mon 15" "Web development from front to back end."
"COMP3044" "2025-1" "Linux Essentials" "Tue 14" "Wed 12" "Introduction to Linux OS."
"GSSC1027" "2025-1" "Personal Finance" "Fri 09" "Thu 13" "Managing personal financial matters."
"MATH1172" "2025-1" "Mathematics for Computer Technology II" "Mon 11" "Fri 15" "Advanced mathematical concepts."
"COMP1230" "2025-3" "Advanced Web Programming" "Wed 10" "Mon 13" "Advanced web technologies and frameworks."
"COMP2130" "2025-3" "Application Development using Java" "Thu 09" "Tue 14" "Building applications with Java."
"COMP2136" "2025-3" "Software Quality Assurance" "Fri 12" "Wed 15" "Ensuring software quality and standards."
"COMP2139" "2025-3" "Web Application Development" "Tue 10" "Thu 11" "Developing scalable web applications."
"COMP2147" "2025-3" "System Analysis, Design And Testing" "Mon 14" "Fri 11" "Systems analysis and design methodologies."
"GNED" "2025-3" "General Education Elective" "Thu 15" "Tue 12" "Elective course for general education."
"COMP2080" "2026-1" "Data Structures and Algorithms" "Mon 09" "Wed 13" "Efficient data storage and manipulation."
"COMP2148" "2026-1" "Professional Workplace Competencies" "Tue 11" "Thu 14" "Skills for professional work environments."
"COMP2151" "2026-1" "Agile Software Development" "Wed 14" "Mon 15" "Agile methodologies and practices."
"COMP2152" "2026-1" "Open Source Development" "Thu 09" "Fri 10" "Contributing to open source projects."
"COMP2154" "2026-1" "System Development Project" "Fri 14" "Tue 13" "Capstone project for system development."
"GNED1" "2026-1" "General Education Elective" "Wed 10" "Thu 12" "Elective course for general education."
"COMP3059" "2026-3" "Capstone Project I" "Tue 09" "Mon 14" "First phase of the capstone project."
"COMP3074" "2026-3" "Mobile Application Development I" "Thu 11" "Wed 15" "Building mobile applications for iOS/Android."
"COMP3095" "2026-3" "Web Application Development Using Java" "Fri 13" "Tue 10" "Developing Java-based web applications."
"COMP3104" "2026-3" "DevOps" "Mon 12" "Thu 09" "Practices for development and operations integration."
"COMP3122" "2026-3" "Applied Data Science" "Wed 15" "Fri 11" "Applying data science techniques in practice."
"COMP3123" "2026-3" "Full Stack Development I" "Tue 12" "Mon 10" "Comprehensive full-stack development."
"COMP3078" "2027-1" "Capstone Project II" "Fri 15" "Wed 09" "Final phase of the capstone project."
"COMP3134" "2027-1" "Introduction to Cyber Security" "Thu 13" "Mon 11" "Fundamentals of cyber security."
"COMP3097" "2027-1" "Mobile Application Development II" "Mon 15" "Tue 14" "Advanced mobile application development."
"COMP3132" "2027-1" "Applied Machine Learning" "Wed 12" "Thu 10" "Practical machine learning applications."
"COMP3133" "2027-1" "Full Stack Development II" "Tue 11" "Fri 14" "Advanced full-stack development techniques."
-- Retrieve the first 10 records from the "assignments" table
SELECT * FROM assignments
LIMIT 10;
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
-- Count the total number of courses in the "courses" table
SELECT count(*) FROM courses;
"35"
-- Find the earliest due date in the "assignments" table
SELECT min(due_date) FROM assignments;
"2024-09-10"
-- Retrieve courses where the course name starts with 'Intro'
SELECT *
FROM courses
WHERE course_name LIKE 'Intro%';
"COMP1234" "2024-3" "Introduction To Web Development" "Fri 11" "Wed 15" "Introduction to HTML, CSS, and JavaScript."
"COMP1238" "2024-3" "Introduction to Data Management" "Tue 13" "Thu 09" "Basic concepts of data storage and retrieval."
"COMP1235" "2025-1" "Introduction To Full-Stack Development" "Thu 10" "Mon 15" "Web development from front to back end."
"COMP3134" "2027-1" "Introduction to Cyber Security" "Thu 13" "Mon 11" "Fundamentals of cyber security."
-- Retrieve assignments that are not completed, ordered by due date
SELECT *
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;
"1" "COMP1151" "Network Setup Assignment" "Not Started" "2024-09-15"
"5" "COMP1234" "HTML/CSS Basics" "Not Started" "2024-09-20"
"11" "COMM2000" "Communication Skills Essay" "In Progress" "2024-09-25"
"2" "COMP1151" "Hardware Installation Project" "In Progress" "2024-10-01"
"4" "COMP1236" "Algorithm Design Task" "In Progress" "2024-10-05"
"8" "COMP1238" "Data Normalization Task" "In Progress" "2024-10-08"
"6" "COMP1234" "JavaScript Interactive Page" "Not Started" "2024-10-10"
"10" "MATH1162" "Linear Algebra Quiz" "Not Started" "2024-10-15"
"12" "COMM2000" "Presentation Project" "Not Started" "2024-10-20"
"13" "COMP1168" "Database Design Project" "Not Started" "2025-02-10"
"21" "GSSC1027" "Budget Planning Assignment" "In Progress" "2025-02-22"
"19" "COMP3044" "Linux Command Line Basics" "Not Started" "2025-02-25"
"14" "COMP1168" "SQL Optimization Assignment" "In Progress" "2025-03-01"
"24" "MATH1172" "Complex Numbers Quiz" "In Progress" "2025-03-05"
"18" "COMP1235" "Backend API Development" "In Progress" "2025-03-10"
"22" "GSSC1027" "Investment Strategies Essay" "Not Started" "2025-03-12"
"16" "COMP1202" "Inheritance and Polymorphism Task" "Not Started" "2025-03-15"
-- Retrieve assignments for courses with IDs starting with 'COMM', not completed, and due before 2024-12-31, ordered by due date
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed' 
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;
"COMM2000" "Communication Skills Essay" "In Progress" "2024-09-25"
"COMM2000" "Presentation Project" "Not Started" "2024-10-20"
--write queries for the following tasks
-- Retrieve the title and due date of assignments for the course COMP1234
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';
"HTML/CSS Basics" "2024-09-20"
"JavaScript Interactive Page" "2024-10-10"
-- Find the earliest assignment due date in the "assignments" table
SELECT min(due_date) AS earliest_due_date
FROM assignments;
"2024-09-10"
-- Find the latest assignment due date in the "assignments" table
SELECT max(due_date) AS latest_due_date
FROM assignments;
"2025-03-20"
-- Retrieve the title and course ID of assignments due on 2024-10-08
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';
"Data Normalization Task" "COMP1238"
-- Retrieve the title and due date of assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';
"Hardware Installation Project" "2024-10-01"
"Algorithm Design Task" "2024-10-05"
"JavaScript Interactive Page" "2024-10-10"
"Data Normalization Task" "2024-10-08"
"Linear Algebra Quiz" "2024-10-15"
"Presentation Project" "2024-10-20"
-- Find the most recent due date of completed assignments
SELECT max(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'Completed';
"2025-03-20"
--Optional tasks
-- Count the number of assignments with the status "Not Started"
SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';
"9"
-- Join the "courses" and "assignments" tables to retrieve course ID, course name, assignment title, and due date
SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date
FROM courses
JOIN assignments 
  ON courses.course_id = assignments.course_id;
"COMP1151" "IT Essentials" "Network Setup Assignment" "2024-09-15"
"COMP1151" "IT Essentials" "Hardware Installation Project" "2024-10-01"
"COMP1236" "Fundamentals of Computing Logic" "Logic Gates Exercise" "2024-09-10"
"COMP1236" "Fundamentals of Computing Logic" "Algorithm Design Task" "2024-10-05"
"COMP1234" "Introduction To Web Development" "HTML/CSS Basics" "2024-09-20"
"COMP1234" "Introduction To Web Development" "JavaScript Interactive Page" "2024-10-10"
"COMP1238" "Introduction to Data Management" "SQL Query Assignment" "2024-09-18"
"COMP1238" "Introduction to Data Management" "Data Normalization Task" "2024-10-08"
"MATH1162" "Mathematics for Computer Technology I" "Calculus Problem Set" "2024-09-12"
"MATH1162" "Mathematics for Computer Technology I" "Linear Algebra Quiz" "2024-10-15"
"COMM2000" "Communicating Across Contexts" "Communication Skills Essay" "2024-09-25"
"COMM2000" "Communicating Across Contexts" "Presentation Project" "2024-10-20"
"COMP1168" "Database Management" "Database Design Project" "2025-02-10"
"COMP1168" "Database Management" "SQL Optimization Assignment" "2025-03-01"
"COMP1202" "Object-Oriented Programming" "Java OOP Basics" "2025-02-05"
"COMP1202" "Object-Oriented Programming" "Inheritance and Polymorphism Task" "2025-03-15"
"COMP1235" "Introduction To Full-Stack Development" "Frontend Development Exercise" "2025-02-18"
"COMP1235" "Introduction To Full-Stack Development" "Backend API Development" "2025-03-10"
"COMP3044" "Linux Essentials" "Linux Command Line Basics" "2025-02-25"
"COMP3044" "Linux Essentials" "Shell Scripting Project" "2025-03-20"
"GSSC1027" "Personal Finance" "Budget Planning Assignment" "2025-02-22"
"GSSC1027" "Personal Finance" "Investment Strategies Essay" "2025-03-12"
"MATH1172" "Mathematics for Computer Technology II" "Probability Problem Set" "2025-02-15"
"MATH1172" "Mathematics for Computer Technology II" "Complex Numbers Quiz" "2025-03-05"
