-- @operation: export
-- @entity: batch
-- @name: Anime LQ fix
-- @exportedAt: 2026-09-08T03:42:19.361Z
-- @opIds: 5790

-- --- BEGIN op 5790 ( update regular_expression "Daddy Subs" )
update "regular_expressions" set "pattern" = '\[Daddy(Subs)?\]|-Daddy(Subs)?$' where "name" = 'Daddy Subs' and "pattern" = '[Daddy(Subs)?]|-Daddy(Subs)?$';
-- --- END op 5790
