-- Revert calvad_hpms_new_table:hpms_aadt_single_unit from pg

BEGIN;
--
SET search_path TO hpms,public;
alter table hpms.hpms_aadt_single_unit drop constraint "hpms_aadt_single_unit_pkey";

alter table hpms.hpms_aadt_single_unit add primary key (segment_id);

COMMIT;
