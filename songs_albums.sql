CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

/* 
 * TODO: Insert at least 4 rows of data into the songs table. You can change up the albums as well. :)
 */

INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('Inferno', 'JMSN', 2018),
    ('Samurai Champloo', 'Shiki No Uta', 2002),
    ('Kingdom Hearts', 'Utada Hikaru', 2004),
    ('Infinite', 'Slim Shady', 1999),
    ('SA-Mix', 'Blink-182', 2000);
 
INSERT INTO Songs
    (name, album_id)
VALUES
    ('So Badly', 1),
    ('Sunflowers', 2),
    ('Passion', 3),
    ('Bad Meets Evil', 4);

/* Required to get result in column format */
.headers on
.mode column


/* Queries */

SELECT * FROM Songs;

.print ''

SELECT * FROM Albums;

.print ''

/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name
 */
.print 'CHALLENGE 1'
.print ''
SELECT Songs.name FROM Songs
JOIN Albums ON album_id = Albums.id;

.print ''

/*
 * TODO: Find all albums published between 1970 and 1980.
 */

.print 'CHALLENGE 2'
.print ''
SELECT Albums.name FROM Albums
WHERE year_published > 1980 AND year_published <= 2000;

.print ''

/*
 * TODO: Find all songs on albums published between 1970 and 1980.
 * (Hint: Use a table join.)
 */
 
.print 'CHALLENGE 3'
.print ''
SELECT Songs.name FROM Songs
JOIN Albums ON album_id = Albums.id
WHERE year_published <= 2004 AND year_published >= 2002;
.print ''


/*
 * TODO: Find all songs on albums with names containing 'California'.
 * (Hint: Use a table join.)
 */
.print 'CHALLENGE 4'
.print ''
SELECT Songs.name FROM Songs
JOIN Albums ON album_id = Albums.id
WHERE Songs.name LIKE '%Bad%';
.print ''