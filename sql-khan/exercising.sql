CREATE SCHEMA exercise;
CREATE TABLE exercise_logs(
	id INTEGER AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER,
    calories INTEGER,
    heart_rate INTEGER, PRIMARY KEY(id));exercise_logs
    
INSERT INTO exercise_logs(type,minutes,calories,heart_rate) VALUES 
	("biking",30,100,110),
    ("biking",10,30,105),
    ("dancing",15,200,120);
    

SELECT * FROM exercise_logs WHERE calories > 50 AND minutes < 30 ORDER BY calories;

SELECT * FROM exercise_logs WHERE calories > 50 OR heart_rate > 100 ORDER BY calories;
