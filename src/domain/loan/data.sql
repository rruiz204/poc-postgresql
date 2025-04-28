INSERT INTO library.loan (
  loan_date, 
  real_return_date, 
  expected_return_date, 
  loan_state, 
  user_id, 
  book_id
) VALUES
('2024-01-15', '2024-01-28', '2024-01-29', 'returned_on_time', 1, 3),
('2024-02-10', '2024-02-25', '2024-02-24', 'returned_late', 2, 7),
('2024-03-05', '2024-03-20', '2024-03-20', 'returned_on_time', 3, 1);