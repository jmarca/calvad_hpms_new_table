-- Revert calvad_hpms_new_table:hpms_aadt_combination from pg

BEGIN;

SET search_path TO hpms,public;
DROP TABLE hpms_aadt_combination;

COMMIT;
