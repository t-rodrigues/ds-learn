create table tb_sections (
    id bigint auto_increment,
    title varchar(150) not null,
    description varchar(200) not null,
    position integer not null,
    image_uri varchar(200) not null,
    resource_id bigint not null,
    prerequisite_id bigint,

    constraint section_pkey primary key (id),
    foreign key (prerequisite_id) references tb_sections(id),
    foreign key (resource_id) references tb_resources(id)
);
