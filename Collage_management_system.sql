-- For creating Department table
CREATE TABLE Department (
    d_id SERIAL PRIMARY KEY,
    d_name VARCHAR(100) NOT NULL,
    HOD VARCHAR(100)
);

-- For creating Student table
CREATE TABLE Student (
    s_id SERIAL PRIMARY KEY,
    s_name VARCHAR(100) NOT NULL,
    mobile_no VARCHAR(15),
    d_id INT REFERENCES Department(d_id)
);

-- For creating Teacher table
CREATE TABLE Teacher (
    t_id SERIAL PRIMARY KEY,
    t_name VARCHAR(100) NOT NULL,
    d_id INT REFERENCES Department(d_id)
);

-- For creating Course table
CREATE TABLE Course (
    c_id SERIAL PRIMARY KEY,
    c_name VARCHAR(100) NOT NULL,
    d_id INT REFERENCES Department(d_id)
);

-- For creating table for Enroll relation between Student and Course tables
CREATE TABLE Enroll (
    s_id INT REFERENCES Student(s_id),
    c_id INT REFERENCES Course(c_id),
    PRIMARY KEY (s_id, c_id)
);

-- For creating table for Teaches relation between Teacher and Course tables
CREATE TABLE Teaches (
    t_id INT REFERENCES Teacher(t_id),
    c_id INT REFERENCES Course(c_id),
    PRIMARY KEY (t_id, c_id)
);