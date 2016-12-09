-- Verify calvad_hpms_new_table:hpms_segments on pg

BEGIN;

SET search_path TO hpms,public;
SELECT gid, state_code, route_id, begin_point, end_point, section_length, geom
FROM hpms_segments
WHERE FALSE;

ROLLBACK;
