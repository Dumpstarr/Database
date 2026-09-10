-- @operation: export
-- @entity: batch
-- @name: LQ Tiers and Profile Updates
-- @exportedAt: 2026-09-10T15:16:31.343Z
-- @opIds: 5896, 5897, 5898, 5899, 5900, 5901, 5902, 5903, 5904, 5905, 5906, 5907, 5908, 5909, 5910, 5911, 5912, 5913, 5914, 5915, 5916, 5917, 5918, 5919, 5920, 5921, 5922, 5923, 5924, 5925, 5926, 5927, 5928, 5929, 5930, 5931, 5932, 5933, 5934, 5935, 5936, 5937, 5938, 5939, 5940, 5941, 5942, 5943, 5944, 5945, 5946, 5947, 5948, 5949

-- --- BEGIN op 5896 ( update regular_expression "GalaxyRG" )
update "regular_expressions" set "pattern" = '\b(GalaxyRG|GalaxyRG265)\b' where "name" = 'GalaxyRG' and "pattern" = '\b(GalaxyRG)\b';
-- --- END op 5896

-- --- BEGIN op 5897 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'GalaxyRG', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'GalaxyRG', 'GalaxyRG');
-- --- END op 5897

-- --- BEGIN op 5898 ( update regular_expression "GalaxyRG (Title)" )
update "regular_expressions" set "name" = 'GalaxyRG (Title)' where "name" = 'GalaxyRG';
-- --- END op 5898

-- --- BEGIN op 5899 ( update custom_format "LQ Release Title" )
update "condition_patterns" set "regular_expression_name" = 'GalaxyRG (Title)' where "custom_format_name" = 'LQ Release Title' and "condition_name" = 'GalaxyRG' and "regular_expression_name" in ('GalaxyRG', 'GalaxyRG (Title)');
-- --- END op 5899

-- --- BEGIN op 5900 ( update custom_format "SIDCA Tier 03" )
update "condition_patterns" set "regular_expression_name" = 'GalaxyRG (Title)' where "custom_format_name" = 'SIDCA Tier 03' and "condition_name" = 'GalaxyRG' and "regular_expression_name" in ('GalaxyRG', 'GalaxyRG (Title)');
-- --- END op 5900

-- --- BEGIN op 5901 ( create regular_expression "GalaxyRG" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GalaxyRG', '\b(GalaxyRG|GalaxyRG265)\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GalaxyRG', 'Release Group');
-- --- END op 5901

-- --- BEGIN op 5902 ( update regular_expression "GalaxyRG" )
update "regular_expressions" set "pattern" = '^(GalaxyRG|GalaxyRG265)$' where "name" = 'GalaxyRG' and "pattern" = '\b(GalaxyRG|GalaxyRG265)\b';
-- --- END op 5902

-- --- BEGIN op 5903 ( update regular_expression "Meakes (Title)" )
update "regular_expressions" set "name" = 'Meakes (Title)' where "name" = 'Meakes';
-- --- END op 5903

-- --- BEGIN op 5904 ( update custom_format "Anime BD Tier 02" )
update "condition_patterns" set "regular_expression_name" = 'Meakes (Title)' where "custom_format_name" = 'Anime BD Tier 02' and "condition_name" = 'Meakes' and "regular_expression_name" in ('Meakes', 'Meakes (Title)');
-- --- END op 5904

-- --- BEGIN op 5905 ( create regular_expression "Meakes" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Meakes', '\b(Meakes)\b', NULL, NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Meakes', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Meakes', 'Release Group');
-- --- END op 5905

-- --- BEGIN op 5906 ( update regular_expression "Meakes" )
update "regular_expressions" set "pattern" = '^(Meakes)$' where "name" = 'Meakes' and "pattern" = '\b(Meakes)\b';
-- --- END op 5906

-- --- BEGIN op 5907 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'Meakes', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'Meakes', 'Meakes');
-- --- END op 5907

-- --- BEGIN op 5908 ( update custom_format "SIDCA Tier 03" )
DELETE FROM condition_patterns WHERE custom_format_name = 'SIDCA Tier 03' AND condition_name = 'GalaxyRG' AND regular_expression_name = 'GalaxyRG (Title)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'GalaxyRG', 'GalaxyRG');
-- --- END op 5908

-- --- BEGIN op 5909 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'YIFY', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'YIFY', 'YIFY');
-- --- END op 5909

-- --- BEGIN op 5910 ( update custom_format "SIDCA Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 01', 'QxR', 'edition', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 01', 'QxR', 'QxR');
-- --- END op 5910

-- --- BEGIN op 5911 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'Meakes'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5911

-- --- BEGIN op 5912 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'Meakes', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'Meakes', 'Meakes');
-- --- END op 5912

-- --- BEGIN op 5913 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'PSA'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5913

-- --- BEGIN op 5914 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'PSA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'PSA', 'PSA');
-- --- END op 5914

-- --- BEGIN op 5915 ( update custom_format "SIDCA Tier 02" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'SIDCA Tier 02'
  AND name = 'PSA'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 5915

-- --- BEGIN op 5916 ( create regular_expression "Vyndros" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Vyndros', '^(Vyndros)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Vyndros', 'Release Group');
-- --- END op 5916

-- --- BEGIN op 5917 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'Vyndros', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'Vyndros', 'Vyndros');
-- --- END op 5917

-- --- BEGIN op 5918 ( update custom_format "SIDCA Tier 01" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 01'
	  AND name = 'QxR'
	  AND type = 'edition'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5918

-- --- BEGIN op 5919 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'NINJACENTRAL'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5919

-- --- BEGIN op 5920 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'RARBG'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5920

-- --- BEGIN op 5921 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'RARBG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'RARBG', 'RARBG');
-- --- END op 5921

-- --- BEGIN op 5922 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'Pahe'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5922

-- --- BEGIN op 5923 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'PoF'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5923

-- --- BEGIN op 5924 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'PoF', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'PoF', 'PoF');
-- --- END op 5924

-- --- BEGIN op 5925 ( update regular_expression "YIFY" )
update "regular_expressions" set "pattern" = '^(YIFY|YTS|YTS.BZ|YTS.GG)$' where "name" = 'YIFY' and "pattern" = '^(YIFY|YTS)$';
-- --- END op 5925

-- --- BEGIN op 5926 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'd3g'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5926

-- --- BEGIN op 5927 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'Meakes'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5927

-- --- BEGIN op 5928 ( update custom_format "SIDCA Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 02'
	  AND name = 'ELiTE'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5928

-- --- BEGIN op 5929 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'CBFM'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5929

-- --- BEGIN op 5930 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'CHiLL'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5930

-- --- BEGIN op 5931 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'CtrlHD'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5931

-- --- BEGIN op 5932 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'EDPH'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5932

-- --- BEGIN op 5933 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'HANDJOB'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5933

-- --- BEGIN op 5934 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'HODL'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5934

-- --- BEGIN op 5935 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'PHOCiS'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5935

-- --- BEGIN op 5936 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'PLUTONiUM'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5936

-- --- BEGIN op 5937 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'ViETNAM'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5937

-- --- BEGIN op 5938 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'YAWNiX'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5938

-- --- BEGIN op 5939 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'ELiTE', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'ELiTE', 'ELiTE');
-- --- END op 5939

-- --- BEGIN op 5940 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '7.1'
  AND arr_type = 'radarr'
  AND score = 2;
-- --- END op 5940

-- --- BEGIN op 5941 ( update quality_profile "LQ 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = 'LQ 1080p'
  AND custom_format_name = '7.1'
  AND arr_type = 'sonarr'
  AND score = 2;
-- --- END op 5941

-- --- BEGIN op 5942 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'AAC', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 5942

-- --- BEGIN op 5943 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'AAC', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 5943

-- --- BEGIN op 5944 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HONE (Bad Name)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HONE (Bad Name)'
    AND arr_type = 'radarr'
);
-- --- END op 5944

-- --- BEGIN op 5945 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'x265', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'x265'
    AND arr_type = 'radarr'
);
-- --- END op 5945

-- --- BEGIN op 5946 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'x265', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'x265'
    AND arr_type = 'sonarr'
);
-- --- END op 5946

-- --- BEGIN op 5947 ( delete regular_expression "Meakes" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Meakes' AND tag_name = 'Anime';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Meakes' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Meakes';
-- --- END op 5947

-- --- BEGIN op 5948 ( update regular_expression "Meakes" )
update "regular_expressions" set "name" = 'Meakes' where "name" = 'Meakes (Title)';
-- --- END op 5948

-- --- BEGIN op 5949 ( update custom_format "Anime BD Tier 02" )
update "condition_patterns" set "regular_expression_name" = 'Meakes' where "custom_format_name" = 'Anime BD Tier 02' and "condition_name" = 'Meakes' and "regular_expression_name" in ('Meakes (Title)', 'Meakes');
-- --- END op 5949
