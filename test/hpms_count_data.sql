SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;
-- SELECT no_plan();

SELECT plan(29);

SELECT pass('Test hpms_count_data!');

SET search_path TO hpms,public;

SELECT has_materialized_view('hpms_count_data');
SELECT has_index( 'hpms_count_data','hpms_count_data_geom_idx' );

SELECT has_column(        'hpms_count_data', 'gid' );
SELECT col_type_is(       'hpms_count_data', 'gid', 'integer' );

SELECT has_column(        'hpms_count_data', 'year_record' );
SELECT col_type_is(       'hpms_count_data', 'year_record', 'smallint' );

SELECT has_column(        'hpms_count_data', 'state_code' );
SELECT col_type_is(       'hpms_count_data', 'state_code', 'smallint' );

SELECT has_column(        'hpms_count_data', 'route_id' );
SELECT col_type_is(       'hpms_count_data', 'route_id', 'character varying(120)' );

SELECT has_column(        'hpms_count_data', 'begin_point' );
SELECT col_type_is(       'hpms_count_data', 'begin_point', 'double precision' );

SELECT has_column(        'hpms_count_data', 'end_point' );
SELECT col_type_is(       'hpms_count_data', 'end_point', 'double precision' );

SELECT has_column(        'hpms_count_data', 'section_length' );
SELECT col_type_is(       'hpms_count_data', 'section_length', 'double precision' );

SELECT has_column(        'hpms_count_data', 'aadt' );
SELECT col_type_is(       'hpms_count_data', 'aadt', 'double precision' );

SELECT has_column(        'hpms_count_data', 'aadt_combination' );
SELECT col_type_is(       'hpms_count_data', 'aadt_combination', 'double precision' );

SELECT has_column(        'hpms_count_data', 'aadt_single_unit' );
SELECT col_type_is(       'hpms_count_data', 'aadt_single_unit', 'double precision' );

SELECT hasnt_column(        'hpms_count_data', 'comments' );
SELECT hasnt_column(        'hpms_count_data', 'data_source' );
SELECT hasnt_column(        'hpms_count_data', 'last_modified_on' );
SELECT hasnt_column(        'hpms_count_data', 'last_modified_by' );

SELECT has_column(        'hpms_count_data', 'geom' );
SELECT col_type_is(       'hpms_count_data', 'geom', 'geometry(MultiLineString,4326)' );


SELECT finish();
ROLLBACK;
