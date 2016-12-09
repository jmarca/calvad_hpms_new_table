-- Verify calvad_hpms_new_table:hpms_aadt on pg

BEGIN;

SET search_path TO hpms,public;
SELECT gid, year_record, aadt, comments, last_modified_by, last_modified_on, data_source
FROM hpms_aadt
WHERE FALSE;

ROLLBACK;
