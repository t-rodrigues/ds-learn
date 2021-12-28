create table tb_resources (
    id bigint auto_increment,
    title varchar(150) not null,
    description varchar(200) not null,
    position integer not null,
    image_uri varchar(200) not null,
    type varchar(100) not null,
    offer_id bigint not null,

    constraint resource_pkey primary key (id),
    foreign key (offer_id) references tb_offers(id)
);
