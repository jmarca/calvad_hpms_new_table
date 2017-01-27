-- Deploy calvad_hpms_new_table:hpms_segments to pg
-- requires: hpms_new_table@v1.0.0

BEGIN;

SET search_path TO hpms,public;

alter TABLE hpms_segments_geom add column
      orig_section_length double precision;

COMMIT;
