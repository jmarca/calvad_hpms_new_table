-- Deploy calvad_hpms_new_table:hpms_segments to pg
-- requires: hpms_new_table@v1.0.0

BEGIN;

SET search_path TO hpms,public;

CREATE TABLE hpms_segments (
      sid serial primary key,
      state_code smallint,
      route_id character varying(120),
      begin_point double precision,
      end_point double precision,
      UNIQUE (route_id,begin_point,end_point)
);

CREATE TABLE hpms_segments_geom (
      gid serial primary key,
      section_length double precision,
      geom public.geometry(MultiLineString,4326)
);

CREATE INDEX hpms_segments_geom_idx ON hpms_segments_geom USING gist (geom);

CREATE TABLE hpms_segments_join_geom (
   segment_id integer references hpms_segments (sid),
   geom_id integer references hpms_segments_geom (gid),
   year_record smallint,
   PRIMARY KEY (segment_id,geom_id,year_record)
   );


COMMIT;
