create table tb_users (
    id bigint auto_increment,
    name varchar(100) not null,
    email varchar(150) unique not null,
    password varchar(100) not null,

    constraint user_pkey primary key (id)
);
