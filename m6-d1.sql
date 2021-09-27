 DROP TABLE IF EXISTS public.authors;

CREATE TABLE 
	IF NOT EXISTS
		authors(
			authors_id SERIAL PRIMARY KEY,
			name VARCHAR(255) NOT NULL,
			last_name VARCHAR (255) NOT NULL,
			birth_year INTEGER NOT NULL,
			country VARCHAR NOT NULL
	);
	
    INSERT INTO public.authors(
    name, 
	last_name,
	birth_year,
	country
) 
VALUES(
    'Agatha Christie',
	'Christie',
	1890,
	'US'
)

 INSERT INTO public.authors(name, last_name, birth_year, country) VALUES('Paulo', 'Coelho',1947 , 'Brasil'),
  INSERT INTO public.authors(name, last_name, birth_year, country) VALUES('Ken', 'Follett',1949 , 'UK'),
   INSERT INTO public.authors(name, last_name, birth_year, country) VALUES('John', 'Grisham',1955 , 'USA'),
    INSERT INTO public.authors(name, last_name, birth_year, country) VALUES('Stephen', 'King',1947 , 'USA'),
	 INSERT INTO public.authors(name, last_name, birth_year, country) VALUES('Haruki', 'Murakami',1949 , 'Japan'),


 DROP TABLE IF EXISTS public.books;

CREATE TABLE 
	IF NOT EXISTS
		books(
			books_id SERIAL PRIMARY KEY,
			title VARCHAR(255) NOT NULL,
			category VARCHAR (255) NOT NULL,
            cover VARCHAR (255) NOT NULL,
			author_id FOREIGN KEY,
			read_time_unit
			read_time_value
			created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
			updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
			published_at INTEGER NOT NULL
		
	);

ALTER TABLE public.books
    ADD CONSTRAINT books FOREIGN KEY (author_id)
	REFERENCES public.authors (authors_id) MATCH SIMPLE

INSERT INTO public.books(title, category, cover, author_id, published_at) VALUES('The Da Vinci Code', 'Mystery/Thriller', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1361293878l/4248.jpg', 1, 2003 ),
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Origin', 'novel', 'https://images-na.ssl-images-amazon.com/images/I/91mOPxKPdML.jpg', 1, 30, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Inferno', 'novel', 'https://bilder.buecher.de/produkte/40/40545/40545396z.jpg', 1, 30, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Murder on the Orient Express', 'novel', 'https://upload.wikimedia.org/wikipedia/en/c/c0/Murder_on_the_Orient_Express_First_Edition_Cover_1934.jpg', 2, 40, 2)

SELECT * FROM books;
SELECT * FROM books WHERE category='novel';
SELECT * FROM books WHERE title LIKE 'T%';
SELECT * FROM books WHERE title LIKE '%the%';

UPDATE authors SET age=( 2021 - birth_year ) RETURNING *;
SELECT * FROM authors WHERE age < 60;
SELECT * FROM authors WHERE age > 40;
SELECT "category", "published_at" FROM books;
SELECT count(*) as total FROM books;
SELECT "age" FROM authors ORDER BY "age" ASC;
SELECT * FROM authors ORDER BY "age" ASC;
SELECT "birth_year" FROM authors ORDER BY "age" DESC;


DELETE FROM authors WHERE country='Italy';
DELETE FROM books WHERE category='horror';
DELETE FROM authors WHERE  last_name='H%';