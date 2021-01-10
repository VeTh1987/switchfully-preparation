CREATE TABLE store(id INTEGER PRIMARY KEY, name TEXT,amount INTEGER, price INTEGER,description TEXT);

INSERT INTO store VALUES(1,"Computer Mouse", 10, 20, "Peripheral");
INSERT INTO store VALUES(2,"Computer Keyboard", 5, 30,"Peripheral");
INSERT INTO store VALUES(3,"CPU",2,100,"Part");
INSERT INTO store VALUES(4,"MS OFFICE",3,40,"Software");
INSERT into store VALUES(5,"Hard Disk",1,50,"Part");

SELECT * FROM store ORDER BY price desc;

SELECT description,SUM(amount) FROM store GROUP BY description;
