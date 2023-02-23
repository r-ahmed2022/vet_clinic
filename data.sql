/* Populate database with sample data. */

insert into animals (id, name, date_of_birth, escape_attempts ,  neutered, weight_kg )
values (1, 'Agumon', '2020-02-03', 0, true, 10.23)

insert into animals (id, name, date_of_birth, escape_attempts ,  neutered, weight_kg )
values (2,  'Gabumon', '2018-11-15', 2, true, 8) 

insert into animals (id, name, date_of_birth, escape_attempts ,  neutered, weight_kg )
values (3,  'Pikachu', '2021-01-07', 1, false, 15.0) 

insert into animals (id, name, date_of_birth, escape_attempts ,  neutered, weight_kg )
values (4,  'Devimon', '2017-06-12', 5, true, 11) 

insert into animals (id, name, date_of_birth, escape_attempts ,  neutered, weight_kg )
values 
(5, 'Charmander', '2020-02-08', 0, false, -11)
(6, 'Plantmon', '2021-11-15', 2, true, -5.7)
(7, 'Squirtle', '1993-04-02', 3, true, -12.13) , 
(8, 'Angemon', '2005-06-12', 1, true, -45) ,
(9, 'Boarmon', '2005--07-07', 7, true, 20.4) ,
(10, 'Blossom', '1998-10-13', 3, true, 17) ,
(11, 'Ditto', '2022-05-14', 4, true, 22)


insert into owners (full_name, age)
values ('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38)

select * from owners

insert into species (name)
values ('Pokemon'),
('Digimon')

select * from species

BEGIN;
update animals set species_id = 1 where name like '%mon';
UPDATE 6
SELECT * FROM ANIMALS

update animals set species_id = 2 where name not like '%mon';
UPDATE 4
SELECT * FROM ANIMALS

update animals set owner_id = 1 where name = 'Agumon';
UPDATE 1
SELECT * FROM ANIMALS;

update animals set owner_id = 2 where name = 'Pikachu' OR NAME = 'Gabuman';
UPDATE 2
update animals set owner_id = 3 where name = 'Devimon' OR NAME = 'Plantmon';
UPDATE 2
select * from animals

update animals set owner_id = 6 where name = 'Charmander' OR NAME = 'Squirtle' OR name = 'Blossom';
UPDATE 3
select * from animals

UPDATE 2
update animals set owner_id = 4 where name = 'Angemon' OR NAME = 'Boarmon';
select * from animals





