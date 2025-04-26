CREATE TABLE library.loan (
  id SERIAL PRIMARY KEY,
  loan_date DATE NOT NULL,
  real_return_date DATE NOT NULL,
  expected_return_date DATE NOT NULL,
  loan_state VARCHAR(25) NOT NULL,
  user_id SERIAL REFERENCES library.user (id),
  book_id SERIAL REFERENCES library.book (id)
);