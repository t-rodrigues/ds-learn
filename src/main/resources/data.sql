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

INSERT INTO tb_enrollments (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, '2020-12-25T05:00:00Z', null, true, false);
INSERT INTO tb_enrollments (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, '2020-12-25T05:00:00Z', null, true, false);

INSERT INTO tb_lessons (title, position, section_id) VALUES ('Aula 1', 1, 1);
INSERT INTO tb_contents (id, text_content, video_uri) VALUES (1, 'Aula 1. material de apoio', 'https://www.youtube.com/watch?v=yVID8Ue0b00');
INSERT INTO tb_lessons (title, position, section_id) VALUES ('Aula 2', 2, 1);
INSERT INTO tb_contents (id, text_content, video_uri) VALUES (2, 'Aula 2. material de apoio', 'https://www.youtube.com/watch?v=yVID8Ue0b00');
INSERT INTO tb_lessons (title, position, section_id) VALUES ('Aula 3', 3, 1);
INSERT INTO tb_contents (id, text_content, video_uri) VALUES (3, 'Aula 3. material de apoio', 'https://www.youtube.com/watch?v=yVID8Ue0b00');
INSERT INTO tb_lessons (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_tasks (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer o trabalho final do capítulo', 5, 4, 1.0, '2020-12-30T05:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 2, 1);

INSERT INTO tb_notifications (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', '2020-12-25T05:00:00Z', false, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notifications (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', '2020-12-25T05:00:00Z', false, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notifications (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', '2020-12-25T05:00:00Z', false, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliveries (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/t-rodrigues/dslearn', '2020-12-25T05:00:00Z', 'PENDING', null, null, 4, 1, 1);

INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topics (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_replies (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_replies (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
