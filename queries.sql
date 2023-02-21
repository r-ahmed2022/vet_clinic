/*Queries that provide answers to the questions from all projects.*/

select * from table where Name like '%mon'

select name from animals where extract(year from date_of_birth) between '2016' and '2019'

select name from animals where neutered = true and escape_attempts < 3

select date_of_birth from animals where name = 'Agumon' or name ='Pikachu'

select name, escape_attempts from animals where weight_kg > 10.5

select * from animals where neutered = true

select * from animals where name not like '%Gabumon'

select * from animals where weight_kg between  10.4 and 17.3

#BEGIN;
BEGIN
# UPDATE ANIMALS SET SPECIES = 'UNSPECIFIED' WHERE SPECIES IS NULL;
UPDATE 11
# select * from animals
#rollback;
ROLLBACK
# update animals set species = 'digimon' where name like '%mon';
UPDATE 6
# select * from animals
# update animals set species = 'pokemon' where species is null;
UPDATE 4
# select * from animals
COMMIT;
# select * from animals
# BEGIN;
# DELETE FROM ANIMALS;
DELETE 10
# ROLLBACK;
# delete from animals where date_of_birth > '2022-01-01';
DELETE 1
# select * from animals
# BEGIN;
# SAVEPOINT DEL_ANIMAL_JAN22;
SAVEPOINT
# update animals set weight_kg = weight_kg * -1;
UPDATE 10
# rollback to DEL_ANIMAL_JAN22;
ROLLBACK
# update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
UPDATE 4
# commit;
COMMIT

select count(*) as total_animals from animals 

select count(*) as not_escaped from animals where escape_attempts = 0 

select avg(weight_kg) as Average_weight from animals 

select neutered, max(escape_attempts) as max_escapes from animals group by neutered
select species, max(weight_kg), min(weight_kg) from animals group by species

select species, avg(escape_attempts) as average_attempts from animals
where extract(year from date_of_birth) between '1990' and '2000' group by species 