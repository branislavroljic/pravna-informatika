insert into roles (name) values ('ROLE_JUDGE');
insert into roles (name) values ('ROLE_USER');

insert into users (email, name, password, surname, username) values ('sara@gmail', 'sara', '$2a$10$od9ZiZCOCnS01bj8F/6TzeMAmBW569LST2JnvPy2T1GbnC1Jn5Y0a', 'jokic', 'sarajokic'); --password je 123
insert into user_role (role_id, user_id) values (1,1);
commit;