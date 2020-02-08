DELETE FROM user_role;
DELETE FROM user;

INSERT INTO user (id, active, password, username) VALUES
  (1, true, '21232f297a57a5a743894a0e4a801fc3', 'admin'),
  (2, true, '{BHbJLYWG9KdYjMi7o+dfh8YPXIfUeZsS9YDsa3m8aKo=}5152970aab2a182e5000915628fbebed', 'Skyglar');

INSERT INTO user_role(user_id, roles) VALUES
  (1, 'USER'), (1, 'ADMIN'),
  (2, 'USER');