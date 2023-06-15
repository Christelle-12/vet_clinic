/* Populate database with sample data. */
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, true, 10.23);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', '2018-11-15', 2, true, 8);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu', '2021-01-07', 1, false, 15.04);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', '2017-05-12', 5, true, 11);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Charmander', '2020-02-08', 0, false, 11);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Plantmon', '2021-11-15', 2, true, -5.7);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Squirtle', '1993-04-02', 3, false, -12.13);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Angemon', '2005-06-12', 1, true, -45);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Boarmon', '2005-06-07', 7, true, 20.4);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Blossom', '1998-10-13', 3, true, 17);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Ditto', '2022-05-14', 4, true, 22);
UPDATE animals
SET weight_kg = -11
WHERE name = 'Charmander';
/***************************************************************/
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34);          
INSERT 0 1
INSERT INTO owners (full_name, age)
VALUES ('Jennifer Orwell', 19);
INSERT 0 1
INSERT INTO owners (full_name, age)
VALUES ('Bob', 45);
INSERT 0 1
INSERT INTO owners (full_name, age)
VALUES ('Melody Pond', 77);
INSERT 0 1
INSERT INTO owners (full_name, age)
VALUES ('Dean Winchester', 14);
INSERT 0 1
INSERT INTO owners (full_name, age)
VALUES ('Jodie Whittaker', 38);
INSERT 0 1
INSERT INTO species (name)
VALUES ('Pokemon');
INSERT 0 1
INSERT INTO species (name)
VALUES ('Digimon');
INSERT 0 1
UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';
UPDATE 6
UPDATE animals
SET species_id = 1
WHERE species_id IS NULL;
UPDATE 4
UPDATE animals
SET owner_id = 2
WHERE name IN ( 'Gabumon', 'Pikachu');
UPDATE 2
UPDATE animals
SET owner_id = 3
WHERE name IN ( 'Devimon', 'Plantmon');
UPDATE 2
UPDATE animals
SET owner_id = 3
WHERE name IN ( 'Charmander', 'Squirtle', 'Blossom');
UPDATE 3
UPDATE animals
SET owner_id = 4
WHERE name IN ( 'Charmander', 'Squirtle', 'Blossom');
UPDATE 3
UPDATE animals
SET owner_id = 5
WHERE name IN ( 'Angemon', 'Boarmon');
UPDATE 2
