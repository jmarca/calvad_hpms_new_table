-- Verify hpms_geocode:hpms2014 on pg

BEGIN;

SET search_path TO hpms,public;
SELECT gid, year_record, state_code, route_id, begin_point, end_point, section_length, aadt, comments, geom
FROM hpms_2014
WHERE FALSE;

ROLLBACK;
