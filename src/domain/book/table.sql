CREATE TABLE library.book (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  total_amount SMALLINT NOT NULL,
  available_amount SMALLINT NOT NULL
);