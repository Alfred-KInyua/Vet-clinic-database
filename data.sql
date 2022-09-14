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