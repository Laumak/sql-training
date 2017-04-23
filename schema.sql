CREATE TABLE people (`id` int, `name` varchar(100), `age` int, `city_id` int);

INSERT INTO people
  (`id`, `name`, `age`, `city_id`)
VALUES
  (1, "Lauri", NULL, 1),
  (2, "Mariel", 22, 1),
  (3, "Keimo", 52, 2),
  (4, "Keimo", 12, 1),
  (5, "Aada", 6, 3),
  (6, "Tarja", 38, 2)
;

CREATE TABLE cities (`id` int, `name` varchar(100));

INSERT INTO cities
  (`id`, `name`)
VALUES
  (1, "Espoo"),
  (2, "Helsinki"),
  (3, "Tampere")
;
