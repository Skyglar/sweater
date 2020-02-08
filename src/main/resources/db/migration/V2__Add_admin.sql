INSERT INTO user (id, username, password, active)
VALUES (1, 'admin', 'admin', 1);

INSERT INTO user_role (user_id, roles)
VALUES (1, 'USER'), (1, 'ADMIN');