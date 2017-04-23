SELECT p.name, p.age
  FROM people p
    WHERE p.age IS null;

SELECT p.name, p.age
  FROM people p
    WHERE p.age IS NOT null;
