-- Revert calvad_hpms_new_table:hpms_aadt from pg

BEGIN;

SET search_path TO hpms,public;
DROP TABLE hpms_aadt;

COMMIT;
