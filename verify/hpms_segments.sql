-- Verify calvad_hpms_new_table:hpms_segments on pg

BEGIN;

SET search_path TO hpms,public;

SELECT gid, geom, section_length, orig_section_length
FROM hpms_segments_geom
WHERE FALSE;

ROLLBACK;
