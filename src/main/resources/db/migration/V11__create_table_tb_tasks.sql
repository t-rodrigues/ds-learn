create table tb_tasks (
    id bigint not null,
    description varchar(200) not null,
    question_count int not null,
    approval_count int not null,
    weight decimal(18,2) not null,
    due_date timestamp without time zone not null,

    constraint task_pkey primary key (id),
    foreign key (id) references tb_lessons(id)
);
