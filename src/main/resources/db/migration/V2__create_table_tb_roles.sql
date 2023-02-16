create table tb_roles (
    id bigint auto_increment,
    authority varchar(100) not null,

    constraint role_pkey primary key (id)
);

create table tb_users_roles (
    user_id bigint not null,
    role_id bigint not null,

    primary key (user_id, role_id),
    foreign key (user_id) references tb_users(id),
    foreign key (role_id) references tb_roles(id)
);

insert into tb_roles (authority) values ('ROLE_ADMIN');
insert into tb_roles (authority) values ('ROLE_INSTRUCTOR');
insert into tb_roles (authority) values ('ROLE_STUDENT');
