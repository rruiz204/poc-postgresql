CREATE TABLE library.editorials (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  website VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT true
);