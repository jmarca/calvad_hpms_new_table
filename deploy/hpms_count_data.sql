-- Deploy calvad_hpms_new_table:hpms_count_data to pg
-- requires: hpms_aadt
-- requires: hpms_aadt_combination
-- requires: hpms_aadt_single_unit

BEGIN;


SET search_path TO hpms,public;

CREATE MATERIALIZED VIEW hpms.hpms_count_data as
select segment_id,geom_id,year_record,state_code,route_id,begin_point,end_point,
       section_length, geom,
       a.aadt as aadt ,b.aadt as aadt_combination, c.aadt as aadt_single_unit
from  hpms_segments h
left outer join hpms_segments_join_geom hg on (h.sid = hg.segment_id)
left outer join hpms_segments_geom g on (hg.geom_id = g.gid)
left outer join hpms_aadt a using (segment_id,year_record)
left outer join hpms_aadt_combination b using (segment_id,year_record)
left outer join hpms_aadt_single_unit c using (segment_id,year_record);


CREATE INDEX hpms_count_data_geom_idx ON hpms.hpms_count_data USING gist (geom);

COMMIT;
