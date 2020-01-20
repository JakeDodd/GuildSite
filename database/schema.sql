-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user;

CREATE TABLE app_user (
  first_name varchar(64) NOT NULL,
  last_name varchar(64) NOT NULL,
  
  constraint pk_app_user primary key (first_name)
);

COMMIT;