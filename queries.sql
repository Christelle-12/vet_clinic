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
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG ( weight_kg) FROM animals;
SELECT MAX(escape_attempts)
SELECT species, MIN(weight_kg),  MAX (weight_kg)
SELECT species,
AVG (escape_attempts) 
FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species ;
/*********/
