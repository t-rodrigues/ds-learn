create table tb_replies (
    id bigint auto_increment,
    body text not null,
    moment timestamp without time zone not null,
    topic_id bigint not null,
    author_id bigint not null,

    constraint reply_pkey primary key (id),
    foreign key (topic_id) references tb_topics(id),
    foreign key (author_id) references tb_users(id)
);

alter table tb_topics add column reply_id bigint;
alter table tb_topics add foreign key (reply_id) references tb_replies(id);

create table tb_reply_likes (
    reply_id bigint not null,
    user_id bigint not null,

    primary key (reply_id, user_id),
    foreign key (reply_id) references tb_replies(id),
    foreign key (user_id) references tb_users(id)
);
