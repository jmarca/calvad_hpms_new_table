-- Verify calvad_hpms_new_table:hpms_segments on pg

BEGIN;

SET search_path TO hpms,public;
SELECT sid, state_code, route_id
FROM hpms_segments
WHERE FALSE;

SELECT gid, geom, section_length
FROM hpms_segments_geom
WHERE FALSE;

SELECT segment_id, geom_id, year_record, begin_point, end_point
FROM hpms_segments_join_geom
WHERE FALSE;

ROLLBACK;
