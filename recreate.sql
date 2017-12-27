/* Combine all of ex2.sql through ex7.sql into one file and redo the above script so you just run this one new file to recreate the database. */

DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;


CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    pet_id INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER,
    person_id INTEGER,
    FOREIGN KEY(person_id) REFERENCES person(id)    
);


/* this is redundant so I can do exercise 4. This table should not be needed because pet already references person_id through a foreign key*/
CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);


INSERT INTO person (id, first_name, last_name, age) VALUES (0, 'Zed', 'Shaw', 37);
INSERT INTO person (id, first_name, last_name, age) VALUES (1, 'Shlok', 'Amin', 23);
INSERT INTO pet (id, name, breed, age, dead, person_id)
    VALUES (0, 'Fluffy', 'Unicorn', 1000, 0, 0);
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1, 0);
INSERT INTO pet (id, name, breed, age, dead, person_id)
    VALUES (2, 'Mittens', 'cat', 12, 0, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet (person_id, pet_id) VALUES (0, 1);
INSERT INTO person_pet (person_id, pet_id) VALUES (1, 2);


/* make sure there’s dead pets */
SELECT name, age FROM pet WHERE dead = 1;

/* aww poor robot */
DELETE FROM pet WHERE dead = 1;

/* make sure the robot is gone */
SELECT * FROM pet;

/* let’s resurrect the robot */
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0, 0);

/* the robot LIVES! */
SELECT * FROM pet;

/* Add onto the script to delete other pets and insert them again with new values. Remember that this is not how you normally update records and is only for the exercise.*/
SELECT name FROM pet WHERE name = 'Fluffy';
DELETE FROM pet WHERE name = 'Fluffy';
INSERT INTO pet (id, name, breed, age, dead, person_id)
    VALUES (0, 'Fluffy', 'Unicorn', 300, 0, 0);
SELECT * FROM pet;

SELECT name FROM pet WHERE name = 'Mittens';
DELETE FROM pet WHERE name = 'Mittens';
INSERT INTO pet (id, name, breed, age, dead, person_id)
    VALUES (2, 'Mittens', 'cat', 3, 0, 1);
SELECT * FROM pet;





