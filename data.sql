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


INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-07-08')

INSERT INTO specializations (species_id, vet_id) SELECT species.id, vets.id FROM species, vets where species.name = 'Pokemon' AND vets.name = 'William Tatcher';
INSERT INTO specializations (species_id, vet_id) SELECT species.id, vets.id FROM species, vets where species.name = 'Digimon' AND vets.name = 'Stephanie Mendez';
INSERT INTO specializations (species_id, vet_id) SELECT species.id, vets.id FROM species, vets where species.name = 'Pokemon' AND vets.name = 'Stephanie Mendez';
INSERT INTO specializations (species_id, vet_id) SELECT species.id, vets.id FROM species, vets where species.name = 'Digimon' AND vets.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-05-24' FROM animals, vets where animals.name = 'Agumon' AND vets.name = 'William Tatcher';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-07-22' FROM animals, vets where animals.name = 'Agumon' AND vets.name = 'Stephanie Mendez';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2021-02-02' FROM animals, vets where animals.name = 'Gabumon' AND vets.name = 'Jack Harkness';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-01-05' FROM animals, vets where animals.name = 'Pikachu' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-03-08' FROM animals, vets where animals.name = 'Pikachu' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-05-14' FROM animals, vets where animals.name = 'Pikachu' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2021-05-04' FROM animals, vets where animals.name = 'Devimon' AND vets.name = 'Stephanie Mendez';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2021-02-24' FROM animals, vets where animals.name = 'Charmander' AND vets.name = 'Jack Harkness';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2019-12-21' FROM animals, vets where animals.name = 'Plantmon' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-08-10' FROM animals, vets where animals.name = 'Plantmon' AND vets.name = 'William Tatcher';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2021-04-07' FROM animals, vets where animals.name = 'Plantmon' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2019-09-29' FROM animals, vets where animals.name = 'Squirtle' AND vets.name = 'Stephanie Mendez';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-10-03' FROM animals, vets where animals.name = 'Angemon' AND vets.name = 'Jack Harkness';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-11-04' FROM animals, vets where animals.name = 'Angemon' AND vets.name = 'Jack Harkness';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2019-01-24' FROM animals, vets where animals.name = 'Boarmon' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2019-05-15' FROM animals, vets where animals.name = 'Angemon' AND vets.name = 'Jack Harkness';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-02-27' FROM animals, vets where animals.name = 'Angemon' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-08-03' FROM animals, vets where animals.name = 'Angemon' AND vets.name = 'Maisy Smith';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2020-04-24' FROM animals, vets where animals.name = 'Blossom' AND vets.name = 'Stephanie Mendez';
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT animals.id, vets.id, '2021-01-11' FROM animals, vets where animals.name = 'Blossom' AND vets.name = 'William Tatcher';




