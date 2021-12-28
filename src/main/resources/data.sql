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

INSERT INTO tb_offers (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITHOUT TIME ZONE '2020-12-25T03:00:00Z', TIMESTAMP WITHOUT TIME ZONE '2021-12-25T03:00:00Z', 1);
INSERT INTO tb_offers (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITHOUT TIME ZONE '2021-03-25T03:00:00Z', TIMESTAMP WITHOUT TIME ZONE '2022-03-25T03:00:00Z', 1);

INSERT INTO tb_resources (title, description, position, image_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://i1.wp.com/jadiberkah.com/wp-content/uploads/2020/05/code-1076536_640.jpg', 'LESSON_TASK', 1);
INSERT INTO tb_resources (title, description, position, image_uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://i1.wp.com/jadiberkah.com/wp-content/uploads/2020/05/code-1076536_640.jpg', 'FORUM', 1);
INSERT INTO tb_resources (title, description, position, image_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://i1.wp.com/jadiberkah.com/wp-content/uploads/2020/05/code-1076536_640.jpg', 'LESSON_ONLY', 1);
INSERT INTO tb_resources (title, description, position, image_uri, type, offer_id) VALUES ('Material de apoio', 'Documentos e código fonte', 4, 'https://i1.wp.com/jadiberkah.com/wp-content/uploads/2020/05/code-1076536_640.jpg', 'EXTERNAL_LINK', 1);

INSERT INTO tb_sections (title, description, position, image_uri, prerequisite_id, resource_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://i1.wp.com/jadiberkah.com/wp-content/uploads/2020/05/code-1076536_640.jpg', null, 1);
INSERT INTO tb_sections (title, description, position, image_uri, prerequisite_id, resource_id) VALUES ('Capítulo 2', 'Dominando HTML', 2, 'https://i1.wp.com/jadiberkah.com/wp-content/uploads/2020/05/code-1076536_640.jpg', 1, 1);
INSERT INTO tb_sections (title, description, position, image_uri, prerequisite_id, resource_id) VALUES ('Capítulo 3', 'Masterizando HTML', 3, 'https://i1.wp.com/jadiberkah.com/wp-content/uploads/2020/05/code-1076536_640.jpg', 2, 1);
