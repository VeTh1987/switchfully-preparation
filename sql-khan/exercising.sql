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
    ("dancing", 15, 165, 120),
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

SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type HAVING total_calories > 132;

SELECT type, AVG(calories) AS avg_calories FROM exercise_logs GROUP BY type HAVING avg_calories > 70;

SELECT type FROM exercise_logs GROUP BY type HAVING COUNT(*) > 1;

SELECT COUNT(*) FROM exercise_logs WHERE heart_rate > 220 -30;

SELECT COUNT(*) FROM exercise_logs WHERE heart_rate >= ROUND(0.50* (220-30)) AND heart_rate <= ROUND(0.9*(220-30));

SELECT type, heart_rate,
		CASE
			WHEN heart_rate > 220-30 THEN "above max"
            WHEN heart_rate > ROUND(0.90 * (220-30)) THEN "above target"
            WHEN heart_rate > ROUND(0.50 * (220-30)) THEN "within target"
            ELSE "below target"
		END as "hr_zone"
FROM exercise_logs;

SELECT COUNT(*), 
		CASE
			WHEN heart_rate > 220-30 THEN "above max"
            WHEN heart_rate > ROUND(0.90 * (220-30)) THEN "above target"
            WHEN heart_rate > ROUND(0.50 * (220-30)) THEN "within target"
            ELSE "below target"
		END as "hr_zone"
FROM exercise_logs
GROUP BY hr_zone;
