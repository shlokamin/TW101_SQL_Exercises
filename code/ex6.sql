SELECT pet.id, pet.name, pet.age, pet.dead
FROM pet, person_pet, person
WHERE
pet.id = person_pet.pet_id AND
person_pet.person_id = person.id AND
person.first_name = 'Zed';

/*Do a query that finds your pets you’ve added thus far.*/
SELECT pet.id, pet.name, pet.age, pet.dead
FROM pet, person_pet, person
WHERE
pet.id = person_pet.pet_id AND
person_pet.person_id = person.id AND
person.first_name = 'Shlok';

/* Change the queries to use your person.id instead of the person.name*/
SELECT pet.id, pet.name, pet.age, pet.dead
FROM pet, person_pet, person
WHERE
pet.id = person_pet.pet_id AND
person_pet.person_id = person.id AND
person.id = 1;

