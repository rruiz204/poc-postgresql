CREATE OR REPLACE PROCEDURE library.loan_book(
  p_user_id INT,
  p_isbn VARCHAR(255),
  OUT p_message VARCHAR(255)
) LANGUAGE plpgsql AS $$
DECLARE
  v_book_record RECORD;
  v_due_date DATE := CURRENT_DATE + INTERVAL '15 days';
BEGIN
  SELECT id INTO v_book_record
  FROM library.books
  WHERE isbn = p_isbn AND available_amount > 0
  FOR UPDATE;

  IF NOT FOUND THEN
    p_message := 'Error: Book not found or no copies available';
    RETURN;
  END IF;

  IF NOT EXISTS (SELECT 1 FROM library.users WHERE id = p_user_id) THEN
    p_message := 'Error: User not found';
    RETURN;
  END IF;

  BEGIN
    INSERT INTO library.loans (due_date, borrowed_date, user_id, book_id, state_id) VALUES
    (v_due_date, CURRENT_DATE, p_user_id, v_book_record.id, 1);

    UPDATE library.books
    SET available_amount = available_amount - 1
    WHERE id = v_book_record.id;

    p_message := 'Loan successful. Due date: ' || v_due_date;
  END;
END;
$$;