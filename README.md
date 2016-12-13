# table definition for post 2014 HPMS data

Really Caltrans should keep dumping data in the "old" format, as it matches
the format in the hpms documentation, but in fact they've decided to
dump as shape files with just a tiny number of columns that we
explicitly ask for.  That is what this table is for.

For historical reasons, it is called hpms_2014.

Requires hpms schema sqitch package is already deployed.


# deploy

```
sqitch deploy db:pg:mydb
```


# testing

to test, do:

```
 pg_prove -d mydb -U slash test/*
```


# Example

On the database "spatialvds" on host "activimetrics.com", I did the
following to deploy this.  Note that in *this* case, the database
already had a schema called "hpms" and already had all of the required
geometry extensions deployed, so the dependency deploys both have the
option "--log-only".  Without this option, sqitch would complain
because it can't create schemas and extensions that already exist.  In
a general case, it is best to first try a regular deploy, then try to
deploy with "--log-only" if there are problems.

```
james@emma calvad_hpms_new_table[refactor/normalize]$ cd node_modules/calvad_db_hpms_schema/
james@emma calvad_db_hpms_schema[refactor/normalize]$ sqitch deploy db:pg://activimetrics.com/spatialvds --log-only
james@emma calvad_db_hpms_schema[refactor/normalize]$ cd ../calvad_db_geoextensions/
james@emma calvad_db_geoextensions[refactor/normalize]$ sqitch deploy db:pg://activimetrics.com/spatialvds --log-only
james@emma calvad_hpms_new_table[refactor/normalize]$ sqitch deploy db:pg://activimetrics.com/spatialvds
Deploying changes to db:pg://activimetrics.com/spatialvds
  + hpms_segments .......... ok
  + hpms_aadt .............. ok
  + hpms_aadt_combination .. ok
  + hpms_aadt_single_unit .. ok
  + hpms_count_data ........ ok
james@emma calvad_hpms_new_table[refactor/normalize]$ pg_prove -d spatialvds -U slash -h activimetrics.com test/*
test/hpms_aadt.sql .............. ok
test/hpms_aadt_combination.sql .. ok
test/hpms_aadt_single_unit.sql .. ok
test/hpms_count_data.sql ........ ok
test/hpms_segments.sql .......... ok
All tests successful.
Files=5, Tests=139,  2 wallclock secs ( 0.05 usr  0.00 sys +  0.01 cusr  0.02 csys =  0.08 CPU)
Result: PASS
```
