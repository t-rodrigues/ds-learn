create table tb_enrollments (
    user_id bigint not null,
    offer_id bigint not null,
    enroll_moment timestamp without time zone not null,
    refund_moment timestamp without time zone,
    available boolean default true,
    only_update boolean default false,

    primary key (user_id, offer_id)
);
