-- Deploy calvad_hpms_new_table:hpms_count_data to pg
-- requires: hpms_aadt
-- requires: hpms_aadt_combination
-- requires: hpms_aadt_single_unit

BEGIN;


SET search_path TO hpms,public;

CREATE MATERIALIZED VIEW hpms.hpms_count_data as
select h.gid,a.year_record,state_code,route_id,begin_point,end_point,section_length,
       a.aadt as aadt ,b.aadt as aadt_combination, c.aadt as aadt_single_unit,
       geom
from  hpms_segments h
left outer join hpms_aadt a using(gid)
left outer join hpms_aadt_combination b on (a.gid=b.gid and a.year_record=b.year_record)
left outer join hpms_aadt_single_unit c on (a.gid=c.gid and a.year_record=c.year_record);


CREATE INDEX hpms_count_data_geom_idx ON hpms.hpms_count_data USING gist (geom);

COMMIT;
