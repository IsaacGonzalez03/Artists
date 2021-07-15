CREATE TABLE IF NOT EXISTS artists(
  id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
  name varchar(255) comment 'Artist Full Name',
  birthYear int NOT NULL COMMENT 'Year of Birth',
  deathYear int COMMENT 'Year of Death'
) default charset utf8 comment '';
CREATE TABLE IF NOT EXISTS pieces(
  id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
  title varchar(255) comment 'Title',
  artistId int NOT NULL COMMENT 'FK: Artist',
  FOREIGN KEY(artistId) REFERENCES artists(id) ON DELETE CASCADE
) default charset utf8 comment '';
-- GET ALL
SELECT
  id,
  name,
  birthYear
FROM
  artists;
-- GET AND SORT BY DOB
SELECT
  id,
  name,
  birthYear
FROM
  artists
ORDER BY
  birthYear DESC;
-- GET SELECT QUERY BY YEAR
SELECT
  *
FROM
  artists
WHERE
  birthYear < 1480;
-- GET a is and alias when putting in name of table -- you can alias out variables -- wont work without alias
  -- p.* selects everything --
SELECT
  p.*,
  a.name as "ArtistName"
FROM
  pieces p
  JOIN artists a ON a.id = p.artistId;
-- POST - INSERT
INSERT INTO
  artists(name, birthYear, deathYear)
VALUES('Michelangelo', 1475, 1564);
INSERT INTO
  artists(name, birthYear, deathYear)
VALUES('Leonardo', 1452, 1519);
-- POST
INSERT INTO
  pieces(title, artistId)
VALUES('The Last Judgement');
-- UPDATE BY ID
UPDATE
  artists
SET
  name = 'Leo'
WHERE
  id = 2;
-- DELETING ENTIRE TABLE
  DROP TABLE IF EXISTS pieces;
-- ID DELETE
DELETE FROM
  artists
WHERE
  id = 2;
-- SPECIFIC DELETES
DELETE FROM
  artists
WHERE
  name = 'Leo'
  AND birthYear < 1900;