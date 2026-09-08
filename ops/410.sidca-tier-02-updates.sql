-- @operation: export
-- @entity: batch
-- @name: SIDCA Tier 02 Updates
-- @exportedAt: 2026-09-08T17:41:51.268Z
-- @opIds: 5804, 5809

-- --- BEGIN op 5804 ( update custom_format "SIDCA Tier 02" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'SIDCA Tier 02'
  AND name = 'iVy'
  AND type = 'release_group'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 5804

-- --- BEGIN op 5809 ( update custom_format "SIDCA Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 02', 'NINJACENTRAL', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 02', 'NINJACENTRAL', 'NINJACENTRAL');
-- --- END op 5809
