-- @operation: export
-- @entity: batch
-- @name: TRaSH custom format sync
-- @exportedAt: 2026-11-20T15:00:00.000Z

-- --- BEGIN ( update custom_format "5.1" )
update "custom_formats" set "name" = '5.1 Surround' where "name" = '5.1';
-- --- END

-- --- BEGIN ( update custom_format "7.1" )
update "custom_formats" set "name" = '7.1 Surround' where "name" = '7.1';
-- --- END

-- --- BEGIN ( update custom_format "Anime LQ" )
update "custom_formats" set "name" = 'Anime LQ Groups' where "name" = 'Anime LQ';
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 01" )
update "custom_formats" set "name" = 'Anime Web Tier 01' where "name" = 'Anime WEB Tier 01';
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 02" )
update "custom_formats" set "name" = 'Anime Web Tier 02' where "name" = 'Anime WEB Tier 02';
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 03" )
update "custom_formats" set "name" = 'Anime Web Tier 03' where "name" = 'Anime WEB Tier 03';
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 04" )
update "custom_formats" set "name" = 'Anime Web Tier 04' where "name" = 'Anime WEB Tier 04';
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 05" )
update "custom_formats" set "name" = 'Anime Web Tier 05' where "name" = 'Anime WEB Tier 05';
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 6" )
update "custom_formats" set "name" = 'Anime Web Tier 06' where "name" = 'Anime WEB Tier 6';
-- --- END

-- --- BEGIN ( update custom_format "B&W" )
update "custom_formats" set "name" = 'Black and White Editions' where "name" = 'B&W';
-- --- END

-- --- BEGIN ( update custom_format "CRIT" )
update "custom_formats" set "name" = 'CRiT' where "name" = 'CRIT';
-- --- END

-- --- BEGIN ( update custom_format "DTS-X" )
update "custom_formats" set "name" = 'DTS X' where "name" = 'DTS-X';
-- --- END

-- --- BEGIN ( update custom_format "Dolby Digital" )
update "custom_formats" set "name" = 'DD' where "name" = 'Dolby Digital';
-- --- END

-- --- BEGIN ( update custom_format "Dolby Digital +" )
update "custom_formats" set "name" = 'DD+' where "name" = 'Dolby Digital +';
-- --- END

-- --- BEGIN ( update custom_format "Dolby Vision" )
update "custom_formats" set "name" = 'DV Boost' where "name" = 'Dolby Vision';
-- --- END

-- --- BEGIN ( update custom_format "FUNI" )
update "custom_formats" set "name" = 'FUNi' where "name" = 'FUNI';
-- --- END

-- --- BEGIN ( update custom_format "HDR10+" )
update "custom_formats" set "name" = 'HDR10+ Boost' where "name" = 'HDR10+';
-- --- END

-- --- BEGIN ( update custom_format "HULU" )
update "custom_formats" set "name" = 'Hulu' where "name" = 'HULU';
-- --- END

-- --- BEGIN ( update custom_format "LQ Release Title" )
update "custom_formats" set "name" = 'LQ (Release Title)' where "name" = 'LQ Release Title';
-- --- END

-- --- BEGIN ( update custom_format "Not Original Language" )
update "custom_formats" set "name" = 'Language: Not Original' where "name" = 'Not Original Language';
-- --- END

-- --- BEGIN ( update custom_format "Repack1" )
update "custom_formats" set "name" = 'Repack/Proper' where "name" = 'Repack1';
-- --- END

-- --- BEGIN ( update custom_format "Sing Along" )
update "custom_formats" set "name" = 'Sing-Along Versions' where "name" = 'Sing Along';
-- --- END

-- --- BEGIN ( update custom_format "Theatrical" )
update "custom_formats" set "name" = 'Theatrical Cut' where "name" = 'Theatrical';
-- --- END

-- --- BEGIN ( update custom_format "YK" )
update "custom_formats" set "name" = 'YOUKU' where "name" = 'YK';
-- --- END

-- --- BEGIN ( update custom_format "2.0 Stereo" )
DELETE FROM custom_format_conditions WHERE custom_format_name = '2.0 Stereo';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2.0 Stereo', 'Stereo', 'release_title', 'sonarr', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Stereo (2)', '(?<!repac)[^0-9]2[ .]0\b|\bStereo\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2.0 Stereo', 'Stereo', 'Stereo (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2.0 Stereo', 'Not 3.0ch', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2.0 Stereo', 'Not 3.0ch', 'Not 3.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2.0 Stereo', 'Not 4.0ch', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2.0 Stereo', 'Not 4.0ch', 'Not 4.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2.0 Stereo', 'Not High Channel Count', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2.0 Stereo', 'Not High Channel Count', 'Not High Channel Count');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2.0 Stereo', 'Not Mono', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2.0 Stereo', 'Not Mono', 'Not Mono');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2.0 Stereo', 'Stereo (Radarr)', 'release_title', 'radarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2.0 Stereo', 'Stereo (Radarr)', 'Stereo');
-- --- END

-- --- BEGIN ( update custom_format "5.1 Surround" )
DELETE FROM custom_format_conditions WHERE custom_format_name = '5.1 Surround';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('5.1 Surround', '5.1 Surround', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('5.1 Surround', '5.1 Surround', '5.1 Surround');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('5.1 Surround', 'Not 6.1 Surround', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not 6.1 Surround', '[^0-9]6[ .][0-1]\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('5.1 Surround', 'Not 6.1 Surround', 'Not 6.1 Surround');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('5.1 Surround', 'Not 7.1 Surround', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('5.1 Surround', 'Not 7.1 Surround', '7.1 Surround');
-- --- END

-- --- BEGIN ( update custom_format "7.1 Surround" )
DELETE FROM custom_format_conditions WHERE custom_format_name = '7.1 Surround';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('7.1 Surround', '7.1 Surround', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('7.1 Surround', '7.1 Surround', '7.1 Surround');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('7.1 Surround', 'Not Low Channel Count', 'release_title', 'sonarr', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Low Channel Count', '(?<!repac)[^0-9][1-4][ .][0-1]\b|\b(Stereo|Mono)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('7.1 Surround', 'Not Low Channel Count', 'Not Low Channel Count');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('7.1 Surround', 'Not Low Channel Count (Radarr)', 'release_title', 'radarr', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('7.1 Surround', 'Not Low Channel Count (Radarr)', 'Low Channel Count');
-- --- END

-- --- BEGIN ( update custom_format "AAC" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AAC', 'AAC', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AAC', 'AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AAC', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AAC', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AAC', 'Not Dolby Digital Plus ', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Dolby Digital Plus ', '\bDD[P+]|\b(e[-_. ]?ac-?3)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AAC', 'Not Dolby Digital Plus ', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AAC', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Basic Dolby Digital', '\bDD[^a-z+]|(?<!e-)\b(ac-?3)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AAC', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AAC', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AAC', 'Not PCM', 'PCM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AAC', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AAC', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AAC', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not TrueHD/ATMOS', 'True[ .-]?HD|\bATMOS(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AAC', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
-- --- END

-- --- BEGIN ( update custom_format "ABEMA" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'ABEMA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ABEMA', 'ABEMA', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ABEMA', 'ABEMA', 'ABEMA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ABEMA', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ABEMA', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ABEMA', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ABEMA', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ABEMA', 'WEB', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ABEMA', 'WEB', 'television');
-- --- END

-- --- BEGIN ( update custom_format "ADN" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'ADN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ADN', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ADN', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ADN', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ADN', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ADN', 'WEB', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ADN', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ADN', 'ADN', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ADN', 'ADN', 'ADN');
-- --- END

-- --- BEGIN ( update custom_format "Anime LQ Groups" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Anime LQ Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', '$tore-Chill', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', '$tore-Chill', '$tore-Chill');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', '0neshot', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', '0neshot', '0neshot');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', '224', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', '224', '224');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'A-Destiny', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'A-Destiny', 'A-Destiny');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AceAres', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AceAres', 'AceAres');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AhmadDev', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AhmadDev', 'AhmadDev');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Anime Chap', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Anime Chap', 'Anime Chap');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Anime Land', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Anime Land', 'Anime Land');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Anime Time', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Anime Time', 'Anime Time');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AnimeDynastyEN', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AnimeDynastyEN', 'AnimeDynastyEN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AnimeKuro', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AnimeKuro', 'AnimeKuro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AnimeRG', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AnimeRG', 'AnimeRG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Animesubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Animesubs', 'Animesubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AnimeTR', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AnimeTR', 'AnimeTR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Anitsu', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Anitsu', 'Anitsu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AniVoid', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AniVoid', 'AniVoid');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'ArataEnc', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'ArataEnc', 'ArataEnc');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'AREY', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'AREY', 'AREY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Ari', 'release_title', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Ari', 'Ari');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'ASW', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'ASW', 'ASW');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'BJX', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'BJX', 'BJX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'BlackLuster', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'BlackLuster', 'BlackLuster');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'bonkai77', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'bonkai77', 'bonkai77');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'CameEsp', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'CameEsp', 'CameEsp');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Cat66', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Cat66', 'Cat66');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'CBB', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'CBB', 'CBB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Cerberus', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Cerberus', 'Cerberus');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Cleo', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Cleo', 'Cleo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'CuaP', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'CuaP', 'CuaP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DaddySubs', 'release_title', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DaddySubs', 'Daddy Subs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DARKFLiX', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DARKFLiX', 'DARKFLiX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DB', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DB', 'DB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DBArabic', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DBArabic', 'DBArabic');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Deadmau- RAWS', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Deadmau- RAWS', 'Deadmau RAWS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DKB', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DKB', 'DKB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DP', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DP', 'DP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DsunS', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DsunS', 'DSunS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Emmid', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Emmid', 'Emmid');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'ExREN', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'ExREN', 'ExREN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'FAV', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'FAV', 'FAV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Fish', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Fish', 'Fish');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'FunArts', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'FunArts', 'FunArts');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'GERMini', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'GERMini', 'GERMini');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Hakata Ramen', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Hakata Ramen', 'Hakata Ramen');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Hall_of_C', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Hall_of_C', 'Hall of C');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Hatsuyuki', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Hatsuyuki', 'Hatsuyuki');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'HAV1T', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'HAV1T', 'HAV1T');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'HENiL', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'HENiL', 'HENiL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Hitoku', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Hitoku', 'Hitoku');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'HollowRoxas', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'HollowRoxas', 'HollowRoxas');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'HR', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'HR', 'HR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'ICEBLUE', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'ICEBLUE', 'ICEBLUE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'iPUNISHER', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'iPUNISHER', 'iPUNISHER');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'JacobSwaggedUp', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'JacobSwaggedUp', 'JacobSwaggedUp');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Johnny-englishsubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Johnny-englishsubs', 'Johnny-englishsubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Kallango', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Kallango', 'Kallango');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Kanjouteki', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Kanjouteki', 'Kanjouteki');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'KEKMASTERS', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'KEKMASTERS', 'KEKMASTERS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Kirion', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Kirion', 'Kirion');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'KQRM', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'KQRM', 'KQRM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'KRP', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'KRP', 'KRP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'LoliHouse', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'LoliHouse', 'LoliHouse');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'M@nI', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'M@nI', 'M@nI');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'mal lu zen', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'mal lu zen', 'mal lu zen');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Man.K', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Man.K', 'Man K');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Maximus', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Maximus', 'Maximus');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'MD', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'MD', 'MD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'mdcx', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'mdcx', 'mdcx');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Metaljerk', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Metaljerk', 'Metaljerk');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'MGD', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'MGD', 'MGD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'MiniFreeza', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'MiniFreeza', 'MiniFreeza');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'MiniMTBB', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'MiniMTBB', 'MiniMTBB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'MinisCuba', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'MinisCuba', 'MinisCuba');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'MiniTheatre', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'MiniTheatre', 'MiniTheatre');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Mites', 'release_title', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Mites', 'Mites');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Modders Bay', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Modders Bay', 'Modders Bay');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Mr. Deadpool', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Mr. Deadpool', 'Mr Deadpool');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'NemDiggers', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'NemDiggers', 'NemDiggers');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'neoHEVC', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'neoHEVC', 'neoHEVC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Nokou', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Nokou', 'Nokou');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'NoobSubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'NoobSubs', 'Noob Subs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'NS', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'NS', 'NS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Nyanpasu', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Nyanpasu', 'Nyanpasu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'OldCastle', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'OldCastle', 'OldCastle');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Pantsu', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Pantsu', 'Pantsu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Pao', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Pao', 'Pao');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'phazer11', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'phazer11', 'phazer11');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Pixel', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Pixel', 'Pixel');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Plex Friendly', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Plex Friendly', 'Plex Friendly');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'PnPSubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'PnPSubs', 'PnPSubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Polarwindz', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Polarwindz', 'Polarwindz');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Project-gxs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Project-gxs', 'Project-gxs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'PuyaSubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'PuyaSubs', 'PuyaSubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'QaS', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'QaS', 'QAS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'QCE', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'QCE', 'QCE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Rando235', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Rando235', 'Rando235');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Ranger', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Ranger', 'Ranger');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Rapta', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Rapta', 'Rapta');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Raw Files', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Raw Files', 'Raw Files');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Raze', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Raze', 'Raze');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Reaktor', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Reaktor', 'Reaktor');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'RightShiftBy2', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'RightShiftBy2', 'RightShiftBy2');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Rip Time', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Rip Time', 'Rip Time');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SAD', 'release_title', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SAD', 'SAD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Salieri', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Salieri', 'Salieri');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Samir755', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Samir755', 'Samir755');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SanKyuu', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SanKyuu', 'SanKyuu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SEiN', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SEiN', 'SEiN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'sekkusu&ok', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'sekkusu&ok', 'sekkusu&ok');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SHFS', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SHFS', 'SHFS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'shincaps', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'shincaps', 'shincaps');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SLAX', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SLAX', 'SLAX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Sokudo', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Sokudo', 'sokudo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SRW', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SRW', 'SRW');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SSA', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SSA', 'SSA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'StrayGods', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'StrayGods', 'StrayGods');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Suki Desu', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Suki Desu', 'Suki Desu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'TeamTurquoize', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'TeamTurquoize', 'TeamTurquoize');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Tenrai Sensei', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Tenrai Sensei', 'Tenrai Sensei');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'TnF', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'TnF', 'TnF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'TOPKEK', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'TOPKEK', 'TOPKEK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Trix', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Trix', 'Trix');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'U3-Web', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'U3-Web', 'U3-Web');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'UNBIASED', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'UNBIASED', 'UNBIASED');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'uP', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'uP', 'uP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'USD', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'USD', 'USD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Valenciano', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Valenciano', 'Valenciano');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'VipapkStudios', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'VipapkStudios', 'VipapkStudios');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Wardevil', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Wardevil', 'Wardevil');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'WtF Anime', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'WtF Anime', 'WtF Anime');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'xiao-av1', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'xiao-av1', 'xiao-av1');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Yabai_Desu_NeRandomRemux', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Yabai_Desu_NeRandomRemux', 'Yabai_Desu_NeRandomRemux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'YakuboEncodes', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'YakuboEncodes', 'YakuboEncodes');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'youshikibi', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'youshikibi', 'youshikibi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'YuiSubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'YuiSubs', 'YuiSubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Yun', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Yun', 'Yun');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'zza', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'zza', 'zza');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Ari (Radarr)', 'release_title', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ari (2)', '\[Ari\]|-Ari\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ari (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Ari (Radarr)', 'Ari (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'DaddySubs (Radarr)', 'release_title', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DaddySubs', '\[Daddy(Subs)?\]|-Daddy(Subs)?\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DaddySubs', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'DaddySubs (Radarr)', 'DaddySubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'Mites (Radarr)', 'release_title', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Mites (2)', '\b(Mites)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Mites (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'Mites (Radarr)', 'Mites (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ Groups', 'SAD (Radarr)', 'release_title', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SAD (2)', '\[SAD\]|-SAD\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAD (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ Groups', 'SAD (Radarr)', 'SAD (2)');
-- --- END

-- --- BEGIN ( update custom_format "Anime Web Tier 01" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Anime Web Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 01', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 01', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 01', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'Arg0', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'Arg0', 'Arg0');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'Arid', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'Arid', 'Arid');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'Baws', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Baws (2)', '\b(Baws)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Baws (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'Baws', 'Baws (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'FLE', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'FLE', 'FLE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'LostYears', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'LostYears', 'LostYears');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'LYS1TH3A', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'LYS1TH3A', 'LYS1TH3A');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'McBalls', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('McBalls', '\b(McBalls)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('McBalls', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'McBalls', 'McBalls');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'sam', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'sam', 'sam');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'SCY', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'SCY', 'SCY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'Setsugen', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'Setsugen', 'Setsugen');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'smol', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'smol', 'smol');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'SoM', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'SoM', 'SoM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'Vodes', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'Vodes', 'Vodes');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'Z4ST1N', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'Z4ST1N', 'Z4ST1N');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 01', 'ZeroBuild', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 01', 'ZeroBuild', 'ZeroBuild');
-- --- END

-- --- BEGIN ( update custom_format "Anime Web Tier 02" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Anime Web Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 02', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 02', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 02', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', '0x539', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', '0x539', '0x539');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Asakura', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Asakura', 'Asakura');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'BlackRose', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'BlackRose', 'BlackRose');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Cyan', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Cyan', 'Cyan');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Cytox', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Cytox', 'Cytox');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Dae', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Dae', 'Dae (Anime WEB)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Foxtrot', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Foxtrot', 'Foxtrot');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Gao', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Gao', 'Gao');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'GSK_kun', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'GSK_kun', 'GSK_kun');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Half-Baked', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Half-Baked', 'Half-Baked');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'HatSubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'HatSubs', 'HatSubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'MALD', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'MALD', 'MALD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'MTBB', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'MTBB', 'MTBB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Not-Vodes', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Not-Vodes', 'Not-Vodes');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Okay-Subs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Okay-Subs', 'Okay-Subs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Pizza', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Pizza', 'Pizza');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Reza', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Reza', 'Reza');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Slyfox', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Slyfox', 'Slyfix');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'SoLCE', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'SoLCE', 'SoLCE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 02', 'Tenshi', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 02', 'Tenshi', 'Tenshi');
-- --- END

-- --- BEGIN ( update custom_format "Anime Web Tier 03" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Anime Web Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 03', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 03', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 03', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'AnoZu', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 03', 'AnoZu', 'AnoZu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'Dooky', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 03', 'Dooky', 'Dooky');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'Kitsune', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 03', 'Kitsune', 'Kitsune Release Title');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'SubsPlus+', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 03', 'SubsPlus+', 'SubsPlus+');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 03', 'ZR', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 03', 'ZR', 'ZR (WEB)');
-- --- END

-- --- BEGIN ( update custom_format "Anime Web Tier 04" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Anime Web Tier 04';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 04', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 04', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 04', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 04', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 04', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 04', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 04', 'Erai-Raws', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 04', 'Erai-Raws', 'Erai-Raws');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 04', 'ToonsHub', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 04', 'ToonsHub', 'ToonsHub');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 04', 'VARYG', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 04', 'VARYG', 'VARYG');
-- --- END

-- --- BEGIN ( update custom_format "Anime Web Tier 05" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Anime Web Tier 05';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 05', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 05', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 05', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'BlueLobster', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'BlueLobster', 'BlueLobster');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'GST', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'GST', 'GST');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'HorribleRips', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'HorribleRips', 'HorribleRips');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'HorribleSubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'HorribleSubs', 'HorribleSubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'KAN3D2M', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'KAN3D2M', 'KAN3D2M Release Title');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'KiyoshiStar', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'KiyoshiStar', 'KiyoshiStar');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'Lia', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'Lia', 'Lia');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'NanDesuKa', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'NanDesuKa', 'NanDesuKa');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'PlayWeb', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'PlayWeb', 'PlayWeb Release Title');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'SobsPlease', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'SobsPlease', 'SobsPlease');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'Some-Stuffs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'Some-Stuffs', 'Some-Stuffs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'SubsPlease', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'SubsPlease', 'SubsPlease');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'URANIME', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'URANIME', 'URANIME');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 05', 'ZigZag', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 05', 'ZigZag', 'ZigZag');
-- --- END

-- --- BEGIN ( update custom_format "Anime Web Tier 06" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Anime Web Tier 06';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 06', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 06', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Anime Web Tier 06', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', '9volt', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', '9volt', '9volt');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'Asenshi', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'Asenshi', 'Asenshi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'Chihiro', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'Chihiro', 'Chihiro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'Commie', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'Commie', 'Commie');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'DameDesuYo', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'DameDesuYo', 'DameDesuYo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'Doki', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'Doki', 'Doki');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'GJM', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'GJM', 'GJM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'Kaleido', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'Kaleido', 'Kaleido');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'Kantai', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'Kantai', 'Kantai');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'KawaSubs', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'KawaSubs', 'KawaSubs');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Web Tier 06', 'Tsundere', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Web Tier 06', 'Tsundere', 'Tsundere');
-- --- END

-- --- BEGIN ( update custom_format "BCORE" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'BCORE';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BCORE', 'Bravia Core', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Bravia Core (2)', '\b(BCORE)\b|\b(\d{3,4}(p|i))\b.*\b(CORE)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('BCORE', 'Bravia Core', 'Bravia Core (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BCORE', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('BCORE', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BCORE', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('BCORE', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( update custom_format "BR-DISK" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'BR-DISK';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BR-DISK', 'BR-DISK', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('BR-DISK', 'BR-DISK', 'BR-DISK');
-- --- END

-- --- BEGIN ( update custom_format "Bad Dual Groups" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Bad Dual Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'alfaHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('alfaHD', '^(alfaHD.*)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('alfaHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'alfaHD', 'alfaHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'BAT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BAT', '^(BAT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BAT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'BAT', 'BAT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'BiOMA', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BiOMA', '^(BiOMA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiOMA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'BiOMA', 'BiOMA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'BlackBit', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BlackBit', '^(BlackBit)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlackBit', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'BlackBit', 'BlackBit');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'BNd', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BNd', '^(BNd)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BNd', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'BNd', 'BNd');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'C.A.A', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('C.A.A', '^(C\.A\.A)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('C.A.A', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'C.A.A', 'C.A.A');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'C76', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('C76', '^(C76)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('C76', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'C76', 'C76');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'Cory', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cory', '^(Cory)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Cory', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'Cory', 'Cory');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'CYPHER', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CYPHER', '^(CYPHER)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CYPHER', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'CYPHER', 'CYPHER');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'EniaHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'EniaHD', 'EniaHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'EXTREME', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EXTREME', '^(EXTREME)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EXTREME', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'EXTREME', 'EXTREME');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'FF', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FF', '^(FF)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FF', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'FF', 'FF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'FOXX', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FOXX', '^(FOXX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FOXX', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'FOXX', 'FOXX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'G4RiS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('G4RiS', '^(G4RiS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('G4RiS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'G4RiS', 'G4RiS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'GUEIRA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GUEIRA', '^(GUEIRA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GUEIRA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'GUEIRA', 'GUEIRA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'LCD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LCD', '^(LCD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LCD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'LCD', 'LCD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'MLH', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MLH', '^(MLH)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MLH', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'MLH', 'MLH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'N3G4N', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('N3G4N', '^(N3G4N)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('N3G4N', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'N3G4N', 'N3G4N');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'OldT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OldT (2)', '^(OldT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OldT (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'OldT', 'OldT (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'PD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PD', '^(PD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'PD', 'PD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'PTHome', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PTHome', '^(PTHome)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PTHome', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'PTHome', 'PTHome');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'RiPER', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RiPER', '^(RiPER)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RiPER', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'RiPER', 'RiPER');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'RK', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RK', '^(RK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RK', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'RK', 'RK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'SiGLA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiGLA', '^(SiGLA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiGLA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'SiGLA', 'SiGLA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'Tars', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tars', '^(Tars)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tars', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'Tars', 'Tars');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'tokar86a', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('tokar86a', '^(tokar86a)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('tokar86a', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'tokar86a', 'tokar86a');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'TURG', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'TURG', 'TURG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'vnlls', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('vnlls', '^(vnlls)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('vnlls', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'vnlls', 'vnlls');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'WTV', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WTV', '^(WTV)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WTV', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'WTV', 'WTV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'XiQUEXiQUE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('XiQUEXiQUE', '^(XiQUEXiQUE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('XiQUEXiQUE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'XiQUEXiQUE', 'XiQUEXiQUE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'Yatogam1', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Yatogam1', '^(Yatogam1)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yatogam1', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'Yatogam1', 'Yatogam1');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'YusukeFLA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YusukeFLA', '^(YusukeFLA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YusukeFLA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'YusukeFLA', 'YusukeFLA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'ZigZag', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZigZag (2)', '^(ZigZag)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZigZag (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'ZigZag', 'ZigZag (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'ZNM', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZNM', '^(ZNM)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZNM', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'ZNM', 'ZNM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'MGE', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MGE', '^(MGE\b.*)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MGE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'MGE', 'MGE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'ONLYMOViE', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ONLYMOViE', '^(ONLYMOViE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ONLYMOViE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'ONLYMOViE', 'ONLYMOViE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'TM', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TM', '^(TM\b)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TM', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'TM', 'TM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'TvR', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'TvR', 'TvR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'Bad Dual Groups (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Bad Dual Groups (Radarr)', '^(MGE.*|TM)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Bad Dual Groups (Radarr)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'Bad Dual Groups (Radarr)', 'Bad Dual Groups (Radarr)');
-- --- END

-- --- BEGIN ( update custom_format "CRAV" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'CRAV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CRAV', 'Crave', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Crave (2)', '\b(crav(e)?)\b[ ._-]web[ ._-]?(dl|rip)?\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CRAV', 'Crave', 'Crave (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CRAV', 'Crave Rename', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Crave Rename', '\[(CRAV)\b|\b(CRAV)\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CRAV', 'Crave Rename', 'Crave Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CRAV', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('CRAV', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CRAV', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('CRAV', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( update custom_format "DSCP" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DSCP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'Discovery+', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'Discovery+', 'Discovery+');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'DSCP Rename', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DSCP Rename', '\[(DSCP)\b|\b(DSCP)\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DSCP', 'DSCP Rename', 'DSCP Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DSCP', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DSCP', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DSCP', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( update custom_format "DTS" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Basic DTS', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Basic DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not DTS-HD', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not DTS-HD', 'DTS-HD MA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not DTS-HD HRA/ES', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not DTS-HD HRA/ES', 'DTS-HD HRA-ES');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not DTS X', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not DTS X', '\b(dts[-_.: ]?x7?)\b(?![-_. ]?(26[456]))', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not DTS X', 'Not DTS X');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS', 'Not PCM', 'PCM');
-- --- END

-- --- BEGIN ( update custom_format "DTS-ES" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'DTS-ES', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'DTS-ES', 'DTS-ES');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not Basic DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not Basic DTS', 'Basic DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not Basic Dolby Digital ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not Basic Dolby Digital ', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not DTS X', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not DTS X', 'Not DTS X');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-ES', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-ES', 'Not PCM', 'PCM');
-- --- END

-- --- BEGIN ( update custom_format "DTS-HD HRA" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'DTS-HD HRA', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'DTS-HD HRA', 'DTS-HD HRA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not Basic DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not Basic DTS', 'Basic DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not Basic Dolby Digital ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not Basic Dolby Digital ', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not DTS X', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not DTS X', 'Not DTS X');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not PCM', 'PCM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not DTS-ES', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not DTS-ES', 'dts.?es', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not DTS-ES', 'Not DTS-ES');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD HRA', 'Not 6.1 Surround', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not 6.1 Surround (2)', '[^0-9]6[ .][0-1]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD HRA', 'Not 6.1 Surround', 'Not 6.1 Surround (2)');
-- --- END

-- --- BEGIN ( update custom_format "DTS-HD MA" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'DTS-HD MA', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'DTS-HD MA', 'DTS-HD MA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not Basic Dolby Digital ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not Basic Dolby Digital ', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not DTS X', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not DTS X', 'Not DTS X');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not PCM', 'PCM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS-HD MA', 'Not DTS-HD HRA/ES', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS-HD MA', 'Not DTS-HD HRA/ES', 'DTS-HD HRA-ES');
-- --- END

-- --- BEGIN ( update custom_format "DTS X" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DTS X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'DTS X', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'DTS X', 'Not DTS X');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'Not Basic DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'Not Basic DTS', 'Basic DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DTS X', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DTS X', 'Not PCM', 'PCM');
-- --- END

-- --- BEGIN ( update custom_format "DD" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DD';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD', 'Basic Dolby Digital', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD', 'Basic Dolby Digital', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD', 'Not PCM', 'PCM');
-- --- END

-- --- BEGIN ( update custom_format "DD+" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'DD+';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+', 'Dolby Digital Plus', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dolby Digital Plus', '\bDD[P+](?!A)|\b(e[-_. ]?ac-?3)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+', 'Dolby Digital Plus', 'Dolby Digital Plus');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not TrueHD/ATMOS (2)', '\b(True[ .-]?HD|ATMOS|DDPA)(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+', 'Not PCM', 'PCM');
-- --- END

-- --- BEGIN ( update custom_format "Extras" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Extras';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Extras', 'Extras', 'release_title', 'sonarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extras', 'Extras', 'TV Extras');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Extras', 'Extras (Radarr)', 'release_title', 'radarr', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Extras (2)', '(?<=\b[12]\d{3}\b).*\b(Extras|Bonus|Extended[ ._-]Clip)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extras', 'Extras (Radarr)', 'Extras (2)');
-- --- END

-- --- BEGIN ( update custom_format "FUNi" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'FUNi';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FUNi', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FUNi', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FUNi', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FUNi', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FUNi', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FUNi', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FUNi', 'Funimation', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FUNi', 'Funimation', 'FUNI');
-- --- END

-- --- BEGIN ( update custom_format "HD Bluray Tier 01" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'BLURAY', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HD Bluray Tier 01', 'BLURAY', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HD Bluray Tier 01', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('HD Bluray Tier 01', 'Not 2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'Chotab', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Chotab', '^(Chotab)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Chotab', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'Chotab', 'Chotab');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'CtrlHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'CtrlHD', 'CtrlHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'DON', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DON', '^(DON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'DON', 'DON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'EbP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EbP', '^(EbP)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EbP', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'EbP', 'EbP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'NTb', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'NTb', 'NTb');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'PTer', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'PTer', 'PTer');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'Not REMUX (Radarr)', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('HD Bluray Tier 01', 'Not REMUX (Radarr)', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'ATELiER', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'ATELiER', 'ATELiER');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'BBQ', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BBQ', '^(BBQ)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BBQ', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'BBQ', 'BBQ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'BMF', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'BMF', 'BMF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'c0kE', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('c0kE', '^(c0kE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('c0kE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'c0kE', 'c0kE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'CRiSC', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CRiSC', '^(CRiSC)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CRiSC', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'CRiSC', 'CRiSC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'D-Z0N3', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('D-Z0N3', '^(D-Z0N3)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('D-Z0N3', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'D-Z0N3', 'D-Z0N3');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'Dariush', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dariush', '^(Dariush)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dariush', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'Dariush', 'Dariush');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'decibeL', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'decibeL', 'decibeL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'EDPH', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'EDPH', 'EDPH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'Geek', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Geek', '^(Geek)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Geek', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'Geek', 'Geek');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'LolHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LolHD', '^(LolHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LolHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'LolHD', 'LolHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'NCmt', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'NCmt', 'NCmt');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'TayTO', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TayTO', '^(TayTO)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TayTO', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'TayTO', 'TayTO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'TDD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TDD', '^(TDD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TDD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'TDD', 'TDD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'TnP', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TnP', '^(TnP)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TnP', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'TnP', 'TnP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'VietHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VietHD', '^(VietHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('VietHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'VietHD', 'VietHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'ZQ', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'ZQ', 'ZQ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 01', 'ZoroSenpai', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZoroSenpai', '^(ZoroSenpai)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZoroSenpai', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 01', 'ZoroSenpai', 'ZoroSenpai');
-- --- END

-- --- BEGIN ( update custom_format "HD Bluray Tier 02" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'BLURAY', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HD Bluray Tier 02', 'BLURAY', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HD Bluray Tier 02', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('HD Bluray Tier 02', 'Not 2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'SA89', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SA89', '^(SA89)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SA89', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'SA89', 'SA89');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'sbR', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('sbR', '^(sbR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('sbR', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'sbR', 'sbR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'Not REMUX (Radarr)', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('HD Bluray Tier 02', 'Not REMUX (Radarr)', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'EA', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EA', '^(EA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'EA', 'EA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'HiDt', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HiDt', '^(HiDt)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiDt', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'HiDt', 'HiDt');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'HiSD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HiSD', '^(HiSD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiSD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'HiSD', 'HiSD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'iFT', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'iFT', 'iFT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'NTb', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'NTb', 'NTb');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'QOQ', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QOQ', '^(QOQ)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QOQ', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'QOQ', 'QOQ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'SoLaR', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SoLaR', '^(SoLaR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SoLaR', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'SoLaR', 'SoLaR');
-- --- END

-- --- BEGIN ( update custom_format "HD Bluray Tier 03" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'HD Bluray Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'BLURAY', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HD Bluray Tier 03', 'BLURAY', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'Not REMUX', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('HD Bluray Tier 03', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('HD Bluray Tier 03', 'Not 2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'BHDStudio', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'BHDStudio', 'BHDStudio');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'hallowed', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'hallowed', 'hallowed');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'HiFi', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'HiFi', 'HiFi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'HONE', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'HONE', 'HONE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'LoRD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LoRD', '^(LoRD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LoRD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'LoRD', 'LoRD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'playHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('playHD', '^(playHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('playHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'playHD', 'playHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'SPHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SPHD', '^(SPHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SPHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'SPHD', 'SPHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 03', 'W4NK3R', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('W4NK3R', '^(W4NK3R)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('W4NK3R', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 03', 'W4NK3R', 'W4NK3R');
-- --- END

-- --- BEGIN ( update custom_format "HDR10+ Boost" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'HDR10+ Boost';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HDR10+ Boost', 'HDR10+', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR10+ Boost', 'HDR10+', 'HDR10+');
-- --- END

-- --- BEGIN ( update custom_format "HLG" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'HLG';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HLG', 'HLG', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HLG', 'HLG', 'HLG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HLG', 'Not HDR10+', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not HDR10+', '\bHDR10(\+|P(lus)?\b)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HLG', 'Not HDR10+', 'Not HDR10+');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HLG', 'Not HDR10', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not HDR10', '\bHDR10(?!\+|Plus)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HLG', 'Not HDR10', 'Not HDR10');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HLG', 'Not PQ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HLG', 'Not PQ', 'PQ');
-- --- END

-- --- BEGIN ( update custom_format "IMF" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'IMF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'Interoperable Master Format', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IMF', 'Interoperable Master Format', 'IMF');
-- --- END

-- --- BEGIN ( update custom_format "LQ" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', '126811', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('126811', '^(126811)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', '126811', '126811');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'BRiNK', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BRiNK', '^(BRiNK)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'BRiNK', 'BRiNK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'BTM', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BTM', '^(BTM)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'BTM', 'BTM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CHX', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CHX', '^(CHX)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CHX', 'CHX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CTFOH', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CTFOH', '^(CTFOH)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CTFOH', 'CTFOH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'd3g', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'd3g', 'd3g');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'DepraveD', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'DepraveD', 'DepraveD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'EVO', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EVO', '^(EVO)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'EVO', 'EVO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Feranki1980', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Feranki1980 (2)', '^(Feranki1980)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Feranki1980', 'Feranki1980 (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'FGT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FGT', '^(FGT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'FGT', 'FGT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'FMD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FMD', '^(FMD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'FMD', 'FMD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'GHOSTS', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GHOSTS', '^(GHOSTS)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'GHOSTS', 'GHOSTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'HiQVE', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HiQVE', '^(HiQVE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'HiQVE', 'HiQVE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'iNTENSO', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iNTENSO', '^(iNTENSO)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'iNTENSO', 'iNTENSO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'iVy', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'iVy', 'iVy');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'JFF', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'JFF', 'JFF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'KC', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KC', '^(KC)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'KC', 'KC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'MeGusta', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'MeGusta', 'MeGusta');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'nhanc3', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('nhanc3', '^(nhanc3)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'nhanc3', 'nhanc3');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'OFT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OFT', '^(OFT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'OFT', 'OFT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Pahe', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pahe (2)', 'Pahe(\.(ph|in))?\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Pahe', 'Pahe (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'PSA', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'PSA', 'PSA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'SasukeducK', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'SasukeducK', 'SasukeducK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'SHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SHD', '^(SHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'SHD', 'SHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'ShieldBearer', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ShieldBearer', '^(ShieldBearer)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'ShieldBearer', 'ShieldBearer');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TBS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TBS', '^(TBS)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TBS', 'TBS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TG', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TG', '^(TG)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TG', 'TG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'VIDEOHOLE', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VIDEOHOLE', '^(VIDEOHOLE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'VIDEOHOLE', 'VIDEOHOLE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'worldmkv', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('worldmkv', '^(worldmkv)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'worldmkv', 'worldmkv');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'XLF', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('XLF', '^(XLF)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'XLF', 'XLF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Zero00', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Zero00', '^(Zero00)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Zero00', 'Zero00');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', '24xHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('24xHD', '\b(24xHD)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', '24xHD', '24xHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', '41RGB', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('41RGB', '^(41RGB)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', '41RGB', '41RGB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', '4K4U', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4K4U', '^(4K4U)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', '4K4U', '4K4U');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'AOC', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AOC', '^(AOC)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'AOC', 'AOC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'AROMA', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AROMA', '^(AROMA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'AROMA', 'AROMA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'aXXo', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('aXXo', '^(aXXo)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'aXXo', 'aXXo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'AZAZE', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AZAZE', '^(AZAZE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'AZAZE', 'AZAZE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'BARC0DE', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BARC0DE', '^(BARC0DE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'BARC0DE', 'BARC0DE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'BAUCKLEY', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BAUCKLEY', '^(BAUCKLEY)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'BAUCKLEY', 'BAUCKLEY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'BdC', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BdC', '^(BdC)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'BdC', 'BdC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'beAst', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('beAst', '^(beAst)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'beAst', 'beAst');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'C1NEM4', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('C1NEM4', '^(C1NEM4)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'C1NEM4', 'C1NEM4');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'C4K', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('C4K', '^(C4K)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'C4K', 'C4K');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CDDHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CDDHD', '^(CDDHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CDDHD', 'CDDHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CHAOS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CHAOS', '^(CHAOS)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CHAOS', 'CHAOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CHD', '^(CHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CHD', 'CHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CiNE', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CiNE', '^(CiNE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CiNE', 'CiNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CLEANUP', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CLEANUP', 'CLEANUP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'COLLECTiVE', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('COLLECTiVE', '^(COLLECTiVE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'COLLECTiVE', 'COLLECTiVE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CREATiVE24', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CREATiVE24 (2)', '^(CREATiVE24)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CREATiVE24', 'CREATiVE24 (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'CrEwSaDe', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CrEwSaDe', '^(CrEwSaDe)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'CrEwSaDe', 'CrEwSaDe');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'DDR', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DDR', '^(DDR)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'DDR', 'DDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'DNL', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DNL', '^(DNL)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'DNL', 'DNL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'DRX', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DRX', '^(DRX)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'DRX', 'DRX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'E', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'E', 'E');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'EPiC', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EPiC', '^(EPiC)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'EPiC', 'EPiC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'EuReKA', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EuReKA', '^(EuReKA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'EuReKA', 'EuReKA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'FaNGDiNG0', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FaNGDiNG0', '^(FaNGDiNG0)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'FaNGDiNG0', 'FaNGDiNG0');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'FRDS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FRDS', '^(FRDS)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'FRDS', 'FRDS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'FS', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'FS', 'FS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'FZHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FZHD', '^(FZHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'FZHD', 'FZHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'GalaxyRG', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GalaxyRG (2)', '^(GalaxyRG)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'GalaxyRG', 'GalaxyRG (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'GHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GHD', '^(GHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'GHD', 'GHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'GPTHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GPTHD', '^(GPTHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'GPTHD', 'GPTHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'HDHUB4U', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDHUB4U', '^(HDHUB4U)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'HDHUB4U', 'HDHUB4U');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'HDS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDS', '^(10bit-)?HDS$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'HDS', 'HDS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'HDT', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDT', '^(HDT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'HDT', 'HDT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'HDTime', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDTime', '^(HDTime)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'HDTime', 'HDTime');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'HDWinG', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDWinG', '^(HDWinG)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'HDWinG', 'HDWinG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'iPlanet', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iPlanet', '^(iPlanet)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'iPlanet', 'iPlanet');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'jennaortega', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('jennaortega (2)', '^(jennaortega(UHD)?)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'jennaortega', 'jennaortega (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'KiNGDOM', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KiNGDOM', '^(KiNGDOM)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'KiNGDOM', 'KiNGDOM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'KIRA', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KIRA', '^(KIRA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'KIRA', 'KIRA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'L0SERNIGHT', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('L0SERNIGHT', '^(L0SERNIGHT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'L0SERNIGHT', 'L0SERNIGHT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'LAMA', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'LAMA', 'LAMA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Leffe', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Leffe', '^(Leffe)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Leffe', 'Leffe');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Liber8', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Liber8', '^(Liber8)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Liber8', 'Liber8');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'LiGaS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LiGaS', '^(LiGaS)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'LiGaS', 'LiGaS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'LUCY', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'LUCY', 'LUCY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'MarkII', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MarkII', '^(MarkII)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'MarkII', 'MarkII');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Mesc', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Mesc', '^(Mesc)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Mesc', 'Mesc');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'mHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('mHD', '^(mHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'mHD', 'mHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'mSD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('mSD', '^(mSD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'mSD', 'mSD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'MTeam', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MTeam', '^(MTeam|MT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'MTeam', 'MTeam');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'MySiLU', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MySiLU', '^(MySiLU)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'MySiLU', 'MySiLU');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'NhaNc3', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NhaNc3', '^(NhaNc3)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'NhaNc3', 'NhaNc3');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'nHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('nHD', '^(nHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'nHD', 'nHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'nikt0', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('nikt0', '^(nikt0)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'nikt0', 'nikt0');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'NoGroup', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NoGroup', 'NoGr(ou)?p', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'NoGroup', 'NoGroup');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'nSD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('nSD', '^(nSD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'nSD', 'nSD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'PATOMiEL', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PATOMiEL', '^(PATOMiEL)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'PATOMiEL', 'PATOMiEL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'PRODJi', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PRODJi', '^(PRODJi)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'PRODJi', 'PRODJi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'PTNK', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PTNK', '^(PTNK)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'PTNK', 'PTNK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'RARBG', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RARBG (2)', '^(RARBG)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'RARBG', 'RARBG (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'RBB', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RBB', '^(RBB)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'RBB', 'RBB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'RDN', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RDN', '^(RDN)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'RDN', 'RDN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'RiffTrax', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RiffTrax', '^(Rifftrax)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'RiffTrax', 'RiffTrax');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'RU4HD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RU4HD', '^(RU4HD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'RU4HD', 'RU4HD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'SANTi', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SANTi', '^(SANTi)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'SANTi', 'SANTi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Scene', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scene', '^(Scene)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Scene', 'Scene');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'STUTTERSHIT', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('STUTTERSHIT', '^(STUTTERSHIT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'STUTTERSHIT', 'STUTTERSHIT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'SUNSCREEN', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SUNSCREEN', '^(SUNSCREEN)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'SUNSCREEN', 'SUNSCREEN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'SyncUP', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'SyncUP', 'SyncUP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TEKNO3D', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TEKNO3D (2)', '^(TEKNO3D)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TEKNO3D', 'TEKNO3D (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Tigole', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tigole', '^(Tigole)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Tigole', 'Tigole');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TIKO', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TIKO', '^(TIKO)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TIKO', 'TIKO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'VISIONPLUSHDR', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VISIONPLUSHDR', '^(VISIONPLUSHDR(-X|1000)?)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'VISIONPLUSHDR', 'VISIONPLUSHDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'WAF', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WAF', '^(WAF)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'WAF', 'WAF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'WiKi', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WiKi', '^(WiKi)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'WiKi', 'WiKi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'x0r', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('x0r', '^(x0r)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'x0r', 'x0r');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'YIFY', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YIFY (2)', '^(YIFY)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'YIFY', 'YIFY (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'YTS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YTS', '^(YTS(.(MX|LT|AG))?)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'YTS', 'YTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'Zeus', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Zeus', '^(Zeus)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'Zeus', 'Zeus');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TRaSH LQ (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TRaSH LQ (Radarr)', 'TRaSH LQ (Radarr)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LQ', 'TRaSH LQ (Sonarr)', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LQ', 'TRaSH LQ (Sonarr)', 'TRaSH LQ (Sonarr)');
-- --- END

-- --- BEGIN ( update custom_format "Not German or English" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Not German or English';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German or English', 'Not English Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German or English', 'Not English Language', 'English', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German or English', 'Not German Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German or English', 'Not German Language', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German or English', 'Not German in Title', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Not German or English', 'Not German in Title', 'Not German in Title');
-- --- END

-- --- BEGIN ( update custom_format "PCOK" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'PCOK';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCOK', 'Peacock TV', 'release_title', 'sonarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCOK', 'Peacock TV', 'Peacock TV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCOK', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('PCOK', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCOK', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('PCOK', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCOK', 'Peacock TV (Radarr)', 'release_title', 'radarr', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Peacock TV (2)', '\b(pcok|peacock)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCOK', 'Peacock TV (Radarr)', 'Peacock TV (2)');
-- --- END

-- --- BEGIN ( update custom_format "PMTP" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'PMTP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PMTP', 'Paramount+', 'release_title', 'sonarr', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Paramount+ (2)', '\b(pmtp|Paramount\+)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PMTP', 'Paramount+', 'Paramount+ (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PMTP', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('PMTP', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PMTP', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('PMTP', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PMTP', 'Paramount+ (Radarr)', 'release_title', 'radarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PMTP', 'Paramount+ (Radarr)', 'Paramount+');
-- --- END

-- --- BEGIN ( update custom_format "Special Edition" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Special Edition';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Special Edition', 'Special Edition', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Special Edition (2)', '(?<!^)\b(extended|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition)(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Special Edition', 'Special Edition', 'Special Edition (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Special Edition', 'Not IMAX Edition', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not IMAX Edition', '\b(IMAX[ ._-]Edition)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Special Edition', 'Not IMAX Edition', 'Not IMAX Edition');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Special Edition', 'Not Open Matte', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Special Edition', 'Not Open Matte', 'Open Matte');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Special Edition', 'Not Theatrical', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Theatrical', 'Theatrical', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Special Edition', 'Not Theatrical', 'Not Theatrical');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Special Edition', 'Not Extended Clip', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Special Edition', 'Not Extended Clip', 'Extended Clip');
-- --- END

-- --- BEGIN ( update custom_format "TheFarm" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'TheFarm';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TheFarm', 'TheFarm', 'release_group', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TheFarm', 'TheFarm', 'TheFarm');
-- --- END

-- --- BEGIN ( update custom_format "Theatrical Cut" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'Theatrical Cut';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Theatrical Cut', 'Theatrical', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Theatrical Cut', 'Theatrical', 'Not Theatrical');
-- --- END

-- --- BEGIN ( update custom_format "TrueHD" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'TrueHD';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'TrueHD', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TrueHD (2)', 'True[ .-]?HD', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'TrueHD', 'TrueHD (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'ATMOS', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ATMOS', '\bATMOS(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'ATMOS', 'ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'Not Atmos Group (non-5.1)', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Atmos Group (non-5.1)', '^(?!.*[^0-9]5[ .][0-1]\b).*\b(HQMUX|W4NK3R|DON|CtrlHD|3L)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'Not Atmos Group (non-5.1)', 'Not Atmos Group (non-5.1)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
-- --- END

-- --- BEGIN ( update custom_format "UHD Bluray Tier 01" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', 'Not REMUX', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('UHD Bluray Tier 01', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', 'Not WEBDL', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray Tier 01', 'Not WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', 'Not WEBRIP', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray Tier 01', 'Not WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('UHD Bluray Tier 01', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', 'CtrlHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 01', 'CtrlHD', 'CtrlHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', 'MainFrame', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MainFrame', '^(MainFrame)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MainFrame', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 01', 'MainFrame', 'MainFrame');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', 'DON', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 01', 'DON', 'DON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 01', 'W4NK3R', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 01', 'W4NK3R', 'W4NK3R');
-- --- END

-- --- BEGIN ( update custom_format "UHD Bluray Tier 02" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', 'Not REMUX', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('UHD Bluray Tier 02', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', 'Not WEBDL', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray Tier 02', 'Not WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', 'Not WEBRIP', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray Tier 02', 'Not WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('UHD Bluray Tier 02', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', 'HiDt', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 02', 'HiDt', 'HiDt');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', 'HQMUX', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HQMUX', '^(HQMUX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HQMUX', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 02', 'HQMUX', 'HQMUX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', 'RandomBytes', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RandomBytes', '^(RandomBytes)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RandomBytes', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 02', 'RandomBytes', 'RandomBytes');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 02', 'SoLaR', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 02', 'SoLaR', 'SoLaR');
-- --- END

-- --- BEGIN ( update custom_format "UHD Bluray Tier 03" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'UHD Bluray Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'Not REMUX', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('UHD Bluray Tier 03', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'Not WEBDL', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray Tier 03', 'Not WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'Not WEBRIP', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray Tier 03', 'Not WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('UHD Bluray Tier 03', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'BHDStudio', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 03', 'BHDStudio', 'BHDStudio');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'hallowed', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 03', 'hallowed', 'hallowed');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'HONE', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 03', 'HONE', 'HONE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'PTer', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 03', 'PTer', 'PTer');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'SPHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 03', 'SPHD', 'SPHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray Tier 03', 'WEBDV', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WEBDV', '^(WEBDV)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WEBDV', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray Tier 03', 'WEBDV', 'WEBDV');
-- --- END

-- --- BEGIN ( update custom_format "UHD Streaming Boost" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'UHD Streaming Boost';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Streaming Boost', 'Disney+', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Streaming Boost', 'Disney+', 'Disney+');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Streaming Boost', 'HBO Max', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Streaming Boost', 'HBO Max', 'HBO Max');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Streaming Boost', 'HMAX Rename', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Streaming Boost', 'HMAX Rename', 'HBO Max Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Streaming Boost', 'Netflix', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Streaming Boost', 'Netflix', 'Netflix');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Streaming Boost', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Streaming Boost', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Streaming Boost', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Streaming Boost', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Streaming Boost', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('UHD Streaming Boost', '2160p', '2160p');
-- --- END

-- --- BEGIN ( update custom_format "VP9" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'VP9';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VP9', 'VP9', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VP9 (2)', '\bVP9\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VP9', 'VP9', 'VP9 (2)');
-- --- END

-- --- BEGIN ( update custom_format "VRV" )
DELETE FROM custom_format_conditions WHERE custom_format_name = 'VRV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VRV', 'VRV', 'release_title', 'sonarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VRV', 'VRV', 'VRV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VRV', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('VRV', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VRV', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('VRV', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VRV', 'WEB', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('VRV', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VRV', 'VRV (Radarr)', 'release_title', 'radarr', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VRV (2)', '\b(vrv)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VRV', 'VRV (Radarr)', 'VRV (2)');
-- --- END

update "custom_formats" set "description" = '**1080p**

This Custom Format can boost 1080p releases. It is only useful if you use Merge Qualities{:target="\_blank" rel="noopener noreferrer"} in your Quality Profile.' where "name" = '1080p';
insert into "tags" ("name") values ('Resolution (Optional)') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p', 'Resolution (Optional)');
update "custom_formats" set "description" = '**10bit**

This Custom Format covers releases that are 10bit.' where "name" = '10bit';
insert into "tags" ("name") values ('Anime Optional') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('10bit', 'Anime Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('10bit', 'TRaSH');
insert into "tags" ("name") values ('Audio Channels') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('2.0 Stereo', 'Audio Channels');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('2.0 Stereo', 'TRaSH');
insert into "tags" ("name") values ('Unwanted Formats') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('3D', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('3D', 'TRaSH');
update "custom_formats" set "description" = '**4K Remaster**

A 4K remaster means the original film or video was scanned and digitally remastered at 4K resolution (3840x2160 pixels), improving image detail, color accuracy, and overall viewing quality. For older films originally shot on 35mm film, this process involves scanning the original film negative at 4K or higher resolution, followed by frame-by-frame digital cleanup, color correction, and damage repair. The result is a sharper, more detailed image with improved color that is better suited for modern 4K displays.

A 4K remaster differs from a 4K upscale. A remaster goes back to the original film source for the highest possible quality, while an upscale simply increases the resolution of an existing digital version, often with less detail and clarity.

For more information, visit the [Remaster Wikipedia page](https://en.wikipedia.org/wiki/Remaster){:target="_blank" rel="noopener noreferrer"}.' where "name" = '4K Remaster';
insert into "tags" ("name") values ('Movie Versions') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('4K Remaster', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('5.1 Surround', 'Audio Channels');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('5.1 Surround', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('7.1 Surround', 'Audio Channels');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('7.1 Surround', 'TRaSH');
update "custom_formats" set "description" = '**720p**

This Custom Format can boost 720p releases. It is only useful if you use Merge Qualities{:target="\_blank" rel="noopener noreferrer"} in your Quality Profile.' where "name" = '720p';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('720p', 'Resolution (Optional)');
update "custom_formats" set "description" = '**AAC (Lossy)**

AAC (Advanced Audio Coding) is a lossy digital audio compression format, originally designed as a successor to MP3. It became standardized in 1997 and is widely used in cell phones, game consoles, digital radio, and streaming platforms. AAC delivers superior sound quality compared to MP3 at the same bit rate, and has been widely adopted as the default audio format by major platforms including YouTube, iPhone, iPod, iPad, and Apple iTunes. Like all lossy formats, some audio data is permanently removed during compression, though the difference is rarely noticeable to most listeners.

For more information, visit the [AAC Wikipedia page](https://en.wikipedia.org/wiki/Advanced_Audio_Coding){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'AAC';
insert into "tags" ("name") values ('Audio Formats') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AAC', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AAC', 'TRaSH');
update "custom_formats" set "description" = '**ABEMA**

ABEMA is a Japanese streaming service owned by CyberAgent and TV Asahi, launched in April 2016. It operates primarily as a free, ad-supported platform offering around 25 live channels, covering news, anime, original dramas, reality dating shows, and sports, with an optional paid premium tier for on-demand content. It is primarily available in Japan and is well known for its live sports broadcasting, including the 2022 FIFA World Cup.

For more information, visit the [ABEMA Wikipedia page](https://en.wikipedia.org/wiki/Abema){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'ABEMA';
insert into "tags" ("name") values ('Streaming Services') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ABEMA', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ABEMA', 'TRaSH');
update "custom_formats" set "description" = '**ADN (Animation Digital Network)**

ADN (Animation Digital Network) is the largest French streaming platform dedicated to animation, offering a wide range of anime genres including action, adventure, romance, and comedy, alongside cult titles such as One Piece, Dragon Ball, Naruto, and Attack on Titan. The service is available for free or through a premium plan that removes ads and provides access to simulcast series available shortly after their Japanese broadcast. It is primarily aimed at French-speaking audiences in Europe.

No English Wikipedia page is currently available, but you can find more information on the [ADN official website](https://animationdigitalnetwork.com){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'ADN';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ADN', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ADN', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AMZN', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AMZN', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ATV', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ATV', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ATVP', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ATVP', 'TRaSH');
update "custom_formats" set "description" = '**AV1**

AV1 encodes are currently targeting small file sizes, rather than good visual quality.

- This is a new codec and you need modern devices that support it.
- We also had reports of playback/transcoding issues.
- No main group is actually using it (yet).
- It''s better to ignore this new codec to prevent compatibility issues' where "name" = 'AV1';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AV1', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AV1', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 01**

Groups that do the best releases as per SeaDex. They are more consistent and trump others.' where "name" = 'Anime BD Tier 01';
insert into "tags" ("name") values ('Anime Release Groups') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 01', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 01', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 02**

Groups that do the best releases as per SeaDex. They are more consistent and trump others.' where "name" = 'Anime BD Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 02', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 02', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 03**

Groups that do the best releases as per SeaDex. They are more consistent and trump others.' where "name" = 'Anime BD Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 03', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 03', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 04**

Groups that do the best releases as per SeaDex. They are more consistent and trump others.' where "name" = 'Anime BD Tier 04';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 04', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 04', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 05**

Groups that are consistent and do Remuxes.' where "name" = 'Anime BD Tier 05';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 05', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 05', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 06**

FanSub groups that are consistent.' where "name" = 'Anime BD Tier 06';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 06', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 06', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 07**

Known P2P and Scene Anime groups.' where "name" = 'Anime BD Tier 07';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 07', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 07', 'TRaSH');
update "custom_formats" set "description" = '**Anime BD Tier 08**

Know groups that do mini encodes.' where "name" = 'Anime BD Tier 08';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 08', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime BD Tier 08', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Dual Audio', 'Anime Optional');
update "custom_formats" set "description" = '**Anime LQ Groups**

A collection of known low-quality groups.' where "name" = 'Anime LQ Groups';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime LQ Groups', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime LQ Groups', 'TRaSH');
update "custom_formats" set "description" = '**Anime Raws**

A collection of known groups that release raws.' where "name" = 'Anime Raws';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Raws', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Raws', 'TRaSH');
update "custom_formats" set "description" = '**Anime Web Tier 01**

Groups that do the best releases as per SeaDex. They are more consistent and trump others.' where "name" = 'Anime Web Tier 01';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 01', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 01', 'TRaSH');
update "custom_formats" set "description" = '**Anime Web Tier 02**

Groups that do the best releases as per SeaDex. They are more consistent and trump others.' where "name" = 'Anime Web Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 02', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 02', 'TRaSH');
update "custom_formats" set "description" = '**Anime Web Tier 03**

Official sub groups that tend to be more consistent and release fast.' where "name" = 'Anime Web Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 03', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 03', 'TRaSH');
update "custom_formats" set "description" = '**Anime Web Tier 04**

Official sub groups.' where "name" = 'Anime Web Tier 04';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 04', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 04', 'TRaSH');
update "custom_formats" set "description" = '**Anime Web Tier 05**

FanSub groups that are consistent.' where "name" = 'Anime Web Tier 05';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 05', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 05', 'TRaSH');
update "custom_formats" set "description" = '**Anime Web Tier 06**

FanSub groups that are consistent.' where "name" = 'Anime Web Tier 06';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 06', 'Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Web Tier 06', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Black and White Editions', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Black and White Editions', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BCORE', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BCORE', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BHDStudio', 'TRaSH');
update "custom_formats" set "description" = '**BR-DISK**

This is a custom format to help Radarr/Sonarr recognize and ignore BR-DISK (ISOs and Blu-ray folder structure) in addition to the standard BR-DISK quality.

**Note:**
Depending on your renaming scheme, it could happen that Radarr will match renamed files after they are downloaded and imported as `BR-DISK`,
This is a cosmetic annoyance until we come up with another way to solve this,
Since this Custom Format is used not to download BR-DISK, it fulfills its purpose as intended.
There are several reasons why this is happening:

- Blame the often incorrectly used naming of x265 encodes.
- Radarr/Sonarr uses dynamic custom formats.

--8<-- "includes/cf-descriptions/apply-10000.md"' where "name" = 'BR-DISK';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BR-DISK', 'Unwanted Formats');
update "custom_formats" set "description" = '**Bad Dual/Multi groups**

These release groups often do not set the original language of the media as the first audio track. Since ffprobe relies on the first audio track to determine the release''s primary language, incorrect ordering can cause parsing errors. This may lead to failed imports, misidentified files, or download loops. To ensure proper processing, the original language should always be the first audio track in the release.' where "name" = 'Bad Dual Groups';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Bad Dual Groups', 'Unwanted Formats');
update "custom_formats" set "description" = '**CBC Gem (Canadian Broadcasting Corporation)**

CBC Gem is the Canadian Broadcasting Corporation''s free digital streaming service, offering on-demand shows, movies, news, documentaries, and live TV streams from up to 14 regional CBC channels across Canada. A free account is required to watch, with an optional paid Premium plan that removes ads and adds access to CBC News Network. It is only available to viewers in Canada.

For more information, visit the [Canadian Broadcasting Corporation Wikipedia page](https://en.wikipedia.org/wiki/Canadian_Broadcasting_Corporation){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'CBC';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CBC', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CBC', 'TRaSH');
update "custom_formats" set "description" = '**Comedy Central**

Comedy Central is an American cable channel owned by the MTV Entertainment Group, a division of Paramount Skydance. Launched in 1991, it broadcasts comedy programming including original series, licensed shows, stand-up specials, and feature films. Comedy Central content is available to stream on Paramount+, where subscribers can access their favorite shows from the channel.

For more information, visit the [Comedy Central Wikipedia page](https://en.wikipedia.org/wiki/Comedy_Central){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'CC';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CC', 'Streaming Services');
update "custom_formats" set "description" = '**Crunchyroll (CR)**

Crunchyroll is an American subscription streaming service owned by Sony, dedicated to anime and manga. It offers a large library of anime series and films, with simulcast episodes available at or near the same time as their Japanese broadcast, in both subtitled and dubbed formats. It is free to watch with ads, with an optional paid subscription for ad-free viewing. It is available in over 200 countries and is one of the most popular anime streaming services in the world.

For more information, visit the [Crunchyroll Wikipedia page](https://en.wikipedia.org/wiki/Crunchyroll){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'CR';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CR', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CR', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CRAV', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CRAV', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CRiT', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CRiT', 'TRaSH');
update "custom_formats" set "description" = '**Criterion Collection**

The Criterion Collection is a home entertainment distribution company focused on licensing, restoring, and distributing important classic and contemporary films. A sister company of arthouse film distributor Janus Films, Criterion serves film scholars, cinephiles, and public and academic libraries. It has produced and distributed more than 1,500 special editions across VHS, LaserDisc, DVD, Blu-ray, and Ultra HD Blu-ray formats, covering titles from over 600 directors across more than 50 countries. Releases are known for their high-quality restorations, detailed bonus features, scholarly essays, and director-approved transfers.

For more information, visit the [Criterion Collection Wikipedia page](https://en.wikipedia.org/wiki/The_Criterion_Collection){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'Criterion Collection';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Criterion Collection', 'Movie Versions');
update "custom_formats" set "description" = '**DC Universe (DCU)**

DC Universe was an American subscription streaming service operated by DC Entertainment and Warner Bros. Digital Networks, launched on September 15, 2018. It featured animated and live-action series based on DC Comics properties, a rotating back catalogue of DC Comics publications, and exclusive original shows such as Titans, Doom Patrol, Harley Quinn, and Young Justice. In January 2021, the video streaming service was shut down and relaunched as DC Universe Infinite, a digital comics-only service, with all original programming moving to HBO Max.

For more information, visit the [DC Universe Wikipedia page](https://en.wikipedia.org/wiki/DC_Universe_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'DCU';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DCU', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DSCP', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DSCP', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DSNP', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DSNP', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS-ES', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS-ES', 'TRaSH');
update "custom_formats" set "description" = '**DTS-HD HRA (Lossy)**

DTS-HD High Resolution Audio (DTS-HD HRA) is a high-resolution but lossy audio format developed by DTS. It offers a higher bit rate and more audio detail than standard DTS, with support for up to 8 channels and data rates of up to 6 Mbit/s on Blu-ray. Unlike DTS-HD Master Audio, which is lossless, DTS-HD HRA uses lossy compression, meaning some audio information is discarded during encoding. It is backward compatible with standard DTS decoders and is sometimes used on Blu-ray discs where disc space is a concern, as a lower-footprint alternative to DTS-HD MA.

For more information, visit the [DTS-HD Master Audio Wikipedia page](https://en.wikipedia.org/wiki/DTS-HD_Master_Audio){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'DTS-HD HRA';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS-HD HRA', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS-HD MA', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS-HD MA', 'TRaSH');
update "custom_formats" set "description" = '**DTS:X (Lossless)**

DTS:X is an object-based 3D surround sound format developed by DTS, designed to place sounds anywhere in a three-dimensional space around the listener. It is carried by DTS-HD Master Audio, a lossless audio codec commonly used on Blu-ray discs, supporting up to 7.1 channels plus additional audio objects at 96 kHz/24-bit quality. DTS:X supports flexible speaker placement, allowing audio to be remapped to any speaker configuration, with up to 32 speaker locations.

For more information, visit the [DTS:X Wikipedia page](https://en.wikipedia.org/wiki/DTS:X){:target="_blank" rel="noopener noreferrer"} and the [DTS-HD Master Audio Wikipedia page](https://en.wikipedia.org/wiki/DTS-HD_Master_Audio){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'DTS X';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS X', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DTS X', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DD', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DD', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DD+', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DD+', 'TRaSH');
insert into "tags" ("name") values ('HDR Formats') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DV Boost', 'HDR Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DV Boost', 'TRaSH');
update "custom_formats" set "description" = '**Dubs Only**

This Custom Format covers releases that only have Dubs.' where "name" = 'Dubs Only';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dubs Only', 'Anime Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dubs Only', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Extras', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Extras', 'TRaSH');
update "custom_formats" set "description" = '**Funimation**

Funimation was an American anime streaming service launched in 2016, known for popular titles such as Dragon Ball, One Piece, Attack on Titan, and My Hero Academia. It was one of the leading distributors of anime in North America and was owned by Sony. On April 2, 2024, Funimation shut down and merged into Crunchyroll, where most of its content library is now available.

For more information, visit the [Funimation Wikipedia page](https://en.wikipedia.org/wiki/Funimation){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'FUNi';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FUNi', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FUNi', 'TRaSH');
update "custom_formats" set "description" = '**Language: German**

This custom format helps Radarr/Sonarr recognize German audio releases that contain only a German language track and no others. It will add `German` to your filename.' where "name" = 'German';
insert into "tags" ("name") values ('Language Profiles') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German', 'Language Profiles');
update "custom_formats" set "description" = '**German 1080p Booster**

As the scores for German groups are higher, we need to introduce resolution boosters to ensure upgradability between resolutions, allowing for upgrades from English to German.' where "name" = 'German 1080p Booster';
insert into "tags" ("name") values ('German Miscellaneous') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German 1080p Booster', 'German Miscellaneous');
update "custom_formats" set "description" = '**German Anime Bluray Tier 01**

- **Source:** Direct Bluray Remux/BDMV, no Re-Encodes.
- **Video:** Advanced filtering that *fixes* known BD problems where present, e.g. banding, rescale-issues, chroma shift, wrong/missing decimation, duplicate-frame patterns - plus the usual debanding, de-/regraining, anti-aliasing, dehaloing. Filters must improve the image to avoid nuking detail (no over-strong filtering).
- **Audio:** Lossless preserved, but de-bloated where sensible - e.g. DTS-HD MA/PCM -> FLAC (often ~50% smaller). If the source is pointless-bloated (e.g. random 24-bit tracks), normalization to a practical lossless target (commonly 16-bit FLAC) is acceptable within this tier''s logic. Lossy tracks (AC3, etc.) are not re-encoded.
- **QC & Features:**
- **Subtitles:** ASS/SSA preferred. Best case: properly typeset Web-subs (e.g. CR) when available and correctly synced. Otherwise: high-quality OCR of BD-PGS with readable styling (border/shadow) and sensible timing alignment. Raw PGS only if unavoidable. Fonts attached where needed.
- **Chapters:** Present (from disc or accurately transferred).
- **Tags:** Clean metadata, correct language codes, correct track naming, fonts attached for ASS.' where "name" = 'German Anime Bluray Tier 01';
insert into "tags" ("name") values ('German Anime Release Groups') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 01', 'German Anime Release Groups');
update "custom_formats" set "description" = '**German Anime Bluray Tier 02**

- **Source:** Direct Bluray Remux/BDMV, no Re-Encodes.
- **Video:** Casual filtering (debanding, de-/regraining, anti-aliasing, dehaloing). Improvements are visible, but the release typically does not (consistently) address heavier BD issues like chroma shift, bad decimation/duplicate-frame patterns, or rescale problems.
- **Audio:** Lossless may be kept as-is or converted losslessly to FLAC. Lossy audio is not re-encoded.
- **QC & Features:**
- **Subtitles:** OCR''d BD subs or Web-subs included, basic readability styling expected. Raw PGS is acceptable. Fonts may or may not be attached.
- **Chapters:** Usually present, can be basic.
- **Tags:** Mostly correct, occasional inconsistencies.' where "name" = 'German Anime Bluray Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 02', 'German Anime Release Groups');
update "custom_formats" set "description" = '**German Anime Bluray Tier 03**

- **Source:** Direct Bluray Remux/BDMV, no Re-Encodes.
- **Video:** No filtering/basic encode approach. Can be fine on clean discs, but commonly carries over BD flaws (banding, chroma shift, bad/absent decimation with duplicates, rescale issues). Encoding artifacts are typically only noticeable on closer inspection, but underlying source issues remain.
- **Audio:** Typically original tracks (often bloated). Lossless-to-FLAC savings are usually not applied. Lossy audio remains untouched.
- **QC & Features:**
- **Subtitles:** Raw BD-PGS common, limited typesetting, timing not optimized. Little/no OCR, little/no styling work.
- **Chapters:** May be missing or pass-through only.
- **Tags:** Messy or inconsistent naming/metadata more likely.' where "name" = 'German Anime Bluray Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Bluray Tier 03', 'German Anime Release Groups');
update "custom_formats" set "description" = '**German Anime Scene**

Known German Scene groups (which are not defined as LQ).' where "name" = 'German Anime Scene';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Scene', 'German Anime Release Groups');
update "custom_formats" set "description" = '**German Anime Web Tier 01**

- **Source:** WEB-DL (Lossless download from top providers like AMZN, CR, NF, ADN).
- **Video:** Untouched Video Stream preferred. Always aim for the best available stream from the provider; note that the highest bitrate does not always equal the best visual quality. If encoded, it must have a good reason and be visually transparent or better (e.g. rescaling/filtering). There are few good reasons to reencode. Avoid fake 2160p/4K releases (especially from providers like Bilibili or iQIYI).
- **Audio:** Best available bitrate from the provider. Dual Audio (GER+JPN) or OmU (Original with Subs) if no Dub exists.
- **QC & Features:**
- **Subtitles:** Format must be ASS/SSA. If source is VTT/TTML/SRT, it must be converted and properly styled (readable font, shadow/border). No raw text-based subs. If source is ASS, the subs should contain basic fixes like LayoutRes and set “ScaledBorderAndShadow: Yes”. If the release contains a dub, forced and full subtitles should be included.
- **Chapters:** Mandatory. Named chapters preferred, but accurately generated markers are acceptable.
- **Tags:** Clean metadata, correct language codes. Should follow MKV best practices.
- **Fonts:** All used fonts must be attached. Attachment names should match the full font name (e.g., Times New Roman Bold.ttf instead of timesbd.ttf) to ensure maximum player compatibility.' where "name" = 'German Anime Web Tier 01';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 01', 'German Anime Release Groups');
update "custom_formats" set "description" = '**German Anime Web Tier 02**

- **Source:** WEB-DL or high-quality WEBRip (from reputable sources).
- **Video:** Untouched streams or high-quality encodes (preferably H.265/HEVC or H.264). Must be free of obvious artifacts (blocking, heavy noise) and maintain visual integrity.
- **Audio:** Standard streams (AAC/E-AC3). Dual Audio or OmU accepted.
- **QC & Features:**
- **Subtitles:** ASS or SRT included. Must be readable. If using SRT, correct encoding (UTF-8) is mandatory to avoid broken characters.
- **Chapters:** Basic markers are highly encouraged, but not strictly mandatory if the source lacks them.
- **Tags:** Proper filenames following scene or p2p “standards”. Correct language tags for audio and subtitle tracks are expected for player automation.' where "name" = 'German Anime Web Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 02', 'German Anime Release Groups');
update "custom_formats" set "description" = '**German Anime Web Tier 03**

- **Source:** WEB-DLs or WEBRip from less reliable providers or inconsistent releases from groups lacking commitment.
- **Video:** Functional, but often lacks consistency across different episodes/seasons. Encoding artifacts are only visible upon close inspection.
- **QC & Features:**
- **Subtitles:** SRT/ASS included.
- **Chapters:** Missing entirely.
- **Tags:** Messy or incomplete tags and filenames.' where "name" = 'German Anime Web Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Anime Web Tier 03', 'German Anime Release Groups');
update "custom_formats" set "description" = '**Language: German + Original aka German DL**

This custom format helps Radarr/Sonarr recognize German Dual Language audio releases.

- Add this Custom Format with the default score of `-10000` to prevent getting releases that include `German + Original audio`.
- Add this Custom Format with a score of +`10001` if you prefer releases that include `German + Original audio`,  It will add `German DL` to your filename.' where "name" = 'German DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL', 'Language Profiles');
update "custom_formats" set "description" = '**Language: German DL (undefined)**

This Custom Format is mainly used to fix files that are wrongly named after import.

- For example, suppose the filename suggests it is only German but actually contains German and English audio.
- It is also useful for users who use a non-optimal file naming that does not follow suggested naming schemes
- example: `John Wick Kapitel 2 (2017) 2160p HDR 7.1, 7.1 ger, eng Vio`' where "name" = 'German DL (undefined)';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL (undefined)', 'Language Profiles');
update "custom_formats" set "description" = '**German Anime Subbed**

Used to recognize German (and possibly English) subtitles.' where "name" = 'German Subbed';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Subbed', 'German Miscellaneous');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HBO', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HBO', 'TRaSH');
update "custom_formats" set "description" = '**HD Bluray Tier 01**

Groups that:

- Have built a strong reputation for consistently delivering excellent quality releases
- Optimize their releases whilst keeping them transparent, using high-quality sources
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'HD Bluray Tier 01';
insert into "tags" ("name") values ('HQ Release Groups') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HD Bluray Tier 01', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HD Bluray Tier 01', 'TRaSH');
update "custom_formats" set "description" = '**HD Bluray Tier 02**

Groups that:

- Have proven themselves by consistently delivering good quality releases
- Use high-quality sources
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'HD Bluray Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HD Bluray Tier 02', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HD Bluray Tier 02', 'TRaSH');
update "custom_formats" set "description" = '**HD Bluray Tier 03**

Groups that:

- Are new, and have released several dozen objectively good quality releases
- Have retired and their releases don''t meet current quality standards
- Pay good attention to detail and use reliable sources
- Groups that have been added in conjunction with specific quality profiles
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'HD Bluray Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HD Bluray Tier 03', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HD Bluray Tier 03', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HD Streaming Boost', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HDR', 'HDR Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HDR10+ Boost', 'HDR Formats');
insert into "tags" ("name") values ('HDR Optional') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HLG', 'HDR Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HLG', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HMAX', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HMAX', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Hulu', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Hulu', 'TRaSH');
update "custom_formats" set "description" = '**IMAX**

IMAX, which stands for Image Maximum, is a proprietary motion picture projection format developed by the Canadian company IMAX Corporation in the late 1960s. IMAX theaters are known for their massive screens, significantly larger than those in standard cinemas, providing a more immersive viewing experience. IMAX uses an expanded aspect ratio of 1.43:1, much taller and squarer than the typical widescreen ratio of 2.39:1, capturing significantly more image detail compared to standard cinema formats. Films shot natively with IMAX cameras, such as those by Christopher Nolan, use the full 1.43:1 frame, showing more picture at the top and bottom of the screen compared to standard releases.

For more information, visit the [IMAX Wikipedia page](https://en.wikipedia.org/wiki/IMAX){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'IMAX';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IMAX', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IMAX', 'TRaSH');
update "custom_formats" set "description" = '**IMAX Enhanced**

**Get more picture and fewer black bars (letterboxing).**

IMAX Enhanced is a certification program designed to ensure the highest quality playback at home, covering resolution, color, brightness, contrast, and sound. Launched by IMAX and DTS, it combines digitally remastered 4K HDR content with DTS audio technologies, requiring certified consumer electronics to meet a strict set of audio and video performance standards. The audio portion uses a variant of the DTS:X immersive audio format to recreate a deeper, wider soundstage than typical home audio.

Note: IMAX Enhanced is a home video certification standard for streaming and disc releases, and is separate from the IMAX cinema format used in theaters.

For more information, visit the [IMAX Enhanced Wikipedia page](https://en.wikipedia.org/wiki/IMAX_Enhanced){:target="_blank" rel="noopener noreferrer"}.

Due to the higher bitrate and implied picture quality improvement, it is recommended that the IMAX Enhanced custom format be enabled on WEB profiles, especially for those seeking "The IMAX Experience" including fewer black bars or letterboxing.' where "name" = 'IMAX Enhanced';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IMAX Enhanced', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IMAX Enhanced', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IMF', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IMF', 'TRaSH');
update "custom_formats" set "description" = '**LQ**

- A collection of known low-quality groups (often banned from the top trackers due to their lack of quality), banned or dishonest release groups, or rips/encodes from the scene and quick-to-release P2P groups that, while adequate, are typically not regarded as high quality.
- Release groups that disrupt the Starr apps automation because their poor naming could potentially create download loops, even if their overall quality is excellent.' where "name" = 'LQ';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('LQ', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('LQ', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('LQ (Release Title)', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MA', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MA', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MAX', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MAX', 'TRaSH');
insert into "tags" ("name") values ('Release Type (Optional)') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Multi-Episode', 'Release Type (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('NF', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('NF', 'TRaSH');
update "custom_formats" set "description" = '**Language: Not German or English**

Used to avoid releases which do not contain German or English audio.' where "name" = 'Not German or English';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German or English', 'Language Profiles');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German or English', 'TRaSH');
update "custom_formats" set "description" = '**Language: Not German, Japanese or English**

Used to avoid releases which do not contain German, Japanese or English audio.' where "name" = 'Not German, Japanese or English';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German, Japanese or English', 'Language Profiles');
update "custom_formats" set "description" = '**Language: Not Original (Original Only)**

This custom format is used to identify and avoid releases that do not contain the original language audio track of the film or TV show. When applied, it will flag any release where the original language is not included as an available audio option, helping ensure that only releases with the original language audio are downloaded.' where "name" = 'Language: Not Original';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Not Original', 'Language Profiles');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Not Original', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('PCOK', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('PCOK', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('PLAY', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('PMTP', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('PMTP', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ROKU', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ROKU', 'TRaSH');
update "custom_formats" set "description" = '**Remaster**

A remaster is a change in the sound or image quality of previously created media, whether audio, cinematic, or video. The resulting product is said to be remastered, and the terms "digital remastering" and "digitally remastered" are also commonly used. Remastering adapts older content for modern high-definition standards by enhancing visuals and sound, while respecting the original. This typically includes resolution upscaling, color grading, and audio enhancement to ensure compatibility with today''s displays and surround sound systems.

A remaster differs from a restoration. A restoration goes back to the original film elements for the most faithful result, while a remaster improves an existing digital version without necessarily returning to the source material.

For more information, visit the [Remaster Wikipedia page](https://en.wikipedia.org/wiki/Remaster){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'Remaster';
insert into "tags" ("name") values ('Series Versions') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remaster', 'Series Versions');
update "custom_formats" set "description" = '**Remux Tier 01**

Groups that:

- Have built a strong reputation for consistently delivering excellent quality releases
- Pay exceptional attention to detail and carefully analyze all available sources
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'Remux Tier 01';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 01', 'HQ Release Groups');
update "custom_formats" set "description" = '**Remux Tier 02**

Groups that:

- Are new and haven''t released many titles yet
- Have retired and their releases don''t meet current quality standards
- Pay good attention to detail and use reliable sources
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'Remux Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 02', 'HQ Release Groups');
update "custom_formats" set "description" = '**Remux Tier 03**

Groups that:

- Are new and haven''t released many titles yet
- Have retired and their releases don''t meet current quality standards
- Pay good attention to detail and use reliable sources
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'Remux Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Remux Tier 03', 'HQ Release Groups');
update "custom_formats" set "description" = '**Repack / Proper**

A Repack is a re-release of a file by the same release group, issued to fix a problem with the original release, such as a corrupted file, incorrect audio sync, or missing content. A Proper is a re-release issued by a different release group to correct or improve upon a flawed release from another group.

Both Repack and Proper releases are considered higher quality than the original flawed release they replace, and should generally be preferred over the original when available.' where "name" = 'Repack/Proper';
insert into "tags" ("name") values ('Repacks/Proper (Required)') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Repack/Proper', 'Repacks/Proper (Required)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Repack/Proper', 'TRaSH');
update "custom_formats" set "description" = '**Repack 2**

A Repack 2 is a second re-release of a scene or P2P release, issued by the original release group to fix errors or quality issues that were not resolved in the first repack. Common reasons for a Repack 2 include persistent audio sync issues, corrupted video, incorrect subtitles, or other technical problems that remained after the initial repack. A Repack 2 supersedes both the original release and the first repack, and should be preferred over earlier versions of the same release.' where "name" = 'Repack2';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Repack2', 'Repacks/Proper (Required)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Repack2', 'TRaSH');
update "custom_formats" set "description" = '**Repack 3**

A Repack 3 is a third re-release of a scene or P2P release, issued to fix errors or quality issues found in the original release and two previous repacks. Each repack is published by the original release group to correct problems such as audio sync issues, missing content, corrupt files, or incorrect encoding settings. A Repack 3 indicates that two prior attempts to fix the release were made before this corrected version was issued.' where "name" = 'Repack3';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Repack3', 'Repacks/Proper (Required)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Repack3', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SHO', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SHO', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('STAN', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('STAN', 'TRaSH');
update "custom_formats" set "description" = '**Syfy**

Syfy is an American pay TV channel owned by Versant, originally launched in 1992 as the Sci-Fi Channel before being rebranded as Syfy in 2009. It specializes in science fiction, fantasy, and horror programming. Syfy''s streaming home is Peacock, NBCUniversal''s streaming service, where current and classic Syfy original series are available, including Resident Alien, The Ark, and Farscape. A TV provider login is required to watch live content through the Syfy app.

For more information, visit the [Syfy Wikipedia page](https://en.wikipedia.org/wiki/Syfy){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'SYFY';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SYFY', 'Streaming Services');
update "custom_formats" set "description" = '**Season Pack**

**This CF utilizes functionality only available starting in Sonarr v4.0.2.1262.:**
This Custom Format can be used to prefer or exclude season packs

- Give it a score of `10` if you prefer a season pack.
- Give it a score of `-10000` if you prefer to not download season packs.
- Utilizes the "Release Type" custom format condition added in v4.0.2.1262, Season Pack source status is now persistently stored alongside episodes.

**Info:**
- This Custom Format could previously result in download loops. The new "Release Type" custom format condition now prevents this undesired behavior. :bangbang:
- This will upgrade your already downloaded single episodes :bangbang:' where "name" = 'Season Pack';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Season Pack', 'Release Type (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Season Pack', 'TRaSH');
update "custom_formats" set "description" = '**Sing-Along Versions**

Versions of musical films that have sing-along lyrics hardcoded into the video stream.' where "name" = 'Sing-Along Versions';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Sing-Along Versions', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Sing-Along Versions', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Special Edition', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TheFarm', 'TRaSH');
update "custom_formats" set "description" = '**Theatrical Cut**

The Theatrical Cut is the version of a film that was officially released and shown in movie theaters. It represents the version approved by the studio for public release and is generally considered the definitive version of a film, as it reflects the final creative and editorial decisions made before the film''s cinema debut.

It is distinct from other versions such as the Director''s Cut, Extended Cut, or Special Edition, which may add, remove, or alter scenes compared to what audiences originally saw in theaters.' where "name" = 'Theatrical Cut';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Theatrical Cut', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Theatrical Cut', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TrueHD', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TrueHD', 'TRaSH');
update "custom_formats" set "description" = '**UHD Bluray Tier 01**

Groups that:

- Have built a strong reputation for consistently delivering excellent quality releases
- Optimize their releases whilst keeping them transparent, using high-quality sources
- Make releases that contain lossless audio tracks where available
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'UHD Bluray Tier 01';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Bluray Tier 01', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Bluray Tier 01', 'TRaSH');
update "custom_formats" set "description" = '**UHD Bluray Tier 02**

Groups that:

- Have proven themselves by consistently delivering good quality releases
- Use high-quality sources
- Make releases that contain lossless audio tracks where available
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'UHD Bluray Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Bluray Tier 02', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Bluray Tier 02', 'TRaSH');
update "custom_formats" set "description" = '**UHD Bluray Tier 03**

Groups that:

- Are new, and have released several dozen objectively good quality releases
- Have retired and their releases don''t meet current quality standards
- Pay good attention to detail and use reliable sources
- Groups that have been added in conjunction with specific quality profiles
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'UHD Bluray Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Bluray Tier 03', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Bluray Tier 03', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Streaming Boost', 'Streaming Services');
update "custom_formats" set "description" = '**Uncensored**

This Custom Format covers releases that are uncensored.' where "name" = 'Uncensored';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Uncensored', 'Anime Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Uncensored', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Upscaled', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Upscaled', 'TRaSH');
update "custom_formats" set "description" = '**VOSTFR**

Indicates soundtrack in the original language, with French subtitles. It should be noted that SUBFRENCH is included inside this Custom Format. However, SUB often means that the subtitle was embedded inside the picture (hardcoded). French releases tend to mix both, leading to some VOSTFR being labeled as SUBFRENCH and SUBFRENCH as VOSTFR.' where "name" = 'VOSTFR';
insert into "tags" ("name") values ('French Audio Version') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VOSTFR', 'French Audio Version');
insert into "tags" ("name") values ('Miscellaneous (Optional)') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VP9', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VP9', 'TRaSH');
update "custom_formats" set "description" = '**VRV**

VRV (pronounced "verve") was an American streaming service launched in November 2016, bundling together anime, fantasy, educational, and gaming-related content aimed at fans of those genres. It was only available in the United States. In April 2023, VRV shut down and its content was merged into Crunchyroll.

For more information, visit the [VRV Wikipedia page](https://en.wikipedia.org/wiki/VRV_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'VRV';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VRV', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VRV', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEB Scene', 'HQ Release Groups');
update "custom_formats" set "description" = '**WEB Tier 01**

Groups that:

- Have built a strong reputation for consistently delivering excellent quality releases
- Create hybrids using multiple high-quality sources
- Sign up for the gentleman list on a certain private tracker (TV releases)
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'WEB Tier 01';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEB Tier 01', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEB Tier 01', 'TRaSH');
update "custom_formats" set "description" = '**WEB Tier 02**

Groups that:

- Have proven themselves by consistently delivering good quality releases
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'WEB Tier 02';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEB Tier 02', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEB Tier 02', 'TRaSH');
update "custom_formats" set "description" = '**WEB Tier 03**

Groups that:

- Are new, and have released several dozen objectively good quality releases
- Have retired and their releases don''t meet current quality standards
- Follow the [Contributing General Guidelines](https://github.com/TRaSH-Guides/Guides/blob/master/CONTRIBUTING.md#general-guidelines){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'WEB Tier 03';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEB Tier 03', 'HQ Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEB Tier 03', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('YOUKU', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('YOUKU', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('hallowed', 'TRaSH');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('iT', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('iT', 'TRaSH');
update "custom_formats" set "description" = '**v0**

Custom Format to cover releases named with v0 which we don''t want.' where "name" = 'v0';
insert into "tags" ("name") values ('Anime Versions') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v0', 'Anime Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v0', 'TRaSH');
update "custom_formats" set "description" = '**v1**

Custom Format to cover v1 releases.' where "name" = 'v1';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v1', 'Anime Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v1', 'TRaSH');
update "custom_formats" set "description" = '**v2**

Custom Format to cover v2 releases.' where "name" = 'v2';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v2', 'Anime Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v2', 'TRaSH');
update "custom_formats" set "description" = '**v3**

Custom Format to cover v3 releases.' where "name" = 'v3';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v3', 'Anime Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v3', 'TRaSH');
update "custom_formats" set "description" = '**v4**

Custom Format to cover v4 releases.' where "name" = 'v4';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v4', 'Anime Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('v4', 'TRaSH');
update "custom_formats" set "description" = '**x265**

x265 is an encoder for creating digital video streams in the High Efficiency Video Coding (HEVC/H.265) compression format, developed by MulticoreWare. It delivers up to 50% better compression than H.264 while maintaining high quality, making it ideal for 4K, 8K, and HDR workflows including HDR10, HDR10+, and Dolby Vision.

Note the following applies to all x265/HEVC releases that are not remuxes.

x265 is primarily used for 2160p encodes and for 1080p encodes that include HDR formats such as Dolby Vision, HDR10, and others. It works best when the source is a high-quality remux or untouched disc source. If the source is not remux or source quality, there will be a noticeable loss in quality. If storage space is a concern, x265 can save around 10-20% compared to x264, but the best x265 quality still requires large, high-quality source files. Unfortunately, many x265 release groups microsize their releases or use x264 as a source, resulting in poor quality output. The few groups that use the correct source produce much better results, but those releases still tend to be large in size.

For more information, visit the [x265 Wikipedia page](https://en.wikipedia.org/wiki/X265){:target="_blank" rel="noopener noreferrer"}.' where "name" = 'x265';
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265', 'TRaSH');

-- --- BEGIN ( create custom_format "1.0 Mono" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('1.0 Mono', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1.0 Mono', 'Audio Channels');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1.0 Mono', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1.0 Mono', 'Mono', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1.0 Mono', 'Mono', 'Not Mono');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1.0 Mono', 'Not 3.0ch', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1.0 Mono', 'Not 3.0ch', 'Not 3.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1.0 Mono', 'Not 4.0ch', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1.0 Mono', 'Not 4.0ch', 'Not 4.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1.0 Mono', 'Not High Channel Count', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1.0 Mono', 'Not High Channel Count', 'Not High Channel Count');
-- --- END

-- --- BEGIN ( create custom_format "126811" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('126811', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('126811', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('126811', '126811', 'release_group', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('126811', '126811', '126811');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('126811', 'Internal', 'indexer_flag', 'all', 0, 1);
INSERT INTO condition_indexer_flags (custom_format_name, condition_name, flag) VALUES ('126811', 'Internal', 'internal');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('126811', 'Not ATMO5/ATM05 Collab', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not ATMO5/ATM05 Collab', '126811.{0,20}ATM[O0]5', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('126811', 'Not ATMO5/ATM05 Collab', 'Not ATMO5/ATM05 Collab');
-- --- END

-- --- BEGIN ( create custom_format "2160p" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('2160p', '**2160p**

This Custom Format can boost 2160p releases. It is only useful if you use Merge Qualities{:target="\_blank" rel="noopener noreferrer"} in your Quality Profile.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('2160p', 'Resolution (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('2160p', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('2160p', '2160p', '2160p');
-- --- END

-- --- BEGIN ( create custom_format "3.0 Sound" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('3.0 Sound', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('3.0 Sound', 'Audio Channels');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('3.0 Sound', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3.0 Sound', '3.0ch', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3.0 Sound', '3.0ch', 'Not 3.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3.0 Sound', 'Not Mono', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3.0 Sound', 'Not Mono', 'Not Mono');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3.0 Sound', 'Not Stereo', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3.0 Sound', 'Not Stereo', 'Stereo (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3.0 Sound', 'Not 4.0ch', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3.0 Sound', 'Not 4.0ch', 'Not 4.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('3.0 Sound', 'Not High Channel Count', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('3.0 Sound', 'Not High Channel Count', 'Not High Channel Count');
-- --- END

-- --- BEGIN ( create custom_format "4.0 Sound" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('4.0 Sound', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('4.0 Sound', 'Audio Channels');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('4.0 Sound', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4.0 Sound', '4.0ch', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('4.0 Sound', '4.0ch', 'Not 4.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4.0 Sound', 'Not Mono', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('4.0 Sound', 'Not Mono', 'Not Mono');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4.0 Sound', 'Not Stereo', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('4.0 Sound', 'Not Stereo', 'Stereo (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4.0 Sound', 'Not 3.0ch', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('4.0 Sound', 'Not 3.0ch', 'Not 3.0ch');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4.0 Sound', 'Not High Channel Count', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('4.0 Sound', 'Not High Channel Count', 'Not High Channel Count');
-- --- END

-- --- BEGIN ( create custom_format "4OD" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('4OD', '**All 4**

All 4 was the name of Channel Four Television Corporation''s video-on-demand streaming service from March 30, 2015, when it replaced the original 4oD (4 on Demand) branding. It offered free, ad-funded access to programmes from Channel 4, E4, More4, Film4, and E4 Extra, along with a large archive and exclusive content. On April 17, 2023, All 4 was rebranded as simply "Channel 4," making it the first UK broadcaster to adopt one brand identity across its digital and linear channels. It is only available in the UK and Ireland.

For more information, visit the [Channel 4 VoD Wikipedia page](https://en.wikipedia.org/wiki/Channel_4_(VoD_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('4OD', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('4OD', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4OD', '4OD', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4OD', '\b(4OD)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('4OD', '4OD', '4OD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4OD', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('4OD', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('4OD', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('4OD', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "6.1 Surround" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('6.1 Surround', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('6.1 Surround', 'Audio Channels');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('6.1 Surround', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('6.1 Surround', '6.1 Surround', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('6.1 Surround', '6.1 Surround', 'Not 6.1 Surround');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('6.1 Surround', 'Not 7.1 Surround', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('6.1 Surround', 'Not 7.1 Surround', '7.1 Surround');
-- --- END

-- --- BEGIN ( create custom_format "ALL4" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('ALL4', '**All 4**

All 4 was the name of Channel Four Television Corporation''s video-on-demand streaming service from March 30, 2015, when it replaced the original 4oD (4 on Demand) branding. It offered free, ad-funded access to programmes from Channel 4, E4, More4, Film4, and E4 Extra, along with a large archive and exclusive content. On April 17, 2023, All 4 was rebranded as simply "Channel 4," making it the first UK broadcaster to adopt one brand identity across its digital and linear channels. It is only available in the UK and Ireland.

For more information, visit the [Channel 4 VoD Wikipedia page](https://en.wikipedia.org/wiki/Channel_4_(VoD_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ALL4', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ALL4', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ALL4', 'ALL4', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ALL4', '\b(ALL4)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ALL4', 'ALL4', 'ALL4');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ALL4', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ALL4', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ALL4', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ALL4', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "ATMOS (undefined)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('ATMOS (undefined)', '**ATMOS (undefined) (Atmos is an object-based audio format that can be paired with lossless TrueHD or lossy DD+.)**

When a release is labeled simply as "Atmos" without specifying TrueHD or DD+, the audio quality, TrueHD (Lossless) or DD+ (Lossy), cannot be confirmed from the title alone.

**Note:**
Apply the same score as Lossy (DD+) Atmos. On import, it will be updated to reflect either lossy or lossless based on the media''s info using ffprobe.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ATMOS (undefined)', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ATMOS (undefined)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'ATMOS', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'ATMOS', 'ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not Basic Dolby Digital ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not Basic Dolby Digital ', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not PCM', 'PCM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not TrueHD', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not TrueHD', 'TrueHD (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATMOS (undefined)', 'Not RlsGrp (Atmos Only)', 'release_title', 'radarr', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not RlsGrp (Atmos Only)', '\b(W4NK3R|HQMUX)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATMOS (undefined)', 'Not RlsGrp (Atmos Only)', 'Not RlsGrp (Atmos Only)');
-- --- END

-- --- BEGIN ( create custom_format "AUBC" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('AUBC', '**AUBC (Australian Broadcasting Corporation)**

ABC iview is a free video-on-demand and catch-up TV service run by the Australian Broadcasting Corporation (ABC), launched in July 2008. It is commercial-free and offers Australian and international dramas, documentaries, news, and children''s programming. It is only available to viewers in Australia and requires a free ABC account to watch.

For more information, visit the [Australian Broadcasting Corporation Wikipedia page](https://en.wikipedia.org/wiki/Australian_Broadcasting_Corporation){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AUBC', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AUBC', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AUBC', 'AUBC', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AUBC', '\b(AUBC)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AUBC', 'AUBC', 'AUBC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AUBC', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('AUBC', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AUBC', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('AUBC', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "AUViO" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('AUViO', '**Auvio (RTBF)**

Auvio is the French-language streaming platform of Belgium''s public broadcaster RTBF, offering live TV, radio broadcasts, and on-demand content including popular Belgian shows, international movies, documentaries, and major sports events such as Formula 1 and MotoGP. It is free to access and ad-free, requiring only a free account to watch, with an optional paid tier that unlocks a larger catalog of over 1,700 films. It is only available to viewers in Belgium.

For more information, visit the [Auvio Wikipedia page](https://en.wikipedia.org/wiki/Auvio){:target="_blank" rel="noopener noreferrer"} and the [RTBF Wikipedia page](https://en.wikipedia.org/wiki/RTBF){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AUViO', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('AUViO', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AUViO', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('AUViO', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AUViO', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('AUViO', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AUViO', 'AUViO', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AUViO', '\b(AUVIO)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AUViO', 'AUViO', 'AUViO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AUViO', 'Radio Télévision Belge Francophone', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Radio Télévision Belge Francophone', '\b(RTBF)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AUViO', 'Radio Télévision Belge Francophone', 'Radio Télévision Belge Francophone');
-- --- END

-- --- BEGIN ( create custom_format "Asian LQ" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Asian LQ', '**Asian LQ**

A collection of Asian release groups that either do not provide subtitles or are groups that cause issues during importing.', 0);
insert into "tags" ("name") values ('Asian Release Groups') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian LQ', 'Asian Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian LQ', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian LQ', 'AppleTor', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AppleTor', '^(AppleTor)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AppleTor', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian LQ', 'AppleTor', 'AppleTor');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian LQ', 'Luvmichelle', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Luvmichelle', '^(Luvmichelle)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Luvmichelle', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian LQ', 'Luvmichelle', 'Luvmichelle');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian LQ', 'MagicStar', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MagicStar', '^(MagicStar)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MagicStar', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian LQ', 'MagicStar', 'MagicStar');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian LQ', 'NEXT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NEXT', '^(NEXT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NEXT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian LQ', 'NEXT', 'NEXT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian LQ', 'Taengoo', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Taengoo', '^(Taengoo)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Taengoo', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian LQ', 'Taengoo', 'Taengoo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian LQ', 'unco', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('unco', '^(unco)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('unco', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian LQ', 'unco', 'unco');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian LQ', 'unco@AvistaZ', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('unco@AvistaZ', '^(unco@AvistaZ)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('unco@AvistaZ', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian LQ', 'unco@AvistaZ', 'unco@AvistaZ');
-- --- END

-- --- BEGIN ( create custom_format "Asian Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Asian Tier 01', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian Tier 01', 'Asian Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'ANDY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ANDY', '^(ANDY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ANDY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'ANDY', 'ANDY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'Archie', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Archie', '^(Archie)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Archie', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'Archie', 'Archie');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'ECLiPSE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ECLiPSE', '^(ECLiPSE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ECLiPSE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'ECLiPSE', 'ECLiPSE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'HBO', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HBO (2)', '^(HBO)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HBO (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'HBO', 'HBO (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'HeavenlyOppa', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HeavenlyOppa', '^(HeavenlyOppa)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HeavenlyOppa', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'HeavenlyOppa', 'HeavenlyOppa');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'iTsOK', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iTsOK', '^(iTsOK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iTsOK', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'iTsOK', 'iTsOK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'JKCT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JKCT', '^(JKCT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JKCT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'JKCT', 'JKCT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'LoveBug', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LoveBug', '^(LoveBug)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LoveBug', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'LoveBug', 'LoveBug');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'MARK', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MARK', '^(MARK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MARK', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'MARK', 'MARK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'MMR', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MMR', '^(MMR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MMR', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'MMR', 'MMR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'MrHulk', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MrHulk', '^(MrHulk)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MrHulk', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'MrHulk', 'MrHulk');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'Phanteam', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Phanteam', '^(Phanteam)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Phanteam', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'Phanteam', 'Phanteam');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'SH3LBY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SH3LBY', '^(SH3LBY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SH3LBY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'SH3LBY', 'SH3LBY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'SYNFM', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SYNFM', '^(SYNFM)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SYNFM', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'SYNFM', 'SYNFM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'Wendy', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Wendy', '^(Wendy)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Wendy', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 01', 'Wendy', 'Wendy');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Asian Tier 01', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 01', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Asian Tier 01', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Asian Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Asian Tier 02', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian Tier 02', 'Asian Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 02', 'PandaMoon', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PandaMoon', '^(PandaMoon)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PandaMoon', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 02', 'PandaMoon', 'PandaMoon');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 02', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Asian Tier 02', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 02', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Asian Tier 02', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Asian Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Asian Tier 03', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian Tier 03', 'Asian Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Asian Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'ADWeb', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ADWeb', '^(ADWeb)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ADWeb', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 03', 'ADWeb', 'ADWeb');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'CHDWEB', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CHDWEB', '^(CHDWEB)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CHDWEB', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 03', 'CHDWEB', 'CHDWEB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'HDCTV', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDCTV', '^(HDCTV)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDCTV', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 03', 'HDCTV', 'HDCTV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'HHWEB', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HHWEB', '^(HHWEB)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HHWEB', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 03', 'HHWEB', 'HHWEB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'OurTV', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OurTV', '^(OurTV)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OurTV', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 03', 'OurTV', 'OurTV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'SHiNE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SHiNE', '^(SHiNE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SHiNE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Asian Tier 03', 'SHiNE', 'SHiNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Asian Tier 03', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Asian Tier 03', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Asian Tier 03', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "B-Global" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('B-Global', '**B-Global (Bilibili International)**

B-Global, also known as BiliBili International or BStation, is the international version of Bilibili, China''s popular anime and entertainment streaming platform. It is the top anime platform in Southeast Asia, offering over 2,000 licensed anime titles with multilingual subtitle support. It also features short dramas, donghua (Chinese animation), and user-created content. Most titles are primarily available in Southeast Asian countries.

For more information, visit the [Bilibili Wikipedia page](https://en.wikipedia.org/wiki/Bilibili){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('B-Global', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('B-Global', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('B-Global', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('B-Global', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('B-Global', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('B-Global', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('B-Global', 'WEB', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('B-Global', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('B-Global', 'B-Global', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('B-Global', '\b(B[ .-]?Global)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B-Global', 'B-Global', 'B-Global');
-- --- END

-- --- BEGIN ( create custom_format "BR-DISK (BTN)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('BR-DISK (BTN)', '**BR-DISK (BTN)**

This Custom Format works the same as the BR-DISK Custom Format, but is specific to a tracker called BTN.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BR-DISK (BTN)', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BR-DISK (BTN)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BR-DISK (BTN)', 'BR-DISK', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BR-DISK (2)', '^(?!.*\b((?<!HD[._ -]|HD)DVD|BDRip|MKV|XviD|WMV|d3g|(BD)?REMUX|^(?=.*1080p)(?=.*HEVC)|[x][-_. ]?26[45]|German.*[DM]L|((?<=\d{4}).*German.*([DM]L)?)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2)\b))\b)(((?=.*\b(Blu[-_. ]?ray|BD|HD[-_. ]?DVD)\b)(?=.*\b(AVC|HEVC|VC[-_. ]?1|MVC|MPEG[-_. ]?2|BDMV|ISO|H[ ._-]?26[45])\b))|^((?=.*\b(((?=.*\b((.*_)?COMPLETE.*|Dis[ck])\b)(?=.*(Blu[-_. ]?ray|HD[-_. ]?DVD)))|3D[-_. ]?BD|BR[-_. ]?DISK|Full[-_. ]?Blu[-_. ]?ray|^((?=.*((BD|UHD)[-_. ]?(25|50|66|100|ISO)))))))).*', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('BR-DISK (BTN)', 'BR-DISK', 'BR-DISK (2)');
-- --- END

-- --- BEGIN ( create custom_format "BW" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('BW', '**Black & White Versions**

Some shows are released in both Color and Black & White versions. Users who prefer the color version should keep the default negative score of -10000. Since Sonarr doesn’t support editions, if you prefer the Black & White version, assign a positive score (1-5 should be enough) to this Custom Format. Sonarr will then prefer the Black & White releases, and the Custom Format will also be used in your naming scheme.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BW', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('BW', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BW', 'Blackout/B&W/Black&Chrome', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Blackout/B&W/Black&Chrome', '(?<=\bS\d+(E\d+)?\b).*\b((B(lack)?[ ._-]?(out|(and|[n&])?[ ._-]?(W(hite)?|Chrome))))\b(?!$)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('BW', 'Blackout/B&W/Black&Chrome', 'Blackout/B&W/Black&Chrome');
-- --- END

-- --- BEGIN ( create custom_format "Bilibili" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Bilibili', '**Bilibili**

Bilibili is a major Chinese video streaming platform founded in 2009 and headquartered in Shanghai, focused on anime, comics, and gaming content. It offers anime, dramas, documentaries, variety shows, live streaming, and user-created content, primarily serving audiences in China, Taiwan, and Hong Kong.

For more information, visit the [Bilibili Wikipedia page](https://en.wikipedia.org/wiki/Bilibili){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Bilibili', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Bilibili', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bilibili', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Bilibili', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bilibili', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Bilibili', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bilibili', 'WEB', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Bilibili', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bilibili', 'Bilibili', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Bilibili', '\b(Bili(bili)?)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bilibili', 'Bilibili', 'Bilibili');
-- --- END

-- --- BEGIN ( create custom_format "CNLP" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('CNLP', '**Canal+**

Canal+ is a French subscription streaming service and pay TV provider, launched as a satellite service in 1992 and relaunched as a streaming platform in 2013. It is a subsidiary of Canal+ S.A. It offers movies, dramas, original series, and live sports — including top football leagues. The service is available across Europe, Africa, Oceania, Myanmar, and Vietnam, with over 26.8 million subscribers.

For more information, visit the [Canal+ Wikipedia page](https://en.wikipedia.org/wiki/Canal%2B_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CNLP', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CNLP', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CNLP', 'CNLP', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CNLP', '\b(CNLP)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CNLP', 'CNLP', 'CNLP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CNLP', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('CNLP', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CNLP', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('CNLP', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "CPNG" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('CPNG', '**Coupang Play**

Coupang Play is a South Korean streaming service launched by Coupang in December 2020. It offers movies, dramas, variety shows, and live sports including the Premier League, NBA, and more. It is included with Coupang''s Rocket Wow membership.

For more information, visit the [Coupang Play Wikipedia page](https://en.wikipedia.org/wiki/Coupang_Play){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CPNG', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('CPNG', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CPNG', 'CPNG', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CPNG', '\b(CPNG)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('CPNG', 'CPNG', 'CPNG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CPNG', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('CPNG', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('CPNG', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('CPNG', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "DD+ ATMOS" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('DD+ ATMOS', '**DD+ Atmos aka Dolby Digital Plus with Atmos (Lossy)**

DD+ Atmos (Dolby Digital Plus with Atmos) is the lossy version of Dolby Atmos, used primarily by streaming services. Streaming services encode Dolby Atmos tracks in Dolby Digital Plus, a lossy format, meaning some audio detail is removed to reduce file size and save bandwidth. DD+ Atmos is what major streaming platforms use for their Atmos support, including Netflix, Disney+, and Amazon Prime Video. While it still delivers the immersive 3D sound experience of Atmos, it does so with some compression, resulting in less detail and dynamic range compared to lossless Atmos formats.

For more information, visit the [Dolby Digital Plus Wikipedia page](https://en.wikipedia.org/wiki/Dolby_Digital_Plus){:target="_blank" rel="noopener noreferrer"} and the [Dolby Atmos Wikipedia page](https://en.wikipedia.org/wiki/Dolby_Atmos){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DD+ ATMOS', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DD+ ATMOS', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'Dolby Digital Plus', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'ATMOS', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ATMOS (2)', '\b(ATMOS|DDPA)(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'ATMOS', 'ATMOS (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'Not TrueHD', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'Not TrueHD', 'TrueHD (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'Not Basic Dolby Digital ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'Not Basic Dolby Digital ', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DD+ ATMOS', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DD+ ATMOS', 'Not PCM', 'PCM');
-- --- END

-- --- BEGIN ( create custom_format "DMM-TV" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('DMM-TV', '**DMM TV**

DMM TV is a Japanese streaming service by DMM.com, offering anime, movies, dramas, and variety shows. It is especially popular for its large anime library. Content is primarily aimed at viewers in Japan.

For more information, visit the [DMM TV Wikipedia page](https://en.wikipedia.org/wiki/DMM.com){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DMM-TV', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DMM-TV', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DMM-TV', 'DMM-TV', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DMM-TV', '\b(DMM-TV)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DMM-TV', 'DMM-TV', 'DMM-TV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DMM-TV', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DMM-TV', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DMM-TV', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DMM-TV', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "DV (Disk)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('DV (Disk)', '**DV (Disk)**

This will boost the score for Dolby Vision Releases using the original full-quality Dolby Vision layer from the disc release to replace the old WEBDL HYBRID release.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DV (Disk)', 'HDR Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DV (Disk)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (Disk)', 'FraMeSToR', 'release_group', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FraMeSToR (2)', '\b(FraMeSToR)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (Disk)', 'FraMeSToR', 'FraMeSToR (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (Disk)', 'DV', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (Disk)', 'DV', 'Dolby Vision');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (Disk)', 'No FANRES', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('No FANRES', '\b(FANRES)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (Disk)', 'No FANRES', 'No FANRES');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (Disk)', 'Not Hybrid', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Hybrid', '\bhybrid(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (Disk)', 'Not Hybrid', 'Not Hybrid');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (Disk)', 'Not Hybrid Release Group', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Hybrid Release Group', '-HYBRID', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (Disk)', 'Not Hybrid Release Group', 'Not Hybrid Release Group');
-- --- END

-- --- BEGIN ( create custom_format "DV (w/o HDR fallback)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('DV (w/o HDR fallback)', '**DV (w/o HDR fallback)**

If ^^**NOT**^^ every device accessing your media server supports Dolby Vision, add the DV (w/o HDR fallback) custom format to ensure maximum compatibility with your setup. This prevents playback issues on devices that don''t fully support Dolby Vision.

*This also applies to Dolby Vision releases without HDR10 fallback (Profile 5).*', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DV (w/o HDR fallback)', 'HDR Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('DV (w/o HDR fallback)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (w/o HDR fallback)', 'Dolby Vision', 'release_title', 'sonarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (w/o HDR fallback)', 'Dolby Vision', 'Dolby Vision');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (w/o HDR fallback)', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DV (w/o HDR fallback)', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (w/o HDR fallback)', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DV (w/o HDR fallback)', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (w/o HDR fallback)', 'Not RlsGrp', 'release_group', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (w/o HDR fallback)', 'Not RlsGrp', 'Flights - Release Title');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (w/o HDR fallback)', 'Not HDR', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (w/o HDR fallback)', 'Not HDR', 'Not HDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (w/o HDR fallback)', 'Not Hulu', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (w/o HDR fallback)', 'Not Hulu', 'Hulu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV (w/o HDR fallback)', 'Dolby Vision (Radarr)', 'release_title', 'radarr', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dolby Vision (2)', '\b(dv|dovi|dolby[ .]?V(ision)?)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV (w/o HDR fallback)', 'Dolby Vision (Radarr)', 'Dolby Vision (2)');
-- --- END

-- --- BEGIN ( create custom_format "Dual Audio Asian" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Dual Audio Asian', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Dual Audio Asian', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dual Audio Asian', 'Dual Audio', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dual Audio (2)', 'dual[ ._-]?audio|[([]dual[])]|(JA|ZH|KO)\+EN|EN\+(JA|ZH|KO)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dual Audio Asian', 'Dual Audio', 'Dual Audio (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dual Audio Asian', 'Not Single Language Only', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dual Audio Asian', 'Not Single Language Only', 'Anime Single Language');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dual Audio Asian', 'Japanese Language', 'language', 'all', 0, 0);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Dual Audio Asian', 'Japanese Language', 'Japanese', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dual Audio Asian', 'Chinese Language', 'language', 'all', 0, 0);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Dual Audio Asian', 'Chinese Language', 'Chinese', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dual Audio Asian', 'Korean Language', 'language', 'all', 0, 0);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Dual Audio Asian', 'Korean Language', 'Korean', 0);
-- --- END

-- --- BEGIN ( create custom_format "FAH" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FAH', '**Fandango at Home**

Fandango is an American video-on-demand streaming service, originally founded as Vudu in 2004. It was acquired by Walmart in 2010, then sold to Fandango Media in 2020, and has since been rebranded from Vudu to Fandango at Home, and finally to simply Fandango in 2026. It offers over 150,000 movies and TV shows available to rent or buy, including new releases in up to 4K UHD with Dolby Vision HDR, as well as a selection of free ad-supported titles with no subscription required.

For more information, visit the [Fandango Wikipedia page](https://en.wikipedia.org/wiki/Fandango_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FAH', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FAH', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FAH', 'Fandango', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FAH', 'Fandango', 'Fandango');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FAH', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FAH', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FAH', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FAH', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "FLAC" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FLAC', '**FLAC (Lossless)**

FLAC (Free Lossless Audio Codec) is an open audio format similar to MP3, but lossless, meaning audio is compressed without any loss in quality. FLAC is designed to reduce the amount of storage space needed for digital audio while retaining all the original information. It is free and open, meaning its specification is publicly available and its reference implementation is open source. FLAC can achieve a compression of around 30-50% compared to uncompressed audio, without sacrificing any audio quality. It is widely used for music archiving and high-quality audio playback.

For more information, visit the [FLAC Wikipedia page](https://en.wikipedia.org/wiki/FLAC){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FLAC', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FLAC', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLAC', 'FLAC', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLAC', 'FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLAC', 'Not PCM', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLAC', 'Not PCM', 'PCM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLAC', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLAC', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLAC', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLAC', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLAC', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLAC', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLAC', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLAC', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLAC', 'Not Dolby Digital Plus ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLAC', 'Not Dolby Digital Plus ', 'Not Dolby Digital Plus ');
-- --- END

-- --- BEGIN ( create custom_format "FLUX" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FLUX', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FLUX', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FLUX', 'FLUX', 'release_group', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FLUX', 'FLUX', 'FLUX');
-- --- END

-- --- BEGIN ( create custom_format "FOD" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FOD', '**FOD (Fuji TV On Demand)**

FOD (Fuji TV On Demand) is a video-on-demand streaming service owned by Fuji Television Network, Inc. It was launched in 2005 and offers Japanese dramas, anime, movies, and variety shows. It is primarily aimed at viewers in Japan and focuses on content from Fuji TV''s broadcast library, including past episodes of popular series and exclusive original programming.

For more information, visit the [Fuji Television Wikipedia page](https://en.wikipedia.org/wiki/Fuji_Television){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FOD', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FOD', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FOD', 'FOD', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FOD', '\b(fod)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FOD', 'FOD', 'FOD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FOD', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FOD', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FOD', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FOD', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "FR Anime FanSub" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR Anime FanSub', '**FR Anime FanSub**

Known good groups that only do FanSub in good quality.', 0);
insert into "tags" ("name") values ('French Anime Release Groups') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime FanSub', 'French Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime FanSub', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Anime-Heart', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Anime-Heart', '\b(Anime[ .-]?Heart)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Anime-Heart', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Anime-Heart', 'Anime-Heart');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Kaerizaki-Fansub', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kaerizaki-Fansub', '\b(Kaerizaki[ .-]?Fansub)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kaerizaki-Fansub', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Kaerizaki-Fansub', 'Kaerizaki-Fansub');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Natsumi-no-Sekai', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Natsumi-no-Sekai', '\b(Natsumi[ .-]?no[ .-]?Sekai)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Natsumi-no-Sekai', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Natsumi-no-Sekai', 'Natsumi-no-Sekai');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'NekoYu''', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NekoYu''', '\b(NekoYu\''?)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NekoYu''', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'NekoYu''', 'NekoYu''');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Onii-ChanSub', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Onii-ChanSub', '\b(Onii[ .-]?ChanSub)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Onii-ChanSub', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Onii-ChanSub', 'Onii-ChanSub');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Owlolf', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Owlolf', '\b(Owlolf)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Owlolf', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Owlolf', 'Owlolf');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Pikari-Teshima', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pikari-Teshima', '\b(Pikari[ .-]?Teshima)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Pikari-Teshima', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Pikari-Teshima', 'Pikari-Teshima');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Seimeisen', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Seimeisen', '\b(Seimeisen)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Seimeisen', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Seimeisen', 'Seimeisen');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Team Arcedo', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Team Arcedo', '\b((Team[ .-])?Arcedo)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Team Arcedo', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Team Arcedo', 'Team Arcedo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Yarashii', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Yarashii', '\b(Yarashii)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yarashii', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Yarashii', 'Yarashii');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Yangire-Raws', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Yangire-Raws', '\b(Yangire[ .-]?Raws)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yangire-Raws', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Yangire-Raws', 'Yangire-Raws');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime FanSub', 'Kaoru Hana FR (KHFR)', 'release_title', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kaoru Hana FR (KHFR)', '\b(KHFR)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Kaoru Hana FR (KHFR)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime FanSub', 'Kaoru Hana FR (KHFR)', 'Kaoru Hana FR (KHFR)');
-- --- END

-- --- BEGIN ( create custom_format "FR Anime Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR Anime Tier 01', '**FR Anime Tier 01**

- WIP
- Groups that are known to be active and only doing Anime
- Groups whose releases are at least comparable to SeaDex recommended.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime Tier 01', 'French Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'Darki', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Darki', '\b(Darki)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Darki', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'Darki', 'Darki');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'Delivroozzi', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Delivroozzi', '\b(Delivroozzi)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Delivroozzi', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'Delivroozzi', 'Delivroozzi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'Fuceo', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Fuceo', '\b(Fuceo)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Fuceo', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'Fuceo', 'Fuceo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'Good Job! Alexis', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Good Job! Alexis', '\b(Good[ .-]?(Job|Rip|Sub)!?[ .-]?Alexis)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Good Job! Alexis', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'Good Job! Alexis', 'Good Job! Alexis');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'Punisher694', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Punisher694', '\b(Punisher694)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Punisher694', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'Punisher694', 'Punisher694');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'SR-71', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SR-71', '\b(SR-71)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SR-71', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'SR-71', 'SR-71');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'T3KASHi', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('T3KASHi (2)', '\b(T3KASHi)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('T3KASHi (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'T3KASHi', 'T3KASHi (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'TANOSHii', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TANOSHii', '\b(-TANOSHii)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TANOSHii', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'TANOSHii', 'TANOSHii');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 01', 'Tsundere-Raws', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tsundere-Raws (2)', '\b(Tsundere[ .-]?Raws)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tsundere-Raws (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 01', 'Tsundere-Raws', 'Tsundere-Raws (2)');
-- --- END

-- --- BEGIN ( create custom_format "FR Anime Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR Anime Tier 02', '**FR Anime Tier 02**

- WIP
- Groups that are known to be active and only doing Anime, but with few releases per year.
- Groups that are known to be active and doing Anime AND other types of releases.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime Tier 02', 'French Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'Aoi-Project', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Aoi-Project', '\b(Aoi[ .-]?Project)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Aoi-Project', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'Aoi-Project', 'Aoi-Project');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'Elecman', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Elecman', '\b(Elecman)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Elecman', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'Elecman', 'Elecman');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'FUJiSAN', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FUJiSAN', '\b(FUJiSAN)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FUJiSAN', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'FUJiSAN', 'FUJiSAN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'GundamGuy', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GundamGuy', '\b(GundamGuy)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GundamGuy', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'GundamGuy', 'GundamGuy');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'IssouCorp', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('IssouCorp', '\b(IssouCorp)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('IssouCorp', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'IssouCorp', 'IssouCorp');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'KAF', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KAF', '\b(KAF)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KAF', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'KAF', 'KAF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'Nagutos', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Nagutos', '\b(Nagutos)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nagutos', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'Nagutos', 'Nagutos');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'OECUF', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OECUF', '\b(OECUF)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OECUF', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'OECUF', 'OECUF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 02', 'XSPITFIRE911', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('XSPITFIRE911', '\b(XSPITFIRE911)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('XSPITFIRE911', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 02', 'XSPITFIRE911', 'XSPITFIRE911');
-- --- END

-- --- BEGIN ( create custom_format "FR Anime Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR Anime Tier 03', '**FR Anime Tier 03**

- WIP
- Groups with no or little activity that have at some point made an interesting release which is either the only one available (in VOSTFR/MULTi) or still top of its category.
- Groups that haven''t released much or are not well recognized. (yet)
- Groups doing only anime that have retired (or no longer exist) and may not have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime Tier 03', 'French Anime Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Anime Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'BLV', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BLV', '\b(BLV)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BLV', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'BLV', 'BLV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'D3T3R10R1TY', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('D3T3R10R1TY', '\b(D3T3R10R1TY)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('D3T3R10R1TY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'D3T3R10R1TY', 'D3T3R10R1TY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'Galactic', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Galactic', '\b(Galactic)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Galactic', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'Galactic', 'Galactic');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'HANAMi', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HANAMi', '\b(HANAMi)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HANAMi', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'HANAMi', 'HANAMi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'kazuizui', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('kazuizui', '\b(kazui(zui)?)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('kazuizui', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'kazuizui', 'kazuizui');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'KHAYA', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KHAYA', '\b(KHAYA)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KHAYA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'KHAYA', 'KHAYA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'KushEnthusiast', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KushEnthusiast', '\b(KushEnthusiast)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KushEnthusiast', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'KushEnthusiast', 'KushEnthusiast');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'matheousse', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('matheousse', '\b(matheousse)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('matheousse', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'matheousse', 'matheousse');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'Monkey-D.Lulu', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Monkey-D.Lulu', '\b(Monkey[ .-]?D[ .-]?Lulu)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Monkey-D.Lulu', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'Monkey-D.Lulu', 'Monkey-D.Lulu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'NeoSG', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NeoSG', '\b(NeoSG)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NeoSG', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'NeoSG', 'NeoSG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'RONiN', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RONiN', '\b(RONiN)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RONiN', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'RONiN', 'RONiN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'TheFantastics', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TheFantastics', '\b(TheFantastics)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TheFantastics', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'TheFantastics', 'TheFantastics');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Anime Tier 03', 'TTN', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TTN', '\b(TTN)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TTN', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Anime Tier 03', 'TTN', 'TTN');
-- --- END

-- --- BEGIN ( create custom_format "FR HD Bluray Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR HD Bluray Tier 01', '**FR HD Bluray Tier 01**

- WiP
- Groups that create encodes from a remux without micro-sizing them.
- Groups that have a minimum count of great releases (best encode in its class 1080p and lower).
- Groups that add the best French audio track to an English release from Tier 01 or 02.', 0);
insert into "tags" ("name") values ('French Release Groups') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR HD Bluray Tier 01', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR HD Bluray Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'BLURAY', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR HD Bluray Tier 01', 'BLURAY', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR HD Bluray Tier 01', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('FR HD Bluray Tier 01', 'Not 2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'ARK01', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ARK01', '^(ARK01)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ARK01', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'ARK01', 'ARK01');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'BONBON', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BONBON', '^(BONBON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BONBON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'BONBON', 'BONBON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'FRATERNiTY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FRATERNiTY', '^(FRATERNiTY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FRATERNiTY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'FRATERNiTY', 'FRATERNiTY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'FTMVHD', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FTMVHD', '^(FTMVHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FTMVHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'FTMVHD', 'FTMVHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'HeavyWeight', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HeavyWeight', '^(HeavyWeight)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HeavyWeight', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'HeavyWeight', 'HeavyWeight');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'Psaro', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Psaro', '^(Psaro)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Psaro', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'Psaro', 'Psaro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('FR HD Bluray Tier 01', 'Not Remux', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'BDHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BDHD', '^(BDHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BDHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'BDHD', 'BDHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'FoX', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FoX', '^(FoX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FoX', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'FoX', 'FoX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'FrIeNdS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FrIeNdS', '^(FrIeNdS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FrIeNdS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'FrIeNdS', 'FrIeNdS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'MAX', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MAX', '^(MAX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MAX', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'MAX', 'MAX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 01', 'YODA', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YODA', '^(YODA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('YODA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 01', 'YODA', 'YODA');
-- --- END

-- --- BEGIN ( create custom_format "FR HD Bluray Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR HD Bluray Tier 02', '**FR HD Bluray Tier 02**

- WiP
- Groups that create encodes from a remux without micro-sizing them.
- Groups that have the best French audio track to an English release.
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR HD Bluray Tier 02', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR HD Bluray Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'BLURAY', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR HD Bluray Tier 02', 'BLURAY', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'Not Remux', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('FR HD Bluray Tier 02', 'Not Remux', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('FR HD Bluray Tier 02', 'Not 2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'HDForever', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDForever', '^(HDForever)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDForever', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'HDForever', 'HDForever');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'HeavyWeight', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'HeavyWeight', 'HeavyWeight');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'MARBLECAKE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MARBLECAKE', '^(MARBLECAKE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MARBLECAKE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'MARBLECAKE', 'MARBLECAKE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'MYSTERiON', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MYSTERiON', '^(MYSTERiON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MYSTERiON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'MYSTERiON', 'MYSTERiON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'NoNE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NoNE', '^(NoNE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NoNE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'NoNE', 'NoNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'ONLY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ONLY', '^(ONLY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ONLY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'ONLY', 'ONLY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'ONLYMOViE', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'ONLYMOViE', 'ONLYMOViE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'TkHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TkHD', '^(TkHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TkHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'TkHD', 'TkHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR HD Bluray Tier 02', 'UTT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UTT', '^(UTT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UTT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR HD Bluray Tier 02', 'UTT', 'UTT');
-- --- END

-- --- BEGIN ( create custom_format "FR LQ" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR LQ', '**FR LQ**

A collection of known French Low-Quality groups that are often banned from the top trackers due to their lack of quality.

**Note:**
- Ads/Watermarks = Groups that are known to put ads or watermarks in their releases.
- Bad/False releases = Groups that are known for lying about their quality, type, or the name of their releases.
- DeTAG/ReTAG = Detagging or stealing groups.
- Other reasons = Banned Release Groups.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR LQ', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR LQ', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR LQ', 'Ads/Watermarks', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ads/Watermarks', '\b(Bandix|CZ\d+|EXTREME|GA(Ï|I)A|HMiDiMADRiDi|Hush|KILLERMIX|LiBERTAD|LTa?TM|MONiCO|NEWCINE|R(PZ|ZP)|ShowFR|VERCLAM|ViKi47|Wawa-?(city|mania|porno)?|ZW)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ads/Watermarks', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR LQ', 'Ads/Watermarks', 'Ads/Watermarks');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR LQ', 'Bad/False releases', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Bad/False releases', '\b(ACOOL|AlioZ|ASPHiXiAS|AViTECH|AZAZE|Balibalo|BLABLASTREAM|DDLFRENCH(ORG)?|FERVEX|FReeZeR|GHOSTSPiRiT|GHZ|GLaDOS|GZR|HEVCBay|JiHeff|KR4K3N|Matmatha|MKVXTEAM|Monchat|NLX5|NOMAD|NORRIS|PiCKLES|PREUMS|qctimb3rlandqc|ReBoT|ROLLED|SCREEN|SHiFT|SKRiN|TicaDow|Tokushi|Tonyk|TOXIC|TUTUTE|UNiKORN|Zombie)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Bad/False releases', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR LQ', 'Bad/False releases', 'Bad/False releases');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR LQ', 'DeTAG/ReTAG', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DeTAG/ReTAG', '\b((Cpasbien|CPB)|ANONA|AT|bigZT|Boheme|BOL|CINeHD|Cortex91|DOLL4R|Dread[ .-]?Team|Dropse|EZTV([ ._-]re)?|FGT|Firetown|FUN|HDMIDIMADRIDI|JetAnime|L-?O-?L|NewZT|NG|RARBG|STVFRV|SubZero|T9|Time2Watch|TIREXO|Torrent9|WebAnime|YIFY|YTS|ZONE|ZT)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DeTAG/ReTAG', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR LQ', 'DeTAG/ReTAG', 'DeTAG/ReTAG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR LQ', 'Other reasons', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Other reasons', '\b(AKLHD|ARKRiL|BossBaby|Champion9|Copycomic|CR4ZYTiME|EASPORTS|EliteT|FUNKKY|FZTeam|GOBO2S|HD2|LION|LMPS|LNA3d|MACK4|MeMyl|METALLIKA|MGD|Moorea81|Moviz|Muxman|Mystic|MZC|MZi?SYS|N3TFL1X|NoelMaison|nutella|OMERTA|Papaya|PIKACHU|PULSE|Q7|RELiC|SANCTUAIRE|SHARKS|SP3CTR|Spow|STR4NGE|TeamSuW|TORRiD|TSN999|TVPSLO|Upmix|VATFER|Wakanim|WaNeZt|WINCHESTER|WITA)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Other reasons', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR LQ', 'Other reasons', 'Other reasons');
-- --- END

-- --- BEGIN ( create custom_format "FR Remux Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR Remux Tier 01', '**Remux Tier 01**

- WiP
- Groups that produce remuxes from multiple sources (discs) and combine them to produce the best end result.
- Groups producing remuxes with a group from Remux Tier 01 or 02 adding the best available French Audio.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Remux Tier 01', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Remux Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Remux', 'source', 'sonarr', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR Remux Tier 01', 'Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'FtLi', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FtLi', '^(FtLi)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FtLi', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'FtLi', 'FtLi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Goldenyann', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Goldenyann', '^(Goldenyann)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Goldenyann', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'Goldenyann', 'Goldenyann');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'HDForever', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'HDForever', 'HDForever');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'HeavyWeight', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'HeavyWeight', 'HeavyWeight');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'ONLY', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'ONLY', 'ONLY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Psaro', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'Psaro', 'Psaro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'TyrellCorp', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TyrellCorp', '^(TyrellCorp)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TyrellCorp', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'TyrellCorp', 'TyrellCorp');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Remux (Radarr)', 'quality_modifier', 'radarr', 0, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('FR Remux Tier 01', 'Remux (Radarr)', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'BlackAngel', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BlackAngel', '^(BlackAngel)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BlackAngel', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'BlackAngel', 'BlackAngel');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Choco', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Choco', '^(Choco)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Choco', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'Choco', 'Choco');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'MAX', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'MAX', 'MAX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Sicario', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Sicario', '^(Sicario)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Sicario', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'Sicario', 'Sicario');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Tezcat74', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tezcat74', '^(Tezcat74)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Tezcat74', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'Tezcat74', 'Tezcat74');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 01', 'Zapax', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Zapax', '^(Zapax)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Zapax', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 01', 'Zapax', 'Zapax');
-- --- END

-- --- BEGIN ( create custom_format "FR Remux Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR Remux Tier 02', '**Remux Tier 02**

- WiP
- Groups that use an automated way.
- Groups actively doing remuxes from a single source (disc).
- Groups that had the best French audio track to an English release.
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Remux Tier 02', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Remux Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'Remux', 'quality_modifier', 'all', 0, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('FR Remux Tier 02', 'Remux', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'BDHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'BDHD', 'BDHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'FtLi', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'FtLi', 'FtLi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'Goldenyann', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'Goldenyann', 'Goldenyann');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'HeavyWeight', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'HeavyWeight', 'HeavyWeight');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'KTM', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KTM', '^(KTM)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KTM', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'KTM', 'KTM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'MARBLECAKE', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'MARBLECAKE', 'MARBLECAKE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'MUSTANG', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MUSTANG', '^(MUSTANG)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MUSTANG', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'MUSTANG', 'MUSTANG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'Obi', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Obi', '^(Obi)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Obi', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'Obi', 'Obi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'PEPiTE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PEPiTE', '^(PEPiTE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PEPiTE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'PEPiTE', 'PEPiTE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'QUEBEC63', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QUEBEC63', '^(Q(UEBE)?C63)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QUEBEC63', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'QUEBEC63', 'QUEBEC63');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Remux Tier 02', 'ROMKENT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ROMKENT', '^(ROMKENT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ROMKENT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Remux Tier 02', 'ROMKENT', 'ROMKENT');
-- --- END

-- --- BEGIN ( create custom_format "FR Scene Groups" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR Scene Groups', '**FR Scene Groups**

Known French Scene groups.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Scene Groups', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR Scene Groups', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', '#', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('#', '^(4FR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('#', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', '#', '#');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'A', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('A', '^(AiR3D|AiRDOCS|AiRFORCE|AiRLiNE|AiRTV|AMB3R|ANMWR|AVON|AYMO|AZR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('A', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'A', 'A');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'B', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('B', '^(BANKAi|BAWLS|BiPOLAR|BLACKPANTERS|BODIE|BOOLZ|BRiNK|BTT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('B', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'B', 'B');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'C', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('C', '^(CARAPiLS|CiELOS|CiNEMA|CMBHD|CoRa|COUAC|CRYPT0)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('C', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'C', 'C');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'D', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('D', '^(D4KiD|DEAL|DiEBEX|DUPLI|DUSS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('D', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'D', 'D');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'E', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('E (2)', '^(ENJOi|EUBDS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('E (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'E', 'E (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'F', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('F', '^(FHD|FiDELiO|FiDO|ForceBleue|FREAMON|FRENCHDEADPOOL2|FRiES|FUTiL|FWDHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('F', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'F', 'F');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'G', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('G', '^(GHOULS|GiMBAP|GLiMMER|Goatlove)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('G', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'G', 'G');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'H', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('H', '^(HERC|HiggsBoson|HiRoSHiMa|HYBRiS|HyDe)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('H', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'H', 'H');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'J', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('J', '^(JMT|JoKeR|JUSTICELEAGUE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('J', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'J', 'J');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'K', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('K', '^(KAZETV)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('K', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'K', 'K');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'L', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('L', '^(L0SERNiGHT|LaoZi|LeON|LOFiDEL|LOST|LOWIMDB|LUCKY|LYPSG)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('L', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'L', 'L');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'M', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('M', '^(MAGiCAL|MANGACiTY|MAXAGAZ|MaxiBeNoul|McNULTY|MELBA|MiND|MORELAND|MUNSTER|MUxHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('M', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'M', 'M');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'N', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('N', '^(N0Z00M|NERDHD|NERO|NrZ|NTK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('N', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'N', 'N');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'O', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('O', '^(OBSTACLE|OohLaLa|OOKAMI)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('O', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'O', 'O');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'P', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('P', '^(PANZeR|PATHECROUTE|Penrose|PHoQUE|PiNKPANTERS|PKPTRS|PRiDEHD|PROPJOE|PURE|PUREWASTEOFBW)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('P', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'P', 'P');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'R', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('R', '^(ROUGH|RUDE|Ryotox)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('R', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'R', 'R');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'S', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('S', '^(SAFETY|SASHiMi|SEiGHT|SESKAPiLE|SharpHD|SHEEEiT|SHiNiGAMi(UHD)?|SiGeRiS|SILVIODANTE|SLEEPINGFOREST|SODAPOP|S4LVE|SPINE|SPOiLER|STRINGERBELL|Sunday26th|SUNRiSE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('S', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'S', 'S');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'T', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('T', '^(tFR|THENiGHTMAREiNHD|THiNK|THREESOME|TiMELiNE|TSuNaMi)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('T', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'T', 'T');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'U', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('U', '^(UKDHD|UKDTV|ULSHD|Ulysse|(US)?UNSKiLLED|URY|USURY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('U', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'U', 'U');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'V', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('V', '^(VENUE|VFC|VoMiT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('V', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'V', 'V');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'W', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('W', '^(Wednesday29th)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('W', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'W', 'W');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'Z', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Z', '^(ZEST|ZiRCON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Z', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'Z', 'Z');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'A (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('A (2)', '^(AiR3D|AiRDOCS|AiRFORCE|AiRLiNE|AiRTV|AKLHD|AMB3R|ANMWR|AVON|AYMO|AZR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('A (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'A (Radarr)', 'A (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'N (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('N (2)', '^(NERDHD|NERO|NrZ|NTK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('N (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'N (Radarr)', 'N (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'P (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('P (2)', '^(PANZeR|PATHECROUTE|Penrose|PiNKPANTERS|PKPTRS|PRiDEHD|PROPJOE|PURE|PUREWASTEOFBW)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('P (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'P (Radarr)', 'P (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'S (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('S (2)', '^(SAFETY|SASHiMi|SEiGHT|SESKAPiLE|SHEEEiT|SHiNiGAMi(UHD)?|SiGeRiS|SILVIODANTE|SLEEPINGFOREST|SODAPOP|S4LVE|SPINE|SPOiLER|STRINGERBELL|Sunday26th|SUNRiSE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('S (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'S (Radarr)', 'S (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR Scene Groups', 'U (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('U (2)', '^(UKDHD|UKDTV|ULSHD|Ulysse|(US)?UNSKiLLED|URY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('U (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR Scene Groups', 'U (Radarr)', 'U (2)');
-- --- END

-- --- BEGIN ( create custom_format "FR UHD Bluray Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR UHD Bluray Tier 01', '**FR UHD Bluray Tier 01**

- WiP
- Groups that created encodes from the remuxes without micro-sizing them.
- Groups that add the best French audio track to an English release from Tier 01 or 02.
- HDR/DoVi (Depending on what''s offered and often both).
- HD Audio (Atmos, TrueHD etc...).', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR UHD Bluray Tier 01', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR UHD Bluray Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'FLOP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FLOP', '^(FLOP)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FLOP', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 01', 'FLOP', 'FLOP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'FRATERNiTY', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 01', 'FRATERNiTY', 'FRATERNiTY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'FoX', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 01', 'FoX', 'FoX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'Psaro', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 01', 'Psaro', 'Psaro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('FR UHD Bluray Tier 01', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'Not REMUX', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('FR UHD Bluray Tier 01', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'Not SDR', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 01', 'Not SDR', 'SDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'Not WEBDL', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR UHD Bluray Tier 01', 'Not WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 01', 'Not WEBRIP', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR UHD Bluray Tier 01', 'Not WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "FR UHD Bluray Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR UHD Bluray Tier 02', '**FR UHD Bluray Tier 02**

- WiP
- Groups that create encodes from a remux without micro-sizing them.
- Groups that had the best French audio track to an English release.
- HDR/DoVi (Depending on what''s offered and often both).
- HD Audio (Atmos, TrueHD etc...).
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR UHD Bluray Tier 02', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR UHD Bluray Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'DUSTiN', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DUSTiN', '^(DUSTiN)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DUSTiN', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 02', 'DUSTiN', 'DUSTiN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'FCK', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FCK', '^(FCK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FCK', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 02', 'FCK', 'FCK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'FrIeNdS', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 02', 'FrIeNdS', 'FrIeNdS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'QUALiTY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QUALiTY', '^(QUALiTY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QUALiTY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 02', 'QUALiTY', 'QUALiTY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('FR UHD Bluray Tier 02', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'Not REMUX', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('FR UHD Bluray Tier 02', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'Not SDR', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR UHD Bluray Tier 02', 'Not SDR', 'SDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'Not WEBDL', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR UHD Bluray Tier 02', 'Not WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR UHD Bluray Tier 02', 'Not WEBRIP', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR UHD Bluray Tier 02', 'Not WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "FR WEB Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR WEB Tier 01', '**FR WEB Tier 01**

- WiP
- Groups that get their releases directly from the source.
- Groups that source and add the French audio track from the source to an English release from Tier 01 or 02.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR WEB Tier 01', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR WEB Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR WEB Tier 01', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR WEB Tier 01', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'BONBON', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'BONBON', 'BONBON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'FCK', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'FCK', 'FCK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'FW', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FW', '^(FW)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FW', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'FW', 'FW');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'FRATERNiTY', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'FRATERNiTY', 'FRATERNiTY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'MTDK', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MTDK', '^(MTDK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MTDK', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'MTDK', 'MTDK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'NoLo', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NoLo', '^(NoLo)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NoLo', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'NoLo', 'NoLo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'PATOPESTO', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PATOPESTO', '^(PATOPESTO)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PATOPESTO', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'PATOPESTO', 'PATOPESTO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'Psaro', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'Psaro', 'Psaro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'SUPPLY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SUPPLY', '^(SUPPLY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SUPPLY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'SUPPLY', 'SUPPLY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'TFA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TFA', '^(TFA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TFA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'TFA', 'TFA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'TiNA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TiNA', '^(TiNA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TiNA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'TiNA', 'TiNA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'FoX', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'FoX', 'FoX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'FrIeNdS', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'FrIeNdS', 'FrIeNdS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'MOONLY', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MOONLY', '^(MOONLY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MOONLY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'MOONLY', 'MOONLY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 01', 'RG', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RG', '^(RG)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RG', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 01', 'RG', 'RG');
-- --- END

-- --- BEGIN ( create custom_format "FR WEB Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR WEB Tier 02', '**FR WEB Tier 02**

- WiP
- Groups that source and add the French audio track from the source to an English release.
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR WEB Tier 02', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR WEB Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR WEB Tier 02', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR WEB Tier 02', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'COLL3CTiF', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('COLL3CTiF', '^(COLL3CTiF)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('COLL3CTiF', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'COLL3CTiF', 'COLL3CTiF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'FiND', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FiND', '^(FiND)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FiND', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'FiND', 'FiND');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'FrIeNdS', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'FrIeNdS', 'FrIeNdS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'HeavyWeight', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'HeavyWeight', 'HeavyWeight');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'NoNe', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NoNe', '^(NoNe)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NoNe', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'NoNe', 'NoNe');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'pERsO', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('pERsO', '^(pERsO)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('pERsO', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'pERsO', 'pERsO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'POTO', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('POTO', '^(POTO)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('POTO', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'POTO', 'POTO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'RG', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'RG', 'RG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'RiPiT', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RiPiT', '^(RiPiT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RiPiT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'RiPiT', 'RiPiT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'TAT', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TAT', '^(TAT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TAT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'TAT', 'TAT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'ALLDAYiN', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ALLDAYiN', '^(ALLDAYiN)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ALLDAYiN', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'ALLDAYiN', 'ALLDAYiN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'ARK01', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'ARK01', 'ARK01');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'NEO', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NEO', '^(NEO)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NEO', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'NEO', 'NEO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'ONLYMOViE', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'ONLYMOViE', 'ONLYMOViE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'Slay3R', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Slay3R', '^(Slay3R)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Slay3R', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'Slay3R', 'Slay3R');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'TkHD', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'TkHD', 'TkHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 02', 'WaCkS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WaCkS', '^(WaCkS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WaCkS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 02', 'WaCkS', 'WaCkS');
-- --- END

-- --- BEGIN ( create custom_format "FR WEB Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FR WEB Tier 03', '**FR WEB Tier 03**

- WIP
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR WEB Tier 03', 'French Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FR WEB Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR WEB Tier 03', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('FR WEB Tier 03', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'ARK01', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'ARK01', 'ARK01');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'BraD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BraD', '^(BraD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BraD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'BraD', 'BraD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'dRuIdE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('dRuIdE', '^(dRuIdE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('dRuIdE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'dRuIdE', 'dRuIdE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'FTMVHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'FTMVHD', 'FTMVHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'LAZARUS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LAZARUS', '^(LAZARUS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LAZARUS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'LAZARUS', 'LAZARUS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'MYSTERiON', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'MYSTERiON', 'MYSTERiON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'Scaph', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scaph', '^(Scaph)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Scaph', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'Scaph', 'Scaph');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'WaCkS', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'WaCkS', 'WaCkS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FR WEB Tier 03', 'WQM', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WQM', '^(WQM)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WQM', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FR WEB Tier 03', 'WQM', 'WQM');
-- --- END

-- --- BEGIN ( create custom_format "FanSUB" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FanSUB', '**FanSUB**

Action of subtitling a video for personal and non-professional purposes. The quality of FanSUBs can vary enormously (accuracy of translation, mistakes, etc.) and could lead to so-called FastSUBs.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FanSUB', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FanSUB', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FanSUB', 'FanSUB', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FanSUB', '\b(FanSUB)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FanSUB', 'FanSUB', 'FanSUB');
-- --- END

-- --- BEGIN ( create custom_format "FastSUB" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FastSUB', '**FastSUB**

FanSUB, but made as quickly as possible, at the expense of quality.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FastSUB', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FastSUB', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FastSUB', 'FastSUB', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FastSUB', '\b(FastSUB)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FastSUB', 'FastSUB', 'FastSUB');
-- --- END

-- --- BEGIN ( create custom_format "FraMeSToR" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FraMeSToR', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FraMeSToR', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FraMeSToR', 'FraMeSToR', 'release_group', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('FraMeSToR', 'FraMeSToR', 'FraMeSToR');
-- --- END

-- --- BEGIN ( create custom_format "FreeLeech" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('FreeLeech', '**FreeLeech**

Sometimes, torrent sites set a torrent to be freeleech. This means, that the download of this torrent will not count towards your download quota or ratio. This is useful if you do not have the best ratio yet.

**Warning:**
Keep in mind not all trackers support this option.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FreeLeech', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('FreeLeech', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('FreeLeech', 'FreeLeech', 'indexer_flag', 'all', 0, 0);
INSERT INTO condition_indexer_flags (custom_format_name, condition_name, flag) VALUES ('FreeLeech', 'FreeLeech', 'freeleech');
-- --- END

-- --- BEGIN ( create custom_format "Generated Dynamic HDR" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Generated Dynamic HDR', '**Generated Dynamic HDR**

A collection of groups known for generating their own dynamic HDR metadata, including Dolby Vision and/or HDR10+.
This generated dynamic HDR metadata does not come from official retail sources, such as discs or streaming services, so it is generally undesirable because of the substantial effort required and the near-impossible task of reliably ensuring quality without manually reviewing each movie.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Generated Dynamic HDR', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Generated Dynamic HDR', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'BiTOR', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'BiTOR', 'BiTOR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'DepraveD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'DepraveD', 'DepraveD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'Flights', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'Flights', 'Flights - Release Group');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'GuyZo', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'GuyZo', 'GuyZo - Release Group');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'SasukeducK', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'SasukeducK', 'SasukeducK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'SumVision', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'SumVision', 'SumVision');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'tarunk9c', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'tarunk9c', 'tarunk9c');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'VD0N', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'VD0N', 'VD0N');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'VECTOR', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'VECTOR', 'VECTOR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'VisionXpert', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'VisionXpert', 'VisionXpert');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'DV', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'DV', 'Dolby Vision');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Generated Dynamic HDR', 'HDR10+', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Generated Dynamic HDR', 'HDR10+', 'Not HDR10+');
-- --- END

-- --- BEGIN ( create custom_format "German 2160p Booster" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German 2160p Booster', '**German 2160p Booster**

As the scores for German groups are higher, we need to introduce resolution boosters to ensure upgradability between resolutions, allowing for upgrades from English to German.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German 2160p Booster', 'German Miscellaneous');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German 2160p Booster', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German 2160p Booster', 'German', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German 2160p Booster', 'German', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German 2160p Booster', 'Original Language', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('German 2160p Booster', 'Original Language', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German 2160p Booster', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('German 2160p Booster', '2160p', '2160p');
-- --- END

-- --- BEGIN ( create custom_format "German Bluray Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Bluray Tier 01', '**German Bluray Tier 01**

- WiP
- Groups that get their releases directly from the source.
- Groups that create encodes from a remux without micro-sizing them.
- Groups that source and add the German audio track from the source to an English release from Tier 01 or 02.
- HDR/DoVi (Depending on what''s offered and often both).', 0);
insert into "tags" ("name") values ('German Release Groups') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Bluray Tier 01', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Bluray Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'ZeroTwo', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'ZeroTwo', 'ZeroTwo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'ZeroTwo Aliases', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZeroTwo Aliases (2)', '\b(BUTTERCUP|HARTZ02|XiSS|DOGPACK404|PRiNCESSDiANA|DiVA|D02KU|WAREZCX|BiTCHNUGGET)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZeroTwo Aliases (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'ZeroTwo Aliases', 'ZeroTwo Aliases (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'TSCC', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TSCC', '^(TSCC)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TSCC', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'TSCC', 'TSCC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'TvR', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'TvR', 'TvR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'NIMA4K', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NIMA4K', '^(NIMA4K)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NIMA4K', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'NIMA4K', 'NIMA4K');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'TVS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVS (2)', '^(TVS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TVS (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'TVS', 'TVS (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'PXL', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PXL', '^(PXL)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PXL', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'PXL', 'PXL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'CNY', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'CNY', 'CNY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'WeebPinn', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'WeebPinn', 'WeebPinn');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'WalterBishop', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WalterBishop', '^(WalterBishop)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WalterBishop', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'WalterBishop', 'WalterBishop');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Bluray Tier 01', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Bluray Tier 01', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'ZeroTwo Aliases (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'ZeroTwo Aliases (Radarr)', 'ZeroTwo Aliases');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'MAMA', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MAMA', '^(MAMA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MAMA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 01', 'MAMA', 'MAMA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 01', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Bluray Tier 01', 'Not Remux', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German Bluray Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Bluray Tier 02', '**German Bluray Tier 02**

- WiP
- Groups that get their releases directly from the source.
- Groups that create encodes from a remux without micro-sizing them.
- Groups that have the best German audio track to an English release.
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Bluray Tier 02', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Bluray Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'VECTOR', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'VECTOR', 'VECTOR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'MULTiPLEX', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MULTiPLEX', '^(MULTiPLEX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MULTiPLEX', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'MULTiPLEX', 'MULTiPLEX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'SiXTYNiNE', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'SiXTYNiNE', 'SiXTYNiNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'Oergel', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Oergel', '^(Oergel)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Oergel', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'Oergel', 'Oergel');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'ABJ', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'ABJ', 'ABJ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Bluray Tier 02', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Bluray Tier 02', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'VECTOR (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'VECTOR (Radarr)', 'VECTOR (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'MULTiPLEX (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MULTiPLEX (2)', '(MULTiPLEX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MULTiPLEX (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'MULTiPLEX (Radarr)', 'MULTiPLEX (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'SiXTYNiNE (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiXTYNiNE (2)', '(SiXTYNiNE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiXTYNiNE (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'SiXTYNiNE (Radarr)', 'SiXTYNiNE (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'Oergel (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Oergel (2)', '(Oergel)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Oergel (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'Oergel (Radarr)', 'Oergel (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'ABJ (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ABJ (2)', '(ABJ)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ABJ (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'ABJ (Radarr)', 'ABJ (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'paranoid06', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('paranoid06', '^(paranoid06)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('paranoid06', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'paranoid06', 'paranoid06');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'RocketHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RocketHD', '^(RocketHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RocketHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'RocketHD', 'RocketHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'toto', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('toto', '^(toto)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('toto', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 02', 'toto', 'toto');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 02', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Bluray Tier 02', 'Not Remux', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German Bluray Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Bluray Tier 03', '**German Bluray Tier 03**

- WiP
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Bluray Tier 03', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Bluray Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'RobertDeNiro', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RobertDeNiro', '^(RobertDeNiro)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RobertDeNiro', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'RobertDeNiro', 'RobertDeNiro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'HQC', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HQC', '^(HQC)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HQC', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'HQC', 'HQC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'RDR', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RDR', '^(RDR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RDR', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'RDR', 'RDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'HDSource', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDSource', '^(HDSource)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDSource', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'HDSource', 'HDSource');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Bluray Tier 03', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'Not REMUX', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Bluray Tier 03', 'Not REMUX', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'LeetHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LeetHD', '^(LeetHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LeetHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'LeetHD', 'LeetHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'RHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RHD', '^(RHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'RHD', 'RHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'UNFIrED', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UNFIrED', '^(UNFIrED)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UNFIrED', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'UNFIrED', 'UNFIrED');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'iNCEPTION', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iNCEPTION', '^(iNCEPTION)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iNCEPTION', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'iNCEPTION', 'iNCEPTION');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'FX', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FX', '^(FX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FX', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Bluray Tier 03', 'FX', 'FX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Bluray Tier 03', 'Not Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Bluray Tier 03', 'Not Remux', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German LQ" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German LQ', '**German LQ**

A collection of known German Low-Quality groups that are often banned from the top trackers due to their lack of quality.

**Note:**
- Ads/Watermarks = Groups that are known to put ads or watermarks in their releases.
- Bad/False releases = Groups that are known for lying about their quality, type, or the name of their releases.
- DeTAG/ReTAG = Detagging or stealing groups.
- Other reasons = Group is banned on top tier trackers or is generally known for poor quality/errors.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German LQ', 'German Miscellaneous');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German LQ', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'PsO', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PsO', '^(PsO)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'PsO', 'PsO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'Cancer58', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Cancer58', '^(Cancer58)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'Cancer58', 'Cancer58');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'Tylor.D', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Tylor.D', '^(Tylor\.D)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'Tylor.D', 'Tylor.D');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', '1XBET', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('1XBET (2)', '^(1XBET)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', '1XBET', '1XBET (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', '2dead', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('2dead', '^(2dead)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', '2dead', '2dead');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'HELD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HELD', '^(HELD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'HELD', 'HELD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'kala', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('kala', '^(kala)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'kala', 'kala');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'POE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('POE', '^(POE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'POE', 'POE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'SHOWE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SHOWE', '^(SHOWE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'SHOWE', 'SHOWE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'SHOWEHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SHOWEHD', '^(SHOWEHD)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'SHOWEHD', 'SHOWEHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'ORCA88', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ORCA88', '^(ORCA88)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'ORCA88', 'ORCA88');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'LuRCH', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LuRCH', '^(LuRCH)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'LuRCH', 'LuRCH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'N2D2', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('N2D2', '^(N2D2)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'N2D2', 'N2D2');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'GETB8', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GETB8', '^(GETB8)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'GETB8', 'GETB8');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'TFARC', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TFARC', '^(TFARC)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'TFARC', 'TFARC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'Kristallprinz', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Kristallprinz', '^(Kristallprinz)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'Kristallprinz', 'Kristallprinz');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'LAW', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LAW', '^(LAW)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'LAW', 'LAW');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'CTFOH', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'CTFOH', 'CTFOH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'Pendeti', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pendeti', '^(Pendeti)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'Pendeti', 'Pendeti');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'OJ', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OJ', '^(OJ)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'OJ', 'OJ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'PS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PS', '^(PS)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'PS', 'PS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'FSX', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FSX', '^(FSX)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'FSX', 'FSX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'EMVY', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EMVY', '^(EMVY)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'EMVY', 'EMVY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'ZaidaNulled', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZaidaNulled', '^(ZaidaNulled)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'ZaidaNulled', 'ZaidaNulled');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'MEGA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MEGA', '^(MEGA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'MEGA', 'MEGA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'MBA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MBA', '^(MBA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'MBA', 'MBA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'FORMBA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FORMBA', '^(FORMBA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'FORMBA', 'FORMBA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'PaZ', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PaZ', '^(PaZ)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'PaZ', 'PaZ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'Whistler', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Whistler', '^(Whistler)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'Whistler', 'Whistler');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'omikron', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('omikron', '^(omikron)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'omikron', 'omikron');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'WOTT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WOTT', '^(WOTT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'WOTT', 'WOTT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'SunDry', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SunDry', '^(SunDry)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'SunDry', 'SunDry');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'PL', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PL', '^(PL)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'PL', 'PL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'TVARCHiV', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVARCHiV', '^(TVARCHiV)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'TVARCHiV', 'TVARCHiV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'P73', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('P73', '^(P73)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'P73', 'P73');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'LizardSquad', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LizardSquad', '^(LizardSquad)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'LizardSquad', 'LizardSquad');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'AVTOMAT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AVTOMAT', '^(AVTOMAT)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'AVTOMAT', 'AVTOMAT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'iSSEYMiYAKE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iSSEYMiYAKE', '^(iSSEYMiYAKE)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'iSSEYMiYAKE', 'iSSEYMiYAKE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'TVP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVP', '^(TVP)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'TVP', 'TVP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'AIDA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AIDA', '^(AIDA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'AIDA', 'AIDA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'UTOPiA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UTOPiA', '^(UTOPiA)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'UTOPiA', 'UTOPiA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'FRAGGERS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FRAGGERS', '^(FRAGGERS)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'FRAGGERS', 'FRAGGERS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'SD7', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SD7', '^(SD7)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'SD7', 'SD7');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'PiKACHU', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PiKACHU', '^(PiKACHU)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'PiKACHU', 'PiKACHU');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'REEL', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('REEL', '^(REEL)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'REEL', 'REEL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ', 'VideoStar', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VideoStar', '^(VideoStar)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ', 'VideoStar', 'VideoStar');
-- --- END

-- --- BEGIN ( create custom_format "German LQ (release title)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German LQ (release title)', '**German LQ (Release Title)**

A collection of terms seen in the titles of Low-Quality releases that are not captured by using a release group name.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German LQ (release title)', 'German Miscellaneous');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German LQ (release title)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ (release title)', 'TVS iTunesHD', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVS iTunesHD', '([._-])iTunes(?:HD|SD)?\1.+?-TVS$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ (release title)', 'TVS iTunesHD', 'TVS iTunesHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ (release title)', 'Jellyfin-Plex', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Jellyfin-Plex', 'Jellyfin-Plex$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ (release title)', 'Jellyfin-Plex', 'Jellyfin-Plex');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German LQ (release title)', 'Double German Tag', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Double German Tag', '[._-]German[._-].+?[._-]?German$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German LQ (release title)', 'Double German Tag', 'Double German Tag');
-- --- END

-- --- BEGIN ( create custom_format "German Microsized" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Microsized', '**German Microsized**

A collection of known German groups producing low quality micro-sized releases.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Microsized', 'German Miscellaneous');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Microsized', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Microsized', 'FuN', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FuN', '^(FuN)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Microsized', 'FuN', 'FuN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Microsized', 'w00t', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('w00t', '^(w00t)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Microsized', 'w00t', 'w00t');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Microsized', 'GTF', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GTF', '^(GTF)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Microsized', 'GTF', 'GTF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Microsized', 'PaTroL', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PaTroL', '^(PaTroL)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Microsized', 'PaTroL', 'PaTroL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Microsized', 'JellyfinPlex', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JellyfinPlex', '^(JellyfinPlex)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Microsized', 'JellyfinPlex', 'JellyfinPlex');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Microsized', 'BB', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BB', '^(BB)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Microsized', 'BB', 'BB');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Microsized', '266ers', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('266ers', '^(266ers)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Microsized', '266ers', '266ers');
-- --- END

-- --- BEGIN ( create custom_format "German Remux Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Remux Tier 01', '**German Remux Tier 01**

- WiP
- Groups that get their releases directly from the source.
- Groups that create encodes from a remux without micro-sizing them.
- Groups that source and add the German audio track from the source to an English release from Tier 01 or 02.
- HDR/DoVi (Depending on what''s offered and often both).', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Remux Tier 01', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Remux Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'TvR', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'TvR', 'TvR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'pmHD', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('pmHD', '^(pmHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('pmHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'pmHD', 'pmHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'NIMA4K', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'NIMA4K', 'NIMA4K');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'QfG', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QfG', '^(QfG)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QfG', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'QfG', 'QfG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'TSCC', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'TSCC', 'TSCC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'Remux', 'source', 'sonarr', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Remux Tier 01', 'Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'TvR (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TvR (2)', '(TvR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TvR (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'TvR (Radarr)', 'TvR (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'pmHD (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('pmHD (2)', '(pmHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('pmHD (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'pmHD (Radarr)', 'pmHD (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'NIMA4K (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NIMA4K (2)', '(NIMA4K)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NIMA4K (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'NIMA4K (Radarr)', 'NIMA4K (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'QfG (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('QfG (2)', '(QfG)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('QfG (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'QfG (Radarr)', 'QfG (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'WeebPinn', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'WeebPinn', 'WeebPinn');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'MAMA', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 01', 'MAMA', 'MAMA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 01', 'Remux (Radarr)', 'quality_modifier', 'radarr', 0, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Remux Tier 01', 'Remux (Radarr)', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German Remux Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Remux Tier 02', '**German Remux Tier 02**

- WiP
- Groups that get their releases directly from the source.
- Groups that create encodes from a remux without micro-sizing them.
- Groups that have the best German audio track to an English release.
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Remux Tier 02', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Remux Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'MULTiPLEX', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'MULTiPLEX', 'MULTiPLEX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'HQC', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'HQC', 'HQC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'HDSource', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'HDSource', 'HDSource');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'Remux', 'source', 'sonarr', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Remux Tier 02', 'Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'MULTiPLEX (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'MULTiPLEX (Radarr)', 'MULTiPLEX (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'RHD', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'RHD', 'RHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'iNCEPTION', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'iNCEPTION', 'iNCEPTION');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'FX', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'FX', 'FX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'RocketHD', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Remux Tier 02', 'RocketHD', 'RocketHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Remux Tier 02', 'Remux (Radarr)', 'quality_modifier', 'radarr', 0, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('German Remux Tier 02', 'Remux (Radarr)', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "German Scene" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Scene', '**German Scene**

Known German Scene groups (which are not defined as LQ).', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Scene', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Scene', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', '4KCONNECTiON', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4KCONNECTiON', '^(4KCONNECTiON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4KCONNECTiON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', '4KCONNECTiON', '4KCONNECTiON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'ACED', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ACED', '^(ACED)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ACED', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'ACED', 'ACED');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'AWARDS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AWARDS', '^(AWARDS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AWARDS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'AWARDS', 'AWARDS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'bi0hazard', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('bi0hazard', '^(bi0hazard)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('bi0hazard', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'bi0hazard', 'bi0hazard');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'CDD', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CDD', '^(CDD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CDD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'CDD', 'CDD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'CDP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CDP', '^(CDP)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CDP', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'CDP', 'CDP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'CONTRiBUTiON', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CONTRiBUTiON', '^(CONTRiBUTiON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CONTRiBUTiON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'CONTRiBUTiON', 'CONTRiBUTiON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'DETAiLS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DETAiLS', '^(DETAiLS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DETAiLS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'DETAiLS', 'DETAiLS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'DMPD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'DMPD', 'DMPD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'ENCOUNTERS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ENCOUNTERS', '^(ENCOUNTERS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ENCOUNTERS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'ENCOUNTERS', 'ENCOUNTERS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'ENDSTATiON', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ENDSTATiON', '^(ENDSTATiON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ENDSTATiON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'ENDSTATiON', 'ENDSTATiON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'euHD', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('euHD', '^(euHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('euHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'euHD', 'euHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'EXCiTED', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EXCiTED', '^(EXCiTED)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EXCiTED', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'EXCiTED', 'EXCiTED');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'FENDT', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FENDT', '^(FENDT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FENDT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'FENDT', 'FENDT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'FKKTV', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FKKTV', '^(FKKTV)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FKKTV', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'FKKTV', 'FKKTV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'GTVG', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GTVG', '^(GTVG)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GTVG', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'GTVG', 'GTVG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'HAXE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HAXE', '^(HAXE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HAXE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'HAXE', 'HAXE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'HDARCHiV', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDARCHiV', '^(HDARCHiV)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDARCHiV', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'HDARCHiV', 'HDARCHiV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'iNTENTiON', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iNTENTiON', '^(iNTENTiON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iNTENTiON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'iNTENTiON', 'iNTENTiON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'JaJunge', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('JaJunge', '^(JaJunge)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('JaJunge', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'JaJunge', 'JaJunge');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'MGE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MGE (2)', '^(MGE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MGE (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'MGE', 'MGE (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'MisFiTS', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MisFiTS', '^(MisFiTS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MisFiTS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'MisFiTS', 'MisFiTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'muhHD', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('muhHD', '^(muhHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('muhHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'muhHD', 'muhHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'OCA', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OCA', '^(OCA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OCA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'OCA', 'OCA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'OHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'OHD', 'OHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'PL3X', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PL3X', '^(PL3X)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PL3X', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'PL3X', 'PL3X');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'RiLE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RiLE', '^(RiLE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RiLE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'RiLE', 'RiLE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'RIPLEY', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RIPLEY', '^(RIPLEY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RIPLEY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'RIPLEY', 'RIPLEY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'RSG', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RSG', '^(RSG)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RSG', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'RSG', 'RSG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'RUBBiSH', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RUBBiSH', '^(RUBBiSH)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RUBBiSH', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'RUBBiSH', 'RUBBiSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'RWP', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RWP', '^(RWP)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RWP', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'RWP', 'RWP');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'SAUERKRAUT', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'SAUERKRAUT', 'SAUERKRAUT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'STARS', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'STARS', 'STARS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'TMSF', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TMSF', '^(TMSF)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TMSF', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'TMSF', 'TMSF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'TV4A', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TV4A', '^(TV4A)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TV4A', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'TV4A', 'TV4A');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'TVNATiON', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVNATiON', '^(TVNATiON)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TVNATiON', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'TVNATiON', 'TVNATiON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'W4K', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('W4K', '^(W4K)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('W4K', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'W4K', 'W4K');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'WATCHABLE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WATCHABLE', '^(WATCHABLE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WATCHABLE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'WATCHABLE', 'WATCHABLE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'WAYNE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WAYNE', '^(WAYNE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WAYNE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'WAYNE', 'WAYNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'WOMBAT', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WOMBAT', '^(WOMBAT)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WOMBAT', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'WOMBAT', 'WOMBAT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'WvF', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WvF', '^(WvF)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WvF', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'WvF', 'WvF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'UNDERTAKERS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UNDERTAKERS', '^(UNDERTAKERS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UNDERTAKERS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'UNDERTAKERS', 'UNDERTAKERS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'SAViOURHD', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SAViOURHD', '^(SAViOURHD)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SAViOURHD', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'SAViOURHD', 'SAViOURHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'GOREHOUNDS', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GOREHOUNDS', '^(GOREHOUNDS)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GOREHOUNDS', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'GOREHOUNDS', 'GOREHOUNDS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Scene', 'SPiCY', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SPiCY', '^(SPiCY)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SPiCY', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Scene', 'SPiCY', 'SPiCY');
-- --- END

-- --- BEGIN ( create custom_format "German Web Tier 01" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Web Tier 01', '**German Web Tier 01**

- WiP
- Groups that get their releases directly from the source.
- Groups that create encodes from a remux without micro-sizing them.
- Groups that source and add the German audio track from the source to an English release from Tier 01 or 02.
- HDR/DoVi (Depending on what''s offered and often both).', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Web Tier 01', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Web Tier 01', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'CNY', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'CNY', 'CNY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'KOMET', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KOMET', '^(KOMET)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KOMET', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'KOMET', 'KOMET');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'MEDiATHEK', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MEDiATHEK', '^(MEDiATHEK)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MEDiATHEK', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'MEDiATHEK', 'MEDiATHEK');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'NIMA4K', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'NIMA4K', 'NIMA4K');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'PXL', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'PXL', 'PXL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'QfG', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'QfG', 'QfG');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'RiiR', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RiiR', '^(RiiR)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RiiR', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'RiiR', 'RiiR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'RiiR Aliases', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RiiR Aliases', '\b(TOJ)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RiiR Aliases', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'RiiR Aliases', 'RiiR Aliases');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'SLiDE', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SLiDE', '^(SLiDE)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SLiDE', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'SLiDE', 'SLiDE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'TSCC', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'TSCC', 'TSCC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'TvR', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'TvR', 'TvR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'TVS', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'TVS', 'TVS (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'WalterBishop', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'WalterBishop', 'WalterBishop');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'WeebPinn', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'WeebPinn', 'WeebPinn');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'ZeroTwo', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'ZeroTwo', 'ZeroTwo');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'ZeroTwo Aliases', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'ZeroTwo Aliases', 'ZeroTwo Aliases (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'WebDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Web Tier 01', 'WebDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'WebRip', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Web Tier 01', 'WebRip', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'D02KU', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('D02KU', '^(D02KU)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('D02KU', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'D02KU', 'D02KU');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'pmHD', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'pmHD', 'pmHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 01', 'ZeroTwo Aliases (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 01', 'ZeroTwo Aliases (Radarr)', 'ZeroTwo Aliases');
-- --- END

-- --- BEGIN ( create custom_format "German Web Tier 02" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Web Tier 02', '**German Web Tier 02**

- WiP
- Groups that get their releases directly from the source.
- Groups that create encodes from a remux without micro-sizing them.
- Groups that have the best German audio track to an English release.
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Web Tier 02', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Web Tier 02', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', '4SF', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4SF', '^(4SF)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4SF', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', '4SF', '4SF');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', '4SF Aliases', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4SF Aliases', '\b(4SJ)\b', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4SF Aliases', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', '4SF Aliases', '4SF Aliases');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'ABJ', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'ABJ', 'ABJ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'MULTiPLEX', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'MULTiPLEX', 'MULTiPLEX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'Oergel', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'Oergel', 'Oergel');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'SiXTYNiNE', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'SiXTYNiNE', 'SiXTYNiNE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'VECTOR', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'VECTOR', 'VECTOR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'WebDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Web Tier 02', 'WebDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'WebRip', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Web Tier 02', 'WebRip', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', '4SF (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4SF (2)', '(4SF)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4SF (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', '4SF (Radarr)', '4SF (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'ABJ (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'ABJ (Radarr)', 'ABJ (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'MULTiPLEX (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'MULTiPLEX (Radarr)', 'MULTiPLEX (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'Oergel (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'Oergel (Radarr)', 'Oergel (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'paranoid06', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'paranoid06', 'paranoid06');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'SiXTYNiNE (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'SiXTYNiNE (Radarr)', 'SiXTYNiNE (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'VECTOR (Radarr)', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'VECTOR (Radarr)', 'VECTOR (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 02', 'toto', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 02', 'toto', 'toto');
-- --- END

-- --- BEGIN ( create custom_format "German Web Tier 03" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('German Web Tier 03', '**German Web Tier 03**

- WiP
- Groups that haven''t released much or are not well recognized. (yet)
- Groups that retired and don''t have the best quality by today''s standards.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Web Tier 03', 'German Release Groups');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German Web Tier 03', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'RobertDeNiro', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'RobertDeNiro', 'RobertDeNiro');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'BALENCiAGA', 'release_group', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BALENCiAGA', '^(BALENCiAGA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BALENCiAGA', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'BALENCiAGA', 'BALENCiAGA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'FLORiX', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FLORiX', '^(FLORiX)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FLORiX', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'FLORiX', 'FLORiX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'HQC', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'HQC', 'HQC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'HDSource', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'HDSource', 'HDSource');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'iNCEPTION', 'release_group', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'iNCEPTION', 'iNCEPTION');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'RDR', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'RDR', 'RDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'WebDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Web Tier 03', 'WebDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'WebRip', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('German Web Tier 03', 'WebRip', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'RobertDeNiro (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RobertDeNiro (2)', '(RobertDeNiro)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('RobertDeNiro (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'RobertDeNiro (Radarr)', 'RobertDeNiro (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'BALENCiAGA (Radarr)', 'release_group', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BALENCiAGA (2)', '(BALENCiAGA)$', NULL, NULL);
INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BALENCiAGA (2)', 'Release Group');
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'BALENCiAGA (Radarr)', 'BALENCiAGA (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('German Web Tier 03', 'FX', 'release_group', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('German Web Tier 03', 'FX', 'FX');
-- --- END

-- --- BEGIN ( create custom_format "HFR" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('HFR', '**HFR (High Frame Rate)**

High Frame Rate (HFR) refers to video content that runs at a higher frame rate than the typical 24 frames per second (fps) used in traditional cinema. HFR produces a much smoother, more detailed image compared to standard 24fps, and is especially useful for gaming, sports, and live streaming, where it can significantly reduce motion blur and latency. Common HFR frame rates include 48fps, 60fps, and 120fps. While some viewers find HFR more immersive, others feel it gives footage an overly realistic or "soap opera" look compared to the traditional cinematic appearance of 24fps.

For more information, visit the [High Frame Rate Wikipedia page](https://en.wikipedia.org/wiki/High_frame_rate){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HFR', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HFR', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HFR', 'HFR', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HFR', '\b(HFR)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HFR', 'HFR', 'HFR');
-- --- END

-- --- BEGIN ( create custom_format "HIDIVE" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('HIDIVE', '**HIDIVE**

HIDIVE is an American anime subscription streaming service owned by AMC Global Media, launched in June 2017 as a successor to Anime Network Online. It offers English subtitles and dubs, with exclusive access to first-run simulcasts of new anime at or near the same time as their Japanese broadcast. It is a strong alternative to Crunchyroll, known for its diverse library of both popular and hard-to-find anime titles, including select uncensored content.

For more information, visit the [HIDIVE Wikipedia page](https://en.wikipedia.org/wiki/Hidive){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HIDIVE', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HIDIVE', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HIDIVE', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HIDIVE', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HIDIVE', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HIDIVE', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HIDIVE', 'WEB', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HIDIVE', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HIDIVE', 'HIDIVE', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HIDIVE', 'HIDIVE', 'HIDIVE');
-- --- END

-- --- BEGIN ( create custom_format "HTSR" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('HTSR', '**Disney+ Hotstar (HTSR)**

Disney+ Hotstar is a subscription streaming service owned by Disney Star (formerly Star India), originally launched in 2015 as Hotstar. Following Disney''s acquisition of 21st Century Fox in 2019, it was rebranded as Disney+ Hotstar in April 2020, adding content from Disney, Pixar, Marvel, Lucasfilm, and National Geographic. It operates in India, Indonesia, Malaysia, and Thailand, combining local content with the Disney+ library, and is the second largest streaming platform in the world by subscribers, behind only Netflix.

For more information, visit the [Disney+ Hotstar Wikipedia page](https://en.wikipedia.org/wiki/Disney%2B_Hotstar){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HTSR', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HTSR', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HTSR', 'Hotstar', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hotstar (2)', '\b(HTSR|DSNPHS|HS)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HTSR', 'Hotstar', 'Hotstar (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HTSR', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HTSR', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HTSR', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HTSR', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "HULU" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('HULU', '**Hulu**

Hulu is an American streaming service majority-owned by Walt Disney Company, offering a large library of TV shows, movies, and original productions. It is one of the few streaming services that also offers live TV, giving subscribers access to live sports, news, and popular channels alongside its on-demand content. It is primarily available in the United States and can be bundled together with Disney+ and ESPN+.

For more information, visit the [Hulu Wikipedia page](https://en.wikipedia.org/wiki/Hulu){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HULU', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('HULU', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HULU', 'Hulu', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HULU', 'Hulu', 'Hulu');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HULU', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HULU', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HULU', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HULU', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Hami" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Hami', '**Hami Video**

Hami Video is a Taiwanese streaming service owned by Chunghwa Telecom, Taiwan''s largest telecom provider. It offers live TV channels, movies, dramas, anime, and major sporting events, including the Olympics. It is primarily aimed at viewers in Taiwan and is available as part of Chunghwa Telecom''s broader entertainment services.

For more information, visit the [Chunghwa Telecom Wikipedia page](https://en.wikipedia.org/wiki/Chunghwa_Telecom){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Hami', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Hami', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hami', 'Hami', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Hami', '\b(hami|HamiVideo)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Hami', 'Hami', 'Hami');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hami', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Hami', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hami', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Hami', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Hybrid" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Hybrid', '**Hybrid**

A Hybrid release is a release that combines elements from more than one source to produce the best possible result. For example, the video track may come from one source, such as a Blu-ray disc, while the audio track, subtitles, or additional content come from a different source, such as a streaming service or a different regional release. This approach is used when no single source contains everything needed for the highest quality release, allowing the best available video and audio to be combined into one file.

In general, top tier release groups always try to combine elements from more than one source to produce the best possible result. However, not all release groups mention that their release is a hybrid release.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Hybrid', 'Series Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Hybrid', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hybrid', 'Hybrid', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Hybrid', 'Hybrid', 'Not Hybrid');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hybrid', 'Not Hybrid Release Group', 'release_group', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Hybrid Release Group (2)', '\b(HYBRID)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Hybrid', 'Not Hybrid Release Group', 'Not Hybrid Release Group (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hybrid', 'Remux', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Hybrid', 'Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Hybrid', 'Bluray', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Hybrid', 'Bluray', 'bluray');
-- --- END

-- --- BEGIN ( create custom_format "INTERNAL" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('INTERNAL', '**Internal**

In the context of scene and P2P releases, an Internal release is one that is distributed within a release group''s private network before, or instead of, being made publicly available. Internal releases often use higher quality settings or unconventional encoding choices that may not conform to standard scene rulesets, making them a preferred choice for those seeking the best possible quality.

Those who prefer scene releases may want to boost internals, as they generally use higher settings that may not conform to the standard ruleset. In some rare cases, P2P releases are also marked as Internal.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('INTERNAL', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('INTERNAL', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('INTERNAL', 'INTERNAL', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('INTERNAL', 'INTERNAL', 'Internal');
-- --- END

-- --- BEGIN ( create custom_format "IP" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('IP', '**BBC iPlayer (iP)**

BBC iPlayer is the UK''s primary public streaming platform, operated by the BBC and launched in 2007. It allows viewers to watch live TV and stream on-demand programmes from BBC channels, including dramas, documentaries, comedy, news, sports, and children''s content. The service is free and ad-free, though a UK TV license is required. It is only available to viewers in the United Kingdom.

For more information, visit the [BBC iPlayer Wikipedia page](https://en.wikipedia.org/wiki/BBC_iPlayer){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IP', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('IP', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IP', 'BBC iPlayer', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BBC iPlayer', '\b(ip|iplayer)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IP', 'BBC iPlayer', 'BBC iPlayer');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IP', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('IP', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IP', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('IP', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "ITVX" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('ITVX', '**ITVX (ITV)**

ITVX is a British ad-supported streaming service operated by ITV plc, launched in December 2022. It offers original ITV content, live streams of ITV channels, and exclusive and licensed programming. It is free to watch with ads, with an optional paid Premium tier that removes ads and includes additional content. It is only available to viewers in the United Kingdom.

For more information, visit the [ITVX Wikipedia page](https://en.wikipedia.org/wiki/ITVX){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ITVX', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('ITVX', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ITVX', 'ITVX', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ITVX', '\b(ITVX?)\b[ ._-]web[ ._-]?(dl|rip)?\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ITVX', 'ITVX', 'ITVX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ITVX', 'ITVX Rename', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ITVX Rename', '\[(ITVX)\b|\b(ITVX)\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ITVX', 'ITVX Rename', 'ITVX Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ITVX', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ITVX', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ITVX', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ITVX', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "KCW" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('KCW', '**KOCOWA aka KCW**

KOCOWA is a premium Korean streaming service that offers Korean dramas, variety shows, and K-Pop content from major broadcasters KBS, MBC, and SBS. New shows are available within 6 hours of their original airtime in Korea, with subtitles in English, Portuguese, and Spanish.

For more information, visit the [KOCOWA Wikipedia page](https://en.wikipedia.org/wiki/KOCOWA){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('KCW', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('KCW', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('KCW', 'KCW', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KCW (2)', '\b(KCW|KOCOWA)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('KCW', 'KCW', 'KCW (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('KCW', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('KCW', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('KCW', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('KCW', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "KKTV" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('KKTV', '**KKTV**

KKTV is a Taiwanese streaming service offering dramas, films, and anime from Taiwan, Japan, South Korea, Thailand, and Hong Kong, as well as original series. It was founded in 2016 and is based in Taipei, Taiwan. It is especially known for offering the latest Japanese dramas, with some released within hours or days of their premiere in Japan. In November 2025, KKTV merged with LINE TV.

For more information, visit the [KKTV Wikipedia page](https://en.wikipedia.org/wiki/KKTV){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('KKTV', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('KKTV', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('KKTV', 'KKTV', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KKTV', '\b(KKTV)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('KKTV', 'KKTV', 'KKTV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('KKTV', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('KKTV', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('KKTV', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('KKTV', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "LINETV" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('LINETV', '**LINE TV**

LINE TV is a free, ad-supported streaming service owned by Japan-based LINE Corporation, operating mainly in Taiwan. It offers dramas, variety shows, movies, anime, and original content. It is especially popular for Taiwanese, Korean, and Chinese content. In November 2025, LINE TV announced a full merger with KKTV, combining both platforms'' content libraries to offer a wider range of Asian dramas and new features such as offline viewing and dual subtitles.

For more information, visit the [LINE TV Wikipedia page](https://en.wikipedia.org/wiki/Line_TV){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('LINETV', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('LINETV', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LINETV', 'LINETV', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LINETV', '\b(LINETV)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('LINETV', 'LINETV', 'LINETV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LINETV', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('LINETV', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('LINETV', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('LINETV', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Language: Not English" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Language: Not English', '**Language: Not English (English Only)**

This custom format is used to identify and avoid releases that do not contain an English audio track. When applied, it will flag any release where English is not included as an available audio language, helping ensure that only releases with English audio are downloaded.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Not English', 'Language Profiles');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Not English', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Not English', 'Not English Language', 'language', 'all', 1, 0);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Not English', 'Not English Language', 'English', 0);
-- --- END

-- --- BEGIN ( create custom_format "Language: Not French" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Language: Not French', '**Language: Not French**

This custom format is used to identify and avoid releases that do not contain a French audio track. When applied, it will flag any release where French is not included as an available audio language, helping ensure that only releases with French audio are downloaded.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Not French', 'Language Profiles');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Not French', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Not French', 'Not French Language', 'language', 'all', 1, 0);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Not French', 'Not French Language', 'French', 0);
-- --- END

-- --- BEGIN ( create custom_format "Language: Original + French" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Language: Original + French', '**Language: Original + French**

This custom format is used to identify releases that contain both the original language audio track and a French audio track. When applied, it helps ensure that only releases including both the original language and French audio are preferred, making it ideal for viewers who want access to both options in a single release.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Original + French', 'Language Profiles');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Language: Original + French', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Original + French', 'Original Language', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Original + French', 'Original Language', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Original + French', 'French Language', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Language: Original + French', 'French Language', 'French', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language: Original + French', 'MULTi', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MULTi', '\b(MULTi)(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Language: Original + French', 'MULTi', 'MULTi');
-- --- END

-- --- BEGIN ( create custom_format "Line/Mic Dubbed" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Line/Mic Dubbed', '**Line/Mic Dubbed**

A Line/Mic Dubbed release is a recording where the audio has been captured from a cinema screening, either through a microphone placed in the theater or via a direct line connection to the audio system. The audio quality is generally poor compared to official releases, as it may include background noise, audience sounds, or distortion. This type of audio is commonly associated with early cam or screener releases and is considered one of the lowest quality audio sources available.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Line/Mic Dubbed', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Line/Mic Dubbed', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Line/Mic Dubbed', 'Line Dubbed', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Line/Mic Dubbed', 'Line Dubbed', 'Line Dubbed');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Line/Mic Dubbed', 'Mic Dubbed', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Line/Mic Dubbed', 'Mic Dubbed', 'Mic Dubbed');
-- --- END

-- --- BEGIN ( create custom_format "MP3" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('MP3', '**MP3 (Lossy)**

MP3 (MPEG-1 Audio Layer 3) is a widely used lossy digital audio encoding format, designed to greatly reduce the amount of data required to represent audio, while still sounding like a faithful reproduction of the original to most listeners. It became an ISO/IEC standard in 1991. An MP3 file can compress a music file by up to 95% of its original CD-quality size while maintaining good enough audio quality. It remains one of the most universally compatible audio formats, supported on virtually every device and platform, though it has largely been superseded by more efficient formats like AAC.

For more information, visit the [MP3 Wikipedia page](https://en.wikipedia.org/wiki/MP3){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MP3', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MP3', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MP3', 'MP3', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MP3', 'mp3', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MP3', 'MP3', 'MP3');
-- --- END

-- --- BEGIN ( create custom_format "MPEG2" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('MPEG2', '**MPEG-2**

MPEG-2 is a standard for the generic coding of moving pictures and associated audio information, using a combination of lossy video and audio compression to allow storage and transmission of video using available storage media and bandwidth. Developed in the 1990s by the Moving Picture Experts Group, it was the standard codec for DVDs and remains in use for over-the-air digital, satellite, and cable broadcasts. While it was a major step forward in its time, it has largely been replaced by more modern and efficient codecs such as AVC (H.264) and HEVC (H.265), which deliver better quality at lower bitrates.

For more information, visit the [MPEG-2 Wikipedia page](https://en.wikipedia.org/wiki/MPEG-2){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MPEG2', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MPEG2', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MPEG2', 'MPEG2', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MPEG2', 'MPEG[-.]?2', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MPEG2', 'MPEG2', 'MPEG2');
-- --- END

-- --- BEGIN ( create custom_format "MULTi" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('MULTi', '**Multi**

A Multi release is a release that contains more than one audio language track. For example, a release labeled "Multi" may include English, French, Spanish, or other language tracks within the same file, allowing viewers to switch between languages during playback. The number and selection of included languages can vary depending on the source and the release group.

Multi releases are common for content distributed across multiple regions, where different audiences require different language options. The presence of multiple audio tracks does not affect the video quality of the release.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MULTi', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MULTi', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MULTi', 'Multi', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Multi', '\b(Multi)(?![ ._-]?sub(s)?)(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MULTi', 'Multi', 'Multi');
-- --- END

-- --- BEGIN ( create custom_format "MY5" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('MY5', '**My5 (now 5)**

My5 is the video-on-demand streaming service from Channel 5 in the United Kingdom, previously known as Five Download, Demand Five, and Demand 5. In March 2025, Channel 5 and My5 merged and relaunched under the unified brand "5," adding 15 new live channels and content from Paramount-owned networks including BET, CBS, Comedy Central, and MTV. The service is free, ad-supported, and only available in the UK.

For more information, visit the [My5 Wikipedia page](https://en.wikipedia.org/wiki/5_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MY5', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MY5', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MY5', 'My5', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('My5', '\b(MY5)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MY5', 'My5', 'My5');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MY5', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MY5', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MY5', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MY5', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "MainFrame" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('MainFrame', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MainFrame', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MainFrame', 'MainFrame', 'release_group', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MainFrame', 'MainFrame', 'MainFrame');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MainFrame', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('MainFrame', '2160p', '2160p');
-- --- END

-- --- BEGIN ( create custom_format "Masters of Cinema" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Masters of Cinema', '**Masters of Cinema**

Masters of Cinema is a line of DVD and Blu-ray releases published by Eureka Entertainment. Due to its uniformly branded, spine-numbered packaging and the standard inclusion of booklets and analysis by film historians, it is often regarded as the UK equivalent of The Criterion Collection. The series began in 2004 and focuses on classic and world cinema, featuring carefully restored films. All releases come with extensive booklets and a range of bonus features.

For more information, visit the [Masters of Cinema Wikipedia page](https://en.wikipedia.org/wiki/Masters_of_Cinema){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Masters of Cinema', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Masters of Cinema', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Masters of Cinema', 'Masters of Cinema', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Masters of Cinema', '\b(Masters[ .-]?Of[ .-]?Cinema)(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Masters of Cinema', 'Masters of Cinema', 'Masters of Cinema');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Masters of Cinema', 'MoC', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MoC', '\b(MoC)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Masters of Cinema', 'MoC', 'MoC');
-- --- END

-- --- BEGIN ( create custom_format "MyCANAL" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('MyCANAL', '**myCANAL (Canal+)**

myCANAL is the streaming platform of French broadcaster Canal+, launched in December 2013. It has since been rebranded as Canal+ and is a subsidiary of Canal+ S.A. The service gives Canal+ subscribers live and on-demand access to all Canal+ channels, including major sports rights such as the UEFA Champions League and the English Premier League. It is primarily available to subscribers in France and other Canal+ markets across Europe and Africa.

For more information, visit the [Canal+ Wikipedia page](https://en.wikipedia.org/wiki/Canal%2B_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MyCANAL', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MyCANAL', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyCANAL', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MyCANAL', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyCANAL', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MyCANAL', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyCANAL', 'CANAL+', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CANAL+', '\b(C(?:anal)?[ .-]?(Plus|\+))[ .]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MyCANAL', 'CANAL+', 'CANAL+');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyCANAL', 'MyCANAL', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MyCANAL', '\b(MyCANAL)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MyCANAL', 'MyCANAL', 'MyCANAL');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyCANAL', 'Not MyCanal RlsGrp', 'release_group', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not MyCanal RlsGrp', '\b(MyCanal)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MyCANAL', 'Not MyCanal RlsGrp', 'Not MyCanal RlsGrp');
-- --- END

-- --- BEGIN ( create custom_format "MyTVSuper" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('MyTVSuper', '**myTV SUPER**

myTV SUPER is a subscription-based streaming service launched in April 2016 by MyTV Super Limited, a subsidiary of Television Broadcasts Limited (TVB) in Hong Kong. It offers TVB dramas, variety shows, movies, anime, live sports, and horse racing content, with some content supporting up to 4K resolution. The service is primarily available in Hong Kong and Macau.

For more information, visit the [myTV SUPER Wikipedia page](https://en.wikipedia.org/wiki/MyTV_Super){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MyTVSuper', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('MyTVSuper', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyTVSuper', 'MyTVSuper', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MyTVSuper', '\b(MyTVSuper)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('MyTVSuper', 'MyTVSuper', 'MyTVSuper');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyTVSuper', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MyTVSuper', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('MyTVSuper', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('MyTVSuper', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "NLZ" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('NLZ', '**NLZiet (NLZ)**

NLZiet is a Dutch subscription streaming service founded in 2014, combining content from major Dutch broadcasters including NPO, RTL, and Talpa into one platform. It offers both live TV and on-demand viewing, mostly ad-free, and is available across the EU. It is primarily aimed at Dutch-speaking viewers and is one of the most complete Dutch-language TV streaming services available.

No English Wikipedia page is currently available, but you can find more information on the [NLZiet official website](https://www.nlziet.nl){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('NLZ', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('NLZ', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NLZ', 'NLZiet', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NLZiet', '\b(nlz|NLZiet)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('NLZ', 'NLZiet', 'NLZiet');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NLZ', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('NLZ', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NLZ', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('NLZ', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "NOW" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('NOW', '**NOW (formerly NOW TV)**

NOW (formerly known as NOW TV) is a subscription streaming service launched in the UK in 2012, operated by Sky Group. It offers live streaming and video-on-demand content through flexible monthly "passes" covering entertainment, films, and sports with no long-term contract required. It is the only UK streaming service with access to HBO content such as Game of Thrones and The Sopranos, as well as exclusive live sports including the Premier League and Formula 1.

For more information, visit the [NOW Wikipedia page](https://en.wikipedia.org/wiki/Now_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('NOW', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('NOW', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NOW', 'NOW', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('NOW', 'NOW', 'Now');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NOW', 'NOW Rename', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('NOW', 'NOW Rename', 'Now Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NOW', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('NOW', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('NOW', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('NOW', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "No-RlsGroup" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('No-RlsGroup', '**No-RlsGroup**

Some indexers stripped out the release group, which could result in LQ groups receiving higher scores.
For example, many EVO releases are stripped of the group name, so they appear as "upgrades" and receive a decent score if other factors match.

**Warning:**
If you **DO NOT** use decent filenames (like not adding release groups), **DO NOT** add this Custom Format unless you want to upgrade them.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('No-RlsGroup', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('No-RlsGroup', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No-RlsGroup', 'No Parsed Group', 'release_group', 'all', 1, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No-RlsGroup', 'No Parsed Group', 'No Parsed Group');
-- --- END

-- --- BEGIN ( create custom_format "Not German, Japanese, Korean, Chinese or English" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Not German, Japanese, Korean, Chinese or English', '**Language: Not German, Japanese, Korean, Chinese or English**

Used to avoid releases which do not contain German, Japanese, Korean, Chinese or English audio.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German, Japanese, Korean, Chinese or English', 'Language Profiles');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Not German, Japanese, Korean, Chinese or English', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not English Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not English Language', 'English', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not Japanese Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not Japanese Language', 'Japanese', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not Korean Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not Korean Language', 'Korean', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not Chinese Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not Chinese Language', 'Chinese', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not German Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not German Language', 'German', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not German in Title', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Not German, Japanese, Korean, Chinese or English', 'Not German in Title', 'Not German in Title');
-- --- END

-- --- BEGIN ( create custom_format "OViD" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('OViD', '**OVID.tv**

OVID.tv is a subscription streaming service dedicated to independent documentaries, art-house films, and international cinema, with content partners including the British Film Institute, Icarus Films, and Kartemquin Films. Most films on OVID are not available on any other streaming platform, with 20–35 new titles added every month. It is a great option for film enthusiasts looking for curated, non-mainstream cinema.

No Wikipedia page is currently available for OVID.tv, but you can find more information on their [official website](https://www.ovid.tv).', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('OViD', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('OViD', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('OViD', 'OViD', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OViD', '\b(ovid)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('OViD', 'OViD', 'OViD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('OViD', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('OViD', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('OViD', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('OViD', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Obfuscated" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Obfuscated', '**Obfuscated**

Obfuscated releases are something you find on Usenet to do re-posts of common/popular releases.

Several indexers that rely on auto-generating their NZB from groups by seeing things in the clear will suffer the fate of having those NZB DMCA''ed after time, as others can just see what it is and request a file takedown.
You want indexers that get/do obfuscated releases and allow NZBs to be submitted directly to the NZB-indexer. Then, even thousands of days old releases still work fine unless someone leaks those NZBs to one of those public sites, where they can be requested to be taken down.

- In general, if you''re using Usenet, **DO NOT** use this Custom Format.
- Use this Custom Format **ONLY** if you **DO NOT** prefer Obfuscated releases.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Obfuscated', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Obfuscated', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', '4P', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4P', '-4P\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', '4P', '4P');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', '4Planet', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4Planet', '-4Planet\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', '4Planet', '4Planet');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'AsRequested', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AsRequested', '-AsRequested\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'AsRequested', 'AsRequested');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'BUYMORE', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BUYMORE', '-BUYMORE\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'BUYMORE', 'BUYMORE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'Chamele0n', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Chamele0n', '-Chamele0n\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'Chamele0n', 'Chamele0n');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'GEROV', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GEROV', '-GEROV\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'GEROV', 'GEROV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'iNC0GNiTO', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iNC0GNiTO', '-iNC0GNiTO\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'iNC0GNiTO', 'iNC0GNiTO');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'NZBGeek', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NZBGeek', '-NZBGeek\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'NZBGeek', 'NZBGeek');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'Obfuscated', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Obfuscated', '-Obfuscated\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'Obfuscated', 'Obfuscated');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'postbot', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('postbot', '-postbot\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'postbot', 'postbot');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'Rakuv', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Rakuv', '-Rakuv\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'Rakuv', 'Rakuv');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'Scrambled', 'release_title', 'sonarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scrambled', '(?<=\bS\d+\b).*(Scrambled)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'Scrambled', 'Scrambled');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'WhiteRev', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WhiteRev', '-WhiteRev\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'WhiteRev', 'WhiteRev');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'xpost', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('xpost', '-xpost\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'xpost', 'xpost');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'WRTEAM', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WRTEAM', '-WRTEAM\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'WRTEAM', 'WRTEAM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'CAPTCHA', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CAPTCHA', '-CAPTCHA\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'CAPTCHA', 'CAPTCHA');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', '_nzb', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('_nzb', '_nzb\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', '_nzb', '_nzb');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Obfuscated', 'Scrambled (Radarr)', 'release_title', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scrambled (2)', '(?<=\b[12]\d{3}\b).*(Scrambled)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Obfuscated', 'Scrambled (Radarr)', 'Scrambled (2)');
-- --- END

-- --- BEGIN ( create custom_format "Open Matte" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Open Matte', '**Open Matte**

Open matte is a filmmaking technique in which motion pictures are photographed using the full frame of 35mm film, typically in a 1.33:1 or 1.37:1 aspect ratio, but then masked during theatrical projection to achieve a widescreen format such as 1.85:1. The unmasked full frame is later revealed in home video releases, providing additional image at the top and bottom of the frame.

One issue with open matte presentations is that they can reveal things the production did not intend to be seen. Because the theatrical crop was expected to hide part of the frame, equipment or set edges may have been placed just outside the intended visible area. In an open matte version, that extra space can sometimes expose boom mics, lights, or unfinished set elements.

For more information, visit the [Open Matte Wikipedia page](https://en.wikipedia.org/wiki/Open_matte){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Open Matte', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Open Matte', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Open Matte', 'Open Matte', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Open Matte', 'Open Matte', 'Open Matte');
-- --- END

-- --- BEGIN ( create custom_format "Opus" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Opus', '**Opus (Lossy)**

Opus is a free and open source lossy audio codec developed by the Xiph.Org Foundation and standardized by the Internet Engineering Task Force (IETF), designed for efficient low-latency encoding of both speech and general audio. It supports bitrates from 6 kbit/s to 510 kbit/s and is widely used for Voice over IP, video conferencing, in-game chat, internet streaming, and live music performances. Several blind listening tests have ranked Opus higher in quality than any other standard audio format at any given bitrate, including MP3, AAC, and HE-AAC.

For more information, visit the [Opus Wikipedia page](https://en.wikipedia.org/wiki/Opus_(audio_format)){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Opus', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Opus', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Opus', 'Opus', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Opus', 'Opus', 'Opus');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Opus', 'Not OPUS Release Group', 'release_group', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not OPUS Release Group', 'OPUS', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Opus', 'Not OPUS Release Group', 'Not OPUS Release Group');
-- --- END

-- --- BEGIN ( create custom_format "P2P Internal" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('P2P Internal', '**P2P Internal**

This Custom Format matches on the Internal Indexer flag that some trackers use to promote their own internal releases. You can use this Custom Format to favor their internal releases, or, when the same release exists on multiple trackers, it will prefer the release from the home tracker.
For this to work, the tracker must support the Internal Indexer flag!', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('P2P Internal', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('P2P Internal', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('P2P Internal', 'Internal', 'indexer_flag', 'all', 0, 0);
INSERT INTO condition_indexer_flags (custom_format_name, condition_name, flag) VALUES ('P2P Internal', 'Internal', 'internal');
-- --- END

-- --- BEGIN ( create custom_format "PCM" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('PCM', '**PCM (Lossless)**

PCM (Pulse Code Modulation) is an uncompressed, lossless audio format that accurately captures the full dynamics and details of the original sound without any loss. It works by sampling the analog audio signal at regular intervals and converting each sample into a digital number, preserving the audio waveform precisely. PCM is widely used in CDs, DVDs, and digital broadcasting, and is a common choice when audio quality is the top priority. Because it is uncompressed, PCM files are larger than formats like FLAC or MP3, but deliver the purest possible audio reproduction.

For more information, visit the [PCM Wikipedia page](https://en.wikipedia.org/wiki/Pulse-code_modulation){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('PCM', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('PCM', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCM', 'PCM', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCM', 'PCM', 'PCM');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCM', 'Not AAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCM', 'Not AAC', 'AAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCM', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCM', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCM', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCM', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCM', 'Not TrueHD/ATMOS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCM', 'Not TrueHD/ATMOS', 'Not TrueHD/ATMOS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCM', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCM', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('PCM', 'Not Dolby Digital Plus ', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('PCM', 'Not Dolby Digital Plus ', 'Not Dolby Digital Plus ');
-- --- END

-- --- BEGIN ( create custom_format "Pathe" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Pathe', '**Pathé Thuis**

Pathé Thuis is a Dutch video-on-demand service launched in the Netherlands in 2011, one of the first of its kind before major international streaming platforms arrived. Rather than a monthly subscription, it works as a pay-per-view service where users rent or buy individual films on demand. It offers a wide range of movies, from the latest releases to classic titles, and new films often become available shortly after their cinema run.

For more information, visit the [Pathé Wikipedia page](https://en.wikipedia.org/wiki/Path%C3%A9){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Pathe', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Pathe', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Pathe', 'Pathé', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Pathé', '\b(Pathe)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Pathe', 'Pathé', 'Pathé');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Pathe', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Pathe', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Pathe', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Pathe', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "QIBI" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('QIBI', '**Quibi (QIBI)**

Quibi, short for "quick bites," was a mobile-only streaming service launched on April 6, 2020. It offered high-quality short-form content, with episodes of 10 minutes or less, covering scripted series, documentaries, news, and reality shows. Despite raising nearly $1.8 billion and featuring A-list talent, the platform shut down just six months after its launch, on October 21, 2020.

For more information, visit the [Quibi Wikipedia page](https://en.wikipedia.org/wiki/Quibi){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('QIBI', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('QIBI', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QIBI', 'Quibi', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Quibi', '\b(qibi|quibi)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QIBI', 'Quibi', 'Quibi');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QIBI', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('QIBI', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('QIBI', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('QIBI', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "RED" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('RED', '**YouTube Red (now YouTube Premium)**

YouTube Red was launched on October 28, 2015, offering ad-free access to all YouTube videos, offline playback, background playback on mobile, and access to exclusive YouTube Originals programming produced in collaboration with popular creators. In May 2018, YouTube Red was rebranded as YouTube Premium, which also bundled access to YouTube Music, Google''s music streaming service. YouTube Premium now has over 125 million subscribers worldwide.

For more information, visit the [YouTube Premium Wikipedia page](https://en.wikipedia.org/wiki/YouTube_Premium){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('RED', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('RED', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RED', 'YouTube Red', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('YouTube Red', '\b(red|youtube red)\b[ ._-]web[ ._-]?(dl|rip)?\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RED', 'YouTube Red', 'YouTube Red');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RED', 'RED Rename', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('RED Rename', '\[(RED)\b|\b(RED)\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('RED', 'RED Rename', 'RED Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RED', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RED', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('RED', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('RED', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Retags" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Retags', '**Retags**

Retags are often seen on public trackers, where the tracker or uploader adds their name to the torrent. They may also appear on some Usenet indexers.

- If you rely on public trackers, **DO NOT** use this Custom Format.
- Use this Custom Format **ONLY** if you **DO NOT** prefer Retagged releases.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Retags', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Retags', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Retags', '.heb', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('.heb', '[.]heb\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Retags', '.heb', '.heb');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Retags', '[eztv]', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('[eztv]', '\[eztvx?[ ._-]?(io|re|to)?\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Retags', '[eztv]', '[eztv]');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Retags', '[rarbg]', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('[rarbg]', '\[rarbg\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Retags', '[rarbg]', '[rarbg]');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Retags', '[rartv]', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('[rartv]', '\[rartv\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Retags', '[rartv]', '[rartv]');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Retags', '[TGx]', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('[TGx]', '\[TGx\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Retags', '[TGx]', '[TGx]');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Retags', '.VAV', 'release_title', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('.VAV', '[.]VAV\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Retags', '.VAV', '.VAV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Retags', 'ORARBG', 'release_title', 'radarr', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ORARBG', '\b(ORARBG)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Retags', 'ORARBG', 'ORARBG');
-- --- END

-- --- BEGIN ( create custom_format "SALTO" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('SALTO', '**SⱯLTO**

SⱯLTO was a French subscription streaming service launched on October 20, 2020, as a joint venture between France Télévisions, the TF1 Group, and Groupe M6. It offered films, TV series, documentaries, live TV, and catch-up content from all three networks, along with some exclusive programming. Following difficulty in attracting subscribers, the service shut down on March 27, 2023.

For more information, visit the [Salto Wikipedia page](https://en.wikipedia.org/wiki/Salto_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SALTO', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SALTO', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SALTO', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SALTO', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SALTO', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SALTO', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SALTO', 'SALTO', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SALTO', '\b(SALTO)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SALTO', 'SALTO', 'SALTO');
-- --- END

-- --- BEGIN ( create custom_format "SDR" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('SDR', '**SDR**

This will prevent grabbing UHD/4k releases without HDR Formats.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SDR', 'HDR Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SDR', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SDR', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR', 'HDR Formats', 'release_title', 'all', 1, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SDR', 'HDR Formats', 'HDR Formats');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR', 'SDR', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SDR', 'SDR', 'SDR');
-- --- END

-- --- BEGIN ( create custom_format "SDR (no WEBDL)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('SDR (no WEBDL)', '**SDR (noWEBDL)**

This will prevent grabbing UHD/4k Remux and Bluray encode releases without HDR Formats. - i.e., SDR WEB releases will still be allowed since 4K SDR WEB releases can often look better than the 1080p version due to the improved bitrate.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SDR (no WEBDL)', 'HDR Optional');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SDR (no WEBDL)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR (no WEBDL)', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SDR (no WEBDL)', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR (no WEBDL)', 'HDR Formats', 'release_title', 'all', 1, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SDR (no WEBDL)', 'HDR Formats', 'HDR Formats');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR (no WEBDL)', 'SDR', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SDR (no WEBDL)', 'SDR', 'SDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR (no WEBDL)', 'Not WEBDL', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SDR (no WEBDL)', 'Not WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SDR (no WEBDL)', 'Not WEBRip', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SDR (no WEBDL)', 'Not WEBRip', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "STRP" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('STRP', '**Star+**

Star+ was Disney''s standalone streaming service for Latin America, offering general entertainment content including live sports from ESPN, international originals, animated comedies, and movie premieres. In 2024, Disney shut down Star+ and merged all of its content into Disney+, consolidating the two services into a single platform for Latin American viewers.

For more information, visit the [Star+ Wikipedia page](https://en.wikipedia.org/wiki/Star%2B){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('STRP', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('STRP', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('STRP', 'Star+', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Star+', '\b(STRP)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('STRP', 'Star+', 'Star+');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('STRP', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('STRP', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('STRP', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('STRP', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Scene" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Scene', '**Scene**

This Custom Format will try to recognize so-called "scene releases". Depending on your preferences, you can give it a negative score `-10000`, a positive score, or just skip adding it altogether.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Scene', 'Unwanted Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Scene', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Scene', 'Scene Groups + Naming', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Scene Groups + Naming', '^(?=.*(\b\d{3,4}p\b).*([_. ]WEB[_. ])(?!DL)\b)|\b(-CAKES|-GGEZ|-GGWP|-GLHF|-GOSSIP|-NAISU|-KOGI|-PECULATE|-SLOT|-EDITH|-ETHEL|-ELEANOR|-B2B|-SPAMnEGGS|-FTP|-DiRT|-SYNCOPY|-BAE|-SuccessfulCrab|-NHTFS|-SURCODE|-B0MBARDIERS|-D3US|-BROTHERHOOD|-W4K|-STRiKES)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Scene', 'Scene Groups + Naming', 'Scene Groups + Naming');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Scene', 'Not INFLATE/DEFLATE', 'release_title', 'sonarr', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not INFLATE/DEFLATE', '\b(INFLATE|DEFLATE[)\]]?)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Scene', 'Not INFLATE/DEFLATE', 'Not INFLATE/DEFLATE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Scene', 'Not GERMAN', 'release_title', 'sonarr', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not GERMAN', '\b(GERMAN)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Scene', 'Not GERMAN', 'Not GERMAN');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Scene', 'Not INFLATE/DEFLATE (Radarr)', 'release_title', 'radarr', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not INFLATE/DEFLATE (2)', '\b(INFLATE|DEFLATE)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Scene', 'Not INFLATE/DEFLATE (Radarr)', 'Not INFLATE/DEFLATE (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Scene', 'Not GERMAN (Radarr)', 'release_title', 'radarr', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not GERMAN (2)', '\b(GERMAN)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Scene', 'Not GERMAN (Radarr)', 'Not GERMAN (2)');
-- --- END

-- --- BEGIN ( create custom_format "SiC" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('SiC', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('SiC', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SiC', 'SiC', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiC', '\bSiC\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SiC', 'SiC', 'SiC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SiC', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SiC', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SiC', 'WEBDL', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SiC', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SiC', 'HDR', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SiC', 'HDR', 'Not HDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SiC', 'DV', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SiC', 'DV', 'Dolby Vision');
-- --- END

-- --- BEGIN ( create custom_format "Single Episode" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Single Episode', '**Single Episode**

**This CF utilizes functionality only available starting in Sonarr v4.0.2.1262.:**
This Custom Format will recognize single-episode releases, instead of multi-episode or season packs, using Sonarr''s built-in parser. Depending on your preference, you can give it a negative or positive score or skip adding it altogether.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Single Episode', 'Release Type (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Single Episode', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Single Episode', 'Single Episode', 'release_type', 'all', 0, 0);
INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Single Episode', 'Single Episode', 'single_episode');
-- --- END

-- --- BEGIN ( create custom_format "TVING" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('TVING', '**TVING**

TVING is a South Korean streaming service offering Korean dramas, movies, variety shows, and original content. It launched on October 1, 2020, as a joint venture between CJ ENM and JTBC, combining both companies'' streaming services into one platform. It is primarily available in South Korea and is one of the country''s leading streaming platforms.

For more information, visit the [TVING Wikipedia page](https://en.wikipedia.org/wiki/TVING){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TVING', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TVING', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVING', 'TVING', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVING (2)', '\b(tving)\b[ ._-]web[ ._-]?(dl|rip)?\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TVING', 'TVING', 'TVING (2)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVING', 'TVING Rename', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVING Rename', '\[(TVING)\b|\b(TVING)\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TVING', 'TVING Rename', 'TVING Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVING', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TVING', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVING', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TVING', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "TVer" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('TVer', '**TVer**

TVer is a free, ad-supported Japanese streaming service launched in October 2015. It is a joint venture by Japan''s five major commercial TV networks Nippon TV, TV Asahi, TBS Television, TV Tokyo, and Fuji TV. It offers dramas, variety shows, anime, and documentaries, typically available for one week after their original broadcast. It is primarily available in Japan.

For more information, visit the [TVer Wikipedia page](https://en.wikipedia.org/wiki/TVer_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TVer', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TVer', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVer', 'TVer', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVer', '\b(tver)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TVer', 'TVer', 'TVer');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVer', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TVer', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TVer', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('TVer', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "TrueHD ATMOS" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('TrueHD ATMOS', '**TrueHD Atmos (Lossless)**

Dolby TrueHD Atmos is the lossless version of Dolby Atmos, found primarily on Blu-ray and 4K UHD discs. Dolby Atmos soundtracks consist of up to 128 individual audio objects mixed in a 3D soundfield, rendered during playback to the available speakers, including overhead ceiling speakers. On Blu-ray, the Atmos data is embedded as an extension within the TrueHD track to maintain backward compatibility. If a receiver does not support Atmos, it simply plays the audio as standard Dolby TrueHD instead. Unlike most audio formats, Dolby TrueHD is 100% lossless, meaning what you hear is bit-for-bit identical to the master recording.

For more information, visit the [Dolby TrueHD Wikipedia page](https://en.wikipedia.org/wiki/Dolby_TrueHD){:target="_blank" rel="noopener noreferrer"} and the [Dolby Atmos Wikipedia page](https://en.wikipedia.org/wiki/Dolby_Atmos){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TrueHD ATMOS', 'Audio Formats');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('TrueHD ATMOS', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'TrueHD', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TrueHD (3)', 'True[ .-]?HD|W4NK3R|HQMUX', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'TrueHD', 'TrueHD (3)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'ATMOS', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ATMOS (3)', '\b(ATMOS|CtrlHD|W4NK3R|HQMUX|DON|3L)(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'ATMOS', 'ATMOS (3)');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus ');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'Not DTS', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'Not DTS', 'DTS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'Not DTS X', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'Not DTS X', 'Not DTS X');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'Not FLAC', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'Not FLAC', 'FLAC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('TrueHD ATMOS', 'Not 5.1 Surround', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TrueHD ATMOS', 'Not 5.1 Surround', '5.1 Surround');
-- --- END

-- --- BEGIN ( create custom_format "U-NEXT" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('U-NEXT', '**U-NEXT**

U-NEXT is a Japanese subscription streaming service launched in 2007, and is one of Japan''s leading streaming platforms. It holds a 17.9% market share in Japan''s subscription streaming sector, ranking second only to Netflix. It offers a wide range of movies, dramas, anime, live sports, and original content, along with an extensive e-book and manga library. It is primarily available in Japan.

For more information, visit the [U-NEXT Wikipedia page](https://en.wikipedia.org/wiki/U-Next){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('U-NEXT', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('U-NEXT', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('U-NEXT', 'U-NEXT', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('U-NEXT', '\b(u-next)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('U-NEXT', 'U-NEXT', 'U-NEXT');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('U-NEXT', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('U-NEXT', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('U-NEXT', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('U-NEXT', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "UHD Bluray RlsGrp (SQP-4 MA)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('UHD Bluray RlsGrp (SQP-4 MA)', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', '2160p', '2160p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Not REMUX', 'quality_modifier', 'all', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Not REMUX', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Not WEBDL', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Not WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Not WEBRIP', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Not WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'CtrlHD', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'CtrlHD', 'CtrlHD');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'DON', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'DON', 'DON');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'HiDt', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'HiDt', 'HiDt');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'MainFrame', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'MainFrame', 'MainFrame');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'RandomBytes', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'RandomBytes', 'RandomBytes');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Softboat', 'release_group', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Softboat', '^(Softboat)$', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'Softboat', 'Softboat');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'W4NK3R', 'release_group', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray RlsGrp (SQP-4 MA)', 'W4NK3R', 'W4NK3R');
-- --- END

-- --- BEGIN ( create custom_format "VC-1" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VC-1', '**VC-1**

VC-1 is a lossy video codec developed by Microsoft, commonly found on older Blu-ray discs and early HD video releases. While it was a popular choice in the early days of high-definition content, it has since been largely replaced by more modern codecs such as AVC (H.264) for 1080p and HEVC (H.265) for 2160p content.

Many release groups re-encode older VC-1 content to AVC when a disc is also available in AVC, as AVC generally offers better compression and improved visual quality at lower bitrates, along with wider compatibility across modern playback devices.

For more information, visit the [VC-1 Wikipedia page](https://en.wikipedia.org/wiki/VC-1){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VC-1', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VC-1', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VC-1', 'VC-1', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VC-1', '\bVC[-_. ]?1\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VC-1', 'VC-1', 'VC-1');
-- --- END

-- --- BEGIN ( create custom_format "VDL" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VDL', '**Videoland**

Videoland is a Dutch streaming service owned by RTL Nederland, originally founded in 1984 as a chain of video rental stores before moving to online streaming. It is the leading local streaming platform in the Netherlands, focusing on Dutch-language content, original productions, and programming from RTL Nederland''s TV channels. It is primarily available to viewers in the Netherlands.

For more information, visit the [Videoland Wikipedia page](https://en.wikipedia.org/wiki/Videoland_(Netherlands)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VDL', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VDL', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VDL', 'Videoland', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Videoland', '\b(vdl|Videoland)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VDL', 'Videoland', 'Videoland');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VDL', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('VDL', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VDL', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('VDL', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "VF2" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VF2', '**VF2**

VF1-9 or FR1-9 indicates the number of dubs present (normally VF2 being VFF and VFQ).', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VF2', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VF2', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VF2', 'VF2', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VF2', '\b(VF2)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VF2', 'VF2', 'VF2');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VF2', 'Both VFF and VFQ', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Both VFF and VFQ', '\b(VF(F|Q)[ .]VF(F|Q))\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VF2', 'Both VFF and VFQ', 'Both VFF and VFQ');
-- --- END

-- --- BEGIN ( create custom_format "VFB" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VFB', '**VFB**

Belgian French Version.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFB', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFB', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFB', 'Belgian French', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Belgian French', '\b(VFB)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFB', 'Belgian French', 'Belgian French');
-- --- END

-- --- BEGIN ( create custom_format "VFF" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VFF', '**VFF**

Full French version (dubbing done in France) and French version (normally equivalent to VFQ).', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFF', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFF', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFF', 'TRUEFRENCH', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRUEFRENCH', '\b(TRUEFRENCH|VFF)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFF', 'TRUEFRENCH', 'TRUEFRENCH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFF', 'Not VF2', 'release_title', 'all', 1, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not VF2', '\b(VF2|(VF(F|Q)[ .]VF(F|Q)))\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFF', 'Not VF2', 'Not VF2');
-- --- END

-- --- BEGIN ( create custom_format "VFI" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VFI', '**VFI**

International French Version.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFI', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFI', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFI', 'French International', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('French International', '\b(VFI)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFI', 'French International', 'French International');
-- --- END

-- --- BEGIN ( create custom_format "VFQ" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VFQ', '**VFQ**

Canadian French Version.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFQ', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VFQ', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFQ', 'Canadian French', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Canadian French', '\b(VFQ|\d{3,4}p[ .]CAN?|(?<=MULTi[ .])(FR(A|ENCH)|CAN?))\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFQ', 'Canadian French', 'Canadian French');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFQ', 'Not VF2', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFQ', 'Not VF2', 'Not VF2');
-- --- END

-- --- BEGIN ( create custom_format "VIU" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VIU', '**Viu**

Viu (pronounced "view") is a Hong Kong-based subscription streaming service owned by PCCW Media Group, launched in October 2015. It delivers Asian content across different genres, including Korean dramas, movies, and variety shows, with local language subtitles, as well as original productions under the Viu Originals label. It is available in 16 markets across Asia, the Middle East, and Africa, and operates on both a free ad-supported tier and a paid subscription tier.

For more information, visit the [Viu Wikipedia page](https://en.wikipedia.org/wiki/Viu_(streaming_service)){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VIU', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VIU', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VIU', 'VIU', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VIU', '\b(viu)\b[ ._-]web[ ._-]?(dl|rip)?\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VIU', 'VIU', 'VIU');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VIU', 'VIU Rename', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VIU Rename', '\[(VIU)\b|\b(VIU)\]', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VIU', 'VIU Rename', 'VIU Rename');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VIU', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('VIU', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VIU', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('VIU', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "VOF" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VOF', '**VOF**

Original French Version.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VOF', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VOF', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOF', 'French Original Version', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('French Original Version', '\b(VOF)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOF', 'French Original Version', 'French Original Version');
-- --- END

-- --- BEGIN ( create custom_format "VOQ" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VOQ', '**VOQ**

Quebec Original Version.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VOQ', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VOQ', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOQ', 'Quebec Original Version', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Quebec Original Version', '\b(VOQ)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOQ', 'Quebec Original Version', 'Quebec Original Version');
-- --- END

-- --- BEGIN ( create custom_format "VQ" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('VQ', '**VQ**

Quebec Version (strong Quebec accent, ex: The Simpsons movie).', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VQ', 'French Audio Version');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VQ', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VQ', 'Version Québécoise', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Version Québécoise', '\b(VQ)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VQ', 'Version Québécoise', 'Version Québécoise');
-- --- END

-- --- BEGIN ( create custom_format "Viki" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Viki', '**Viki (Rakuten Viki)**

Rakuten Viki is a streaming service owned by Rakuten that specialises in Asian TV shows and films, particularly Korean, Chinese, Taiwanese, and Japanese productions. It is available worldwide and is unique for its community-created subtitles, with content available in more than 200 languages.

For more information, visit the [Rakuten Viki Wikipedia page](https://en.wikipedia.org/wiki/Rakuten_Viki){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Viki', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Viki', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Viki', 'Viki', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Viki', 'Viki', 'Viki');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Viki', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Viki', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Viki', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Viki', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "Vinegar Syndrome" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Vinegar Syndrome', '**Vinegar Syndrome**

Vinegar Syndrome is an American home video distribution company specializing in protecting and preserving genre films. It was founded in 2012 in Bridgeport, Connecticut, by Joe Rubin and Ryan Emerson. The company focuses on films produced primarily between the 1960s and 1980s, including horror, exploitation, and cult titles, many of which would otherwise be lost. Their in-house lab performs high-quality digital film restorations with the goal of bringing each film back to its originally intended theatrical quality. The company''s name refers to the acidic smell of deteriorating film, a constant reminder of the preservation work they do.

For more information, visit the [Vinegar Syndrome Wikipedia page](https://en.wikipedia.org/wiki/Vinegar_Syndrome){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Vinegar Syndrome', 'Movie Versions');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Vinegar Syndrome', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Vinegar Syndrome', 'Vinegar Syndrome', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Vinegar Syndrome', '\b(Vinegar[ ._-]Syndrome)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Vinegar Syndrome', 'Vinegar Syndrome', 'Vinegar Syndrome');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Vinegar Syndrome', 'VS', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VS', '\b(V-S)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Vinegar Syndrome', 'VS', 'VS');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Vinegar Syndrome', 'VinSyn', 'release_title', 'all', 0, 0);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VinSyn', '\b(VinSyn)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Vinegar Syndrome', 'VinSyn', 'VinSyn');
-- --- END

-- --- BEGIN ( create custom_format "WAVVE" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WAVVE', '**Wavve**

Wavve is a South Korean subscription streaming service operated by SK Telecom, offering TV dramas, variety shows, films, documentaries, animations, and sports. It was launched in September 2019 as a joint venture between SK Telecom and South Korea''s three major broadcasters KBS, MBC, and SBS. Wavve has received approval to merge with fellow Korean streaming service TVING.

For more information, visit the [Wavve Wikipedia page](https://en.wikipedia.org/wiki/Wavve){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WAVVE', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WAVVE', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WAVVE', 'WAVVE', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WAVVE', '\b(WAVVE)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WAVVE', 'WAVVE', 'WAVVE');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WAVVE', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WAVVE', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WAVVE', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WAVVE', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "WEBDL Boost" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WEBDL Boost', NULL, 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WEBDL Boost', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEBDL Boost', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WEBDL Boost', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEBDL Boost', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WEBDL Boost', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "WETV" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WETV', '**WeTV**

WeTV is the international version of Tencent Video, a Chinese streaming service owned by Tencent. It was launched in 2018 and offers Chinese, Korean, Thai, and Japanese dramas, movies, anime, and original productions. It serves content from various Asian countries, including Indonesia, Korea, Thailand, Malaysia, the Philippines, and Japan, and also produces local original content in the regions where it operates.

For more information, visit the [Tencent Video Wikipedia page](https://en.wikipedia.org/wiki/Tencent_Video){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WETV', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WETV', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WETV', 'WETV', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WETV', '\b(WETV)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WETV', 'WETV', 'WETV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WETV', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WETV', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WETV', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WETV', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "WKN" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WKN', '**Wakanim (WKN)**

Wakanim was a French anime subscription streaming service launched on February 27, 2009, specializing in simulcasting Japanese anime for European audiences. It was also the first platform in Europe to offer DRM-free anime downloads. Owned by Sony''s Crunchyroll, the service was discontinued on November 3, 2023, with its content and library absorbed into Crunchyroll.

For more information, visit the [Wakanim Wikipedia page](https://en.wikipedia.org/wiki/Wakanim){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WKN', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WKN', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WKN', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WKN', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WKN', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WKN', 'WEBRIP', 'webrip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WKN', 'WEB', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('WKN', 'WEB', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WKN', 'WKN', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WKN', 'WKN', 'WKN');
-- --- END

-- --- BEGIN ( create custom_format "WiTH AD" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WiTH AD', '**With Audio Description**

Audio Description (AD) is an extra narration track that describes key visual details such as scenery, costumes, and actions for blind or visually impaired viewers. It makes TV and film content more accessible by explaining what cannot be heard in the main audio.

Some releases include Audio Description, marked as `WITH AD` or `AD`. Note: this is not the same as advertisements.

For more information, visit the [Audio Description Wikipedia page](https://en.wikipedia.org/wiki/Audio_description){:target="_blank" rel="noopener noreferrer"}.', 1);
insert into "tags" ("name") values ('Accessibility (Optional)') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH AD', 'Accessibility (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH AD', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WiTH AD', 'Audio Description', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Audio Description', '\b((FRENCH|MULTi|WiTH|((BA?|A)SL[ ._-]and))[ ._-](AD|Audio[ ._-]Description))\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WiTH AD', 'Audio Description', 'Audio Description');
-- --- END

-- --- BEGIN ( create custom_format "WiTH ASL" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WiTH ASL', '**ASL (American Sign Language)**

ASL is a sign language used in the United States and English-speaking Canada. It uses a one-handed alphabet and was heavily influenced by French Sign Language (LSF). ASL relies on spatial organization and facial expressions to convey meaning and grammar.

For more information, visit the [American Sign Language Wikipedia page](https://en.wikipedia.org/wiki/American_Sign_Language){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH ASL', 'Accessibility (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH ASL', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WiTH ASL', 'American Sign Language', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('American Sign Language', '\b((WiTH)[ ._-](ASL))\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WiTH ASL', 'American Sign Language', 'American Sign Language');
-- --- END

-- --- BEGIN ( create custom_format "WiTH BASL" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WiTH BASL', '**BASL (Black American Sign Language)**

BASL is a dialect of ASL used primarily by Black Deaf Americans, originating from segregated schools in the South. Compared to mainstream ASL, it uses a larger signing space, more two-handed signs, and greater emotional expression.

For more information, visit the [Black American Sign Language Wikipedia page](https://en.wikipedia.org/wiki/Black_American_Sign_Language){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH BASL', 'Accessibility (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH BASL', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WiTH BASL', 'Black American Sign Language', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Black American Sign Language', '\b(BASL)\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WiTH BASL', 'Black American Sign Language', 'Black American Sign Language');
-- --- END

-- --- BEGIN ( create custom_format "WiTH BSL" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('WiTH BSL', '**BSL (British Sign Language)**

BSL is a sign language used across the United Kingdom. It uses a two-handed alphabet and is part of the BANZSL language family, alongside Australian and New Zealand sign languages. BSL relies on body movement and hand shapes to convey meaning, and often follows a topic-comment sentence structure.

For more information, visit the [British Sign Language Wikipedia page](https://en.wikipedia.org/wiki/British_Sign_Language){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH BSL', 'Accessibility (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('WiTH BSL', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WiTH BSL', 'British Sign Language', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('British Sign Language', '\b((WiTH)[ ._-](BSL))\b', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WiTH BSL', 'British Sign Language', 'British Sign Language');
-- --- END

-- --- BEGIN ( create custom_format "Wrong Language" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Wrong Language', '**Wrong Language**

This Custom Format checks if the release is in the original language. If it is not, it gets tagged as Wrong Language.
One issue with the Wrong Language Custom Format is that TMDB sometimes has incorrect data.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Wrong Language', 'Language Profiles');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Wrong Language', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Wrong Language', 'Wrong Language', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Wrong Language', 'Wrong Language', 'Original', 0);
-- --- END

-- --- BEGIN ( create custom_format "friDay" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('friDay', '**friDay Video**

friDay Video is a Taiwanese streaming service owned by Far EasTone, one of Taiwan''s major telecom providers, and is Taiwan''s number one domestic streaming platform. It offers movies, dramas, variety shows, live news, and anime, with a strong focus on Korean, Japanese, and local Taiwanese content. New releases and simulcast titles are regularly added, making it a popular choice for fans of Asian entertainment in Taiwan.

For more information, visit the [Far EasTone Wikipedia page](https://en.wikipedia.org/wiki/Far_EasTone){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('friDay', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('friDay', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('friDay', 'friDay', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('friDay', '\b(friDay)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('friDay', 'friDay', 'friDay');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('friDay', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('friDay', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('friDay', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('friDay', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "iQIY" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('iQIY', '**iQIYI**

iQIYI is a Chinese streaming service offering a wide range of Asian content, including Chinese dramas, anime, variety shows, and original movies. Initially available only in China, it has since expanded to international viewers. It is owned by Baidu and is one of the largest online video platforms in the world.

For more information, visit the [iQIYI Wikipedia page](https://en.wikipedia.org/wiki/IQIYI){:target="_blank" rel="noopener noreferrer"}.', 1);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('iQIY', 'Streaming Services');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('iQIY', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('iQIY', 'iQIY', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iQIY', '\b(IQIY|IQ|iQIYI)\b(?=[ ._-]web[ ._-]?(dl|rip)\b)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('iQIY', 'iQIY', 'iQIY');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('iQIY', 'WEBDL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('iQIY', 'WEBDL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('iQIY', 'WEBRIP', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('iQIY', 'WEBRIP', 'webrip');
-- --- END

-- --- BEGIN ( create custom_format "x264" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('x264', '**x264**

x264 is a free and open-source software library developed by VideoLAN for encoding video into the H.264/MPEG-4 AVC format, released under the GNU General Public License. It is the most widely deployed H.264/AVC encoder in the world, with over 80% of all videos on the internet estimated to be encoded using x264. x264 is primarily used for 720p and 1080p encodes, and offers excellent direct-play support and broad compatibility across virtually all devices and media players.

For more information, visit the [x264 Wikipedia page](https://en.wikipedia.org/wiki/X264){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x264', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x264', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x264', 'x|h264', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('x|h264', '[xh][ ._-]?264|\bAVC(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x264', 'x|h264', 'x|h264');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x264', 'Not Remux', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('x264', 'Not Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x264', 'Remux', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('x264', 'Remux', 'remux');
-- --- END

-- --- BEGIN ( create custom_format "x265 (HD)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('x265 (HD)', '**x265 (HD)**

This blocks all 720/1080p (HD) releases that are encoded in x265.

In your quality profile use the following score for this Custom Format: `{{ sonarr''cf''''x265-hd''''trash_scores''''default'' }}`', 0);
insert into "tags" ("name") values ('Golden Rule (Optional)') on conflict ("name") do nothing;
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265 (HD)', 'Golden Rule (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265 (HD)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (HD)', 'x265/HEVC', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (HD)', 'x265/HEVC', 'HEVC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (HD)', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('x265 (HD)', 'Not 2160p', '2160p');
-- --- END

-- --- BEGIN ( create custom_format "x265 (no HDR/DV)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('x265 (no HDR/DV)', '**x265 (no HDR/DV)**

This blocks most 720/1080p (HD) releases that are encoded in x265, **But it will allow 720/1080p x265 releases if they have HDR and/or DV**

*Since some NF releases won''t be released as 4k, this allows you to still have the DV/HDR releases.*

In your quality profile use the following score for this Custom Format: `{{ sonarr''cf''''x265-no-hdrdv''''trash_scores''''default'' }}`', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265 (no HDR/DV)', 'Golden Rule (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265 (no HDR/DV)', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (no HDR/DV)', 'x265/HEVC', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (no HDR/DV)', 'x265/HEVC', 'HEVC');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (no HDR/DV)', 'Not HDR/DV', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (no HDR/DV)', 'Not HDR/DV', 'Not HDR DV');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (no HDR/DV)', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('x265 (no HDR/DV)', 'Not 2160p', '2160p');
-- --- END

-- --- BEGIN ( create custom_format "x266" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('x266', '**x266**

x266 is the next generation open-source VVC/H.266 compliant encoder, built on top of the industry-standard x265 HEVC encoder. The VVC/H.266 standard was developed with the goal of achieving twice the coding efficiency of HEVC, and supports High Dynamic Range (HDR), Wide Color Gamut (WCG), and 360° video. x266 is still actively being developed by MulticoreWare, and very little is currently known about its final implementation.

No respectable release group is currently using x266. It is best to avoid this codec for now to prevent compatibility issues.

For more information, visit the [Versatile Video Coding Wikipedia page](https://en.wikipedia.org/wiki/Versatile_Video_Coding){:target="_blank" rel="noopener noreferrer"}.', 0);
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x266', 'Miscellaneous (Optional)');
INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x266', 'TRaSH');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x266', 'x|h266', 'release_title', 'all', 0, 1);
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('x|h266', '[xh][ ._-]?266|\bVVC(\b|\d)', NULL, NULL);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x266', 'x|h266', 'x|h266');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x266', 'Not Remux', 'source', 'sonarr', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('x266', 'Not Remux', 'bluray_raw');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x266', 'Not Remux (Radarr)', 'quality_modifier', 'radarr', 1, 1);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('x266', 'Not Remux (Radarr)', 'remux');
-- --- END

