-- Revert calvad_hpms_new_table:hpms_segments from pg

BEGIN;

SET search_path TO hpms,public;

DROP TABLE hpms_segments_join_geom;
DROP TABLE hpms_segments_geom;
DROP TABLE hpms_segments;

COMMIT;
