/* Database schema to keep the structure of entire database. */

 CREATE TABLE animals (
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100),
date_of_birth date,
escape_attempts INT,
neutered BOOLEAN,
weight_kg DECIMAL,
PRIMARY KEY(id)
);
ALTER TABLE animals
ADD species VARCHAR(50);
/************************************************************************/
CREATE TABLE owners (
id SERIAL PRIMARY KEY,
full_name VARCHAR(100),
age INTEGER
);
CREATE TABLE
CREATE TABLE species (
id SERIAL PRIMARY KEY,
name VARCHAR(100) 
);
CREATE TABLE
CREATE TABLE animals_backup AS SELECT * FROM animals;
SELECT 10
DROP TABLE animals;
DROP TABLE
CREATE TABLE animals (
id SERIAL PRIMARY KEY,
name VARCHAR(100),
date_of_birth DATE,
escape_attempts INT,
neutered BOOLEAN,
weight_kg DECIMAL,
species VARCHAR(100)
);
CREATE TABLE
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
SELECT id, name, date_of_birth, escape_attempts, neutered, weight_kg, species
FROM animals_backup;
INSERT 0 10
SELECT * FROM animals; 
ALTER TABLE animals
DROP  COLUMN species;
ALTER TABLE
ALTER TABLE animals
ADD species_id INT,
ADD CONSTRAINT fk_species_id
FOREIGN KEY (species_id)
REFERENCES species(id);
ALTER TABLE
ALTER TABLE animals
ADD owner_id INT,
ADD CONSTRAINT fk_owner_id
FOREIGN KEY (owner_id)
REFERENCES owners(id);
ALTER TABLE


