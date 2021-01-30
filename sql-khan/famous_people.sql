CREATE SCHEMA famous;

CREATE TABLE actors (
    id INTEGER AUTO_INCREMENT PRIMARY KEY ,
    name TEXT
    );
    
INSERT INTO actors (name) VALUES ("dicaprio");
INSERT INTO actors (name) VALUES ("deniro");
INSERT INTO actors (name) VALUES ("eastwood");
INSERT INTO actors (name) VALUES ("urbanus");
    
CREATE TABLE movies (
    id INTEGER AUTO_INCREMENT PRIMARY KEY ,
    person_id INTEGER,
    name TEXT
    );    
    
INSERT INTO movies(person_id,name) VALUES (1,"Titanic");
INSERT INTO movies(person_id,name) VALUES (1,"Gangs of New York");
INSERT INTO movies(person_id,name) VALUES (2,"GoodFellas");
INSERT INTO movies(person_id,name) VALUES (2,"Raging Bull");
INSERT INTO movies(person_id,name) VALUES (3,"Gran Torino");
INSERT INTO movies(person_id,name) VALUES (4,"Hector");

SELECT actors.name, movies.name FROM actors INNER JOIN movies on actors.id = movies.person_id;