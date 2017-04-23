-- Cross join
SELECT p.name, c.name
  FROM people p, cities c;

-- Inner join
-- Row for each person and the city they live in.
SELECT p.name, p.age, c.name
  FROM people p INNER JOIN cities c
    ON p.city_id = c.id;
