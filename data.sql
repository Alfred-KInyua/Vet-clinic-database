/* Populate database with sample data. */

insert into animals (name, date_of_birth, escape_attempts, neutered, weight_in_kg)values('Agumon', '2-3-2020', 0, true, 10.23);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_in_kg)values('Gabumon', '11-5-2018', 2, true, 8);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_in_kg)values('Pikachu', '1-7-2021', 1, false, 15.04);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_in_kg)values('Devimon', '5-12-2017', 5, true, 11);;







insert into owners  (full_name,age)values('Sam Smith ',34);
insert into owners  (full_name,age)values('Jennifer Orwell',19);
insert into owners  (full_name,age)values('Bob',45);
insert into owners  (full_name,age)values('Melody Pond',77);
insert into owners  (full_name,age)values('Dean Winchester',14);
insert into owners  (full_name,age)values('Jodie Whittaker',38);

insert into species (name) values('Pokemon');
insert into species (name) values('Digimon');

insert into animals (species_id) values(1);
insert into animals (species_id) values(2);

insert into owners(owner_id)values(1);
insert into owners(owner_id)values(2);
insert into owners(owner_id)values(3);
insert into owners(owner_id)values(4);
insert into owners(owner_id)values(5);
insert into owners(owner_id)values(6);


update animals SET owner_id = 1 WHERE name = 'Agumon';
update animals SET owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu');
update animals SET owner_id = 3 WHERE name IN ('Devimon', 'Plantmon');
update animals SET owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
update animals SET owner_id = 5 WHERE name IN ('Angemon', 'Boarmon');

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

insert into specializations(vet_id, species_id) values(1, 1);
insert into specializations(vet_id, species_id) values(3, 2);
insert into specializations(vet_id, species_id) values(3, 1);
insert into specializations(vet_id, species_id) values(4, 2);

insert into visits(vet_id, animal_id, date_of_visit) values(1, 1, '2020-05-24');
insert into  visits(vet_id, animal_id, date_of_visit) values(3, 1, '2020-07-22');
insert into visits(vet_id, animal_id, date_of_visit) values(4, 2, '2021-02-02');
insert into visits(vet_id, animal_id, date_of_visit) values(2, 3, '2020-01-05');
insert into visits(vet_id, animal_id, date_of_visit) values(2, 3, '2020-03-08');
insert into  visits(vet_id, animal_id, date_of_visit) values(2, 3, '2020-05-14');
insert into  visits(vet_id, animal_id, date_of_visit) values(3, 4, '2021-05-04');
insert into  visits(vet_id, animal_id, date_of_visit) values(4, 5, '2021-02-24');
insert into visits(vet_id, animal_id, date_of_visit) values(2, 6, '2019-12-21');
insert into  visits(vet_id, animal_id, date_of_visit) values(1, 6, '2020-08-10');
insert into visits(vet_id, animal_id, date_of_visit) values(2, 6, '2021-04-07');
insert into  visits(vet_id, animal_id, date_of_visit) values(3, 7, '2019-09-29');
insert into visits(vet_id, animal_id, date_of_visit) values(4, 8, '2020-10-03');
insert into  visits(vet_id, animal_id, date_of_visit) values(4, 8, '2020-11-04');
insert into  visits(vet_id, animal_id, date_of_visit) values(2, 9, '2019-01-24');
insert into  visits(vet_id, animal_id, date_of_visit) values(2, 9, '2019-05-15');
insert into  visits(vet_id, animal_id, date_of_visit) values(2, 9, '2020-02-27');
insert into  visits(vet_id, animal_id, date_of_visit) values(2, 9, '2020-08-03');
insert into  visits(vet_id, animal_id, date_of_visit) values(3, 10, '2020-05-24');
insert into visits(vet_id, animal_id, date_of_visit) values(1, 10, '2021-01-11');
