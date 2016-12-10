-- Verify calvad_hpms_new_table:hpms_count_data on pg

BEGIN;

SET search_path TO hpms,public;
SELECT gid, year_record, state_code, route_id, begin_point, end_point, section_length, aadt, aadt_combination,aadt_single_unit, geom
FROM hpms_count_data
WHERE FALSE;

ROLLBACK;
