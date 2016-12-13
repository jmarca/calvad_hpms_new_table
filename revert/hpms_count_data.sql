-- Revert calvad_hpms_new_table:hpms_count_data from pg

BEGIN;

SET search_path TO hpms,public;

drop materialized view hpms_count_data;

COMMIT;
