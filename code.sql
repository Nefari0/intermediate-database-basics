1

SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id WHERE il.unit_price > 0.99

2

SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

3

SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id

4

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

5

SELECT pt.track_id FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id WHERE p.name = 'Music';

6

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id WHERE pt.playlist_id = 5;

7

SELECT t.name, p.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id

8

SELECT t.name, a.title FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
<<<<<<< HEAD
WHERE g.name = 'Alternative & Punk';

-- section 2 --

1

SELECT * FROM invoice WHERE invoice_id IN 
(SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99 )

2

SELECT * FROM playlist_track
WHERE playlist_id IN ( SELECT playlist_id FROM playlist WHERE name = 'Music' );

3

SELECT name FROM track
WHERE track_id IN (SELECT track_id FROM playlist_track WHERE playlist_id = 5 );

4

SELECT * FROM track
WHERE genre_id IN ( SELECT genre_id FROM genre WHERE name = 'Comedy' );

5

SELECT * FROM track
WHERE album_id IN(SELECT album_id FROM album WHERE title =  'Fireball' );

6
SELECT * FROM track 
WHERE album_id IN (
  SELECT album_id FROM album WHERE artist_id IN (
  	SELECT artist_id FROM artist WHERE name = 'Queen'
  )
 );

--  section 3 --

1

UPDATE customer SET fax = null
WHERE fax IS NOT null;

2

UPDATE customer SET company = 'Self'
WHERE company IS null;

3

UPDATE customer SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett';

4

UPDATE customer SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

5

UPDATE tracK SET composer = 'The darkness around us'
WHERE genre_id = (
  SELECT genre_id FROM genre WHERE name = 'Metal' 
  )
AND composer IS null;

6

-- section 4 --

1

SELECT COUNT(*), g.name FROM track t
JOIN genre g ON t.genre_id = g.genre_id
GROUP BY g.name;

2

SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
GROUP BY g.name;

3

SELECT ar.name, COUNT(*)
FROM album al JOIN artist ar ON ar.artist_id = al.artist_id
GROUP BY ar.name;

-- section 5 --

1

SELECT DISTINCT composer
FROM track;

2

SELECT DISTINCT billing_postal_code
FROM invoice;

3

SELECT DISTINCT company
FROM customer;

-- section 6 --

1

DELETE FROM practice_delete
WHERE type = 'silver';

DELETE FROM practice_delete
WHERE type = 'silver';

3

DELETE FROM practice_delete
WHERE value = 150;
=======
WHERE g.name = 'Alternative & Punk';
>>>>>>> 92aa7369b5dd2073c5a98bbc8f83b6c0779b7e63
