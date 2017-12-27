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
