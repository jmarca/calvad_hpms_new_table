-- Verify calvad_hpms_new_table:hpms_aadt_combination on pg

BEGIN;


SET search_path TO hpms,public;
SELECT segment_id, year_record, aadt, comments, last_modified_by, last_modified_on, data_source
FROM hpms_aadt_combination
WHERE FALSE;

ROLLBACK;
