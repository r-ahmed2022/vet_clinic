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

create TABLE vets(
	id serial not null primary key,
	name text,
	age int,
	date_of_graduation date
)

select * from vets

create table specializations (
    ID SERIAL PRIMARY KEY,
    species_id int,
    vet_id int,
    FOREIGN KEY (species_id) REFERENCES species(id),
    FOREIGN KEY (vet_id) REFERENCES vets(id)
);

select * from  specializations

CREATE TABLE visits (
    ID SERIAL PRIMARY KEY,
    animal_id INT,
    vet_id INT,
    visit_date DATE,
    FOREIGN KEY (animal_id) REFERENCES animals(id),
    FOREIGN KEY (vet_id) REFERENCES vets(id)
);


ALTER TABLE owners ADD COLUMN email varchar(120)


CREATE INDEX animalsId_asc_visits ON visits(animal_id ASC);


CREATE INDEX owners_email_asc ON owners(email ASC);

CREATE INDEX animal_id_index ON visits(animal_id ASC);
DROP INDEX animal_id_index;
CREATE INDEX vet_id_index ON visits(animal_id, vet_id, date_of_visit ASC);
CREATE INDEX owners_email_index ON owners(email ASC);


