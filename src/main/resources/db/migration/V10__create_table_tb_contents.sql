create table tb_contents (
    id bigint not null,
    text_content varchar(100),
    video_uri varchar(200),

    constraint content_pkey primary key (id),
    foreign key (id) references tb_lessons(id)
);
