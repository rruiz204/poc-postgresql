CREATE TABLE library.authors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  website VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT true
);