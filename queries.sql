/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_in_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name NOT IN ('Gabumon');
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


update animals set species = name where name like '%mon%'; 
update animals set species = 'pokemon' where species is null;

Begin transaction;
delete from animals where date_of_birth > '2022-1-1';
savepoint to one;
update animals set weight_in_kg = weight_in_kg * -1;
rollback task_one
update animals set  weight_in_kg = weight_in_kg * 1 where weight_in_kg <0;
commit transaction 


select count (name) from animals;
select * from animals where escape_attempts =0; 
select avg(weight_in_kg) from animals;
select name min(weight_in_kg) and max(weight_in_kg) from animals group by name;
select neutered, max(escape_attempts) from animals group by neutered;
select name, avg(escape_attempts) from animals where date_of_birth BETWEEN '1990-1-1' AND '2000-12-31' group by name;


alter table animals drop species;

SELECT * FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE full_name = 'Melody Pond';
SELECT * FROM animals INNER JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT * FROM owners FULL OUTER JOIN animals ON owners.id = animals.owner_id;
SELECT species.name, COUNT(*) FROM animals INNER JOIN species ON animals.species_id = species.id GROUP BY species.name;

SELECT animals.name, full_name, species.name FROM animals
INNER JOIN owners
ON animals.owner_id = owners.id
INNER JOIN species
ON animals.species_id = species.id
WHERE full_name = 'Jennifer Orwell'
AND species.name = 'Digimon';

SELECT * FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE full_name = 'Dean Winchester' AND escape_attempts = 0;

SELECT full_name, COUNT(owner_id) FROM owners 
INNER JOIN animals 
ON owners.id = animals.owner_id
GROUP BY full_name
ORDER BY COUNT(owner_id) DESC
LIMIT 1;