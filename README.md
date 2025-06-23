This project is a part of the SQL Developer Internship 
Task 1: Database Setup and Schema Design. 

I selected College Management System domain and designed a relational database using pgAdmin4 (PostgreSQL).
In this task, I created four main entities: Student, Teacher, Department, and Course. 

I also designed two many-to-many relationships:
Enroll: between Student and Course
Teaches: between Teacher and Course

Each entity was implemented using proper primary keys, and the relationships were built using foreign keys to ensure referential integrity.

I did not create separate tables for one-to-many relationships like:
Department has Students
Department has Teachers
Department has Courses
Instead, these relationships are handled directly in the respective tables using foreign key constraints.

This database is normalized and avoids redundancy. 
The ER diagram was designed based on this structure and is included in the submission.
