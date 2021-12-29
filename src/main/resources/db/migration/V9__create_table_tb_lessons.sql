create table tb_lessons (
    id bigint auto_increment,
    title varchar(150) not null,
    position int not null,
    section_id bigint not null,

    constraint lesson_pkey primary key (id),
    foreign key (section_id) references tb_sections(id)
);
