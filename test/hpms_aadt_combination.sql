SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;
-- SELECT no_plan();
SELECT plan(24);

SELECT pass('Test hpms_aadt_combination!');


SET search_path TO hpms,public;

SELECT has_table('hpms_aadt_combination');
SELECT has_pk( 'hpms_aadt_combination' );

SELECT has_column(        'hpms_aadt_combination', 'gid' );
SELECT col_type_is(       'hpms_aadt_combination', 'gid', 'integer' );
SELECT col_hasnt_default( 'hpms_aadt_combination', 'gid' );

SELECT has_column(        'hpms_aadt_combination', 'year_record' );
SELECT col_type_is(       'hpms_aadt_combination', 'year_record', 'smallint' );
SELECT col_hasnt_default( 'hpms_aadt_combination', 'year_record' );

SELECT has_column(        'hpms_aadt_combination', 'aadt' );
SELECT col_type_is(       'hpms_aadt_combination', 'aadt', 'double precision' );
SELECT col_hasnt_default( 'hpms_aadt_combination', 'aadt' );

SELECT has_column(        'hpms_aadt_combination', 'comments' );
SELECT col_type_is(       'hpms_aadt_combination', 'comments', 'character varying(100)' );
SELECT col_hasnt_default( 'hpms_aadt_combination', 'comments' );

SELECT has_column(        'hpms_aadt_combination', 'data_source' );
SELECT col_type_is(       'hpms_aadt_combination', 'data_source', 'smallint' );
SELECT col_hasnt_default( 'hpms_aadt_combination', 'data_source' );

SELECT has_column(        'hpms_aadt_combination', 'last_modified_on' );
SELECT col_type_is(       'hpms_aadt_combination', 'last_modified_on', 'date' );
SELECT col_hasnt_default( 'hpms_aadt_combination', 'last_modified_on' );

SELECT has_column(        'hpms_aadt_combination', 'last_modified_by' );
SELECT col_type_is(       'hpms_aadt_combination', 'last_modified_by', 'character varying(100)' );
SELECT col_hasnt_default( 'hpms_aadt_combination', 'last_modified_by' );


SELECT finish();
ROLLBACK;
