documentCREATE SCHEMA updel;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name TEXT);
    
CREATE TABLE diary_logs (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );
    
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-01",
    "I had a horrible fight with OhNoesGuy and I buried my woes in 3 pounds of dark chocolate.");
    
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-02",
    "We made up and now we're best friends forever and we celebrated with a tub of ice cream.");
    
SELECT * FROM diary_logs;

UPDATE diary_logs SET content = "I had a horrible fight with OhNoesGuy" WHERE user_id=1 AND date = "2015-04-01";

DELETE FROM diary_logs WHERE id = 1;
