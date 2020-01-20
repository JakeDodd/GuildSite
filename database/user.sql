-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER admin WITH PASSWORD 'cecelee1';

GRANT ALL 
ON ALL TABLES IN SCHEMA public
TO admin;

GRANT ALL 
ON ALL SEQUENCES IN SCHEMA public
TO admin; 

CREATE USER appuser WITH PASSWORD 'appuser1';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO appuser; 