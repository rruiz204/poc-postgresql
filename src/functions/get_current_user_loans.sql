CREATE OR REPLACE FUNCTION library.get_current_user_loans(p_user_id INT)
RETURNS INT AS $$
DECLARE
  v_total_loans INT;
BEGIN
  SELECT COUNT(*)
  INTO v_total_loans
  FROM library.loans
  WHERE user_id = p_user_id AND return_date IS NULL;

  RETURN v_total_loans;
END;
$$ LANGUAGE plpgsql;