create table tb_notifications (
    id bigint auto_increment,
    text varchar(150) not null,
    moment timestamp without time zone default now(),
    read boolean default false,
    route varchar(200) not null,
    user_id bigint not null,

    constraint notification_pkey primary key (id),
    foreign key (user_id) references tb_users(id)
);
