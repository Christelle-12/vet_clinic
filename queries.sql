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
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
COMMIT;
BEGIN
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon' ;
SELECT * FROM animals;
UPDATE animals
SET species = 'pokemon'
WHERE species = '';
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

SELECT animals.name
FROM animals
INNER JOIN species ON animals.species_id = species.id
WHERE species.name = 'Pokemon';

SELECT owners.full_name, animals.name AS animal_name
FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id;

SELECT species.name AS species_name, COUNT(*) AS animal_count
FROM animals
JOIN species ON animals.species_id = species.id
GROUP BY species.name;

SELECT animals.name AS digimon_name
FROM animals
JOIN owners ON animals.owner_id = owners.id
JOIN species ON animals.species_id = species.id
WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';

SELECT animals.name AS animal_name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;

SELECT owners.full_name, COUNT(animals.id) AS animal_count
FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id
GROUP BY owners.id, owners.full_name
ORDER BY animal_count DESC
LIMIT 1;

/*******************************************************************************/
SELECT animals.name
FROM animals
INNER JOIN visits ON animals.id = visits.animal_id
INNER JOIN vets ON visits.vet_id = vets.id
WHERE vets.name = 'William Tatcher'
ORDER BY visits.visit_dates DESC
LIMIT 1;

SELECT COUNT(DISTINCT animals.id) AS animal_count
FROM animals
INNER JOIN visits ON animals.id = visits.animal_id
INNER JOIN vets ON visits.vet_id = vets.id
WHERE vets.name = 'Stephanie Mendez';

SELECT vets.id, vets.name, specializations.species_id
FROM vets
LEFT JOIN specializations ON vets.id = specializations.vet_id; 

SELECT animals.name
FROM animals
INNER JOIN visits ON animals.id = visits.animal_id
INNER JOIN vets ON visits.vet_id = vets.id
WHERE visits.visit_dates >= '2020-04-01'
AND visits.visit_dates <= '2020-08-30'
AND vets.name = 'Stephanie Mendez';

SELECT animals.name, COUNT(visits.animal_id) AS visit_count
FROM animals
INNER JOIN visits ON animals.id = visits.animal_id
GROUP BY animals.id
ORDER BY visit_count DESC
LIMIT 1;

SELECT animals.name, visits.visit_dates
FROM visits
INNER JOIN vets ON visits.vet_id = vets.id
INNER JOIN animals ON visits.animal_id = animals.id
WHERE vets.name = 'Maisy Smith'
ORDER BY visits.visit_dates
LIMIT 1;

SELECT animals.name AS animal_name, vets.name AS vet_name, visits.visit_dates AS visit_date
FROM visits
INNER JOIN vets ON visits.vet_id = vets.id
INNER JOIN animals ON visits.animal_id = animals.id
ORDER BY visits.visit_dates DESC
LIMIT 1;

SELECT COUNT(*) AS num_visits
FROM visits
INNER JOIN vets ON visits.vet_id = vets.id
INNER JOIN animals ON visits.animal_id = animals.id
LEFT JOIN specializations ON vets.id = specializations.vet_id AND animals.species_id = specializations.species_id
WHERE specializations.vet_id IS NULL OR specializations.vet_id IS NOT NULL AND specializations.species_id IS NULL;

SELECT species.name AS specialty, COUNT(*) AS num_visits
FROM visits
INNER JOIN vets ON visits.vet_id = vets.id
INNER JOIN animals ON visits.animal_id = animals.id
INNER JOIN species ON animals.species_id = species.id
WHERE vets.name = 'Maisy Smith'
GROUP BY species.name
ORDER BY num_visits DESC
LIMIT 1;
