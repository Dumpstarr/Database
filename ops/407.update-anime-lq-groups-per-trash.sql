-- @operation: export
-- @entity: batch
-- @name: Update Anime LQ Groups per TRaSH
-- @exportedAt: 2026-09-07T20:59:01.251Z
-- @opIds: 5786, 5787, 5788

-- --- BEGIN op 5786 ( update regular_expression "SAD" )
update "regular_expressions" set "pattern" = '\[SAD\]|-SAD$' where "name" = 'SAD' and "pattern" = '\[SAD\]|-SAD\b';
-- --- END op 5786

-- --- BEGIN op 5787 ( update regular_expression "Mites" )
update "regular_expressions" set "pattern" = '[Mites]|-Mites$' where "name" = 'Mites' and "pattern" = '\b(Mites)\b';
-- --- END op 5787

-- --- BEGIN op 5788 ( update regular_expression "Daddy Subs" )
update "regular_expressions" set "pattern" = '[Daddy(Subs)?]|-Daddy(Subs)?$' where "name" = 'Daddy Subs' and "pattern" = '\[Daddy(Subs)?\]|-Daddy(Subs)?\b';
-- --- END op 5788
