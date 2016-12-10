SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

-- SELECT no_plan();
SELECT plan(24);

SET search_path TO hpms,public;

SELECT pass('Test hpms_segments!');

SELECT has_table('hpms_segments');
SELECT has_pk( 'hpms_segments' );

SELECT has_column(        'hpms_segments', 'gid' );
SELECT col_type_is(       'hpms_segments', 'gid', 'integer' );
SELECT col_has_default(   'hpms_segments', 'gid' );

SELECT has_column(        'hpms_segments', 'state_code' );
SELECT col_type_is(       'hpms_segments', 'state_code', 'smallint' );
SELECT col_hasnt_default( 'hpms_segments', 'state_code' );

SELECT has_column(        'hpms_segments', 'route_id' );
SELECT col_type_is(       'hpms_segments', 'route_id', 'character varying(120)' );
SELECT col_hasnt_default( 'hpms_segments', 'route_id' );

SELECT has_column(        'hpms_segments', 'begin_point' );
SELECT col_type_is(       'hpms_segments', 'begin_point', 'double precision' );
SELECT col_hasnt_default( 'hpms_segments', 'begin_point' );

SELECT has_column(        'hpms_segments', 'end_point' );
SELECT col_type_is(       'hpms_segments', 'end_point', 'double precision' );
SELECT col_hasnt_default( 'hpms_segments', 'end_point' );

SELECT has_column(        'hpms_segments', 'section_length' );
SELECT col_type_is(       'hpms_segments', 'section_length', 'double precision' );
SELECT col_hasnt_default( 'hpms_segments', 'section_length' );

SELECT has_column(        'hpms_segments', 'geom' );
SELECT col_type_is(       'hpms_segments', 'geom', 'geometry(MultiLineString,4326)' );
SELECT col_hasnt_default( 'hpms_segments', 'geom' );


SELECT finish();
ROLLBACK;
