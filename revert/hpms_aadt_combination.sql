-- Revert calvad_hpms_new_table:hpms_aadt_combination from pg

BEGIN;

SET search_path TO hpms,public;
alter table hpms.hpms_aadt_combination drop constraint "hpms_aadt_combination_pkey";

alter table hpms.hpms_aadt_combination add primary key (segment_id);

COMMIT;
