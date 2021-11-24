USE todo;


# Добавление пользователей

INSERT INTO users
   (email, name, password)
VALUES ('loss@gmail.com', 'Дмитрий', 'Y734e9sdfg'),
       ('leopold@gmail.com', 'Александр', '1234567');

# Добавление названий проектов

INSERT INTO projects (name,user_id)
VALUES ('Входящие', (SELECT id FROM users u WHERE u.email = 'loss@gmail.com')),
       ('Учеба', (SELECT id FROM users u WHERE u.email = 'loss@gmail.com')),
       ('Работа', (SELECT id FROM users u WHERE u.email = 'loss@gmail.com')),
       ('Домашние дела', (SELECT id FROM users u WHERE u.email = 'leopold@gmail.com')),
       ('Авто', (SELECT id FROM users u WHERE u.email = 'leopold@gmail.com'));


# Добавление задач


INSERT INTO task
  (title, date_expired, project_id, user_id, status)
VALUES ('Собеседование в IT компании', STR_TO_DATE('06.10.2021', '%d.%m.%Y'), (SELECT id FROM projects p WHERE p.name = 'Входящие'), (SELECT id FROM users u WHERE u.email = 'loss@gmail.com'), 0),
       ('Выполнить тестовое задание', STR_TO_DATE('05.10.2021', '%d.%m.%Y'), (SELECT id FROM projects p WHERE p.name = 'Входящие'), (SELECT id FROM users u WHERE u.email = 'loss@gmail.com'), 0),
       ('Сделать задание первого раздела', STR_TO_DATE('21.12.2021', '%d.%m.%Y'), (SELECT id FROM projects p WHERE p.name = 'Учеба'), (SELECT id FROM users u WHERE u.email = 'loss@gmail.com'), 1),
       ('Встреча с другом', STR_TO_DATE('22.12.2021', '%d.%m.%Y'), (SELECT id FROM projects p WHERE p.name = 'Работа'), (SELECT id FROM users u WHERE u.email = 'leopold@gmail.com'), 0),
       ('Купить корм для кота', NULL, (SELECT id FROM projects p WHERE p.name = 'Домашние дела'), (SELECT id FROM users u WHERE u.email = 'leopold@gmail.com'), 0),
       ('Заказать пиццу', NULL, (SELECT id FROM projects p WHERE p.name = 'Авто'), (SELECT id FROM users u WHERE u.email = 'leopold@gmail.com'), 0);


# Получить список из всех проектов для одного пользователя

SELECT name
  FROM projects
    WHERE user_id = 1;


# Получить список из всех задач для одного проекта

SELECT title
  FROM task
   WHERE proeject_id = 9;

# пометить задачу как выполненную

UPDATE task
SET status = 1
WHERE title = 'Собеседование в IT компании';

# обновить название задачи по её идентификатору

UPDATE task
SET title = 'Собеседование в IT компании Google'
WHERE id = 1;




