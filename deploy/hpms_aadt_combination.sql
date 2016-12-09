-- Deploy calvad_hpms_new_table:hpms_aadt_combination to pg
-- requires: hpms_segments

BEGIN;

CREATE TABLE hpms_aadt_combination (
      gid  primary key,
      year_record smallint,
      aadt double precision,
      comments character varying(100),
      last_modified_on date,
      last_modified_by character varying(100),
      data_source smallint
      );

COMMIT;
