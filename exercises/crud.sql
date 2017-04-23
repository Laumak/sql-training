-- Insert
INSERT INTO people
  (`id`, `name`, `age`, `city_id`)
VALUES
  (7, "Lauri", 72, 3);

-- Update
UPDATE people p
  SET p.city_id = 2
    WHERE p.name = "Lauri";

-- Delete
DELETE from person p
  WHERE p.name = "Lauri";
