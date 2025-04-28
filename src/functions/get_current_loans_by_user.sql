CREATE OR REPLACE FUNCTION library.get_current_loans_by_user(user INTEGER)
RETURNS INTEGER AS $$
DECLARE
  total_loans INTEGER := 0
BEGIN
  SELECT COUNT(*)
  INTO total_loans
  FROM library.loan
  WHERE user_id = user
  AND real_return_date >= CURRENT_DATE;

  RETURN total_loans;
END;
$$ LANGUAGE plpgsql;