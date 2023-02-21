/*Queries that provide answers to the questions from all projects.*/

select * from table where Name like '%mon'

select name from animals where extract(year from date_of_birth) between '2016' and '2019'

select name from animals where neutered = true and escape_attempts < 3

select date_of_birth from animals where name = 'Agumon' or name ='Pikachu'

select name, escape_attempts from animals where weight_kg > 10.5

select * from animals where neutered = true

select * from animals where name not like '%Gabumon'

select * from animals where weight_kg between  10.4 and 17.3

vetclinic=# BEGIN
vetclinic-# ;
BEGIN
vetclinic=*# UPDATE ANIMALS SET SPECIES = 'UNSPECIFIED' WHERE SPECIES IS NULL
vetclinic-*# ;
UPDATE 11
vetclinic=*# rollback;
ROLLBACK
vetclinic=# update animals set species = 'digimon' where name like '%mon';
UPDATE 6
vetclinic=# update animals set species = 'pokemon' where species is null;
UPDATE 5
COMMIT;
vetclinic=# BEGIN;
BEGIN
vetclinic=*# DELETE FROM ANIMALS;
DELETE 11
vetclinic=*# ROLLBACK;
ROLLBACK
vetclinic=# delete from animals where date_of_birth > '2022-01-01';
DELETE 1
vetclinic=# BEGIN;
BEGIN
vetclinic=*# SAVEPOINT DEL_ANIMAL_JAN22;
SAVEPOINT
vetclinic=*# update animals set weight_kg = weight_kg * -1;
UPDATE 10
vetclinic=*# rollback to DEL_ANIMAL_JAN22;
ROLLBACK
vetclinic=*# update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
UPDATE 0
vetclinic=*# commit;
COMMIT

select count(*) as total_animals from animals 

select count(*) as not_escaped from animals where escape_attempts = 0 

select avg(weight_kg) as Average_weight from animals 

select name, escape_attempts from animals where escape_attempts =(select max(escape_attempts) from animals);

select species, max(weight_kg), min(weight_kg) from animals group by species

select species, avg(escape_attempts) as average_attempts from animals
where extract(year from date_of_birth) between '1990' and '2000' group by species 