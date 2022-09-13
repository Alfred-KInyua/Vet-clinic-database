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
