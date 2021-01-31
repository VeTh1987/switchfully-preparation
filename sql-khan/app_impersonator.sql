CREATE SCHEMA app;

CREATE TABLE app_info(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
post TEXT);

INSERT INTO app_info(post) VALUES("do the dishes");
INSERT INTO app_info(post) VALUES("do the laundry");
INSERT INTO app_info(post) VALUES("clean");

SELECT * FROM app_info;

UPDATE app_info SET post="vacuum cleaning" WHERE id = 3; 

SELECT * FROM app_info;

DELETE FROM app_info WHERE id = 3;

SELECT * FROM app_info;
