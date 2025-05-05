CREATE TABLE library.books (
  id SERIAL PRIMARY KEY,
  isbn VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  total_amount SMALLINT NOT NULL,
  available_amount SMALLINT NOT NULL,
  author_id INT REFERENCES library.authors (id),
  editorial_id INT REFERENCES library.editorials (id)
);