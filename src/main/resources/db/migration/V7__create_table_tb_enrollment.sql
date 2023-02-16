create table tb_enrollments (
    user_id bigint not null,
    offer_id bigint not null,
    enroll_moment timestamp without time zone not null,
    refund_moment timestamp without time zone,
    available boolean default true,
    only_update boolean default false,

    foreign key (user_id) references tb_users(id),
    foreign key (offer_id) references tb_offers(id)
);
