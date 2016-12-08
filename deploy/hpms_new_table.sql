-- Deploy hpms_geocode:hpms2014 to pg
-- requires: hpmsschema
-- requires: geoextensions

BEGIN;

SET search_path TO hpms,public;

-- move geometry etc to hpms_segments
-- move aadt to hpms_aadt




ALTER TABLE hpms_2014 DROP COLUMN aadt;

ALTER TABLE hpms_2014 ADD COLUMN aadt_combination double precision;
ALTER TABLE hpms_2014 ADD COLUMN aadt_single_unit double precision;
ALTER TABLE hpms_2014 ADD COLUMN aadt_combination_comments double precision;
ALTER TABLE hpms_2014 ADD COLUMN aadt_single_unit_comments double precision;
ALTER TABLE hpms_2014 ADD COLUMN last_modified_by_aadt character varying(100);
ALTER TABLE hpms_2014 ADD COLUMN last_modified_on_aadt date;
ALTER TABLE hpms_2014 ADD COLUMN last_modified_by_aadt_combo character varying(100);
ALTER TABLE hpms_2014 ADD COLUMN last_modified_on_aadt_combo date;
ALTER TABLE hpms_2014 ADD COLUMN last_modified_by_aadt_su character varying(100);
ALTER TABLE hpms_2014 ADD COLUMN last_modified_on_aadt_su date;
ALTER TABLE hpms_2014 ADD COLUMN data_source_aadt smallint;
ALTER TABLE hpms_2014 ADD COLUMN data_source_aadt_combo smallint;
ALTER TABLE hpms_2014 ADD COLUMN data_source_aadt_su smallint;


COMMIT;
