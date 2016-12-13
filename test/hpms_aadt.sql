SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

-- SELECT no_plan();
SELECT plan(24);

SELECT pass('Test hpms_aadt!');

SET search_path TO hpms,public;

SELECT has_table('hpms_aadt');
SELECT has_pk( 'hpms_aadt' );

SELECT has_column(        'hpms_aadt', 'segment_id' );
SELECT col_type_is(       'hpms_aadt', 'segment_id', 'integer' );
SELECT col_hasnt_default( 'hpms_aadt', 'segment_id' );

SELECT has_column(        'hpms_aadt', 'year_record' );
SELECT col_type_is(       'hpms_aadt', 'year_record', 'smallint' );
SELECT col_hasnt_default( 'hpms_aadt', 'year_record' );

SELECT has_column(        'hpms_aadt', 'aadt' );
SELECT col_type_is(       'hpms_aadt', 'aadt', 'double precision' );
SELECT col_hasnt_default( 'hpms_aadt', 'aadt' );

SELECT has_column(        'hpms_aadt', 'comments' );
SELECT col_type_is(       'hpms_aadt', 'comments', 'character varying(100)' );
SELECT col_hasnt_default( 'hpms_aadt', 'comments' );

SELECT has_column(        'hpms_aadt', 'data_source' );
SELECT col_type_is(       'hpms_aadt', 'data_source', 'smallint' );
SELECT col_hasnt_default( 'hpms_aadt', 'data_source' );

SELECT has_column(        'hpms_aadt', 'last_modified_on' );
SELECT col_type_is(       'hpms_aadt', 'last_modified_on', 'date' );
SELECT col_hasnt_default( 'hpms_aadt', 'last_modified_on' );

SELECT has_column(        'hpms_aadt', 'last_modified_by' );
SELECT col_type_is(       'hpms_aadt', 'last_modified_by', 'character varying(100)' );
SELECT col_hasnt_default( 'hpms_aadt', 'last_modified_by' );

SELECT finish();
ROLLBACK;
