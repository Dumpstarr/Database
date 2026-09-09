-- @operation: export
-- @entity: batch
-- @name: Remove Surround Sound format
-- @exportedAt: 2026-09-09T14:50:58.374Z
-- @opIds: 5891

-- --- BEGIN op 5891 ( delete custom_format "Surround Sound" )
delete from "custom_formats" where "name" = 'Surround Sound';
-- --- END op 5891
