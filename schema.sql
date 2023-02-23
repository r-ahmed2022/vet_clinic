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
	primary key(id)
);  

select * from  species


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

