SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

-- SELECT no_plan();
SELECT plan(36);

SET search_path TO hpms,public;

SELECT pass('Test hpms_segments!');

SELECT has_table('hpms_segments');
SELECT has_pk( 'hpms_segments' );

SELECT has_column(        'hpms_segments', 'sid' );
SELECT col_type_is(       'hpms_segments', 'sid', 'integer' );
SELECT col_has_default(   'hpms_segments', 'sid' );

SELECT has_column(        'hpms_segments', 'state_code' );
SELECT col_type_is(       'hpms_segments', 'state_code', 'smallint' );
SELECT col_hasnt_default( 'hpms_segments', 'state_code' );

SELECT has_column(        'hpms_segments', 'route_id' );
SELECT col_type_is(       'hpms_segments', 'route_id', 'character varying(120)' );
SELECT col_hasnt_default( 'hpms_segments', 'route_id' );

SELECT has_column(        'hpms_segments_geom', 'gid' );
SELECT col_type_is(       'hpms_segments_geom', 'gid', 'integer' );
SELECT col_has_default(   'hpms_segments_geom', 'gid' );

SELECT has_column(        'hpms_segments_geom', 'section_length' );
SELECT col_type_is(       'hpms_segments_geom', 'section_length', 'double precision' );
SELECT col_hasnt_default( 'hpms_segments_geom', 'section_length' );

SELECT has_column(        'hpms_segments_geom', 'geom' );
SELECT col_type_is(       'hpms_segments_geom', 'geom', 'geometry(MultiLineString,4326)' );
SELECT col_hasnt_default( 'hpms_segments_geom', 'geom' );


SELECT has_column(        'hpms_segments_join_geom', 'geom_id' );
SELECT col_type_is(       'hpms_segments_join_geom', 'geom_id', 'integer' );
SELECT col_hasnt_default(   'hpms_segments_join_geom', 'geom_id' );

SELECT has_column(        'hpms_segments_join_geom', 'segment_id' );
SELECT col_type_is(       'hpms_segments_join_geom', 'segment_id', 'integer' );
SELECT col_hasnt_default(   'hpms_segments_join_geom', 'segment_id' );

SELECT has_column(        'hpms_segments_join_geom', 'year_record' );
SELECT col_type_is(       'hpms_segments_join_geom', 'year_record', 'smallint' );
SELECT col_hasnt_default(   'hpms_segments_join_geom', 'year_record' );

SELECT has_column(        'hpms_segments', 'begin_point' );
SELECT col_type_is(       'hpms_segments', 'begin_point', 'double precision' );
SELECT col_hasnt_default( 'hpms_segments', 'begin_point' );

SELECT has_column(        'hpms_segments', 'end_point' );
SELECT col_type_is(       'hpms_segments', 'end_point', 'double precision' );
SELECT col_hasnt_default( 'hpms_segments', 'end_point' );


-- would be nice to test some inserts and stuff


SELECT finish();
ROLLBACK;
