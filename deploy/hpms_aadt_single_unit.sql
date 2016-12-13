-- Deploy calvad_hpms_new_table:hpms_aadt_single_unit to pg
-- requires: hpms_segments

BEGIN;

SET search_path TO hpms,public;

CREATE TABLE hpms_aadt_single_unit (
      segment_id integer primary key references hpms_segments (sid),
      year_record smallint,
      aadt double precision,
      comments character varying(100),
      last_modified_on date,
      last_modified_by character varying(100),
      data_source smallint
      );


COMMIT;
