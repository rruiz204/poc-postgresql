CREATE OR REPLACE FUNCTION library.calculate_delay_days(loan_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
  real_return DATE;
  expected_return DATE;
  late_days INTEGER;
BEGIN
  SELECT real_return_date, expected_return_date
  INTO real_return, expected_return
  FROM library.loan
  WHERE id = loan_id;

  IF real_return > expected_return THEN
    late_days := real_return - expected_return;
  ELSE
    late_days := 0;
  END IF;

  RETURN late_days;
END;
$$ LANGUAGE plpgsql;