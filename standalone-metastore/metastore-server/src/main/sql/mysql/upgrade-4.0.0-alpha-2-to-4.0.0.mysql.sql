SELECT 'Upgrading MetaStore schema from 4.0.0-alpha-2 to 4.0.0' AS MESSAGE;

-- HIVE-26221
ALTER TABLE TAB_COL_STATS ADD HISTOGRAM blob;
ALTER TABLE PART_COL_STATS ADD HISTOGRAM blob;

-- These lines need to be last.  Insert any changes above.
UPDATE VERSION SET SCHEMA_VERSION='4.0.0', VERSION_COMMENT='Hive release version 4.0.0' where VER_ID=1;
SELECT 'Finished upgrading MetaStore schema from 4.0.0-alpha-2 to 4.0.0' AS MESSAGE;
