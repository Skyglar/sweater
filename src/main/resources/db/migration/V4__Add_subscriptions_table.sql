CREATE TABLE user_subscriptions (
  channel_id BIGINT NOT NULL,
  subscriber_id BIGINT NOT NULL,
  PRIMARY KEY (channel_id, subscriber_id),
  CONSTRAINT fk_channel_id FOREIGN KEY (channel_id) REFERENCES user(id),
  CONSTRAINT subscriber_id FOREIGN KEY (subscriber_id) REFERENCES user(id)
);