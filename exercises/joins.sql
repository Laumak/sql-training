-- Cross join
SELECT p.name, c.name
  FROM people p, cities c;


-- INNER JOIN - dont include if one of the values is null
-- Return a row for each person and the city they live in (if set and valid).
SELECT p.name, p.age, c.name
  FROM people p INNER JOIN cities c
    ON p.city_id = c.id;


-- OUTER JOIN - include results even with null values

-- LEFT OUTER JOIN - left values of the "ON" statement can be null
-- Return the rows which have a valid left table value
-- Return all people even without a valid "city_id"
SELECT p.name, p.age, c.name
  FROM people p
    LEFT OUTER JOIN cities c
      ON p.city_id = c.id;

-- RIGHT OUTER JOIN - right values of the "ON" statement can be null
-- Return the rows which have a valid right table value
-- Return only the people who have a valid "city_id" assigned
SELECT p.name, p.age, c.name
  FROM people p
    RIGHT OUTER JOIN cities c
      ON p.city_id = c.id;
