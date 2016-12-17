-- Revert calvad_hpms_new_table:hpms_aadt_single_unit from pg

BEGIN;
--
SET search_path TO hpms,public;
DROP TABLE hpms_aadt_single_unit;

COMMIT;
