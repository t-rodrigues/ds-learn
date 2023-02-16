create table tb_deliveries (
    id bigint auto_increment,
    uri varchar(150) not null,
    moment timestamp without time zone not null,
    status varchar(100) not null,
    feedback varchar(200),
    correct_count int,
    user_id bigint not null,
    offer_id bigint not null,
    lesson_id bigint not null,

    constraint deliver_pkey primary key (id),
    foreign key (user_id) references tb_users(id),
    foreign key (offer_id) references tb_offers(id),
    foreign key (lesson_id) references tb_lessons(id)
);
