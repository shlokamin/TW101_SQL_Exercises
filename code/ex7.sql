/* Combine all of ex2.sql through ex7.sql into one file and redo the above script so you just run this one new file to recreate the database. */

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