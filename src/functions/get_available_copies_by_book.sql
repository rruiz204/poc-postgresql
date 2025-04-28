CREATE OR REPLACE FUNCTION get_available_copies_by_book(book_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
  available_copies INTEGER;
BEGIN
  SELECT available_amount
  INTO available_copies
  FROM library.book
  WHERE id = book_id;

  IF NOT FOUND THEN
    RETURN 0;
  END IF;

  RETURN available_copies;
END;
$$ LANGUAGE plpgsql;