CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

ALTER TABLE clothes ADD price INTEGER;

SELECT * FROM clothes;

UPDATE clothes SET price=10 WHERE clothes.id=1;
UPDATE clothes SET price=20 WHERE clothes.id=2;
UPDATE clothes SET price=30 WHERE clothes.id=3;

SELECT * FROM clothes;

INSERT INTO clothes(type,design,price) VALUES ("hat","sombrero",40);

SELECT * FROM clothes;