CREATE SCHEMA student_grades;

CREATE TABLE students (id INTEGER AUTO_INCREMENT ,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT,
    PRIMARY KEY(id));

INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24");
INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04");
    
CREATE TABLE student_grades (id INTEGER AUTO_INCREMENT,
    student_id INTEGER,
    test TEXT,
    grade INTEGER,
    PRIMARY KEY(id));


INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Nutrition", 95);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Nutrition", 92);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Chemistry", 85);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Chemistry", 95);

CREATE TABLE student_projects (id INTEGER AUTO_INCREMENT PRIMARY KEY, student_id INTEGER, title TEXT);

INSERT INTO student_projects (student_id, title) VALUES (1, "Carrotapault");

SELECT students.first_name, students.last_name, student_projects.title FROM students LEFT OUTER JOIN student_projects ON students.id = student_projects.student_id;