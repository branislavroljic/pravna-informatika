insert into roles (name) values ('ROLE_JUDGE');
insert into roles (name) values ('ROLE_USER');

insert into users (email, name, password, surname, username) values ('sara@gmail', 'sara', '123', 'jokic', 'sarajokic');
insert into user_role (role_id, user_id) values (1,1);
commit;