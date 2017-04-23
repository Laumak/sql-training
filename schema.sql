CREATE TABLE cities (
  `id` INTEGER PRIMARY KEY,
  `name` VARCHAR(100)
);

INSERT INTO cities
  (`id`, `name`)
VALUES
  (1, "Espoo"),
  (2, "Helsinki"),
  (3, "Tampere")
;

CREATE TABLE people (
  `id` INTEGER PRIMARY KEY,
  `name` varchar(100),
  `age` INTEGER,
  `city_id` INTEGER,
  CONSTRAINT FOREIGN KEY (city_id) REFERENCES cities (id)
);

INSERT INTO people
  (`id`, `name`, `age`, `city_id`)
VALUES
  (1, "Lauri", NULL, 1),
  (2, "Mariel", 22, 1),
  (3, "Keimo", 52, 2),
  (4, "Keimo", 12, 3),
  (5, "Aada", 6, 3),
  (6, "Tarja", 38, 2)
;
