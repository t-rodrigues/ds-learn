INSERT INTO tb_users (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_users (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_users (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_users_roles (user_id, role_id) VALUES (1, 3);
INSERT INTO tb_users_roles (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_users_roles (user_id, role_id) VALUES (2, 3);
INSERT INTO tb_users_roles (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_users_roles (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_users_roles (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_courses (name, image_uri, image_gray_uri) VALUES ('Bootcamp', 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');
