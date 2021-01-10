CREATE SCHEMA khan_groceries;
CREATE TABLE groceries(id INTEGER, name TEXT, quantity INTEGER, PRIMARY KEY (id));

INSERT INTO groceries VALUES(1,"Bananas",4);
INSERT INTO groceries VALUES(2,"Peanut Butter", 1);
INSERT INTO groceries VALUES(3,"Dark chocolate bars", 2);

SELECT * FROM groceries;