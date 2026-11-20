-- @operation: export
-- @entity: batch
-- @name: TRaSH quality profiles
-- @exportedAt: 2026-11-20T15:00:00.000Z

-- --- BEGIN ( create quality_profile "HD Bluray + WEB" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('HD Bluray + WEB', 'For 1080p movies with a good balance between quality and size. It prefers HD Bluray encodes from trusted groups and uses 1080p WEB releases until one is available.

- **Grabs:** Bluray-1080p, WEB 1080p (WEBRip-1080p, WEBDL-1080p), Bluray-720p.
- **Upgrades until:** Bluray-1080p, and a custom format score of 10000.
- **Prefers (highest first):** HD Bluray Tier 01, HD Bluray Tier 02, HD Bluray Tier 03, WEB Tier 01, WEB Tier 02, WEB Tier 03 and more.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('HD Bluray + WEB', 'TRaSH');
insert into "tags" ("name") values ('Standard') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('HD Bluray + WEB', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('HD Bluray + WEB', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('HD Bluray + WEB', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD Bluray + WEB', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD Bluray + WEB', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD Bluray + WEB', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('HD Bluray + WEB', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('HD Bluray + WEB', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Bluray-1080p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', NULL, 'WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Bluray-720p', NULL, 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Raw-HD', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'BR-DISK', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Remux-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Bluray-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', NULL, 'WEB 2160p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'HDTV-2160p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Remux-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'HDTV-1080p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', NULL, 'WEB 720p', 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'HDTV-720p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Bluray-576p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Bluray-480p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', NULL, 'WEB 480p', 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'DVD-R', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'DVD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'SDTV', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('HD Bluray + WEB', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('HD Bluray + WEB', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'HD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'HD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'HD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('HD Bluray + WEB', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "Remux + WEB 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Remux + WEB 1080p', 'For the best 1080p quality. It aims for an untouched 1080p Remux and uses 1080p WEB releases in the meantime. Expect large files.

- **Grabs:** Remux-1080p, WEB 1080p (WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Remux-1080p, and a custom format score of 10000.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, WEB Tier 01, WEB Tier 02, WEB Tier 03 and more.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr, with scores set separately for each.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 1080p', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 1080p', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 1080p', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 1080p', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 1080p', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 1080p', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 1080p', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 1080p', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 1080p', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 1080p', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Remux-1080p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', NULL, 'WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Bluray-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Bluray-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', NULL, 'WEB 720p', 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'HDTV-720p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Bluray-576p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Bluray-480p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', NULL, 'WEB 480p', 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'DVD-R', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'DVD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'SDTV', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 1080p', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Remux + WEB 1080p', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Remux Tier 01', 'sonarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Remux Tier 02', 'sonarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 1080p', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "Remux + WEB 2160p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Remux + WEB 2160p', 'For the best 4K quality. It aims for an untouched 4K Remux and uses 4K WEB releases in the meantime, with HDR and Dolby Vision preferred. Expect very large files.

- **Grabs:** Remux-2160p, WEB 2160p (WEBRip-2160p, WEBDL-2160p).
- **Upgrades until:** Remux-2160p, and a custom format score of 10000.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, WEB Tier 01, WEB Tier 02, WEB Tier 03 and more.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr, with scores set separately for each.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 2160p', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 2160p', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 2160p', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 2160p', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux + WEB 2160p', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 2160p', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 2160p', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 2160p', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux + WEB 2160p', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux + WEB 2160p', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Remux-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', NULL, 'WEB 2160p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Bluray-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Remux-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Bluray-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', NULL, 'WEB 1080p', 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Bluray-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', NULL, 'WEB 720p', 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'HDTV-720p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Bluray-576p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Bluray-480p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', NULL, 'WEB 480p', 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'DVD-R', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'DVD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'SDTV', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux + WEB 2160p', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Remux + WEB 2160p', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Remux Tier 01', 'sonarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Remux Tier 02', 'sonarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux + WEB 2160p', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "Remux 2160p (Alternative)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Remux 2160p (Alternative)', 'A 4K Remux is the end goal, but it accepts almost any quality along the way so something is available quickly, then upgrades over time.

- **Grabs:** Remux-2160p, Bluray-2160p, WEB 2160p (WEBRip-2160p, WEBDL-2160p), Remux-1080p, Bluray-1080p, WEB 1080p (WEBRip-1080p, WEBDL-1080p), HDTV-1080p, Bluray-720p, WEB 720p (WEBRip-720p, WEBDL-720p), HDTV-720p, Bluray-576p, Bluray-480p, WEB 480p (WEBRip-480p, WEBDL-480p), DVD, SDTV.
- **Upgrades until:** Remux-2160p, and a custom format score of 10000.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, UHD Bluray Tier 01, HD Bluray Tier 01, UHD Bluray Tier 02 and more.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr, with scores set separately for each.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Alternative)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Alternative)', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Alternative)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Alternative)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Alternative)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Alternative)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Alternative)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Alternative)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Alternative)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Alternative)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Remux-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Bluray-2160p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', NULL, 'WEB 2160p', 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Remux-1080p', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Bluray-1080p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', NULL, 'WEB 1080p', 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'HDTV-1080p', NULL, 6, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Bluray-720p', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', NULL, 'WEB 720p', 8, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'HDTV-720p', NULL, 9, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Bluray-576p', NULL, 10, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Bluray-480p', NULL, 11, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', NULL, 'WEB 480p', 12, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'DVD', NULL, 13, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'SDTV', NULL, 14, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Raw-HD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'BR-DISK', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'HDTV-2160p', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'DVD-R', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Alternative)', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Remux 2160p (Alternative)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'HD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'HD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'HD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Remux Tier 01', 'sonarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Remux Tier 02', 'sonarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Alternative)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "Remux 2160p (Combined)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Remux 2160p (Combined)', 'One profile for both 1080p and 4K. It grabs 1080p or 2160p releases and keeps upgrading until it has a 4K Remux. Use it if you keep a single library for both resolutions.

- **Grabs:** Remux-2160p, Bluray-2160p, WEB 2160p (WEBRip-2160p, WEBDL-2160p), Remux-1080p, Bluray-1080p, WEB 1080p (WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Remux-2160p, and a custom format score of 10000.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, UHD Bluray Tier 01, HD Bluray Tier 01, UHD Bluray Tier 02 and more.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr, with scores set separately for each.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Combined)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Combined)', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Combined)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Combined)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Remux 2160p (Combined)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Combined)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Combined)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Combined)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Remux 2160p (Combined)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Remux 2160p (Combined)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Remux-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Bluray-2160p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', NULL, 'WEB 2160p', 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Remux-1080p', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Bluray-1080p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', NULL, 'WEB 1080p', 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'HDTV-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Bluray-720p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', NULL, 'WEB 720p', 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'HDTV-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Bluray-576p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Bluray-480p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', NULL, 'WEB 480p', 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'HDTV-2160p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Raw-HD', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'BR-DISK', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'DVD-R', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'DVD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'SDTV', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Remux 2160p (Combined)', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Remux 2160p (Combined)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'HD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'HD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'HD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Remux Tier 01', 'sonarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Remux Tier 02', 'sonarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Remux 2160p (Combined)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-1 (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-1 (1080p)', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** Bluray|WEB-1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p, WEBRip-720p, WEBDL-720p), Bluray-720p.
- **Upgrades until:** Bluray|WEB-1080p, and a custom format score of 10000.
- **Minimum score:** 1000. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, HD Bluray Tier 01, HD Bluray Tier 02, BHDStudio and more.
- **Never grabs:** 3D, AV1, BR-DISK, DTS X, DTS-HD HRA, DTS-HD MA, LQ, LQ (Release Title) and 3 more.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 1000, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (1080p)', 'TRaSH');
insert into "tags" ("name") values ('SQP') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (1080p)', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 (1080p)', 'Bluray|WEB-1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'Bluray|WEB-1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'Bluray|WEB-1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'Bluray|WEB-1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'Bluray|WEB-1080p', 'WEBRip-720p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'Bluray|WEB-1080p', 'WEBDL-720p', 4);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', NULL, 'Bluray|WEB-1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Bluray-720p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Remux-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'HDTV-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Bluray-576p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Bluray-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', NULL, 'WEB 480p', 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'TELECINE', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'TELESYNC', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'CAM', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'WORKPRINT', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'Unknown', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (1080p)', 'HDTV-480p', NULL, 24, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-1 (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', '720p', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'BHDStudio', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'DD', 'radarr', 115);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'DD+', 'radarr', 125);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'DD+ ATMOS', 'radarr', 135);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'DTS X', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'DTS-HD HRA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'DTS-HD MA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'HD Bluray Tier 01', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'HD Bluray Tier 02', 'radarr', 1050);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'HD Bluray Tier 03', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'TrueHD', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'TrueHD ATMOS', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'WEB Tier 03', 'radarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'hallowed', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (1080p)', 'x265 (HD)', 'radarr', -10000);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-1 (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-1 (2160p)', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** Bluray-2160p, WEB 2160p (WEBRip-2160p, WEBDL-2160p), Bluray|WEB-1080p (Bluray-1080p, WEBDL-1080p, WEBRip-1080p, WEBDL-720p, WEBRip-720p), Bluray-720p.
- **Upgrades until:** Bluray-2160p, and a custom format score of 10000.
- **Minimum score:** 1000. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, HD Bluray Tier 01, UHD Bluray Tier 01, HD Bluray Tier 02 and more.
- **Never grabs:** 3D, AV1, BR-DISK, DTS X, DTS-HD HRA, DTS-HD MA, DV (w/o HDR fallback), LQ and 4 more.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 1000, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (2160p)', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 (2160p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 (2160p)', 'Bluray|WEB-1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'Bluray|WEB-1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'Bluray|WEB-1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'Bluray|WEB-1080p', 'WEBRip-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'Bluray|WEB-1080p', 'WEBDL-720p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'Bluray|WEB-1080p', 'WEBRip-720p', 4);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Bluray-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', NULL, 'WEB 2160p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', NULL, 'Bluray|WEB-1080p', 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Bluray-720p', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Raw-HD', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'BR-DISK', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Remux-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Remux-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'HDTV-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Bluray-576p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Bluray-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', NULL, 'WEB 480p', 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'TELECINE', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'TELESYNC', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'CAM', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'WORKPRINT', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'Unknown', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 (2160p)', 'HDTV-480p', NULL, 24, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-1 (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', '720p', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'BHDStudio', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'DD', 'radarr', 115);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'DD+', 'radarr', 125);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'DD+ ATMOS', 'radarr', 135);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'DTS X', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'DTS-HD HRA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'DTS-HD MA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'DV (w/o HDR fallback)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'HD Bluray Tier 01', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'HD Bluray Tier 02', 'radarr', 1050);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'HD Bluray Tier 03', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'TrueHD', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'TrueHD ATMOS', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'UHD Bluray Tier 01', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'UHD Bluray Tier 02', 'radarr', 1050);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'UHD Bluray Tier 03', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'WEB Tier 03', 'radarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'hallowed', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 (2160p)', 'x265 (no HDR/DV)', 'radarr', -10000);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-1 WEB (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-1 WEB (1080p)', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** Bluray|WEB-1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Bluray|WEB-1080p, and a custom format score of 10000.
- **Minimum score:** 1000. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, HD Bluray Tier 01, HD Bluray Tier 02, HD Bluray Tier 03 and more.
- **Never grabs:** 3D, AV1, BR-DISK, DTS X, DTS-HD HRA, DTS-HD MA, LQ, LQ (Release Title) and 3 more.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 1000, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (1080p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (1080p)', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (1080p)', 'Bluray|WEB-1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'Bluray|WEB-1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'Bluray|WEB-1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'Bluray|WEB-1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (1080p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', NULL, 'Bluray|WEB-1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', NULL, 'WEB 720p', 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Bluray-720p', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Raw-HD', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'BR-DISK', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Remux-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Bluray-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', NULL, 'WEB 2160p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'HDTV-2160p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Remux-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'HDTV-1080p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (1080p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-1 WEB (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', '2.0 Stereo', 'radarr', -175);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', '720p', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'BHDStudio', 'radarr', 550);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'DD', 'radarr', 115);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'DD+', 'radarr', 125);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'DD+ ATMOS', 'radarr', 135);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'DTS X', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'DTS-HD HRA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'DTS-HD MA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'HD Bluray Tier 01', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'HD Bluray Tier 02', 'radarr', 1050);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'HD Bluray Tier 03', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'TrueHD', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'TrueHD ATMOS', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'WEB Tier 03', 'radarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'hallowed', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (1080p)', 'x265 (HD)', 'radarr', -10000);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-1 WEB (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-1 WEB (2160p)', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** Bluray|WEB-2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p), Bluray|WEB-1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Bluray|WEB-2160p, and a custom format score of 10000.
- **Minimum score:** 1000. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, HD Bluray Tier 01, UHD Bluray Tier 01, HD Bluray Tier 02 and more.
- **Never grabs:** 3D, AV1, BR-DISK, DTS X, DTS-HD HRA, DTS-HD MA, DV (w/o HDR fallback), LQ and 4 more.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 1000, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (2160p)', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-1 WEB (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'Bluray|WEB-1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (2160p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-1 WEB (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-1 WEB (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', NULL, 'Bluray|WEB-2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', NULL, 'Bluray|WEB-1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', NULL, 'WEB 720p', 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'Bluray-720p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'Raw-HD', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'BR-DISK', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'Remux-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'Remux-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'HDTV-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'Bluray-576p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'Bluray-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', NULL, 'WEB 480p', 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'TELECINE', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'TELESYNC', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'CAM', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'WORKPRINT', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'Unknown', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-1 WEB (2160p)', 'HDTV-480p', NULL, 24, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-1 WEB (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', '2.0 Stereo', 'radarr', -175);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', '720p', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'BHDStudio', 'radarr', 550);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'DD', 'radarr', 115);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'DD+', 'radarr', 125);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'DD+ ATMOS', 'radarr', 135);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'DTS X', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'DTS-HD HRA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'DTS-HD MA', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'DV (w/o HDR fallback)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'HD Bluray Tier 01', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'HD Bluray Tier 02', 'radarr', 1050);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'HD Bluray Tier 03', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'TrueHD', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'TrueHD ATMOS', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'UHD Bluray Tier 01', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'UHD Bluray Tier 02', 'radarr', 1050);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'UHD Bluray Tier 03', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'WEB Tier 03', 'radarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'hallowed', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-1 WEB (2160p)', 'x265 (no HDR/DV)', 'radarr', -10000);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-2" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-2', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** WEB|Remux|Bluray|2160p (Bluray-2160p, Remux-2160p, WEBRip-2160p, WEBDL-2160p, WEBRip-1080p, WEBDL-1080p), Remux-1080p.
- **Upgrades until:** WEB|Remux|Bluray|2160p, and a custom format score of 10000.
- **Minimum score:** 550. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** UHD Bluray Tier 01, UHD Bluray Tier 02, UHD Bluray Tier 03, Remux Tier 01, Remux Tier 02, Remux Tier 03 and more.
- **Never grabs:** 3D, AV1, BR-DISK, LQ, LQ (Release Title).
- **Language:** original audio.
- **Works with:** Radarr.', 1, 550, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-2', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-2', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-2', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-2', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-2', 'WEB|Remux|Bluray|2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB|Remux|Bluray|2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB|Remux|Bluray|2160p', 'Remux-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB|Remux|Bluray|2160p', 'WEBRip-2160p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB|Remux|Bluray|2160p', 'WEBDL-2160p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB|Remux|Bluray|2160p', 'WEBRip-1080p', 4);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB|Remux|Bluray|2160p', 'WEBDL-1080p', 5);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-2', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-2', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-2', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', NULL, 'WEB|Remux|Bluray|2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'Remux-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'Bluray-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'HDTV-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'Bluray-720p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', NULL, 'WEB 720p', 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'HDTV-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'Bluray-576p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'Bluray-480p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', NULL, 'WEB 480p', 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'DVD-R', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'DVD', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'SDTV', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'DVDSCR', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'REGIONAL', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'TELECINE', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'TELESYNC', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'CAM', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'WORKPRINT', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'Unknown', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-2', 'HDTV-480p', NULL, 23, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-2', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', '2160p', 'radarr', 151);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'UHD Bluray Tier 01', 'radarr', 2300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'UHD Bluray Tier 02', 'radarr', 2200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'UHD Bluray Tier 03', 'radarr', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-2', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-3" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-3', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** WEB|Remux|2160p (Remux-2160p, WEBRip-2160p, WEBDL-2160p, WEBRip-1080p, WEBDL-1080p), Remux-1080p.
- **Upgrades until:** WEB|Remux|2160p, and a custom format score of 10000.
- **Minimum score:** 550. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, WEB Tier 01, WEB Tier 02, WEB Tier 03 and more.
- **Never grabs:** 3D, AV1, BR-DISK, LQ, LQ (Release Title).
- **Language:** original audio.
- **Works with:** Radarr.', 1, 550, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-3', 'WEB|Remux|2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB|Remux|2160p', 'Remux-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB|Remux|2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB|Remux|2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB|Remux|2160p', 'WEBRip-1080p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB|Remux|2160p', 'WEBDL-1080p', 4);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-3', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-3', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', NULL, 'WEB|Remux|2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Remux-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Bluray-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'HDTV-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Bluray-720p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', NULL, 'WEB 720p', 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'HDTV-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Bluray-576p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Bluray-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', NULL, 'WEB 480p', 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'TELECINE', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'TELESYNC', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'CAM', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'WORKPRINT', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'Unknown', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3', 'HDTV-480p', NULL, 24, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-3', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', '2160p', 'radarr', 151);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-3 (Audio)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-3 (Audio)', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** WEB|Remux|2160p (Remux-2160p, WEBDL-2160p, WEBRip-2160p, Remux-1080p, WEBDL-1080p, WEBRip-1080p).
- **Upgrades until:** WEB|Remux|2160p, and a custom format score of 10000.
- **Minimum score:** 3350. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** TrueHD ATMOS, DTS X, ATMOS (undefined), DD+ ATMOS, TrueHD, DTS-HD MA and more.
- **Never grabs:** 3D, AV1, BR-DISK, LQ, LQ (Release Title).
- **Language:** original audio.
- **Works with:** Radarr.', 1, 3350, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3 (Audio)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3 (Audio)', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3 (Audio)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-3 (Audio)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-3 (Audio)', 'WEB|Remux|2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB|Remux|2160p', 'Remux-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB|Remux|2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB|Remux|2160p', 'WEBRip-2160p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB|Remux|2160p', 'Remux-1080p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB|Remux|2160p', 'WEBDL-1080p', 4);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB|Remux|2160p', 'WEBRip-1080p', 5);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-3 (Audio)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-3 (Audio)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-3 (Audio)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', NULL, 'WEB|Remux|2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'Raw-HD', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'BR-DISK', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'Bluray-2160p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'Bluray-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'HDTV-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'Bluray-720p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', NULL, 'WEB 720p', 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'HDTV-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'Bluray-576p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'Bluray-480p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', NULL, 'WEB 480p', 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'DVD-R', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'DVD', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'SDTV', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'DVDSCR', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'REGIONAL', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'TELECINE', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'TELESYNC', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'CAM', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'WORKPRINT', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'Unknown', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-3 (Audio)', 'HDTV-480p', NULL, 23, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-3 (Audio)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', '2160p', 'radarr', 151);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'AAC', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'ATMOS (undefined)', 'radarr', 3000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DD', 'radarr', 750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DD+', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DD+ ATMOS', 'radarr', 3000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DTS', 'radarr', 1250);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DTS X', 'radarr', 4500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DTS-ES', 'radarr', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DTS-HD HRA', 'radarr', 2000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'DTS-HD MA', 'radarr', 2500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'FLAC', 'radarr', 2250);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'PCM', 'radarr', 2250);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'TrueHD', 'radarr', 2750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'TrueHD ATMOS', 'radarr', 5000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-3 (Audio)', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-4" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-4', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** WEB|2160p (WEBDL-2160p, WEBRip-2160p, WEBDL-1080p, WEBRip-1080p), Remux-1080p.
- **Upgrades until:** WEB|2160p, and a custom format score of 10000.
- **Minimum score:** 550. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, WEB Tier 01, WEB Tier 02, WEB Tier 03 and more.
- **Never grabs:** 3D, AV1, BR-DISK, LQ, LQ (Release Title).
- **Language:** original audio.
- **Works with:** Radarr.', 1, 550, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-4', 'WEB|2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB|2160p', 'WEBDL-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB|2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB|2160p', 'WEBDL-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB|2160p', 'WEBRip-1080p', 3);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-4', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-4', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', NULL, 'WEB|2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Remux-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'HDTV-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Bluray-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-4', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', '2160p', 'radarr', 151);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-4 (MA Hybrid)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-4 (MA Hybrid)', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** Bluray|WEB-2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p), Bluray|WEB-1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Bluray|WEB-2160p, and a custom format score of 10000.
- **Minimum score:** 3970. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** WEBDL Boost, hallowed, BHDStudio, TrueHD ATMOS, DTS X, TrueHD and more.
- **Never grabs:** 3D, AV1, BR-DISK, LQ, LQ (Release Title).
- **Language:** original audio.
- **Works with:** Radarr.', 1, 3970, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4 (MA Hybrid)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4 (MA Hybrid)', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4 (MA Hybrid)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-4 (MA Hybrid)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'Bluray|WEB-1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-4 (MA Hybrid)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-4 (MA Hybrid)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-4 (MA Hybrid)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', NULL, 'Bluray|WEB-2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', NULL, 'Bluray|WEB-1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', NULL, 'WEB 720p', 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'Bluray-720p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'Bluray-576p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'Bluray-480p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', NULL, 'WEB 480p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'Raw-HD', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'BR-DISK', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'Remux-2160p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'HDTV-2160p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'Remux-1080p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'HDTV-1080p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'HDTV-720p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'TELECINE', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'TELESYNC', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'CAM', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'WORKPRINT', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'Unknown', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-4 (MA Hybrid)', 'HDTV-480p', NULL, 24, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-4 (MA Hybrid)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', '2.0 Stereo', 'radarr', 310);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', '5.1 Surround', 'radarr', 780);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', '6.1 Surround', 'radarr', 780);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', '7.1 Surround', 'radarr', 830);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'AAC', 'radarr', 80);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'ATMOS (undefined)', 'radarr', 480);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'BHDStudio', 'radarr', 3900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DD', 'radarr', 80);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DD+', 'radarr', 280);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DD+ ATMOS', 'radarr', 480);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DTS', 'radarr', 75);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DTS X', 'radarr', 2510);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DTS-ES', 'radarr', 330);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DTS-HD HRA', 'radarr', 330);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'DTS-HD MA', 'radarr', 2180);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'FLAC', 'radarr', 380);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'PCM', 'radarr', 380);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'Repack/Proper', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'Repack2', 'radarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'Repack3', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'TheFarm', 'radarr', 10);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'TrueHD', 'radarr', 2180);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'TrueHD ATMOS', 'radarr', 2510);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'WEB Tier 01', 'radarr', 30);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'WEB Tier 02', 'radarr', 20);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'WEB Tier 03', 'radarr', 10);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'WEBDL Boost', 'radarr', 3970);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-4 (MA Hybrid)', 'hallowed', 'radarr', 3910);
-- --- END

-- --- BEGIN ( create quality_profile "SQP-5" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('SQP-5', 'A TRaSH **Special Quality Profile**: an advanced profile built for one specific use case. Read the SQP section of the TRaSH Guides (or ask in the TRaSH Discord) before using it.

- **Grabs:** WEBDL|Bluray|2160p (WEBDL-2160p, WEBRip-2160p, Bluray-2160p, WEBRip-1080p, WEBDL-1080p), Remux-1080p.
- **Upgrades until:** WEBDL|Bluray|2160p, and a custom format score of 10000.
- **Minimum score:** 550. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** UHD Bluray Tier 01, UHD Bluray Tier 02, UHD Bluray Tier 03, Remux Tier 01, Remux Tier 02, Remux Tier 03 and more.
- **Never grabs:** 3D, AV1, BR-DISK, LQ, LQ (Release Title).
- **Language:** original audio.
- **Works with:** Radarr.', 1, 550, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-5', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-5', 'SQP');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-5', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('SQP-5', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-5', 'WEBDL|Bluray|2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEBDL|Bluray|2160p', 'WEBDL-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEBDL|Bluray|2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEBDL|Bluray|2160p', 'Bluray-2160p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEBDL|Bluray|2160p', 'WEBRip-1080p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEBDL|Bluray|2160p', 'WEBDL-1080p', 4);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-5', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('SQP-5', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('SQP-5', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', NULL, 'WEBDL|Bluray|2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Remux-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'HDTV-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Bluray-720p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', NULL, 'WEB 720p', 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'HDTV-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Bluray-576p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Bluray-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', NULL, 'WEB 480p', 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'TELECINE', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'TELESYNC', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'CAM', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'WORKPRINT', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'Unknown', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('SQP-5', 'HDTV-480p', NULL, 24, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('SQP-5', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', '1080p', 'radarr', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', '2160p', 'radarr', 151);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', '3D', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'AV1', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'BR-DISK', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'LQ', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'LQ (Release Title)', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'UHD Bluray Tier 01', 'radarr', 2300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'UHD Bluray Tier 02', 'radarr', 2200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'UHD Bluray Tier 03', 'radarr', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('SQP-5', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "UHD Bluray + WEB" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('UHD Bluray + WEB', 'For 4K movies at a sensible size. It prefers 4K Bluray encodes and uses 4K WEB releases until one is available, with HDR and Dolby Vision preferred.

- **Grabs:** Bluray-2160p, WEB 2160p (WEBRip-2160p, WEBDL-2160p).
- **Upgrades until:** Bluray-2160p, and a custom format score of 10000.
- **Prefers (highest first):** UHD Bluray Tier 01, UHD Bluray Tier 02, UHD Bluray Tier 03, WEB Tier 01, WEB Tier 02, WEB Tier 03 and more.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('UHD Bluray + WEB', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('UHD Bluray + WEB', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('UHD Bluray + WEB', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('UHD Bluray + WEB', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('UHD Bluray + WEB', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('UHD Bluray + WEB', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('UHD Bluray + WEB', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('UHD Bluray + WEB', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('UHD Bluray + WEB', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Bluray-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', NULL, 'WEB 2160p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Remux-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Bluray-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', NULL, 'WEB 1080p', 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Bluray-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', NULL, 'WEB 720p', 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'HDTV-720p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Bluray-576p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Bluray-480p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', NULL, 'WEB 480p', 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'DVD-R', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'DVD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'SDTV', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('UHD Bluray + WEB', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('UHD Bluray + WEB', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('UHD Bluray + WEB', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "WEB-1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('WEB-1080p', 'For 1080p WEB releases (WEB-DL and WEBRip). The usual choice for TV: good quality at a small size, and it plays everywhere.

- **Grabs:** WEB 1080p (WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** WEB 1080p, and a custom format score of 10000.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, WEB Scene, Repack3, Repack2 and more.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', NULL, 'WEB 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', NULL, 'WEB 720p', 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', NULL, 'WEB 480p', 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Remux-1080p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Raw-HD', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'BR-DISK', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Remux-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Bluray-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', NULL, 'WEB 2160p', 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'HDTV-2160p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Bluray-1080p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'HDTV-1080p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Bluray-720p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'HDTV-720p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Bluray-576p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Bluray-480p', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'DVD-R', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'DVD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'SDTV', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('WEB-1080p', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "WEB-1080p (Alternative)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('WEB-1080p (Alternative)', '1080p WEB is the goal, with 720p and 1080p HDTV, WEB and Bluray accepted as fallbacks. Any audio language is allowed.

- **Grabs:** WEB 1080p (WEBRip-1080p, WEBDL-1080p), Bluray-1080p, HDTV-1080p, WEB 720p (WEBRip-720p, WEBDL-720p), Bluray-720p, HDTV-720p.
- **Upgrades until:** WEB 1080p, and a custom format score of 10000.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, WEB Scene, Repack3, Repack2 and more.
- **Language:** any.
- **Works with:** Sonarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p (Alternative)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p (Alternative)', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p (Alternative)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-1080p (Alternative)', 'Sonarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p (Alternative)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p (Alternative)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p (Alternative)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-1080p (Alternative)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-1080p (Alternative)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', NULL, 'WEB 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Bluray-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'HDTV-1080p', NULL, 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', NULL, 'WEB 720p', 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Bluray-720p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'HDTV-720p', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Bluray-576p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', NULL, 'WEB 480p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Bluray-480p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'DVD', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'SDTV', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Remux-2160p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Bluray-2160p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', NULL, 'WEB 2160p', 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'HDTV-2160p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Remux-1080p', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Raw-HD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'Unknown', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'HDTV-480p', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'DVD-R', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'BR-DISK', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'REGIONAL', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'DVDSCR', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'TELECINE', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'TELESYNC', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'CAM', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-1080p (Alternative)', 'WORKPRINT', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('WEB-1080p (Alternative)', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p (Alternative)', 'Repack/Proper', 'sonarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p (Alternative)', 'Repack2', 'sonarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p (Alternative)', 'Repack3', 'sonarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p (Alternative)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p (Alternative)', 'WEB Tier 01', 'sonarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p (Alternative)', 'WEB Tier 02', 'sonarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-1080p (Alternative)', 'WEB Tier 03', 'sonarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "WEB-2160p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('WEB-2160p', 'For 4K WEB releases, with HDR and Dolby Vision preferred.

- **Grabs:** WEB 2160p (WEBRip-2160p, WEBDL-2160p).
- **Upgrades until:** WEB 2160p, and a custom format score of 10000.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, WEB Scene, Repack3, Repack2 and more.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p', 'WEB 480p', 'Raw-HD', 2);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', NULL, 'WEB 2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', NULL, 'WEB 1080p', 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', NULL, 'WEB 720p', 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', NULL, 'WEB 480p', 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'HDTV-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Remux-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Bluray-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Bluray-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'DVD-R', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'DVD', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'SDTV', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'DVDSCR', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'REGIONAL', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'TELECINE', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'TELESYNC', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'CAM', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'WORKPRINT', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'Unknown', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'BR-DISK', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('WEB-2160p', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "WEB-2160p (Alternative)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('WEB-2160p (Alternative)', '4K WEB is the goal, with 720p to 2160p HDTV, WEB and Bluray accepted as fallbacks. Any audio language is allowed.

- **Grabs:** WEB 2160p (WEBRip-2160p, WEBDL-2160p), WEB 1080p (WEBRip-1080p, WEBDL-1080p), Bluray-2160p, Bluray-1080p, HDTV-1080p, WEB 720p (WEBRip-720p, WEBDL-720p), Bluray-720p, HDTV-720p.
- **Upgrades until:** WEB 2160p, and a custom format score of 10000.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, WEB Scene, Repack3, Repack2 and more.
- **Language:** any.
- **Works with:** Sonarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Alternative)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Alternative)', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Alternative)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Alternative)', 'Sonarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Alternative)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Alternative)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Alternative)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Alternative)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Alternative)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', NULL, 'WEB 2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', NULL, 'WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Bluray-2160p', NULL, 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Bluray-1080p', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'HDTV-1080p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', NULL, 'WEB 720p', 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Bluray-720p', NULL, 6, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'HDTV-720p', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Bluray-576p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', NULL, 'WEB 480p', 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Bluray-480p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'DVD', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'SDTV', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Remux-2160p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'HDTV-2160p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Remux-1080p', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Raw-HD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'Unknown', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'HDTV-480p', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'DVD-R', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'BR-DISK', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'REGIONAL', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'DVDSCR', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'TELECINE', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'TELESYNC', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'CAM', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Alternative)', 'WORKPRINT', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('WEB-2160p (Alternative)', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Alternative)', 'Repack/Proper', 'sonarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Alternative)', 'Repack2', 'sonarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Alternative)', 'Repack3', 'sonarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Alternative)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Alternative)', 'WEB Tier 01', 'sonarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Alternative)', 'WEB Tier 02', 'sonarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Alternative)', 'WEB Tier 03', 'sonarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "WEB-2160p (Combined)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('WEB-2160p (Combined)', 'One profile for both 1080p and 4K WEB. It grabs 1080p or 2160p WEB releases and upgrades to 4K. Use it if you keep a single library for both resolutions.

- **Grabs:** WEB 2160p (WEBRip-2160p, WEBDL-2160p), WEB 1080p (WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** WEB 2160p, and a custom format score of 10000.
- **Prefers (highest first):** WEB Tier 01, WEB Tier 02, WEB Tier 03, WEB Scene, Repack3, Repack2 and more.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Combined)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Combined)', 'Standard');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Combined)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Combined)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('WEB-2160p (Combined)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Combined)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Combined)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Combined)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('WEB-2160p (Combined)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('WEB-2160p (Combined)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', NULL, 'WEB 2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', NULL, 'WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', NULL, 'WEB 720p', 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', NULL, 'WEB 480p', 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Remux-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Bluray-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'HDTV-720p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Bluray-576p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Bluray-480p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'HDTV-2160p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Raw-HD', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'BR-DISK', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'DVD-R', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'DVD', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'SDTV', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'DVDSCR', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'REGIONAL', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'TELECINE', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'TELESYNC', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'CAM', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'WORKPRINT', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'Unknown', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('WEB-2160p (Combined)', 'HDTV-480p', NULL, 26, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('WEB-2160p (Combined)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Combined)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Combined)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Combined)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Combined)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Combined)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Combined)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('WEB-2160p (Combined)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( update quality_profile "[Anime] Remux-1080p" )
update "quality_profiles" set "description" = 'TRaSH''s anime profile. It goes for the best Bluray or Remux release from a trusted anime group and uses WEB releases until one shows up.

- **Grabs:** Remux 1080p (Remux-1080p, Bluray-1080p), WEB 1080p (HDTV-1080p, WEBRip-1080p, WEBDL-1080p), Bluray-720p, WEB 720p (HDTV-720p, WEBRip-720p, WEBDL-720p), Bluray-576p, Bluray-480p, WEB 480p (WEBRip-480p, WEBDL-480p), DVD, SDTV.
- **Upgrades until:** Remux 1080p, and a custom format score of 10000.
- **Minimum score:** 100. Releases from unknown groups usually score lower and are skipped.
- **Prefers (highest first):** Anime BD Tier 01, Anime BD Tier 02, Anime BD Tier 03, Anime BD Tier 04, Anime BD Tier 05, Remux Tier 01 and more.
- **Never grabs:** AV1, Anime LQ Groups, Anime Raws, Dubs Only, VOSTFR.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr, with scores set separately for each.' where "name" = '[Anime] Remux-1080p';
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VF] HD Bluray + WEB (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'TRaSH''s French MULTi.VF profile. It looks for releases with French dub (VF) plus the original audio, from trusted French groups.

- **Grabs:** Bluray|WEB 1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p), Bluray-720p.
- **Upgrades until:** Bluray|WEB 1080p, and a custom format score of 10000.
- **Prefers (highest first):** FR HD Bluray Tier 01, FR HD Bluray Tier 02, FR WEB Tier 01, FR WEB Tier 02, FR WEB Tier 03, FR Scene Groups and more.
- **Never grabs:** FastSUB, Language: Not French.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'TRaSH');
insert into "tags" ("name") values ('French') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', NULL, 'Bluray|WEB 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray-720p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Remux-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'FR HD Bluray Tier 01', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'FR HD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'FR Scene Groups', 'all', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'FR WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'FR WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'FR WEB Tier 03', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'FastSUB', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Language: Not French', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Language: Original + French', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Bluray + WEB (1080p)', 'Repack3', 'all', 7);
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VF] HD Remux (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VF] HD Remux (1080p)', 'TRaSH''s French MULTi.VF profile. It looks for releases with French dub (VF) plus the original audio, from trusted French groups.

- **Grabs:** Remux-1080p, Bluray|WEB 1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Remux-1080p, and a custom format score of 10000.
- **Prefers (highest first):** FR Remux Tier 01, FR Remux Tier 02, FR WEB Tier 01, FR WEB Tier 02, FR Scene Groups, Language: Original + French and more.
- **Never grabs:** Language: Not French.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Remux (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray|WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray|WEB 1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray|WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray|WEB 1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Remux-1080p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', NULL, 'Bluray|WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'FR Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'FR Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'FR Scene Groups', 'radarr', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'FR WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'FR WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Language: Not French', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Language: Original + French', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] HD Remux (1080p)', 'Repack3', 'radarr', 7);
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VF] UHD Bluray + WEB (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'TRaSH''s French MULTi.VF profile. It looks for releases with French dub (VF) plus the original audio, from trusted French groups.

- **Grabs:** Bluray|WEB 2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p), Remux-1080p.
- **Upgrades until:** Bluray|WEB 2160p, and a custom format score of 10000.
- **Prefers (highest first):** FR Remux Tier 01, FR Remux Tier 02, FR HD Bluray Tier 01, FR UHD Bluray Tier 01, FR UHD Bluray Tier 02, FR WEB Tier 01 and more.
- **Never grabs:** FastSUB, Language: Not French.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', NULL, 'Bluray|WEB 2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Remux-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR HD Bluray Tier 01', 'sonarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR Scene Groups', 'all', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FR WEB Tier 03', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'FastSUB', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'HD Streaming Boost', 'sonarr', 75);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Language: Not French', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Language: Original + French', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Bluray + WEB (2160p)', 'UHD Streaming Boost', 'sonarr', 75);
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VF] UHD Remux (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VF] UHD Remux (2160p)', 'TRaSH''s French MULTi.VF profile. It looks for releases with French dub (VF) plus the original audio, from trusted French groups.

- **Grabs:** Remux-2160p, Bluray|WEB 2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p).
- **Upgrades until:** Remux-2160p, and a custom format score of 10000.
- **Prefers (highest first):** FR Remux Tier 01, FR Remux Tier 02, FR UHD Bluray Tier 01, FR UHD Bluray Tier 02, FR WEB Tier 01, FR WEB Tier 02 and more.
- **Never grabs:** Language: Not French.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray|WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Remux-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', NULL, 'Bluray|WEB 2160p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Remux-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'FR Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'FR Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'FR Scene Groups', 'radarr', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'FR UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'FR UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'FR WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'FR WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Language: Not French', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Language: Original + French', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VF] UHD Remux (2160p)', 'Repack3', 'radarr', 7);
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VO] HD Bluray + WEB (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'TRaSH''s French MULTi.VO profile. It looks for releases with the original audio plus a French track, from trusted French groups.

- **Grabs:** Bluray|WEB 1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p), Bluray-720p.
- **Upgrades until:** Bluray|WEB 1080p, and a custom format score of 10000.
- **Prefers (highest first):** FR HD Bluray Tier 01, HD Bluray Tier 01, HD Bluray Tier 02, FR HD Bluray Tier 02, FR WEB Tier 01, WEB Tier 01 and more.
- **Never grabs:** FastSUB, Language: Not Original.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', NULL, 'Bluray|WEB 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray-720p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Remux-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'FR HD Bluray Tier 01', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'FR HD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'FR Scene Groups', 'all', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'FR WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'FR WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'FR WEB Tier 03', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'FastSUB', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'HD Bluray Tier 01', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'HD Bluray Tier 02', 'all', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'HD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Language: Not Original', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Language: Original + French', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Bluray + WEB (1080p)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VO] HD Remux (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VO] HD Remux (1080p)', 'TRaSH''s French MULTi.VO profile. It looks for releases with the original audio plus a French track, from trusted French groups.

- **Grabs:** Remux-1080p, Bluray|WEB 1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Remux-1080p, and a custom format score of 10000.
- **Prefers (highest first):** FR Remux Tier 01, Remux Tier 01, FR Remux Tier 02, Remux Tier 02, Remux Tier 03, FR WEB Tier 01 and more.
- **Never grabs:** Language: Not Original.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Remux (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray|WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray|WEB 1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray|WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray|WEB 1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Remux-1080p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', NULL, 'Bluray|WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'FR Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'FR Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'FR Scene Groups', 'radarr', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'FR WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'FR WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Language: Not Original', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Language: Original + French', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] HD Remux (1080p)', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VO] UHD Bluray + WEB (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'TRaSH''s French MULTi.VO profile. It looks for releases with the original audio plus a French track, from trusted French groups.

- **Grabs:** Bluray|WEB 2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p), Remux-1080p.
- **Upgrades until:** Bluray|WEB 2160p, and a custom format score of 10000.
- **Prefers (highest first):** FR Remux Tier 01, Remux Tier 01, FR Remux Tier 02, Remux Tier 02, Remux Tier 03, FR HD Bluray Tier 01 and more.
- **Never grabs:** FastSUB, Language: Not Original.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', NULL, 'Bluray|WEB 2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Remux-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR HD Bluray Tier 01', 'sonarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR Scene Groups', 'all', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FR WEB Tier 03', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'FastSUB', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'HD Bluray Tier 01', 'sonarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'HD Bluray Tier 02', 'sonarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'HD Streaming Boost', 'sonarr', 75);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Language: Not Original', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Language: Original + French', 'all', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'UHD Streaming Boost', 'sonarr', 75);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Bluray + WEB (2160p)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[French MULTi.VO] UHD Remux (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French MULTi.VO] UHD Remux (2160p)', 'TRaSH''s French MULTi.VO profile. It looks for releases with the original audio plus a French track, from trusted French groups.

- **Grabs:** Remux-2160p, Bluray|WEB 2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p).
- **Upgrades until:** Remux-2160p, and a custom format score of 10000.
- **Prefers (highest first):** FR Remux Tier 01, Remux Tier 01, FR Remux Tier 02, Remux Tier 02, Remux Tier 03, FR UHD Bluray Tier 01 and more.
- **Never grabs:** Language: Not Original.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray|WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Remux-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', NULL, 'Bluray|WEB 2160p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Remux-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'FR Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'FR Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'FR Scene Groups', 'radarr', 1500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'FR UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'FR UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'FR WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'FR WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Language: Not Original', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Language: Original + French', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French MULTi.VO] UHD Remux (2160p)', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[French VOSTFR] HD Bluray + WEB (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French VOSTFR] HD Bluray + WEB (1080p)', 'TRaSH''s French VOSTFR profile. It looks for releases with the original audio with French subtitles, from trusted French groups.

- **Grabs:** Bluray|WEB 1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p), Bluray-720p.
- **Upgrades until:** Bluray|WEB 1080p, and a custom format score of 10000.
- **Prefers (highest first):** HD Bluray Tier 01, HD Bluray Tier 02, WEB Tier 01, HD Bluray Tier 03, WEB Tier 02, WEB Tier 03 and more.
- **Never grabs:** FastSUB, Language: Not Original.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray|WEB 1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', NULL, 'Bluray|WEB 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray-720p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Remux-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'HDTV-1080p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'FastSUB', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'HD Bluray Tier 01', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'HD Bluray Tier 02', 'all', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'HD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Language: Not Original', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'VOSTFR', 'all', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Bluray + WEB (1080p)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[French VOSTFR] HD Remux (1080p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French VOSTFR] HD Remux (1080p)', 'TRaSH''s French VOSTFR profile. It looks for releases with the original audio with French subtitles, from trusted French groups.

- **Grabs:** Remux-1080p, Bluray|WEB 1080p (Bluray-1080p, WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Remux-1080p, and a custom format score of 10000.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, WEB Tier 01, WEB Tier 02, WEB Tier 03 and more.
- **Never grabs:** Language: Not Original.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Remux (1080p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Remux (1080p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Remux (1080p)', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray|WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray|WEB 1080p', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray|WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray|WEB 1080p', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Remux-1080p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', NULL, 'Bluray|WEB 1080p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', NULL, 'WEB 2160p', 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'HDTV-2160p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] HD Remux (1080p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Language: Not Original', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'VOSTFR', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] HD Remux (1080p)', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[French VOSTFR] UHD Bluray + WEB (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'TRaSH''s French VOSTFR profile. It looks for releases with the original audio with French subtitles, from trusted French groups.

- **Grabs:** Bluray|WEB 2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p), Remux-1080p.
- **Upgrades until:** Bluray|WEB 2160p, and a custom format score of 10000.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, HD Bluray Tier 01, UHD Bluray Tier 01, HD Bluray Tier 02 and more.
- **Never grabs:** FastSUB, Language: Not Original.
- **Language:** original audio.
- **Works with:** Sonarr and Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray|WEB 2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', NULL, 'Bluray|WEB 2160p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Remux-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Remux-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'HDTV-2160p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'FastSUB', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'HD Bluray Tier 01', 'sonarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'HD Bluray Tier 02', 'sonarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'HD Streaming Boost', 'sonarr', 75);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Language: Not Original', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'UHD Streaming Boost', 'sonarr', 75);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'VOSTFR', 'all', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB Scene', 'sonarr', 1600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Bluray + WEB (2160p)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[French VOSTFR] UHD Remux (2160p)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[French VOSTFR] UHD Remux (2160p)', 'TRaSH''s French VOSTFR profile. It looks for releases with the original audio with French subtitles, from trusted French groups.

- **Grabs:** Remux-2160p, Bluray|WEB 2160p (Bluray-2160p, WEBRip-2160p, WEBDL-2160p).
- **Upgrades until:** Remux-2160p, and a custom format score of 10000.
- **Prefers (highest first):** Remux Tier 01, Remux Tier 02, Remux Tier 03, UHD Bluray Tier 01, UHD Bluray Tier 02, UHD Bluray Tier 03 and more.
- **Never grabs:** Language: Not Original.
- **Language:** original audio.
- **Works with:** Radarr.', 1, 0, 10000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'French');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Remux (2160p)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray|WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'WEBRip-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray|WEB 2160p', 'WEBDL-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Remux-2160p', NULL, 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', NULL, 'Bluray|WEB 2160p', 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Raw-HD', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'BR-DISK', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Remux-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Language: Not Original', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Repack/Proper', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Repack2', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'Repack3', 'radarr', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'VOSTFR', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB Tier 01', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB Tier 02', 'radarr', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[French VOSTFR] UHD Remux (2160p)', 'WEB Tier 03', 'radarr', 1600);
-- --- END

-- --- BEGIN ( update quality_profile "[German] Anime HD Bluray + WEB" )
update "quality_profiles" set "description" = 'TRaSH''s German anime profile. It prefers German DL releases (German plus the original audio), then German-only releases, from trusted German groups. Releases in other languages are rejected.

- **Grabs:** Merged QPs (Bluray-1080p, WEBRip-1080p, WEBDL-1080p, Bluray-720p, WEBDL-720p, WEBRip-720p).
- **Upgrades until:** Merged QPs, and a custom format score of 35000.
- **Prefers (highest first):** German DL, German DL (undefined), German, German Subbed, German Anime Bluray Tier 01, German Anime Bluray Tier 02 and more.
- **Never grabs:** Anime LQ Groups, Anime Raws, Not German, Japanese or English, VOSTFR.
- **Language:** any.
- **Works with:** Sonarr and Radarr.' where "name" = '[German] Anime HD Bluray + WEB';
-- --- END

-- --- BEGIN ( create quality_profile "[German] HD Bluray + WEB" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[German] HD Bluray + WEB', 'TRaSH''s German profile. It prefers German DL releases (German plus the original audio), then German-only releases, from trusted German groups. Releases in other languages are rejected.

- **Grabs:** Merged QPs (Bluray-1080p, WEBRip-1080p, WEBDL-1080p, Bluray-720p, WEBDL-720p, WEBRip-720p).
- **Upgrades until:** Merged QPs, and a custom format score of 35000.
- **Prefers (highest first):** German DL, German DL (undefined), German, German Bluray Tier 01, German Bluray Tier 02, German Bluray Tier 03 and more.
- **Never grabs:** Not German or English.
- **Language:** any.
- **Works with:** Sonarr and Radarr.', 1, 0, 35000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Bluray + WEB', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Bluray + WEB', 'German');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Bluray + WEB', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Bluray + WEB', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Bluray + WEB', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] HD Bluray + WEB', 'Merged QPs');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'Merged QPs', 'Bluray-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'Merged QPs', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'Merged QPs', 'WEBDL-1080p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'Merged QPs', 'Bluray-720p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'Merged QPs', 'WEBDL-720p', 4);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'Merged QPs', 'WEBRip-720p', 5);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] HD Bluray + WEB', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] HD Bluray + WEB', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Bluray + WEB', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', NULL, 'Merged QPs', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'Raw-HD', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'BR-DISK', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'Remux-2160p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'Bluray-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', NULL, 'WEB 2160p', 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'HDTV-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'Remux-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'HDTV-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'Bluray-576p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'Bluray-480p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', NULL, 'WEB 480p', 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'DVD-R', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'DVD', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'SDTV', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'DVDSCR', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'REGIONAL', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'TELECINE', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'TELESYNC', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'CAM', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'WORKPRINT', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'Unknown', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Bluray + WEB', 'HDTV-480p', NULL, 23, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[German] HD Bluray + WEB', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', '1080p', 'all', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', '720p', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German', 'all', 10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German 1080p Booster', 'all', 650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German Bluray Tier 01', 'all', 2900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German Bluray Tier 02', 'all', 2650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German Bluray Tier 03', 'all', 2300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German DL', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German DL (undefined)', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German Scene', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German Web Tier 01', 'all', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German Web Tier 02', 'all', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'German Web Tier 03', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'HD Bluray Tier 01', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'HD Bluray Tier 02', 'all', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'HD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'Not German or English', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Bluray + WEB', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[German] HD Remux + WEB" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[German] HD Remux + WEB', 'TRaSH''s German profile. It prefers German DL releases (German plus the original audio), then German-only releases, from trusted German groups. Releases in other languages are rejected.

- **Grabs:** Merged QPs (Remux-1080p, WEBRip-1080p, WEBDL-1080p).
- **Upgrades until:** Merged QPs, and a custom format score of 35000.
- **Prefers (highest first):** German DL, German DL (undefined), German, German Remux Tier 01, German Remux Tier 02, German Web Tier 01 and more.
- **Never grabs:** Not German or English.
- **Language:** any.
- **Works with:** Sonarr and Radarr.', 1, 0, 35000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Remux + WEB', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Remux + WEB', 'German');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Remux + WEB', '1080p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Remux + WEB', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] HD Remux + WEB', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] HD Remux + WEB', 'Merged QPs');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'Merged QPs', 'Remux-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'Merged QPs', 'WEBRip-1080p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'Merged QPs', 'WEBDL-1080p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] HD Remux + WEB', 'WEB 2160p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'WEB 2160p', 'WEBRip-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'WEB 2160p', 'WEBDL-2160p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] HD Remux + WEB', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] HD Remux + WEB', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] HD Remux + WEB', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', NULL, 'Merged QPs', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Raw-HD', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'BR-DISK', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Remux-2160p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Bluray-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', NULL, 'WEB 2160p', 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'HDTV-2160p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Bluray-1080p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Bluray-720p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', NULL, 'WEB 720p', 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'HDTV-1080p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] HD Remux + WEB', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[German] HD Remux + WEB', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', '1080p', 'all', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', '720p', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German', 'all', 10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German 1080p Booster', 'all', 650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German DL', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German DL (undefined)', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German Remux Tier 01', 'all', 4000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German Remux Tier 02', 'all', 3900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German Scene', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German Web Tier 01', 'all', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German Web Tier 02', 'all', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'German Web Tier 03', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'Not German or English', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] HD Remux + WEB', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[German] UHD Bluray + WEB" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[German] UHD Bluray + WEB', 'TRaSH''s German profile. It prefers German DL releases (German plus the original audio), then German-only releases, from trusted German groups. Releases in other languages are rejected.

- **Grabs:** Merged QPs (Bluray-2160p, WEBDL-2160p, WEBRip-2160p).
- **Upgrades until:** Merged QPs, and a custom format score of 35000.
- **Prefers (highest first):** German DL, German DL (undefined), German, German 2160p Booster, German Bluray Tier 01, German Bluray Tier 02 and more.
- **Never grabs:** Not German or English.
- **Language:** any.
- **Works with:** Sonarr and Radarr.', 1, 0, 35000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB', 'German');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Bluray + WEB', 'Merged QPs');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'Merged QPs', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'Merged QPs', 'WEBDL-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'Merged QPs', 'WEBRip-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Bluray + WEB', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Bluray + WEB', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Bluray + WEB', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', NULL, 'Merged QPs', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Raw-HD', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'BR-DISK', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Remux-2160p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Remux-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[German] UHD Bluray + WEB', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', '1080p', 'all', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', '2160p', 'all', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', '720p', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German', 'all', 10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German 1080p Booster', 'all', 650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German 2160p Booster', 'all', 9000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German Bluray Tier 01', 'all', 2900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German Bluray Tier 02', 'all', 2650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German Bluray Tier 03', 'all', 2300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German DL', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German DL (undefined)', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German Scene', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German Web Tier 01', 'all', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German Web Tier 02', 'all', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'German Web Tier 03', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'Not German or English', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[German] UHD Bluray + WEB (Alternative)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[German] UHD Bluray + WEB (Alternative)', 'TRaSH''s German profile. It prefers German DL releases (German plus the original audio), then German-only releases, from trusted German groups. Releases in other languages are rejected.

- **Grabs:** Merged QPs (Bluray-2160p, WEBDL-2160p, WEBRip-2160p, Bluray-1080p, WEBRip-1080p, WEBDL-1080p, Bluray-720p, WEBDL-720p, WEBRip-720p).
- **Upgrades until:** Merged QPs, and a custom format score of 35000.
- **Prefers (highest first):** German DL, German DL (undefined), German, German 2160p Booster, German Bluray Tier 01, German Bluray Tier 02 and more.
- **Never grabs:** Not German or English.
- **Language:** any.
- **Works with:** Sonarr and Radarr.', 1, 0, 35000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB (Alternative)', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'Bluray-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'WEBDL-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'WEBRip-2160p', 2);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'Bluray-1080p', 3);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'WEBRip-1080p', 4);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'WEBDL-1080p', 5);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'Bluray-720p', 6);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'WEBDL-720p', 7);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Merged QPs', 'WEBRip-720p', 8);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', NULL, 'Merged QPs', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Raw-HD', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'BR-DISK', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Remux-2160p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Remux-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'HDTV-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'HDTV-720p', NULL, 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Bluray-576p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Bluray-480p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', NULL, 'WEB 480p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'DVD-R', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'DVD', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'SDTV', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'DVDSCR', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'REGIONAL', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'TELECINE', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'TELESYNC', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'CAM', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'WORKPRINT', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Unknown', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'HDTV-480p', NULL, 21, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', '1080p', 'all', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', '2160p', 'all', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', '720p', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German', 'all', 10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German 1080p Booster', 'all', 650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German 2160p Booster', 'all', 9000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German Bluray Tier 01', 'all', 2900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German Bluray Tier 02', 'all', 2650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German Bluray Tier 03', 'all', 2300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German DL', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German DL (undefined)', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German Scene', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German Web Tier 01', 'all', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German Web Tier 02', 'all', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'German Web Tier 03', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'HD Bluray Tier 01', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'HD Bluray Tier 02', 'all', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'HD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Not German or English', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'UHD Bluray Tier 01', 'radarr', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'UHD Bluray Tier 02', 'radarr', 1750);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'UHD Bluray Tier 03', 'radarr', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Bluray + WEB (Alternative)', 'WEB Tier 03', 'all', 1600);
-- --- END

-- --- BEGIN ( create quality_profile "[German] UHD Remux + WEB" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('[German] UHD Remux + WEB', 'TRaSH''s German profile. It prefers German DL releases (German plus the original audio), then German-only releases, from trusted German groups. Releases in other languages are rejected.

- **Grabs:** Merged QPs (Remux-2160p, WEBDL-2160p, WEBRip-2160p).
- **Upgrades until:** Merged QPs, and a custom format score of 35000.
- **Prefers (highest first):** German DL, German DL (undefined), German, German 2160p Booster, German Remux Tier 01, German Remux Tier 02 and more.
- **Never grabs:** Not German or English.
- **Language:** any.
- **Works with:** Sonarr and Radarr.', 1, 0, 35000, 1);
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Remux + WEB', 'TRaSH');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Remux + WEB', 'German');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Remux + WEB', '2160p');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Remux + WEB', 'Sonarr');
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('[German] UHD Remux + WEB', 'Radarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Remux + WEB', 'Merged QPs');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'Merged QPs', 'Remux-2160p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'Merged QPs', 'WEBDL-2160p', 1);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'Merged QPs', 'WEBRip-2160p', 2);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Remux + WEB', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'WEB 1080p', 'WEBRip-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'WEB 1080p', 'WEBDL-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Remux + WEB', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'WEB 720p', 'WEBRip-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'WEB 720p', 'WEBDL-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('[German] UHD Remux + WEB', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'WEB 480p', 'WEBRip-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('[German] UHD Remux + WEB', 'WEB 480p', 'WEBDL-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', NULL, 'Merged QPs', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Raw-HD', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'BR-DISK', NULL, 2, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Bluray-2160p', NULL, 3, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'HDTV-2160p', NULL, 4, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Remux-1080p', NULL, 5, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Bluray-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', NULL, 'WEB 1080p', 7, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'HDTV-1080p', NULL, 8, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Bluray-720p', NULL, 9, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', NULL, 'WEB 720p', 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'HDTV-720p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Bluray-576p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Bluray-480p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', NULL, 'WEB 480p', 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'DVD-R', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'DVD', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'SDTV', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'DVDSCR', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'REGIONAL', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'TELECINE', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'TELESYNC', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'CAM', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'WORKPRINT', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'Unknown', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('[German] UHD Remux + WEB', 'HDTV-480p', NULL, 25, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('[German] UHD Remux + WEB', 'Any', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', '1080p', 'all', 50);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', '2160p', 'all', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', '720p', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German', 'all', 10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German 1080p Booster', 'all', 650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German 2160p Booster', 'all', 9000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German DL', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German DL (undefined)', 'all', 11000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German Remux Tier 01', 'all', 4000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German Remux Tier 02', 'all', 3900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German Scene', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German Web Tier 01', 'all', 2100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German Web Tier 02', 'all', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'German Web Tier 03', 'all', 1800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'Not German or English', 'all', -35000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'Remux Tier 01', 'radarr', 1950);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'Remux Tier 02', 'radarr', 1900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'Remux Tier 03', 'radarr', 1850);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'Repack/Proper', 'all', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'Repack2', 'all', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'Repack3', 'all', 7);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'WEB Tier 01', 'all', 1700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'WEB Tier 02', 'all', 1650);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('[German] UHD Remux + WEB', 'WEB Tier 03', 'all', 1600);
-- --- END

