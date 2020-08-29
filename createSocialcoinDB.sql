/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     29-8-2020 21:59:41                           */
/*==============================================================*/


alter table ACL
   drop primary key;

drop table if exists ACL;

alter table AccessToken
   drop primary key;

drop table if exists AccessToken;

alter table Role
   drop primary key;

drop table if exists Role;

alter table RoleMapping
   drop primary key;

drop table if exists RoleMapping;

alter table User
   drop primary key;

drop table if exists User;

alter table actions
   drop primary key;

drop table if exists actions;

alter table app_labels
   drop primary key;

drop table if exists app_labels;

alter table app_languages
   drop primary key;

drop table if exists app_languages;

alter table app_translations
   drop primary key;

drop table if exists app_translations;

alter table audit
   drop primary key;

drop table if exists audit;

alter table cities
   drop primary key;

drop table if exists cities;

alter table debts
   drop primary key;

drop table if exists debts;

alter table files
   drop primary key;

drop table if exists files;

alter table locations
   drop primary key;

drop table if exists locations;

alter table privileges
   drop primary key;

drop table if exists privileges;

alter table relations
   drop primary key;

drop table if exists relations;

alter table relations_with_roles
   drop primary key;

drop table if exists relations_with_roles;

alter table relations_with_tasks
   drop primary key;

drop table if exists relations_with_tasks;

alter table relations_with_teams
   drop primary key;

drop table if exists relations_with_teams;

alter table roles
   drop primary key;

drop table if exists roles;

alter table roles_with_privileges
   drop primary key;

drop table if exists roles_with_privileges;

alter table skills
   drop primary key;

drop table if exists skills;

alter table status
   drop primary key;

drop table if exists status;

alter table status_flows
   drop primary key;

drop table if exists status_flows;

alter table tasks
   drop primary key;

drop table if exists tasks;

alter table tasks_with_actions
   drop primary key;

drop table if exists tasks_with_actions;

alter table tasks_with_skills
   drop primary key;

drop table if exists tasks_with_skills;

alter table tasks_with_status
   drop primary key;

drop table if exists tasks_with_status;

alter table tasks_with_teams
   drop primary key;

drop table if exists tasks_with_teams;

alter table teams
   drop primary key;

drop table if exists teams;

alter table transactions
   drop primary key;

drop table if exists transactions;

/*==============================================================*/
/* Table: ACL                                                   */
/*==============================================================*/
create table ACL
(
   id                   int(11) not null auto_increment comment 'id',
   model                varchar(512) default NULL comment 'model',
   property             varchar(512) default NULL comment 'property',
   accessType           varchar(512) default NULL comment 'accesstype',
   permission           varchar(512) default NULL comment 'permission',
   principalType        varchar(512) default NULL comment 'principaltype',
   principalId          varchar(512) default NULL comment 'principalid'
);

alter table ACL
   add primary key (id);

/*==============================================================*/
/* Table: AccessToken                                           */
/*==============================================================*/
create table AccessToken
(
   id                   varchar(255) not null comment 'id',
   ttl                  int(11) default NULL comment 'ttl',
   scopes               text comment 'scopes',
   created              datetime default NULL comment 'created',
   userId               int(11) default NULL comment 'userid'
);

alter table AccessToken
   add primary key (id);

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role
(
   id                   int(10) not null comment 'id',
   name                 varchar(512) not null comment 'name',
   description          varchar(512) default NULL comment 'description',
   created              datetime default NULL comment 'created',
   modified             datetime default NULL comment 'modified'
);

alter table Role
   add primary key (id);

/*==============================================================*/
/* Table: RoleMapping                                           */
/*==============================================================*/
create table RoleMapping
(
   id                   int(11) not null auto_increment comment 'id',
   principalType        varchar(512) default NULL comment 'principaltype',
   principalId          varchar(255) default NULL comment 'principalid',
   roleId               int(11) default NULL comment 'roleid'
);

alter table RoleMapping
   add primary key (id);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   id                   int(10) not null comment 'id',
   realm                varchar(512) default NULL comment 'realm',
   username             varchar(512) default NULL comment 'username',
   password             varchar(512) not null comment 'password',
   email                varchar(512) not null comment 'email',
   emailVerified        tinyint(3) default NULL comment 'emailverified',
   verificationToken    varchar(512) default NULL comment 'verificationtoken'
);

alter table User
   add primary key (id);

/*==============================================================*/
/* Table: actions                                               */
/*==============================================================*/
create table actions
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   description          longtext not null comment 'description',
   files_id             int(11) default NULL comment 'files_id',
   startDate            datetime default NULL comment 'startdate',
   endDate              datetime default NULL comment 'enddate',
   duration             double default NULL comment 'duration',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table actions
   add primary key (id);

/*==============================================================*/
/* Table: app_labels                                            */
/*==============================================================*/
create table app_labels
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   name                 varchar(255) not null comment 'name',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table app_labels
   add primary key (id);

/*==============================================================*/
/* Table: app_languages                                         */
/*==============================================================*/
create table app_languages
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   local_name           varchar(255) not null comment 'local_name',
   english_name         varchar(255) not null comment 'english_name',
   creationDate         datetime default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table app_languages
   add primary key (id);

/*==============================================================*/
/* Table: app_translations                                      */
/*==============================================================*/
create table app_translations
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   app_languages_id     int(11) not null comment 'app_languages_id',
   app_labels_id        int(11) not null comment 'app_labels_id',
   name                 varchar(255) not null comment 'name',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table app_translations
   add primary key (id);

/*==============================================================*/
/* Table: audit                                                 */
/*==============================================================*/
create table audit
(
   id                   int(11) not null auto_increment comment 'id',
   tablename            varchar(255) not null comment 'tablename',
   crud_operation       varchar(45) not null comment 'crud_operation',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) not null comment 'createdby',
   query                longtext not null comment 'query'
);

alter table audit
   add primary key (id);

/*==============================================================*/
/* Table: cities                                                */
/*==============================================================*/
create table cities
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   relations_id         int(11) not null comment 'relations_id',
   locations_id         int(11) not null comment 'locations_id',
   name                 varchar(255) not null comment 'name',
   description          longtext comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table cities
   add primary key (id);

/*==============================================================*/
/* Table: debts                                                 */
/*==============================================================*/
create table debts
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   relations_id         int(11) not null comment 'relations_id',
   debt_lc              double not null default 0 comment 'debt_lc',
   debtDate             datetime not null default CURRENT_TIMESTAMP comment 'debtdate',
   description          longtext comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table debts
   add primary key (id);

/*==============================================================*/
/* Table: files                                                 */
/*==============================================================*/
create table files
(
   id                   int(11) not null auto_increment comment 'id',
   name                 varchar(255) default NULL comment 'name',
   type                 varchar(45) default NULL comment 'type',
   url                  varchar(512) default NULL comment 'url',
   creationDate         datetime default NULL comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime default NULL comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table files
   add primary key (id);

/*==============================================================*/
/* Table: locations                                             */
/*==============================================================*/
create table locations
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   streetname           varchar(255) not null comment 'streetname',
   housenumber          varchar(45) not null comment 'housenumber',
   housenumber_suffix   varchar(45) default NULL comment 'housenumber_suffix',
   postalcode           varchar(45) default NULL comment 'postalcode',
   city                 varchar(45) default NULL comment 'city',
   description          longtext comment 'description',
   latitude             varchar(45) default NULL comment 'latitude',
   longitude            varchar(45) default NULL comment 'longitude',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table locations
   add primary key (id);

/*==============================================================*/
/* Table: privileges                                            */
/*==============================================================*/
create table privileges
(
   id                   int(11) not null auto_increment comment 'id',
   table_name           varchar(255) not null comment 'table_name',
   column_name          varchar(255) not null comment 'column_name',
   create               varchar(1) not null default '0' comment 'create',
   retrieve             varchar(1) not null default '0' comment 'retrieve',
   update               varchar(1) not null default '0' comment 'update',
   delete               varchar(1) not null default '0' comment 'delete',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table privileges
   add primary key (id);

/*==============================================================*/
/* Table: relations                                             */
/*==============================================================*/
create table relations
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   locations_id         int(11) not null comment 'locations_id',
   firstname            varchar(50) not null comment 'firstname',
   prefix               varchar(15) default NULL comment 'prefix',
   lastname             varchar(50) not null comment 'lastname',
   date_of_birth        datetime default NULL comment 'date_of_birth',
   phonenumber          varchar(20) not null comment 'phonenumber',
   email                varchar(100) not null comment 'email',
   description          longtext comment 'description',
   realm                varchar(512) default NULL comment 'realm',
   username             varchar(512) default NULL comment 'username',
   password             varchar(512) not null comment 'password',
   emailVerified        tinyint(3) default NULL comment 'emailverified',
   verificationToken    varchar(512) default NULL comment 'verificationtoken',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table relations
   add primary key (id);

/*==============================================================*/
/* Table: relations_with_roles                                  */
/*==============================================================*/
create table relations_with_roles
(
   id                   int(11) not null auto_increment comment 'id',
   roles_id             int(11) not null comment 'roles_id',
   relations_id         int(11) not null comment 'relations_id',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table relations_with_roles
   add primary key (id);

/*==============================================================*/
/* Table: relations_with_tasks                                  */
/*==============================================================*/
create table relations_with_tasks
(
   id                   int(11) not null auto_increment comment 'id',
   tasks_id             int(11) not null comment 'tasks_id',
   relations_id         int(11) not null comment 'relations_id',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table relations_with_tasks
   add primary key (id);

/*==============================================================*/
/* Table: relations_with_teams                                  */
/*==============================================================*/
create table relations_with_teams
(
   id                   int(11) not null auto_increment comment 'id',
   relations_id         int(11) not null comment 'relations_id',
   teams_id             int(11) not null comment 'teams_id',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table relations_with_teams
   add primary key (id);

/*==============================================================*/
/* Table: roles                                                 */
/*==============================================================*/
create table roles
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   name                 varchar(45) not null comment 'name',
   description          longtext comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table roles
   add primary key (id);

/*==============================================================*/
/* Table: roles_with_privileges                                 */
/*==============================================================*/
create table roles_with_privileges
(
   id                   int(11) not null auto_increment comment 'id',
   roles_id             int(11) not null comment 'roles_id',
   privileges_id        int(11) not null comment 'privileges_id',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table roles_with_privileges
   add primary key (id);

/*==============================================================*/
/* Table: skills                                                */
/*==============================================================*/
create table skills
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   name                 varchar(255) not null comment 'name',
   description          longtext not null comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table skills
   add primary key (id);

/*==============================================================*/
/* Table: status                                                */
/*==============================================================*/
create table status
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   displayOrder         int(11) not null default 0 comment 'displayorder',
   name                 varchar(255) not null comment 'name',
   description          longtext comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table status
   add primary key (id);

/*==============================================================*/
/* Table: status_flows                                          */
/*==============================================================*/
create table status_flows
(
   id                   int(11) not null auto_increment comment 'id',
   status_uuid          varchar(45) not null comment 'status_uuid',
   status_uuid1         varchar(45) not null comment 'status_uuid1',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime default CURRENT_TIMESTAMP comment 'modificationdate',
   modifedBy            varchar(255) default NULL comment 'modifedby'
);

alter table status_flows
   add primary key (id);

/*==============================================================*/
/* Table: tasks                                                 */
/*==============================================================*/
create table tasks
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   relations_id         int(11) default 0 comment 'relations_id',
   locations_id         int(11) not null comment 'locations_id',
   name                 varchar(45) not null comment 'name',
   description          varchar(255) not null comment 'description',
   value_sc             double not null default 0 comment 'value_sc',
   locationDescription  varchar(255) default NULL comment 'locationdescription',
   phonenumber          varchar(45) not null comment 'phonenumber',
   email                varchar(255) not null comment 'email',
   startDate            datetime default NULL comment 'startdate',
   endDate              datetime default NULL comment 'enddate',
   effort               int(11) not null default 0 comment 'effort',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   json                 json default NULL comment 'json',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table tasks
   add primary key (id);

/*==============================================================*/
/* Table: tasks_with_actions                                    */
/*==============================================================*/
create table tasks_with_actions
(
   id                   int(11) not null auto_increment comment 'id',
   tasks_id             int(11) not null comment 'tasks_id',
   actions_id           int(11) not null comment 'actions_id',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table tasks_with_actions
   add primary key (id);

/*==============================================================*/
/* Table: tasks_with_skills                                     */
/*==============================================================*/
create table tasks_with_skills
(
   id                   int(11) not null auto_increment comment 'id',
   skills_id            int(11) not null comment 'skills_id',
   tasks_id             int(11) not null comment 'tasks_id',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table tasks_with_skills
   add primary key (id);

/*==============================================================*/
/* Table: tasks_with_status                                     */
/*==============================================================*/
create table tasks_with_status
(
   id                   int(11) not null auto_increment comment 'id',
   tasks_id             int(11) not null comment 'tasks_id',
   status_id            int(11) not null comment 'status_id',
   description          longtext comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table tasks_with_status
   add primary key (id);

/*==============================================================*/
/* Table: tasks_with_teams                                      */
/*==============================================================*/
create table tasks_with_teams
(
   id                   int(11) not null auto_increment comment 'id',
   tasks_id             int(11) not null comment 'tasks_id',
   teams_id             int(11) not null comment 'teams_id',
   description          longtext comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table tasks_with_teams
   add primary key (id);

/*==============================================================*/
/* Table: teams                                                 */
/*==============================================================*/
create table teams
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   name                 varchar(45) not null comment 'name',
   description          longtext comment 'description',
   json                 json default NULL comment 'json',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   modificationDate     datetime not null default CURRENT_TIMESTAMP comment 'modificationdate',
   modifiedBy           varchar(255) default NULL comment 'modifiedby'
);

alter table teams
   add primary key (id);

/*==============================================================*/
/* Table: transactions                                          */
/*==============================================================*/
create table transactions
(
   id                   int(11) not null auto_increment comment 'id',
   uuid                 varchar(45) not null comment 'uuid',
   relations_id         int(11) not null comment 'relations_id',
   tasks_id             int(11) not null comment 'tasks_id',
   amount_euro          double not null default 0 comment 'amount_euro',
   amount_sc            double not null default 0 comment 'amount_sc',
   creationDate         datetime not null default CURRENT_TIMESTAMP comment 'creationdate',
   createdBy            varchar(255) default NULL comment 'createdby',
   description          longtext comment 'description',
   json                 json default NULL comment 'json'
);

alter table transactions
   add primary key (id);

alter table app_translations add constraint FK000 foreign key (app_labels_id)
      references app_labels (id);

alter table app_translations add constraint FK001 foreign key (app_languages_id)
      references app_languages (id);

alter table relations add constraint FK002 foreign key (locations_id)
      references locations (id) on delete cascade on update cascade;

alter table relations_with_roles add constraint FK003 foreign key (relations_id)
      references relations (id) on delete cascade on update cascade;

alter table relations_with_tasks add constraint FK004 foreign key (relations_id)
      references relations (id) on delete cascade on update cascade;

alter table relations_with_teams add constraint FK005 foreign key (relations_id)
      references relations (id) on delete cascade on update cascade;

alter table roles_with_privileges add constraint FK006 foreign key (privileges_id)
      references privileges (id);

alter table roles_with_privileges add constraint FK007 foreign key (roles_id)
      references roles (id);

alter table status_flows add constraint FK008 foreign key (status_uuid)
      references status (uuid);

alter table status_flows add constraint FK009 foreign key (status_uuid1)
      references status (uuid);

alter table tasks add constraint FK009 foreign key (locations_id)
      references locations (id);

alter table tasks_with_actions add constraint FK011 foreign key (actions_id)
      references actions (id);

alter table tasks_with_actions add constraint FK012 foreign key (tasks_id)
      references tasks (id);

alter table tasks_with_skills add constraint FK013 foreign key (skills_id)
      references skills (id);

alter table tasks_with_skills add constraint FK014 foreign key (tasks_id)
      references tasks (id);

alter table tasks_with_status add constraint FK015 foreign key (status_id)
      references status (id);

alter table tasks_with_status add constraint FK016 foreign key (tasks_id)
      references tasks (id);

alter table tasks_with_teams add constraint FK017 foreign key (tasks_id)
      references tasks (id);

alter table transactions add constraint FK018 foreign key (relations_id)
      references relations (id);

alter table transactions add constraint FK019 foreign key (tasks_id)
      references tasks (id);

