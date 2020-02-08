DELETE FROM message;

INSERT INTO message (id, text, tag, user_id) VALUES
  (1, 'first', 'my-tag', 1),
  (2, 'second', 'more', 1),
  (3, 'third', 'new-one', 1),
  (4, 'fourth', 'another', 1);

ALTER TABLE message AUTO_INCREMENT 10;