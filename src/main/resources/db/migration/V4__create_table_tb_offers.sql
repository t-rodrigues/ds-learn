create table tb_offers (
    id bigint auto_increment,
    edition varchar(100) not null,
    start_moment datetime not null,
    end_moment datetime not null,
    course_id bigint not null,

    constraint offer_pkey primary key (id),
    foreign key (course_id) references tb_courses(id)
);
