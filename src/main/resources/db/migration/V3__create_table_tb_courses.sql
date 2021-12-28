create table tb_courses (
    id bigint auto_increment,
    name varchar(150) not null,
    image_uri varchar(200) not null,
    image_gray_uri varchar(200) not null,

    constraint course_pkey primary key (id)
);
