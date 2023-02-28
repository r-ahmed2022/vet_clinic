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
UPDATE 5
# select * from animals
COMMIT;
# select * from animals
# BEGIN;
# DELETE FROM ANIMALS;
DELETE 11
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

-- joins
select name from animals inner join owners on animals.owner_id = owners.id where full_name = 'Melody Pond';

select animals.name from animals INNER JOIN species on animals.species_id=species.id where species.name='Pokemon';

select animals.name, owners.full_name from animals right JOIN owners on animals.owner_id=owners.id;

select species.name, count(animals.name) as numbers from animals inner JOIN species on animals.species_id=species.id group by species.name;

select animals.name from animals inner join owners on animals.owner_id=owners.id where owners.full_name = 'Jennifer Orwell';

select animals.name from animals inner join owners on animals.owner_id=owners.id where owners.full_name = 'Dean Winchester' and animals.escape_attempts = 0;

select full_name, count(full_name) from animals inner join owners on animals.owner_id=owners.id group by full_name;


select * from vets

select * from visits

SELECT animals.name FROM animals INNER JOIN visits ON animal_id = animals.id WHERE vet_id=1 ORDER BY visits.visit_date DESC LIMIT 1;

SELECT COUNT(*) FROM species INNER JOIN specializations ON specializations.species_id = species.id WHERE vet_id = 3;

SELECT species.name, vets.name FROM species INNER JOIN specializations ON specializations.species_id = species.id 
RIGHT JOIN vets ON specializations.vet_id = vets.id;

SELECT animals.name FROM animals INNER JOIN visits ON visits.animal_id = animals.id 
INNER JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Stephanie Mendez' AND visits.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

SELECT animals.name, COUNT(*) as total FROM animals INNER JOIN visits ON visits.animal_id = animals.id GROUP BY animals.name ORDER BY total DESC LIMIT 1;

SELECT animals.name, visits.visit_date FROM animals INNER JOIN visits ON visits.animal_id = animals.id INNER JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Maisy Smith' ORDER BY visits.visit_date ASC LIMIT 1;

SELECT animals.name as Animals_Name, Vets.name as Vets_Name, visits.visit_date FROM animals INNER JOIN visits ON visits.animal_id = animals.id INNER JOIN vets ON visits.vet_id = vets.id ORDER BY visits.visit_date DESC LIMIT 1;

SELECT COUNT(*) FROM visits WHERE vet_id = ( SELECT vets.id FROM vets left JOIN specializations ON vets.id = specializations.vet_id WHERE species_id IS NULL);

SELECT species.name, COUNT(species.name) as total FROM visits JOIN vets ON visits.vet_id = vets.id JOIN animals ON visits.animal_id = animals.id JOIN species ON animals.species_id = species.id WHERE vets.name = 'Maisy Smith'GROUP BY species.name ORDER BY total DESC LIMIT 1;


-- perfomance audit queries

SELECT COUNT(*) FROM visits where animal_id = 4;
explain analyze SELECT COUNT(*) FROM visits where animal_id = 4;
---post pefomance audit
explain analyze SELECT COUNT(*) FROM visits where animal_id = 4;


SELECT * FROM visits where vet_id = 2;
 explain analyze SELECT * FROM visits where vet_id = 2;
---post pefomance audit
 explain analyze SELECT * FROM visits where vet_id = 2;


 SELECT * FROM owners where email = 'owner_18327@mail.com';
 explain analyze SELECT * FROM owners where email = 'owner_18327@mail.com';
--post indexing
 explain analyze SELECT * FROM owners where email = 'owner_18327@mail.com';


