-- @operation: export
-- @entity: batch
-- @name: Anime LQ Fix 2
-- @exportedAt: 2026-09-08T03:43:17.700Z
-- @opIds: 5792

-- --- BEGIN op 5792 ( update regular_expression "Mites" )
update "regular_expressions" set "pattern" = '\[Mites\]|-Mites$' where "name" = 'Mites' and "pattern" = '[Mites]|-Mites$';
-- --- END op 5792
