/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
  id    INT,
  name VARCHAR(250),
  date_of_birth   DATE,
  escape_attempts   INT,
  neutered boolean,
  weight_kg decimal,
  PRIMARY KEY(id) 
);

 alter table animals add column species varchar(40)

 create table owners(
	id serial,
	full_name varchar(40),
	age int,
	primary key(id)
);

select * from owners

create table species(
	id serial,
	full_name varchar(40),
	age int,
	primary key(id)
);  

CREATE SEQUENCE IF NOT EXISTS animals_autoincr;

SELECT SETVAL('animals_autoincr', (
  SELECT max(id) FROM animals)
);

ALTER TABLE animals
ALTER COLUMN id
SET DEFAULT nextval('animals_autoincr'::regclass);

ALTER SEQUENCE animals_autoincr
OWNED BY animals.id;

alter table animals drop column species

select * from animals

alter table animals add column species_id int

select * from species
ALTER TABLE animals
ADD CONSTRAINT fk_key 
FOREIGN KEY (species_id) 
REFERENCES species (id);

alter table animals add column owner_id int

ALTER TABLE animals
ADD CONSTRAINT fk_key1 
FOREIGN KEY (owner_id) 
REFERENCES owners (id);

select name from animals inner join owners on animals.owner_id = owners.id where full_name = 'Melody Pond';

select animals.name from animals INNER JOIN species on animals.species_id=species.id where species.name='Pokemon';

select animals.name, owners.full_name from animals right JOIN owners on animals.owner_id=owners.id;

select species.name, count(animals.name) as numbers from animals inner JOIN species on animals.species_id=species.id group by species.name;

 select animals.name from animals inner join owners on animals.owner_id=owners.id where owners.full_name = 'Jennifer Orwell';

 select animals.name from animals inner join owners on animals.owner_id=owners.id where owners.full_name = 'Dean Winchester' and animals.escape_attempts = 0;
 select full_name, count(full_name) from animals inner join owners on animals.owner_id=owners.id group by full_name;