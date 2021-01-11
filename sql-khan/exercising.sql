CREATE SCHEMA exercise;
CREATE TABLE exercise_logs(
	id INTEGER AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER,
    calories INTEGER,
    heart_rate INTEGER, PRIMARY KEY(id));
    
INSERT INTO exercise_logs(type,minutes,calories,heart_rate) VALUES 
	("biking",30,100,110),
    ("biking",10,30,105),
    ("dancing",15,200,120),
    ("tree climbing",30,70,90),
    ("tree climbing",25,72,80),
    ("rowing",30,70,90),
    ("hiking",60,80,85);
    
SELECT * FROM exercise_logs WHERE type = "biking" OR type = "hiking" OR type = "tree climbing" OR type = "rowing";

SELECT * FROM exercise_logs WHERE type NOT IN ("biking", "hiking","tree climbing","rowing");

/* SELECT * FROM exercise_logs WHERE calories > 50 AND minutes < 30 ORDER BY calories;

SELECT * FROM exercise_logs WHERE calories > 50 OR heart_rate > 100 ORDER BY calories; */

CREATE TABLE drs_favorites(
	id INTEGER AUTO_INCREMENT,
    type TEXT,
    reason TEXT,
    PRIMARY KEY(id));

INSERT INTO drs_favorites(type, reason) VALUES ("biking", "Improves endurance and flexibility.");
INSERT INTO drs_favorites(type, reason) VALUES ("hiking", "Increases cardiovascular health.");

SELECT * FROM exercise_logs WHERE type IN (SELECT type FROM drs_favorites);

SELECT * FROM exercise_logs WHERE type IN (SELECT type FROM drs_favorites WHERE reason LIKE "%cardio%");
