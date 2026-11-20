-- @operation: export
-- @entity: batch
-- @name: Added anime profiles
-- @exportedAt: 2026-11-20T13:00:00.000Z

-- --- BEGIN ( create custom_format "Remux Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux Tier 01', NULL, 0);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 01', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 01', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'Remux', 'source', 'sonarr', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux Tier 01', 'Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'BLURANiUM', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BLURANiUM', '^(BLURANiUM)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BLURANiUM', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BLURANiUM', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'BLURANiUM', 'BLURANiUM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'BMF', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BMF', '^(BMF)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BMF', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BMF', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'BMF', 'BMF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'FraMeSToR', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FraMeSToR', '^(FraMeSToR)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FraMeSToR', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FraMeSToR', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'FraMeSToR', 'FraMeSToR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'PmP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PmP', '^(PmP)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PmP', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PmP', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'PmP', 'PmP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'Remux (Radarr)', 'quality_modifier', 'radarr', 0, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('Remux Tier 01', 'Remux (Radarr)', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', '3L', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('3L', '^(3L)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('3L', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('3L', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', '3L', '3L');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'ATELiER', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ATELiER', '^(ATELiER)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ATELiER', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ATELiER', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'ATELiER', 'ATELiER');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'BiZKiT', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BiZKiT', '^(BiZKiT)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiZKiT', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiZKiT', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'BiZKiT', 'BiZKiT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'CiNEPHiLES', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CiNEPHiLES', '^(CiNEPHiLES)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CiNEPHiLES', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CiNEPHiLES', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'CiNEPHiLES', 'CiNEPHiLES');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'PiRAMiDHEAD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PiRAMiDHEAD', '^(PiRAMiDHEAD)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiRAMiDHEAD', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiRAMiDHEAD', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'PiRAMiDHEAD', 'PiRAMiDHEAD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'WiLDCAT', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WiLDCAT', '^(WiLDCAT)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WiLDCAT', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WiLDCAT', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'WiLDCAT', 'WiLDCAT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 01', 'ZQ', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZQ', '^(ZQ)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZQ', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZQ', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 01', 'ZQ', 'ZQ');
-- --- END

-- --- BEGIN ( create custom_format "Remux Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux Tier 02', NULL, 0);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 02', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 02', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'Remux', 'source', 'sonarr', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux Tier 02', 'Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', '12GaugeShotgun', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('12GaugeShotgun', '^(12GaugeShotgun)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('12GaugeShotgun', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('12GaugeShotgun', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', '12GaugeShotgun', '12GaugeShotgun');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'decibeL', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('decibeL', '^(decibeL)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('decibeL', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('decibeL', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'decibeL', 'decibeL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'EPSiLON', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EPSiLON', '^(EPSiLON)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EPSiLON', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EPSiLON', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'EPSiLON', 'EPSiLON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'HiFi', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HiFi', '^(HiFi)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiFi', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiFi', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'HiFi', 'HiFi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'KRaLiMaRKo', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KRaLiMaRKo', '^(KRaLiMaRKo)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KRaLiMaRKo', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KRaLiMaRKo', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'KRaLiMaRKo', 'KRaLiMaRKo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'playBD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('playBD', '^(playBD)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('playBD', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('playBD', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'playBD', 'playBD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'PTer', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PTer', '^(PTer)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PTer', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PTer', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'PTer', 'PTer');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'SiCFoI', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiCFoI', '^(SiCFoI)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'SiCFoI', 'SiCFoI');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'TRiToN', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRiToN', '^(TRiToN)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRiToN', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRiToN', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'TRiToN', 'TRiToN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'Remux (Radarr)', 'quality_modifier', 'radarr', 0, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('Remux Tier 02', 'Remux (Radarr)', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'NCmt', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NCmt', '^(NCmt)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NCmt', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NCmt', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'NCmt', 'NCmt');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'SURFINBIRD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SURFINBIRD', '^(SURFINBIRD)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SURFINBIRD', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SURFINBIRD', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'SURFINBIRD', 'SURFINBIRD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 02', 'TEPES', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TEPES', '^(TEPES)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TEPES', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TEPES', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 02', 'TEPES', 'TEPES');
-- --- END

-- --- BEGIN ( create custom_format "Remux Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux Tier 03', NULL, 0);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 03', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 03', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'Remux', 'quality_modifier', 'all', 0, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('Remux Tier 03', 'Remux', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', '12GaugeShotgun', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', '12GaugeShotgun', '12GaugeShotgun');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'decibeL', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'decibeL', 'decibeL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'EPSiLON', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'EPSiLON', 'EPSiLON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'HiFi', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'HiFi', 'HiFi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'iFT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iFT', '^(iFT)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iFT', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iFT', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'iFT', 'iFT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'KRaLiMaRKo', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'KRaLiMaRKo', 'KRaLiMaRKo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'NTb', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'NTb', 'NTb');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'PTP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PTP', '^(PTP)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PTP', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PTP', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'PTP', 'PTP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'SumVision', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'SumVision', 'SumVision');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'TOA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TOA', '^(TOA)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TOA', 'Release Group');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TOA', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'TOA', 'TOA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 03', 'TRiToN', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 03', 'TRiToN', 'TRiToN');
-- --- END

-- --- BEGIN ( create custom_format "German" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German', NULL, 1);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German', 'German');
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German', 'Language');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German', 'German', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German', 'German', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German', 'NOT Original', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German', 'NOT Original', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German', 'DL', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DL', '(?<!WEB[-_. ]?)\b(DL)\b', NULL, NULL);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DL', 'German');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German', 'DL', 'DL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German', 'ML', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ML', '\b(ML)\b', NULL, NULL);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ML', 'German');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German', 'ML', 'ML');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German', 'Not Subbed', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Subbed', '(?=.*(German|Ger))(?=.*(Sub|Multi(ple)?Sub))', NULL, NULL);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Not Subbed', 'German');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German', 'Not Subbed', 'Not Subbed');
-- --- END

-- --- BEGIN ( create custom_format "German DL" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German DL', NULL, 1);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL', 'German');
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL', 'Language');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German DL', 'German', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German DL', 'German', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German DL', 'Original Language', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German DL', 'Original Language', 'Original', 0);
-- --- END

-- --- BEGIN ( create custom_format "German DL (undefined)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German DL (undefined)', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL (undefined)', 'German');
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL (undefined)', 'Language');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL (undefined)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German DL (undefined)', 'NOT Original Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German DL (undefined)', 'NOT Original Language', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German DL (undefined)', 'German', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German DL (undefined)', 'German', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German DL (undefined)', 'DL', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German DL (undefined)', 'DL', 'DL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German DL (undefined)', 'ML', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German DL (undefined)', 'ML', 'ML');
-- --- END

-- --- BEGIN ( create custom_format "Not German, Japanese or English" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Not German, Japanese or English', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German, Japanese or English', 'German');
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German, Japanese or English', 'Language');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German, Japanese or English', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese or English', 'Not English Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese or English', 'Not English Language', 'English', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese or English', 'Not Japanese Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese or English', 'Not Japanese Language', 'Japanese', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese or English', 'Not German Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese or English', 'Not German Language', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese or English', 'Not German in Title', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not German in Title', '(?i)\bgerman\b', NULL, NULL);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Not German in Title', 'German');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Not German, Japanese or English', 'Not German in Title', 'Not German in Title');
-- --- END

-- --- BEGIN ( create custom_format "German Subbed" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Subbed', NULL, 1);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Subbed', 'German');
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Subbed', 'Language');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Subbed', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Subbed', 'German Subbed', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('German Subbed', '\b(German|Ger)(?:(?!Dub)[a-zA-Z\.\-_ ])*?(?:Sub(?:bed|s)?|OmU)(?:\b|(?=_))', NULL, NULL);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('German Subbed', 'German');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Subbed', 'German Subbed', 'German Subbed');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Subbed', 'Not German', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German Subbed', 'Not German', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Subbed', 'Not German Dubbed', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not German Dubbed', '\b(German|Ger)(?:[\.\-_]+(?:[a-zA-Z0-9]+[\.\-_]+){0,3})?(?:DL|ML)\b|\b(Ger|German)[a-zA-Z\.\-_]*[a-zA-Z][a-zA-Z\.\-_]*Dub(?:bed)?\b', NULL, NULL);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Not German Dubbed', 'German');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Subbed', 'Not German Dubbed', 'Not German Dubbed');
-- --- END

-- --- BEGIN ( create custom_format "German Anime Bluray Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Anime Bluray Tier 01', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 01', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 01', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 01', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Baka', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Baka', '^(Baka)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baka', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baka', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baka', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Baka', 'Baka');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Pudding-sama', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pudding-sama', '^(Pudding[-]?sama)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pudding-sama', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pudding-sama', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pudding-sama', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Pudding-sama', 'Pudding-sama');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'RTemp', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RTemp', '^(RTemp)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RTemp', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RTemp', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RTemp', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'RTemp', 'RTemp');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'snk', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('snk', '\b(snk|shw)\b', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('snk', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('snk', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('snk', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'snk', 'snk');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Ainz', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ainz', '^(Ainz)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ainz', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ainz', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ainz', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Ainz', 'Ainz');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'TvR', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TvR', '^(TvR)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TvR', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TvR', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TvR', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'TvR', 'TvR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Fuuko', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Fuuko', '^(Fuuko)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fuuko', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fuuko', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fuuko', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Fuuko', 'Fuuko');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'AO', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AO', '^(AO)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AO', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AO', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AO', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'AO', 'AO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'CNY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CNY', '^(CNY)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CNY', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CNY', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CNY', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'CNY', 'CNY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'FumoFriday', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FumoFriday', '^(FumoFriday)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FumoFriday', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FumoFriday', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FumoFriday', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'FumoFriday', 'FumoFriday');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Waechter', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Waechter', '^(Waechter)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Waechter', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Waechter', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Waechter', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'Waechter', 'Waechter');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'GP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GP', '^(GP)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GP', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GP', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GP', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'GP', 'GP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 01', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 01', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'DRiFTKiNG', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DRiFTKiNG', '\b(DRiFTKiNG|DK)\b', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DRiFTKiNG', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DRiFTKiNG', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DRiFTKiNG', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 01', 'DRiFTKiNG', 'DRiFTKiNG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 01', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Anime Bluray Tier 01', 'Not Remux', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German Anime Bluray Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Anime Bluray Tier 02', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 02', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 02', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 02', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'ABJ', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ABJ', '^(ABJ)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ABJ', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ABJ', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ABJ', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'ABJ', 'ABJ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'DRiFTKiNG', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'DRiFTKiNG', 'DRiFTKiNG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'VECTOR', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VECTOR', '^(VECTOR)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VECTOR', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VECTOR', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VECTOR', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'VECTOR', 'VECTOR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'ZeroTwo', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZeroTwo', '^(ZeroTwo)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroTwo', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroTwo', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroTwo', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'ZeroTwo', 'ZeroTwo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'ZeroTwo Aliases', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZeroTwo Aliases', '\b(BUTTERCUP|HARTZ02|XiSS|DOGPACK404|PRiNCESSDiANA|DiVA|WAREZCX|BiTCHNUGGET)\b', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroTwo Aliases', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroTwo Aliases', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroTwo Aliases', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'ZeroTwo Aliases', 'ZeroTwo Aliases');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'SiXTYNiNE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiXTYNiNE', '^(SiXTYNiNE)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiXTYNiNE', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiXTYNiNE', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiXTYNiNE', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'SiXTYNiNE', 'SiXTYNiNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'PHM', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PHM', '^(PHM)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PHM', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PHM', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PHM', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'PHM', 'PHM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 02', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 02', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'VECTOR (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VECTOR (2)', '(VECTOR)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VECTOR (2)', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VECTOR (2)', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VECTOR (2)', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 02', 'VECTOR (Radarr)', 'VECTOR (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 02', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Anime Bluray Tier 02', 'Not Remux', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German Anime Bluray Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Anime Bluray Tier 03', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 03', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 03', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 03', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'SUBARU', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SUBARU', '^(SUBARU)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SUBARU', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SUBARU', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SUBARU', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'SUBARU', 'SUBARU');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'ATAX', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ATAX', '^(ATAX)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ATAX', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ATAX', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ATAX', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'ATAX', 'ATAX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'HDC', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDC', '^(HDC)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDC', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDC', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDC', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'HDC', 'HDC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'Mindus', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Mindus', '^(Mindus)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mindus', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mindus', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mindus', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'Mindus', 'Mindus');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', '4Baka', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4Baka', '^(4Baka)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4Baka', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4Baka', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4Baka', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', '4Baka', '4Baka');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'W33BSHiT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('W33BSHiT', '^(W33BSHiT)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('W33BSHiT', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('W33BSHiT', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('W33BSHiT', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'W33BSHiT', 'W33BSHiT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'AST4u', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AST4u', '^(AST4u)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AST4u', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AST4u', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AST4u', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Bluray Tier 03', 'AST4u', 'AST4u');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 03', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Bluray Tier 03', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Bluray Tier 03', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Anime Bluray Tier 03', 'Not Remux', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German Anime Web Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Anime Web Tier 01', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 01', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 01', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 01', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'Baka', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Baka', 'Baka');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'Pudding-sama', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Pudding-sama', 'Pudding-sama');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'RTemp', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'RTemp', 'RTemp');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'snk', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'snk', 'snk');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'Ainz', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Ainz', 'Ainz');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'TvR', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'TvR', 'TvR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'Tanuki', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tanuki', '^(Tanuki)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tanuki', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tanuki', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tanuki', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Tanuki', 'Tanuki');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'HiSHiRO', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HiSHiRO', '^(HiSHiRO)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiSHiRO', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiSHiRO', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiSHiRO', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'HiSHiRO', 'HiSHiRO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'WeebPinn', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WeebPinn', '^(WeebPinn)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WeebPinn', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WeebPinn', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WeebPinn', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'WeebPinn', 'WeebPinn');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'Lynacchi', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Lynacchi', '^(Lynacchi)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Lynacchi', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Lynacchi', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Lynacchi', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'Lynacchi', 'Lynacchi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'WebDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 01', 'WebDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'WebRip', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 01', 'WebRip', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 01', 'DRiFTKiNG', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 01', 'DRiFTKiNG', 'DRiFTKiNG');
-- --- END

-- --- BEGIN ( create custom_format "German Anime Web Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Anime Web Tier 02', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 02', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 02', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 02', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'ABJ', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'ABJ', 'ABJ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'DRiFTKiNG', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'DRiFTKiNG', 'DRiFTKiNG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'VECTOR', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'VECTOR', 'VECTOR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'ZeroTwo', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'ZeroTwo', 'ZeroTwo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'ZeroTwo Aliases', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'ZeroTwo Aliases', 'ZeroTwo Aliases');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'SiXTYNiNE', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'SiXTYNiNE', 'SiXTYNiNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'AO', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'AO', 'AO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'MELD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MELD', '^(MELD)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MELD', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MELD', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MELD', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'MELD', 'MELD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'WebDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 02', 'WebDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'WebRip', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 02', 'WebRip', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 02', 'VECTOR (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 02', 'VECTOR (Radarr)', 'VECTOR (2)');
-- --- END

-- --- BEGIN ( create custom_format "German Anime Web Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Anime Web Tier 03', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 03', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 03', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 03', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'SUBARU', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'SUBARU', 'SUBARU');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'ATAX', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'ATAX', 'ATAX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'HDC', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'HDC', 'HDC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'Mindus', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Mindus', 'Mindus');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'W33BSHiT', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'W33BSHiT', 'W33BSHiT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'Fuuko', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Fuuko', 'Fuuko');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'Waechter', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Waechter', 'Waechter');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'Otaku', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Otaku', '^(Otaku)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Otaku', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Otaku', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Otaku', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', 'Otaku', 'Otaku');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', '4Baka', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Web Tier 03', '4Baka', '4Baka');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'WebDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 03', 'WebDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Web Tier 03', 'WebRip', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Anime Web Tier 03', 'WebRip', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "German Anime Scene" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Anime Scene', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Scene', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Scene', 'Anime');
insert into "tags" ("name") values ('Group Tier') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Scene', 'Group Tier');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Scene', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'ONiGiRi', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ONiGiRi', '^(ONiGiRi)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ONiGiRi', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ONiGiRi', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ONiGiRi', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'ONiGiRi', 'ONiGiRi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'STARS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('STARS', '^(STARS)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('STARS', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('STARS', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('STARS', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'STARS', 'STARS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'DMPD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DMPD', '^(DMPD)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DMPD', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DMPD', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DMPD', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'DMPD', 'DMPD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'OHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OHD', '^(OHD)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OHD', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OHD', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OHD', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'OHD', 'OHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'SAUERKRAUT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SAUERKRAUT', '^(SAUERKRAUT)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAUERKRAUT', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAUERKRAUT', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAUERKRAUT', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'SAUERKRAUT', 'SAUERKRAUT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', '3MINA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('3MINA', '^(3MINA)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('3MINA', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('3MINA', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('3MINA', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', '3MINA', '3MINA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'FWB', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FWB', '^(FWB)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FWB', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FWB', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FWB', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'FWB', 'FWB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'BiGiNT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BiGiNT', '^(BiGiNT)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiGiNT', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiGiNT', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiGiNT', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'BiGiNT', 'BiGiNT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'MRW', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MRW', '^(MRW)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MRW', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MRW', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MRW', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'MRW', 'MRW');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'GSG9', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GSG9', '^(GSG9)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GSG9', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GSG9', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GSG9', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'GSG9', 'GSG9');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Anime Scene', 'SoW', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SoW', '^(SoW)$', NULL, NULL);
insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoW', 'Release Group');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoW', 'German');
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoW', 'Anime');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Anime Scene', 'SoW', 'SoW');
-- --- END

-- --- BEGIN ( create custom_format "German 1080p Booster" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German 1080p Booster', NULL, 0);
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German 1080p Booster', 'German');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German 1080p Booster', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German 1080p Booster', 'German', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German 1080p Booster', 'German', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German 1080p Booster', 'Original Language', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German 1080p Booster', 'Original Language', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German 1080p Booster', '1080p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('German 1080p Booster', '1080p', '1080p');
-- --- END

-- --- BEGIN ( create custom_format "1080p" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('1080p', NULL, 0);
insert into "tags" ("name") values ('Resolution') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p', 'Resolution');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p', '1080p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p', '1080p', '1080p');
-- --- END

-- --- BEGIN ( create custom_format "720p" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('720p', NULL, 0);
insert into "tags" ("name") values ('Resolution') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('720p', 'Resolution');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('720p', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p', '720p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('720p', '720p', '720p');
-- --- END

-- --- BEGIN ( create quality_profile "[Anime] Remux-1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[Anime] Remux-1080p', 'A 1:1 copy of the TRaSH Guides [Anime] Remux-1080p profile for Sonarr and Radarr.
- This profile will grab between a SDTV - 1080p Remux file.
- Bluray and Remux releases from tiered groups are preferred over WEB releases.
- Releases need a score of at least **100**, so only known anime groups are grabbed.
- Dual Audio is not preferred. Add the Anime Dual Audio format if you want it.', 1, 100, 10000, 1);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[Anime] Remux-1080p', 'Anime');
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[Anime] Remux-1080p', 'Radarr');
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[Anime] Remux-1080p', 'Sonarr');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[Anime] Remux-1080p', 'TRaSH');
insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[Anime] Remux-1080p', 'Remux');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[Anime] Remux-1080p', 'Bluray 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'Bluray 1080p', 'Remux-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'Bluray 1080p', 'Bluray-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[Anime] Remux-1080p', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 1080p', 'HDTV-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[Anime] Remux-1080p', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 720p', 'HDTV-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 720p', 'WEBRip-720p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 720p', 'WEBDL-720p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[Anime] Remux-1080p', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[Anime] Remux-1080p', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', NULL, 'Bluray 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', NULL, 'WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'Bluray-720p', NULL, 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', NULL, 'WEB 720p', 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'Bluray-576p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'Bluray-480p', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', NULL, 'WEB 480p', 6, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'DVD', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'SDTV', NULL, 8, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'Remux-2160p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'Bluray-2160p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'WEBDL-2160p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'WEBRip-2160p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'HDTV-2160p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'HDTV-480p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'Raw-HD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'BR-DISK', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[Anime] Remux-1080p', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[Anime] Remux-1080p', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'ABEMA', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'ADN', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'AMZN', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'AV1', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 01', 'all', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 02', 'all', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 03', 'all', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 04', 'all', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 05', 'all', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 06', 'all', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 07', 'all', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime BD Tier 08', 'all', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime LQ', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime Raws', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime WEB Tier 01', 'all', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime WEB Tier 02', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime WEB Tier 03', 'all', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime WEB Tier 04', 'all', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime WEB Tier 05', 'all', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Anime WEB Tier 6', 'all', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'CR', 'sonarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'DSNP', 'sonarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Dubs Only', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'FUNI', 'sonarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'NF', 'sonarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Remux Tier 01', 'all', 975);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Remux Tier 02', 'all', 950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'Remux Tier 03', 'radarr', 925);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'VOSTFR', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'VRV', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'VRV', 'radarr', 10);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'v0', 'all', -51);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'v1', 'all', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'v2', 'all', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'v3', 'all', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[Anime] Remux-1080p', 'v4', 'all', 4);
-- --- END

-- --- BEGIN ( create quality_profile "Anime 2160p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Anime 2160p', 'Based on the Anime 1080p profile, for anime in 4K.
- This profile will grab between a SDTV - 2160p Bluray file, preferring 2160p and falling back to 1080p.
- Releases with HDR or Dolby Vision are preferred; Dolby Vision without HDR fallback is not allowed.
- Dual Audio releases are always preferred.
- 4K anime is rare, so most series will still land at 1080p.', 1, 0, 10000, 1);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 2160p', 'Anime');
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 2160p', 'Radarr');
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 2160p', 'Sonarr');
insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 2160p', '2160p');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 2160p', '2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '2160p', 'WEBDL-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '2160p', 'Bluray-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 2160p', '1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '1080p', 'HDTV-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '1080p', 'WEBRip-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '1080p', 'Bluray-1080p', 3);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 2160p', '720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '720p', 'HDTV-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '720p', 'WEBDL-720p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '720p', 'WEBRip-720p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '720p', 'Bluray-720p', 3);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 2160p', '480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '480p', 'WEBDL-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '480p', 'WEBRip-480p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 2160p', '480p', 'Bluray-480p', 2);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', NULL, '2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', NULL, '1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', NULL, '720p', 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', NULL, '480p', 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'DVD', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'SDTV', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'Remux-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'Remux-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'Bluray-576p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'HDTV-480p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'DVD-R', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'Raw-HD', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'BR-DISK', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'REGIONAL', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'DVDSCR', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'TELECINE', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'TELESYNC', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'CAM', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'WORKPRINT', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 2160p', 'Unknown', NULL, 20, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Anime 2160p', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'ABEMA', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'ABEMA', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'ADN', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'ADN', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'AMZN', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'AMZN', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'AV1', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Accessibility', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 01', 'radarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 01', 'sonarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 02', 'radarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 02', 'sonarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 03', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 03', 'sonarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 04', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 04', 'sonarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 05', 'radarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 05', 'sonarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 06', 'radarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 06', 'sonarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 07', 'radarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 07', 'sonarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 08', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime BD Tier 08', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime Baseline Groups', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime Baseline Groups', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime Dual Audio', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime Dual Audio', 'sonarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime LQ', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime Raws', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 01', 'radarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 01', 'sonarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 02', 'radarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 02', 'sonarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 03', 'radarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 03', 'sonarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 04', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 04', 'sonarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 05', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 05', 'sonarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 6', 'radarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Anime WEB Tier 6', 'sonarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Bad Dual Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Bad Multis', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Bad Source', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Bad Source', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'CR', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'CR', 'sonarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'DSNP', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'DSNP', 'sonarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Dolby Vision', 'all', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Dolby Vision (No HDR Fallback)', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Dubs Only', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Dumpstarr LQ Groups', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Dumpstarr LQ Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Dumpstarr LQ Title', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Dumpstarr LQ Title', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'FUNI', 'radarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'FUNI', 'sonarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'HDR', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'HDR10+', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Multi-Audio', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Multi-Sub', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'NF', 'radarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'NF', 'sonarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'Uncensored', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'VOSTFR', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'VRV', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'VRV', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'v0', 'all', -51);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'v1', 'all', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'v2', 'all', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'v3', 'all', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 2160p', 'v4', 'all', 4);
-- --- END

-- --- BEGIN ( create quality_profile "Anime LQ 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Anime LQ 1080p', 'Based on the Anime 1080p profile, for anime you want to keep small (like LQ 1080p).
- This profile will grab between a SDTV - 1080p Bluray file.
- x265/HEVC releases are preferred and AV1 is allowed. **NOTE! you may encounter transcoding if the client side does not support these codecs.**
- Known bad anime groups are still blocked.
- Dual Audio releases are always preferred.', 1, 0, 10000, 1);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime LQ 1080p', 'Anime');
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime LQ 1080p', 'Radarr');
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime LQ 1080p', 'Sonarr');
insert into "tags" ("name") values ('LQ') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime LQ 1080p', 'LQ');
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime LQ 1080p', '1080p');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime LQ 1080p', '1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '1080p', 'HDTV-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '1080p', 'WEBRip-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '1080p', 'Bluray-1080p', 3);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime LQ 1080p', '720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '720p', 'HDTV-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '720p', 'WEBDL-720p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '720p', 'WEBRip-720p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '720p', 'Bluray-720p', 3);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime LQ 1080p', '480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '480p', 'WEBDL-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '480p', 'WEBRip-480p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime LQ 1080p', '480p', 'Bluray-480p', 2);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', NULL, '1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', NULL, '720p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', NULL, '480p', 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'DVD', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'SDTV', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'Remux-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'Bluray-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'WEBDL-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'WEBRip-2160p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'HDTV-2160p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'Remux-1080p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'Bluray-576p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'HDTV-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'DVD-R', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'Raw-HD', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'BR-DISK', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'REGIONAL', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'TELECINE', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'TELESYNC', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'CAM', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'WORKPRINT', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime LQ 1080p', 'Unknown', NULL, 22, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Anime LQ 1080p', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'ABEMA', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'ABEMA', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'ADN', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'ADN', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'AMZN', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'AMZN', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Accessibility', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 01', 'radarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 01', 'sonarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 02', 'radarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 02', 'sonarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 03', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 03', 'sonarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 04', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 04', 'sonarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 05', 'radarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 05', 'sonarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 06', 'radarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 06', 'sonarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 07', 'radarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 07', 'sonarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 08', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime BD Tier 08', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime Baseline Groups', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime Baseline Groups', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime Dual Audio', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime Dual Audio', 'sonarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime LQ', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime Raws', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 01', 'radarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 01', 'sonarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 02', 'radarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 02', 'sonarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 03', 'radarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 03', 'sonarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 04', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 04', 'sonarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 05', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 05', 'sonarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 6', 'radarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Anime WEB Tier 6', 'sonarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Bad Dual Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Bad Multis', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Bad Source', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Bad Source', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'CR', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'CR', 'sonarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'DSNP', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'DSNP', 'sonarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Dubs Only', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Dumpstarr LQ Groups', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Dumpstarr LQ Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Dumpstarr LQ Title', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Dumpstarr LQ Title', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'FUNI', 'radarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'FUNI', 'sonarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Multi-Audio', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Multi-Sub', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'NF', 'radarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'NF', 'sonarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'Uncensored', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'VOSTFR', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'VRV', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'VRV', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'v0', 'all', -51);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'v1', 'all', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'v2', 'all', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'v3', 'all', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'v4', 'all', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime LQ 1080p', 'x265', 'all', 100);
-- --- END

-- --- BEGIN ( create quality_profile "[German] Anime HD Bluray + WEB" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[German] Anime HD Bluray + WEB', 'A copy of the TRaSH Guides [German] Anime HD Bluray + WEB profile for Sonarr and Radarr.
- This profile will grab 720p and 1080p Bluray and WEB releases.
- German Dual Language (German + Japanese) releases are preferred, followed by German and German Subbed releases.
- Releases in any language other than German, Japanese or English are not allowed.', 1, 0, 35000, 1);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] Anime HD Bluray + WEB', 'Anime');
insert into "tags" ("name") values ('German') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] Anime HD Bluray + WEB', 'German');
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] Anime HD Bluray + WEB', 'Radarr');
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] Anime HD Bluray + WEB', 'Sonarr');
insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] Anime HD Bluray + WEB', 'TRaSH');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] Anime HD Bluray + WEB', 'Merged QPs');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] Anime HD Bluray + WEB', 'Merged QPs', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] Anime HD Bluray + WEB', 'Merged QPs', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] Anime HD Bluray + WEB', 'Merged QPs', 'WEBDL-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] Anime HD Bluray + WEB', 'Merged QPs', 'Bluray-720p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] Anime HD Bluray + WEB', 'Merged QPs', 'WEBDL-720p', 4);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] Anime HD Bluray + WEB', 'Merged QPs', 'WEBRip-720p', 5);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', NULL, 'Merged QPs', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'Remux-2160p', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'Bluray-2160p', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'WEBDL-2160p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'WEBRip-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'Remux-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'HDTV-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'HDTV-720p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'Bluray-576p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'Bluray-480p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'WEBDL-480p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'WEBRip-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'HDTV-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'Raw-HD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'BR-DISK', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'DVDSCR', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] Anime HD Bluray + WEB', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[German] Anime HD Bluray + WEB', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', '1080p', 'all', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', '720p', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 01', 'all', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 02', 'all', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 03', 'all', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 04', 'all', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 05', 'all', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 06', 'all', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 07', 'all', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime BD Tier 08', 'all', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime LQ', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime Raws', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime WEB Tier 01', 'all', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime WEB Tier 02', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime WEB Tier 03', 'all', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime WEB Tier 04', 'all', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime WEB Tier 05', 'all', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Anime WEB Tier 6', 'all', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German', 'all', 10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German 1080p Booster', 'all', 650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Anime Bluray Tier 01', 'all', 2900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Anime Bluray Tier 02', 'all', 2650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Anime Bluray Tier 03', 'all', 2300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Anime Scene', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Anime Web Tier 01', 'all', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Anime Web Tier 02', 'all', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Anime Web Tier 03', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German DL', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German DL (undefined)', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'German Subbed', 'all', 9000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'HD Bluray Tier 01', 'all', 1050);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'HD Bluray Tier 02', 'all', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'HD Bluray Tier 03', 'radarr', 950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Not German, Japanese or English', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Repack1', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'VOSTFR', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'WEB Tier 01', 'all', 350);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'WEB Tier 02', 'all', 250);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'WEB Tier 03', 'all', 150);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'v0', 'all', -51);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'v1', 'all', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'v2', 'all', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'v3', 'all', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] Anime HD Bluray + WEB', 'v4', 'all', 4);
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 02" )
update "custom_format_conditions" set "arr_type" = 'all' where "custom_format_name" = 'Anime WEB Tier 02' and "name" = 'BlackRose' and "arr_type" = 'sonarr';
-- --- END

