CREATE OR REPLACE PROCEDURE library.return_book(
  p_loan_id INT,
  OUT p_message VARCHAR(255)
) LANGUAGE plpgsql AS $$
DECLARE
  v_loan_record RECORD;
BEGIN
  SELECT id, book_id INTO v_loan_record
  FROM library.loans
  WHERE id = p_loan_id AND state_id = (SELECT id FROM library.loan_states WHERE name = 'Pendiente')
  FOR UPDATE;

  IF NOT FOUND THEN
    IF EXISTS (SELECT 1 FROM library.loans WHERE id = p_loan_id) THEN
      p_message := 'Error: Loan already returned or not pending';
    ELSE
      p_message := 'Error: Loan not found';
    END IF;
    RETURN;
  END IF;

  BEGIN
    UPDATE library.loans
    SET
      return_date = CURRENT_DATE,
      state_id = (SELECT id FROM library.loan_states WHERE name = 'Devuelto')
    WHERE id = v_loan_record.id;

    UPDATE library.books
    SET available_amount = available_amount + 1
    WHERE id = v_loan_record.book_id;

    p_message := 'Return successful for loan ID: ' || p_loan_id;
  END;
END;
$$;