-- @operation: export
-- @entity: batch
-- @name: SIDCA Tier 03 Updates
-- @exportedAt: 2026-09-08T17:42:03.485Z
-- @opIds: 5805, 5806, 5807, 5808

-- --- BEGIN op 5805 ( create regular_expression "d3g" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('d3g', '^(d3g)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('d3g', 'Release Group');
-- --- END op 5805

-- --- BEGIN op 5806 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'd3g', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'd3g', 'd3g');
-- --- END op 5806

-- --- BEGIN op 5807 ( create regular_expression "TVSmash" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TVSmash', '^(TVSmash)$', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TVSmash', 'Release Group');
-- --- END op 5807

-- --- BEGIN op 5808 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'TVSmash', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'TVSmash', 'TVSmash');
-- --- END op 5808
