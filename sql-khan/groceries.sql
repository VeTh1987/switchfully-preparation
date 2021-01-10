CREATE SCHEMA khan_groceries;
CREATE TABLE groceries(id INTEGER, name TEXT, quantity INTEGER,aisle INTEGER, PRIMARY KEY (id));

INSERT INTO groceries VALUES(1,"Bananas",4,7);
INSERT INTO groceries VALUES(2,"Peanut Butter", 1,2);
INSERT INTO groceries VALUES(3,"Dark chocolate bars", 2,2);
INSERT INTO groceries VALUES(4,"Ice Cream",1,12);
INSERT INTO groceries VALUES(5,"Cherries", 6,2);
INSERT INTO groceries VALUES(6,"Chocolate Syrup", 1,4);

/* SELECT * FROM groceries WHERE aisle > 5 ORDER BY aisle; */

SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle ORDER BY aisle;

SELECT MAX(quantity) FROM groceries;

