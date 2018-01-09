-- Who checked out the book 'The Hobbit’?

SELECT member.name
FROM member, checkout_item, book
WHERE
member.id = checkout_item.member_id AND
checkout_item.book_id = book.id AND
book.title = 'The Hobbit';

-- Answer: Anand Beck


-- How many people have not checked out anything?

SELECT COUNT(member.name) 
FROM member
WHERE
member.id NOT IN (SELECT checkout_item.member_id FROM checkout_item);

-- Answer: 37

-- What books and movies aren't checked out?

SELECT book.title FROM book 
WHERE book.id NOT IN (SELECT checkout_item.book_id FROM checkout_item WHERE checkout_item.book_id)
UNION
SELECT movie.title FROM movie
WHERE 
movie.id NOT IN (SELECT checkout_item.movie_id FROM checkout_item WHERE checkout_item.movie_id);

-- Answer: 
-- 1984
-- Catcher in the Rye
-- Crouching Tiger, Hidden Dragon
-- Domain Driven Design
-- Fellowship of the Ring
-- Lawrence of Arabia
-- Office Space
-- Thin Red Line
-- To Kill a Mockingbird
-- Tom Sawyer

-- Add the book 'The Pragmatic Programmer', and add yourself as a member. Check out 'The Pragmatic Programmer'. Use your query from question 1 to verify that you have checked it out. Also, provide the SQL used to update the database.


INSERT INTO book (id, title) VALUES (100, 'The Pragmatic Programmer');
INSERT INTO member (id, name) VALUES (100,'Shlok');
INSERT INTO checkout_item(member_id,book_id,movie_id) VALUES (100,100,NULL);

SELECT member.name
FROM member, checkout_item, book
WHERE
member.id = checkout_item.member_id AND
checkout_item.book_id = book.id AND
book.title = 'The Pragmatic Programmer';

-- Answer: 

-- Shlok

-- Who has checked out more that 1 item? 
-- Tip: Research the GROUP BY syntax.


SELECT member.name
FROM member,checkout_item
WHERE member.id = checkout_item.member_id
GROUP BY checkout_item.member_id
HAVING COUNT(checkout_item.member_id)>1;

-- Answer: 

-- Anand Beck
-- Frank Smith





