CREATE OR REPLACE FUNCTION library.calculate_loan_delay_days(p_loan_id INT)
RETURNS INT AS $$
DECLARE
  v_delay_days INT;
BEGIN
  SELECT COALESCE(GREATEST(return_date - due_date, 0), 0)
  INTO v_delay_days
  FROM library.loans
  WHERE id = p_loan_id AND return_date IS NOT NULL;

  RETURN v_delay_days;
END;
$$ LANGUAGE plpgsql;