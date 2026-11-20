-- @operation: export
-- @entity: batch
-- @name: Anime format sync per TRaSH
-- @exportedAt: 2026-11-20T12:00:00.000Z

-- --- BEGIN ( update custom_format "Anime BD Tier 01" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 01', 'smol', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 01', 'smol', 'smol');
-- --- END

-- --- BEGIN ( update regular_expression "NAN0" )
update "regular_expressions" set "pattern" = '(?<=remux).*\b(NAN0)\b' where "name" = 'NAN0' and "pattern" = '\b(NAN0)\b';
-- --- END

-- --- BEGIN ( create regular_expression "EXP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EXP', '\[EXP\]|-EXP\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EXP', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EXP', 'Anime');
-- --- END

-- --- BEGIN ( update custom_format "Anime BD Tier 04" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime BD Tier 04', 'EXP', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime BD Tier 04', 'EXP', 'EXP');
-- --- END

-- --- BEGIN ( create regular_expression "Dae (Anime WEB)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dae (Anime WEB)', '\[Dae\]|-Dae\b', NULL, NULL);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dae (Anime WEB)', 'Release Group');

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dae (Anime WEB)', 'Anime');
-- --- END

-- --- BEGIN ( update custom_format "Anime WEB Tier 02" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Anime WEB Tier 02' AND condition_name = 'Dae' AND regular_expression_name = 'Dae';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime WEB Tier 02', 'Dae', 'Dae (Anime WEB)');
-- --- END

-- --- BEGIN ( update regular_expression "KQRM" )
update "regular_expressions" set "pattern" = '\b(KQRM)\b' where "name" = 'KQRM' and "pattern" = '\b(Kirion)\b';
-- --- END

-- --- BEGIN ( update regular_expression "Pixel" )
update "regular_expressions" set "pattern" = '\[Pixel\]|-Pixel\b' where "name" = 'Pixel' and "pattern" = '\b(phazer11)\b';
-- --- END

-- --- BEGIN ( update custom_format "Anime LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime LQ', 'TeamTurquoize', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime LQ', 'TeamTurquoize', 'TeamTurquoize');
-- --- END

-- --- BEGIN ( create regular_expression "hi10p" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('hi10p', 'hi10p', NULL, NULL);
-- --- END

-- --- BEGIN ( update custom_format "10bit" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('10bit', 'hi10p', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('10bit', 'hi10p', 'hi10p');
-- --- END
