-- Revert hpms_geocode:hpms2014 from pg

BEGIN;

SET search_path TO hpms,public;
DROP TABLE hpms_2014;

COMMIT;
