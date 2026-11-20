-- @operation: export
-- @entity: batch
-- @name: Added Anime 1080p Balanced dub and dual audio profiles
-- @exportedAt: 2026-11-20T16:00:00.000Z

-- --- BEGIN ( create quality_profile "Anime 1080p Balanced (Dual Audio)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Anime 1080p Balanced (Dual Audio)', 'Balanced 1080p anime with **Dual Audio only**: every release has both the original Japanese audio and an English dub, so you can switch between them. It targets consistent 1080p WEB releases from trusted anime groups, like 1080p Balanced does for TV and movies.

- **Required:** Dual Audio. Releases without it are skipped (minimum score 2000), so some shows may never get a release. Use **Anime 1080p** if you want Dual Audio preferred but not required.
- **Grabs:** 1080p WEB (WEB-DL, WEBRip) first. 1080p Bluray or HDTV only when there is no WEB release, then the same order at 720p and 480p, DVD and SDTV.
- **Upgrades until:** 1080p WEB, and a custom format score of 10000.
- **Prefers (highest first):** Anime WEB Tier 01-06, then Anime BD Tier 01-08, then the official streaming services (CR, DSNP, NF, AMZN...).
- **Never grabs:** Remux and BR-DISK, AV1, Anime Raws, Anime LQ Groups, Bad Dual Groups and other known bad releases.
- **Sizes:** WEB releases keep files consistent, about 1 to 1.5gb per episode.
- **Works with:** Sonarr and Radarr.', 1, 2000, 10000, 1);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime');
insert into "tags" ("name") values ('Dual Audio') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Dual Audio');
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dual Audio)', '1080p');
insert into "tags" ("name") values ('Balanced') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Balanced');
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Radarr');
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Sonarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 1080p', 'WEBDL-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 720p', 'WEBDL-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 720p', 'WEBRip-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 480p', 'WEBDL-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEB 480p', 'WEBRip-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', NULL, 'WEB 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bluray-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'HDTV-1080p', NULL, 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', NULL, 'WEB 720p', 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bluray-720p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'HDTV-720p', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', NULL, 'WEB 480p', 6, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bluray-480p', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'DVD', NULL, 8, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'SDTV', NULL, 9, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Remux-2160p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bluray-2160p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEBDL-2160p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WEBRip-2160p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'HDTV-2160p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Remux-1080p', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bluray-576p', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'HDTV-480p', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'DVD-R', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Raw-HD', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'BR-DISK', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'REGIONAL', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'DVDSCR', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'TELECINE', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'TELESYNC', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'CAM', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'WORKPRINT', NULL, 26, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Unknown', NULL, 27, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Original', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'ABEMA', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'ABEMA', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'ADN', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'ADN', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'AMZN', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'AMZN', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'AV1', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Accessibility', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 01', 'radarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 01', 'sonarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 02', 'radarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 02', 'sonarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 03', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 03', 'sonarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 04', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 04', 'sonarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 05', 'radarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 05', 'sonarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 06', 'radarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 06', 'sonarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 07', 'radarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 07', 'sonarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 08', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime BD Tier 08', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Baseline Groups', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Baseline Groups', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Dual Audio', 'all', 3000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime LQ Groups', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Raws', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 01', 'radarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 01', 'sonarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 02', 'radarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 02', 'sonarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 03', 'radarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 03', 'sonarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 04', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 04', 'sonarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 05', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 05', 'sonarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 06', 'radarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Anime Web Tier 06', 'sonarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bad Dual Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bad Multis', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bad Source', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Bad Source', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'CR', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'CR', 'sonarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'DSNP', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'DSNP', 'sonarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Dubs Only', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Dumpstarr LQ Groups', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Dumpstarr LQ Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Dumpstarr LQ Title', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Dumpstarr LQ Title', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'FUNi', 'radarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'FUNi', 'sonarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Multi-Audio', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Multi-Sub', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'NF', 'radarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'NF', 'sonarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'Uncensored', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'VOSTFR', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'VRV', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'VRV', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'v0', 'all', -51);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'v1', 'all', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'v2', 'all', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'v3', 'all', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dual Audio)', 'v4', 'all', 4);
-- --- END

-- --- BEGIN ( create quality_profile "Anime 1080p Balanced (Dub)" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Anime 1080p Balanced (Dub)', 'Balanced 1080p anime with **English audio**: releases that only have the English dub are preferred, and Dual Audio releases (Japanese plus English) are used when there is no dub-only release. It targets consistent 1080p WEB releases from trusted anime groups, like 1080p Balanced does for TV and movies.

- **Required:** an English dub, either dub-only or Dual Audio. Releases with only Japanese audio are skipped (minimum score 2000).
- **Grabs:** 1080p WEB (WEB-DL, WEBRip) first. 1080p Bluray or HDTV only when there is no WEB release, then the same order at 720p and 480p, DVD and SDTV.
- **Upgrades until:** 1080p WEB, and a custom format score of 10000.
- **Prefers (highest first):** Anime WEB Tier 01-06, then Anime BD Tier 01-08, then the official streaming services (CR, DSNP, NF, AMZN...).
- **Never grabs:** Remux and BR-DISK, AV1, Anime Raws, Anime LQ Groups, Bad Dual Groups and other known bad releases.
- **Sizes:** WEB releases keep files consistent, about 1 to 1.5gb per episode.
- **Works with:** Sonarr and Radarr.', 1, 2000, 10000, 1);
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dub)', 'Anime');
insert into "tags" ("name") values ('Dub') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dub)', 'Dub');
insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dub)', '1080p');
insert into "tags" ("name") values ('Balanced') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dub)', 'Balanced');
insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dub)', 'Radarr');
insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;
INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Anime 1080p Balanced (Dub)', 'Sonarr');
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 1080p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 1080p', 'WEBDL-1080p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 1080p', 'WEBRip-1080p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 720p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 720p', 'WEBDL-720p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 720p', 'WEBRip-720p', 1);
INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 480p');
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 480p', 'WEBDL-480p', 0);
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 1080p Balanced (Dub)', 'WEB 480p', 'WEBRip-480p', 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', NULL, 'WEB 1080p', 0, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Bluray-1080p', NULL, 1, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'HDTV-1080p', NULL, 2, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', NULL, 'WEB 720p', 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Bluray-720p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'HDTV-720p', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', NULL, 'WEB 480p', 6, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Bluray-480p', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'DVD', NULL, 8, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'SDTV', NULL, 9, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Remux-2160p', NULL, 10, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Bluray-2160p', NULL, 11, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'WEBDL-2160p', NULL, 12, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'WEBRip-2160p', NULL, 13, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'HDTV-2160p', NULL, 14, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Remux-1080p', NULL, 15, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Bluray-576p', NULL, 16, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'HDTV-480p', NULL, 17, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'DVD-R', NULL, 18, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Raw-HD', NULL, 19, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'BR-DISK', NULL, 20, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'REGIONAL', NULL, 21, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'DVDSCR', NULL, 22, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'TELECINE', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'TELESYNC', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'CAM', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'WORKPRINT', NULL, 26, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 1080p Balanced (Dub)', 'Unknown', NULL, 27, 0, 0);
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Anime 1080p Balanced (Dub)', 'English', 'simple');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'ABEMA', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'ABEMA', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'ADN', 'radarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'ADN', 'sonarr', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'AMZN', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'AMZN', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'AV1', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Accessibility', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 01', 'radarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 01', 'sonarr', 800);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 02', 'radarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 02', 'sonarr', 700);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 03', 'radarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 03', 'sonarr', 600);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 04', 'radarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 04', 'sonarr', 500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 05', 'radarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 05', 'sonarr', 400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 06', 'radarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 06', 'sonarr', 300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 07', 'radarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 07', 'sonarr', 200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 08', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime BD Tier 08', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Baseline Groups', 'radarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Baseline Groups', 'sonarr', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Dual Audio', 'all', 2500);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime LQ Groups', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Raws', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 01', 'radarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 01', 'sonarr', 1400);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 02', 'radarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 02', 'sonarr', 1300);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 03', 'radarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 03', 'sonarr', 1200);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 04', 'radarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 04', 'sonarr', 1100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 05', 'radarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 05', 'sonarr', 1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 06', 'radarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Anime Web Tier 06', 'sonarr', 900);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Bad Dual Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Bad Multis', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Bad Source', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Bad Source', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'CR', 'radarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'CR', 'sonarr', 6);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'DSNP', 'radarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'DSNP', 'sonarr', 5);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Dubs Only', 'all', 3000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Dumpstarr LQ Groups', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Dumpstarr LQ Groups', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Dumpstarr LQ Title', 'radarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Dumpstarr LQ Title', 'sonarr', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'FUNi', 'radarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'FUNi', 'sonarr', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Multi-Audio', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Multi-Sub', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'NF', 'radarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'NF', 'sonarr', 4);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'Uncensored', 'all', 101);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'VOSTFR', 'all', -10000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'VRV', 'radarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'VRV', 'sonarr', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'v0', 'all', -51);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'v1', 'all', 1);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'v2', 'all', 2);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'v3', 'all', 3);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Anime 1080p Balanced (Dub)', 'v4', 'all', 4);
-- --- END

