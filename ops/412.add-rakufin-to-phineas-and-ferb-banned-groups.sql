-- @operation: export
-- @entity: batch
-- @name: Add RakuFIN to Phineas and Ferb Banned Groups
-- @exportedAt: 2026-09-09T14:50:02.402Z
-- @opIds: 5830

-- --- BEGIN op 5830 ( update regular_expression "Phineas and Ferb Banned Groups" )
update "regular_expressions" set "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(KAiZEN|PHOENiX|RakuFIN)\b' where "name" = 'Phineas and Ferb Banned Groups' and "pattern" = '(?i)^phineas[ ._-]+and[ ._-]+ferb.*-(KAiZEN|PHOENiX)\b';
-- --- END op 5830
