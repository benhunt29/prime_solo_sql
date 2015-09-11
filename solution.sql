—-Question 1
SELECT last_name,first_name FROM authors
—-Question 2
SELECT first_name,last_name FROM distinguished_authors
—-Question 3
select authors.first_name,authors.last_name from distinguished_authors RIGHT JOIN authors ON (distinguished_authors.id = authors.id) WHERE distinguished_authors.id IS NULL
—-Question 4
SELECT COUNT(*) from authors
—-Question 5
SELECT last_name,first_name from employees JOIN favorite_authors ON employees.id = favorite_authors.employee_id
—-Question 6
SELECT books.title 
FROM daily_inventory INNER JOIN editions ON 
     editions.isbn=daily_inventory.isbn INNER JOIN 
     books ON editions.book_id=books.id WHERE daily_inventory.is_stocked
—-Question 7
INSERT INTO authors (id, last_name, first_name) VALUES(100, 'Kundera', 'Milan');
INSERT INTO books(id, title, author_id, subject_id) VALUES(41479,'The Unbearable Lightness of Being',100,17);
INSERT INTO subjects(id,subject,location) VALUES(17,'Philosophical Fiction','Academic Rd');
—-Question 8
SELECT first_name,last_name
FROM stock INNER JOIN editions ON 
     editions.isbn=stock.isbn INNER JOIN 
     books ON editions.book_id=books.id INNER JOIN
     authors ON books.author_id = authors.id WHERE stock.stock = 0
—-Question 9
SELECT books.title
FROM stock INNER JOIN editions ON 
     editions.isbn=stock.isbn INNER JOIN 
     books ON editions.book_id=books.id INNER JOIN
     authors ON books.author_id = authors.id ORDER BY stock.stock DESC LIMIT 1
     


