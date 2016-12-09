-- Deploy calvad_hpms_new_table:hpms_segments to pg
-- requires: hpms_new_table@v1.0.0

BEGIN;

SET search_path TO hpms,public;

CREATE TABLE hpms_segments (
      gid serial primary key,
      state_code smallint,
      route_id character varying(120),
      begin_point double precision,
      end_point double precision,
      section_length double precision,
      geom public.geometry(MultiLineString,4326)
);

CREATE INDEX hpms_segments_geom_idx ON hpms_segments USING gist (geom);

COMMIT;
