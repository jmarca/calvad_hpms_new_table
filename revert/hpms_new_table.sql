-- Deploy hpms_geocode:hpms2014 to pg
-- requires: hpmsschema
-- requires: geoextensions

BEGIN;

SET search_path TO hpms,public;

ALTER TABLE hpms_2014 DROP COLUMN aadt_combination;
ALTER TABLE hpms_2014 DROP COLUMN aadt_single_unit;
ALTER TABLE hpms_2014 DROP COLUMN last_modified_by;
ALTER TABLE hpms_2014 DROP COLUMN last_modified_on;
ALTER TABLE hpms_2014 DROP COLUMN data_source;


COMMIT;
