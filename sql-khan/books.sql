CREATE SCHEMA khan_books;
CREATE TABLE books(id INTEGER, name TEXT, rating INTEGER, PRIMARY KEY (id));

INSERT INTO books VALUES(1,"SQL for Dummies", 5);
INSERT INTO books VALUES(2,"SQL for Intermediates",5);
INSERT into books VALUES(3,"SQL for Experts",5);

SELECT * FROM books