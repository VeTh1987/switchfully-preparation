CREATE SCHEMA altertables;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name TEXT);
    
CREATE TABLE diary_logs (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
);
    
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-02",
    "OhNoesGuy and I made up and now we're best friends forever and we celebrated with a tub of ice cream.");

ALTER TABLE diary_logs ADD emotion TEXT;

INSERT INTO diary_logs (user_id, date, content, emotion) VALUES (1, "2015-04-03",
    "We went to Disneyland!", "happy");
    
SELECT * FROM diary_logs;

/* DROP TABLE diary_logs; */