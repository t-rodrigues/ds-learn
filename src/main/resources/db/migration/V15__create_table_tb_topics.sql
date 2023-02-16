create table tb_topics (
    id bigint auto_increment,
    title varchar(150) not null,
    body text not null,
    moment timestamp without time zone not null,
    author_id bigint not null,
    offer_id bigint not null,
    lesson_id bigint not null,

    constraint topic_pkey primary key (id),
    foreign key (author_id) references tb_users(id),
    foreign key (offer_id) references tb_offers(id),
    foreign key (lesson_id) references tb_lessons(id)
);

create table tb_topic_likes (
    topic_id bigint not null,
    user_id bigint not null,

    primary key (topic_id, user_id),
    foreign key (topic_id) references tb_topics(id),
    foreign key (user_id) references tb_users(id)
);
