-- Deploy hpms_geocode:hpms2014 to pg
-- requires: hpmsschema
-- requires: geoextensions

BEGIN;

SET search_path TO hpms,public;

CREATE TABLE hpms_2014 (
      gid serial primary key,
      year_record smallint,
      state_code smallint,
      route_id character varying(120),
      begin_point double precision,
      end_point double precision,
      section_length double precision,
      aadt double precision,
      comments character varying(100),
      geom public.geometry(MultiLineString,4326)
);

CREATE INDEX hpms_2014_geom_idx ON hpms_2014 USING gist (geom);

COMMIT;
