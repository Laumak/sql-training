SELECT p.name, p.age
  FROM people p
    WHERE p.age IS NOT null
    ORDER BY p.age;

SELECT p.name, p.age
  FROM people p
    ORDER BY p.name;
