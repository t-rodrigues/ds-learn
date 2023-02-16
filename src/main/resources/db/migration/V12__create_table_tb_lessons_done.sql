create table tb_lessons_done (
    lesson_id bigint not null,
    user_id bigint not null,
    offer_id bigint not null,

    primary key (lesson_id, user_id, offer_id),
    foreign key (lesson_id) references tb_lessons(id),
    foreign key (user_id) references tb_users(id),
    foreign key (offer_id) references tb_offers(id)
);
