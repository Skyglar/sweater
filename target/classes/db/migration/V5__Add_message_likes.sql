CREATE TABLE message_likes (
  user_id BIGINT NOT NULL,
  message_id BIGINT NOT NULL,
  PRIMARY KEY (user_id, message_id),
  CONSTRAINT FOREIGN KEY user_id (user_id) REFERENCES user(id),
  CONSTRAINT FOREIGN KEY message_id (message_id) REFERENCES message(id)
);