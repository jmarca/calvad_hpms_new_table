-- Test hpms2014
SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;
-- SELECT no_plan();
SELECT plan(47);

SET search_path TO hpms,public;

SELECT has_table('hpms_2014');
SELECT has_pk( 'hpms_2014' );

SELECT has_column(        'hpms_2014', 'gid' );
SELECT col_type_is(       'hpms_2014', 'gid', 'integer' );
SELECT col_has_default( 'hpms_2014', 'gid' );

SELECT has_column(        'hpms_2014', 'year_record' );
SELECT col_type_is(       'hpms_2014', 'year_record', 'smallint' );
SELECT col_hasnt_default( 'hpms_2014', 'year_record' );

SELECT has_column(        'hpms_2014', 'state_code' );
SELECT col_type_is(       'hpms_2014', 'state_code', 'smallint' );
SELECT col_hasnt_default( 'hpms_2014', 'state_code' );

SELECT has_column(        'hpms_2014', 'route_id' );
SELECT col_type_is(       'hpms_2014', 'route_id', 'character varying(120)' );
SELECT col_hasnt_default( 'hpms_2014', 'route_id' );

SELECT has_column(        'hpms_2014', 'begin_point' );
SELECT col_type_is(       'hpms_2014', 'begin_point', 'double precision' );
SELECT col_hasnt_default( 'hpms_2014', 'begin_point' );

SELECT has_column(        'hpms_2014', 'end_point' );
SELECT col_type_is(       'hpms_2014', 'end_point', 'double precision' );
SELECT col_hasnt_default( 'hpms_2014', 'end_point' );

SELECT has_column(        'hpms_2014', 'section_length' );
SELECT col_type_is(       'hpms_2014', 'section_length', 'double precision' );
SELECT col_hasnt_default( 'hpms_2014', 'section_length' );

SELECT has_column(        'hpms_2014', 'aadt' );
SELECT col_type_is(       'hpms_2014', 'aadt', 'double precision' );
SELECT col_hasnt_default( 'hpms_2014', 'aadt' );

SELECT has_column(        'hpms_2014', 'aadt_combination' );
SELECT col_type_is(       'hpms_2014', 'aadt_combination', 'double precision' );
SELECT col_hasnt_default( 'hpms_2014', 'aadt_combination' );

SELECT has_column(        'hpms_2014', 'aadt_single_unit' );
SELECT col_type_is(       'hpms_2014', 'aadt_single_unit', 'double precision' );
SELECT col_hasnt_default( 'hpms_2014', 'aadt_single_unit' );

SELECT has_column(        'hpms_2014', 'comments' );
SELECT col_type_is(       'hpms_2014', 'comments', 'character varying(100)' );
SELECT col_hasnt_default( 'hpms_2014', 'comments' );

SELECT has_column(        'hpms_2014', 'data_source' );
SELECT col_type_is(       'hpms_2014', 'data_source', 'smallint' );
SELECT col_hasnt_default( 'hpms_2014', 'data_source' );

SELECT has_column(        'hpms_2014', 'last_modified_on' );
SELECT col_type_is(       'hpms_2014', 'last_modified_on', 'date' );
SELECT col_hasnt_default( 'hpms_2014', 'last_modified_on' );

SELECT has_column(        'hpms_2014', 'last_modified_by' );
SELECT col_type_is(       'hpms_2014', 'last_modified_by', 'character varying(100)' );
SELECT col_hasnt_default( 'hpms_2014', 'last_modified_by' );


SELECT has_column(        'hpms_2014', 'geom' );
SELECT col_type_is(       'hpms_2014', 'geom', 'geometry(MultiLineString,4326)' );
SELECT col_hasnt_default( 'hpms_2014', 'geom' );

SELECT finish();
ROLLBACK;
