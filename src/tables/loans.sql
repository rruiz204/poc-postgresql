CREATE TABLE library.loans (
  id SERIAL PRIMARY KEY,
  return_date DATE,
  due_date DATE NOT NULL,
  borrowed_date DATE NOT NULL,
  user_id INT REFERENCES library.users (id),
  book_id INT REFERENCES library.books (id),
  state_id INT REFERENCES library.loan_states (id)
);