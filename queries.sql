/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true  AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ( 'Agumon', 'Pikachu');
SELECT name,escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3 ;
/********transactions***********/
 BEGIN;
UPDATE animals
SET species = 'unspecified';
UPDATE 11
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
COMMIT;
BEGIN
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon' ;
UPDATE 6
SELECT * FROM animals;
UPDATE animals
SET species = 'pokemon'
WHERE species = '';
UPDATE 5
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;
BEGIN;
DELETE
FROM animals;
SELECT * FROM animals;
ROLLBACK;
 SELECT * FROM animals;
BEGIN;
DELETE 
FROM animals
WHERE date_of_birth > '2022-01-01';
SAVEPOINT afterdelete;
UPDATE animals
SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT afterdelete;
ROLLBACK
SELECT * FROM animals;
UPDATE animals
SET weight_kg =  weight_kg * -1
WHERE weight_kg < 0 ;
UPDATE 4
SELECT * FROM animals;
COMMIT;
/************Aggregation*****************/
SELECT COUNT(*)  FROM animals;
SELECT neutered, 
MAX ( escape_attempts )
FROM animals
GROUP BY neutered ;
SELECT AVG ( weight_kg) FROM animals;
SELECT MAX(escape_attempts)
SELECT species, MIN(weight_kg),  MAX (weight_kg)
FROM animals
GROUP BY (species);
SELECT species,
AVG (escape_attempts) 
FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species ;
/*******************queries using JOIN*****************************/
SELECT animals.name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Melody Pond';
    name    
------------
 Blossom
 Squirtle
 Charmander
(3 rows)
SELECT animals.name
FROM animals
INNER JOIN species ON animals.species_id = species.id
WHERE species.name = 'Pokemon';
    name    
------------
 Pikachu
 Blossom
 Squirtle
 Charmander
(4 rows)

SELECT owners.full_name, animals.name AS animal_name
FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id;
    full_name    | animal_name 
-----------------+-------------
 Sam Smith       | Agumon
 Jennifer Orwell | Gabumon
 Bob             | Devimon
 Bob             | Plantmon
 Dean Winchester | Boarmon
 Dean Winchester | Angemon
 Jennifer Orwell | Pikachu
 Melody Pond     | Blossom
 Melody Pond     | Squirtle
 Melody Pond     | Charmander
 Jodie Whittaker | 
(11 rows)

SELECT species.name AS species_name, COUNT(*) AS animal_count
FROM animals
JOIN species ON animals.species_id = species.id
GROUP BY species.name;
 species_name | animal_count 
--------------+--------------
 Pokemon      |            4
 Digimon      |            6
(2 rows)

SELECT animals.name AS digimon_name
FROM animals
JOIN owners ON animals.owner_id = owners.id
JOIN species ON animals.species_id = species.id
WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';
 digimon_name 
--------------
 Gabumon
(1 row)

SELECT animals.name AS animal_name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;
 animal_name 
-------------
(0 rows)

SELECT owners.full_name, COUNT(animals.id) AS animal_count
FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id
GROUP BY owners.id, owners.full_name
ORDER BY animal_count DESC
LIMIT 1;
  full_name  | animal_count 
-------------+--------------
 Melody Pond |            3
(1 row)

