-- Deploy hpms_geocode:hpms2014 to pg
-- requires: hpmsschema
-- requires: geoextensions

BEGIN;

SET search_path TO hpms,public;

ALTER TABLE hpms_2014 ADD COLUMN aadt_combination double precision;
ALTER TABLE hpms_2014 ADD COLUMN aadt_single_unit double precision;
ALTER TABLE hpms_2014 ADD COLUMN last_modified_by character varying(100);
ALTER TABLE hpms_2014 ADD COLUMN last_modified_on date;
ALTER TABLE hpms_2014 ADD COLUMN data_source smallint;


COMMIT;
