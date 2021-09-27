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
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('The Mysterious Affair at Styles', 'novel', 'https://images-na.ssl-images-amazon.com/images/I/918TvCMQO4L.jpg', 2, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Death on the Nile', 'novel', 'https://prodimage.images-bn.com/pimages/9780062990006_p0_v1_s550x406.jpg', 2, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('O Alquimista', 'novel', 'https://m.media-amazon.com/images/I/51qMh6gwJcL.jpg', 3, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Onze minutos', 'novel', 'https://m.media-amazon.com/images/I/51yHegF3h4L.jpg', 3, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Veronika decide morrer', 'novel', 'https://m.media-amazon.com/images/I/51VZ8Y2BmpL.jpg', 3, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('The Pillars of the Earth', 'novel', 'https://m.media-amazon.com/images/I/51O+bXad7oL.jpg', 4, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Fall of Giants', 'novel', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/ec/Fall_of_Giants.jpg/200px-Fall_of_Giants.jpg', 4, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('The evening and the morning', 'novel', 'https://images-na.ssl-images-amazon.com/images/I/91lqmYeSxwL.jpg', 4, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('A Time to Kill', 'novel', 'https://assets.thalia.media/img/artikel/a3cbdf6b90edba597de0de56a16c914d58ed56b2-00-03.jpeg', 5, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('A time for mercy', 'Thriller', 'https://images-na.ssl-images-amazon.com/images/I/913YS-xyYBL.jpg', 5, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('The Firm', 'Mystery', 'https://images-na.ssl-images-amazon.com/images/I/51GWQ06AQCL.jpg', 5, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('It', 'horror', 'https://images.wired.it/wp-content/uploads/2017/10/18134513/1508319907_Schermata-2017-10-18-alle-11.44.55.png', 6, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('The Stand', 'novel', 'https://images-na.ssl-images-amazon.com/images/I/81c8No6mSPL.jpg', 6, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('The Shining', 'horror', 'https://images-na.ssl-images-amazon.com/images/I/619OiTawH0L.jpg', 6, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Norwegian Wood', 'novel', 'https://images-na.ssl-images-amazon.com/images/I/41OVhGrdcSL._SX322_BO1,204,203,200_.jpg', 7, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('1Q84', 'fantasy', 'https://images-na.ssl-images-amazon.com/images/I/71hhB1Rwk4L.jpg', 7, 50, 2)
INSERT INTO public.books(title, category, cover, author_id, read_time_unit, read_time_value) VALUES('Kafka on the Shore', 'novel', 'https://assets.thalia.media/img/artikel/bf34918eefe2cdd2e210663cd014ae1e85d09d70-00-00.jpeg', 7, 50, 2)


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