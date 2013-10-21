# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table admin (
  id                        integer auto_increment not null,
  username                  varchar(255),
  password                  varchar(255),
  level                     integer,
  constraint uq_admin_username unique (username),
  constraint pk_admin primary key (id))
;

create table attachment (
  id                        integer auto_increment not null,
  url                       varchar(255),
  size                      bigint,
  date                      datetime,
  constraint pk_attachment primary key (id))
;

create table content (
  id                        integer auto_increment not null,
  content                   longtext,
  date                      datetime,
  constraint pk_content primary key (id))
;

create table content_attachment (
  id                        integer auto_increment not null,
  attachment_id             integer,
  content_id                integer,
  constraint pk_content_attachment primary key (id))
;

create table content_image (
  id                        integer auto_increment not null,
  image_id                  integer,
  content_id                integer,
  constraint pk_content_image primary key (id))
;

create table donation (
  id                        integer auto_increment not null,
  volunteer_id              integer,
  organization_id           integer,
  volunteer_transaction_id  integer,
  organization_transaction_id integer,
  date                      datetime,
  constraint pk_donation primary key (id))
;

create table event (
  id                        integer auto_increment not null,
  name                      varchar(255),
  description               varchar(255),
  content_id                integer,
  organization_id           integer,
  location_id               integer,
  number_of_places          integer,
  image_id                  integer,
  start_time                datetime,
  end_time                  datetime,
  date                      datetime,
  constraint pk_event primary key (id))
;

create table event_registrant (
  id                        integer auto_increment not null,
  event_id                  integer,
  volunteer_id              integer,
  date                      datetime,
  constraint pk_event_registrant primary key (id))
;

create table image (
  id                        integer auto_increment not null,
  url                       varchar(255),
  type                      integer,
  size                      integer,
  width                     integer,
  height                    integer,
  date                      datetime,
  constraint pk_image primary key (id))
;

create table location (
  id                        integer auto_increment not null,
  text                      varchar(255),
  postal_code               varchar(255),
  lat                       integer,
  lng                       integer,
  constraint pk_location primary key (id))
;

create table mail (
  id                        integer auto_increment not null,
  data                      longtext,
  template_id               integer,
  date                      datetime,
  status                    integer,
  constraint pk_mail primary key (id))
;

create table mail_queue (
  id                        integer auto_increment not null,
  user_id                   integer,
  title                     varchar(255),
  content                   varchar(255),
  status                    integer,
  date                      datetime,
  mail_id                   integer,
  constraint pk_mail_queue primary key (id))
;

create table mail_template (
  id                        integer auto_increment not null,
  title                     varchar(255),
  template                  longtext,
  constraint pk_mail_template primary key (id))
;

create table news (
  id                        integer auto_increment not null,
  content_id                integer,
  category_id               integer,
  constraint pk_news primary key (id))
;

create table news_category (
  id                        integer auto_increment not null,
  slug                      varchar(255),
  name                      varchar(255),
  constraint pk_news_category primary key (id))
;

create table organization (
  id                        integer auto_increment not null,
  name                      varchar(255),
  image_id                  integer,
  description               varchar(255),
  content_id                integer,
  location_id               integer,
  user_id                   integer,
  category_id               integer,
  date                      datetime,
  status                    integer,
  contact_number            varchar(255),
  email                     varchar(255),
  website                   varchar(255),
  facebook_link             varchar(255),
  twitter_link              varchar(255),
  balance                   bigint,
  constraint pk_organization primary key (id))
;

create table organization_category (
  id                        integer auto_increment not null,
  name                      varchar(255),
  pool                      bigint,
  sort                      integer,
  constraint pk_organization_category primary key (id))
;

create table organization_notification (
  id                        integer auto_increment not null,
  organization_id           integer,
  type                      integer,
  content                   varchar(255),
  link                      varchar(255),
  date                      datetime,
  constraint pk_organization_notification primary key (id))
;

create table organization_transaction (
  id                        integer auto_increment not null,
  amount                    integer,
  date                      datetime,
  organization_id           integer,
  constraint pk_organization_transaction primary key (id))
;

create table page (
  id                        integer auto_increment not null,
  slug                      varchar(255),
  constraint pk_page primary key (id))
;

create table user (
  id                        integer auto_increment not null,
  username                  varchar(255),
  password                  varchar(255),
  email                     varchar(255),
  secret_key                varchar(255),
  status                    integer,
  constraint uq_user_username unique (username),
  constraint uq_user_email unique (email),
  constraint pk_user primary key (id))
;

create table volunteer (
  id                        integer auto_increment not null,
  user_id                   integer,
  status                    integer,
  first_name                varchar(255),
  last_name                 varchar(255),
  contact_number            varchar(255),
  address1                  varchar(255),
  address2                  varchar(255),
  nationality               varchar(255),
  image_id                  integer,
  balance                   integer,
  constraint pk_volunteer primary key (id))
;

create table volunteer_document (
  id                        integer auto_increment not null,
  type                      integer,
  number                    varchar(255),
  volunteer_id              integer,
  constraint pk_volunteer_document primary key (id))
;

create table volunteer_notification (
  id                        integer auto_increment not null,
  volunteer_id              integer,
  type                      integer,
  content                   varchar(255),
  link                      varchar(255),
  date                      datetime,
  constraint pk_volunteer_notification primary key (id))
;

create table volunteer_record (
  id                        integer auto_increment not null,
  volunteer_id              integer,
  event_id                  integer,
  transaction_id            integer,
  start_time                datetime,
  end_time                  datetime,
  deducted_time             integer,
  length                    integer,
  date                      datetime,
  constraint pk_volunteer_record primary key (id))
;

create table volunteer_transaction (
  id                        integer auto_increment not null,
  amount                    integer,
  date                      datetime,
  volunteer_id              integer,
  constraint pk_volunteer_transaction primary key (id))
;


create table mail_user (
  mail_id                        integer not null,
  user_id                        integer not null,
  constraint pk_mail_user primary key (mail_id, user_id))
;
alter table content_attachment add constraint fk_content_attachment_attachment_1 foreign key (attachment_id) references attachment (id) on delete restrict on update restrict;
create index ix_content_attachment_attachment_1 on content_attachment (attachment_id);
alter table content_attachment add constraint fk_content_attachment_content_2 foreign key (content_id) references content (id) on delete restrict on update restrict;
create index ix_content_attachment_content_2 on content_attachment (content_id);
alter table content_image add constraint fk_content_image_image_3 foreign key (image_id) references image (id) on delete restrict on update restrict;
create index ix_content_image_image_3 on content_image (image_id);
alter table content_image add constraint fk_content_image_content_4 foreign key (content_id) references content (id) on delete restrict on update restrict;
create index ix_content_image_content_4 on content_image (content_id);
alter table donation add constraint fk_donation_volunteer_5 foreign key (volunteer_id) references volunteer (id) on delete restrict on update restrict;
create index ix_donation_volunteer_5 on donation (volunteer_id);
alter table donation add constraint fk_donation_organization_6 foreign key (organization_id) references organization (id) on delete restrict on update restrict;
create index ix_donation_organization_6 on donation (organization_id);
alter table donation add constraint fk_donation_volunteerTransaction_7 foreign key (volunteer_transaction_id) references volunteer_transaction (id) on delete restrict on update restrict;
create index ix_donation_volunteerTransaction_7 on donation (volunteer_transaction_id);
alter table donation add constraint fk_donation_organizationTransaction_8 foreign key (organization_transaction_id) references organization_transaction (id) on delete restrict on update restrict;
create index ix_donation_organizationTransaction_8 on donation (organization_transaction_id);
alter table event add constraint fk_event_content_9 foreign key (content_id) references content (id) on delete restrict on update restrict;
create index ix_event_content_9 on event (content_id);
alter table event add constraint fk_event_organization_10 foreign key (organization_id) references organization (id) on delete restrict on update restrict;
create index ix_event_organization_10 on event (organization_id);
alter table event add constraint fk_event_location_11 foreign key (location_id) references location (id) on delete restrict on update restrict;
create index ix_event_location_11 on event (location_id);
alter table event add constraint fk_event_image_12 foreign key (image_id) references image (id) on delete restrict on update restrict;
create index ix_event_image_12 on event (image_id);
alter table event_registrant add constraint fk_event_registrant_event_13 foreign key (event_id) references event (id) on delete restrict on update restrict;
create index ix_event_registrant_event_13 on event_registrant (event_id);
alter table event_registrant add constraint fk_event_registrant_volunteer_14 foreign key (volunteer_id) references volunteer (id) on delete restrict on update restrict;
create index ix_event_registrant_volunteer_14 on event_registrant (volunteer_id);
alter table mail add constraint fk_mail_template_15 foreign key (template_id) references mail_template (id) on delete restrict on update restrict;
create index ix_mail_template_15 on mail (template_id);
alter table mail_queue add constraint fk_mail_queue_user_16 foreign key (user_id) references user (id) on delete restrict on update restrict;
create index ix_mail_queue_user_16 on mail_queue (user_id);
alter table mail_queue add constraint fk_mail_queue_mail_17 foreign key (mail_id) references mail (id) on delete restrict on update restrict;
create index ix_mail_queue_mail_17 on mail_queue (mail_id);
alter table news add constraint fk_news_content_18 foreign key (content_id) references content (id) on delete restrict on update restrict;
create index ix_news_content_18 on news (content_id);
alter table news add constraint fk_news_category_19 foreign key (category_id) references news_category (id) on delete restrict on update restrict;
create index ix_news_category_19 on news (category_id);
alter table organization add constraint fk_organization_image_20 foreign key (image_id) references image (id) on delete restrict on update restrict;
create index ix_organization_image_20 on organization (image_id);
alter table organization add constraint fk_organization_content_21 foreign key (content_id) references content (id) on delete restrict on update restrict;
create index ix_organization_content_21 on organization (content_id);
alter table organization add constraint fk_organization_location_22 foreign key (location_id) references location (id) on delete restrict on update restrict;
create index ix_organization_location_22 on organization (location_id);
alter table organization add constraint fk_organization_user_23 foreign key (user_id) references user (id) on delete restrict on update restrict;
create index ix_organization_user_23 on organization (user_id);
alter table organization add constraint fk_organization_category_24 foreign key (category_id) references organization_category (id) on delete restrict on update restrict;
create index ix_organization_category_24 on organization (category_id);
alter table organization_notification add constraint fk_organization_notification_organization_25 foreign key (organization_id) references organization (id) on delete restrict on update restrict;
create index ix_organization_notification_organization_25 on organization_notification (organization_id);
alter table organization_transaction add constraint fk_organization_transaction_organization_26 foreign key (organization_id) references organization (id) on delete restrict on update restrict;
create index ix_organization_transaction_organization_26 on organization_transaction (organization_id);
alter table volunteer add constraint fk_volunteer_user_27 foreign key (user_id) references user (id) on delete restrict on update restrict;
create index ix_volunteer_user_27 on volunteer (user_id);
alter table volunteer add constraint fk_volunteer_image_28 foreign key (image_id) references image (id) on delete restrict on update restrict;
create index ix_volunteer_image_28 on volunteer (image_id);
alter table volunteer_document add constraint fk_volunteer_document_volunteer_29 foreign key (volunteer_id) references volunteer (id) on delete restrict on update restrict;
create index ix_volunteer_document_volunteer_29 on volunteer_document (volunteer_id);
alter table volunteer_notification add constraint fk_volunteer_notification_volunteer_30 foreign key (volunteer_id) references volunteer (id) on delete restrict on update restrict;
create index ix_volunteer_notification_volunteer_30 on volunteer_notification (volunteer_id);
alter table volunteer_record add constraint fk_volunteer_record_volunteer_31 foreign key (volunteer_id) references volunteer (id) on delete restrict on update restrict;
create index ix_volunteer_record_volunteer_31 on volunteer_record (volunteer_id);
alter table volunteer_record add constraint fk_volunteer_record_event_32 foreign key (event_id) references event (id) on delete restrict on update restrict;
create index ix_volunteer_record_event_32 on volunteer_record (event_id);
alter table volunteer_record add constraint fk_volunteer_record_transaction_33 foreign key (transaction_id) references volunteer_transaction (id) on delete restrict on update restrict;
create index ix_volunteer_record_transaction_33 on volunteer_record (transaction_id);
alter table volunteer_transaction add constraint fk_volunteer_transaction_volunteer_34 foreign key (volunteer_id) references volunteer (id) on delete restrict on update restrict;
create index ix_volunteer_transaction_volunteer_34 on volunteer_transaction (volunteer_id);



alter table mail_user add constraint fk_mail_user_mail_01 foreign key (mail_id) references mail (id) on delete restrict on update restrict;

alter table mail_user add constraint fk_mail_user_user_02 foreign key (user_id) references user (id) on delete restrict on update restrict;

# --- !Downs

SET FOREIGN_KEY_CHECKS=0;

drop table admin;

drop table attachment;

drop table content;

drop table content_attachment;

drop table content_image;

drop table donation;

drop table event;

drop table event_registrant;

drop table image;

drop table location;

drop table mail;

drop table mail_user;

drop table mail_queue;

drop table mail_template;

drop table news;

drop table news_category;

drop table organization;

drop table organization_category;

drop table organization_notification;

drop table organization_transaction;

drop table page;

drop table user;

drop table volunteer;

drop table volunteer_document;

drop table volunteer_notification;

drop table volunteer_record;

drop table volunteer_transaction;

SET FOREIGN_KEY_CHECKS=1;

