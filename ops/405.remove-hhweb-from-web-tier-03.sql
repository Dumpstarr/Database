-- @operation: export
-- @entity: batch
-- @name: Remove HHWEB from WEB Tier 03
-- @exportedAt: 2026-09-07T20:39:45.872Z
-- @opIds: 5781, 5782

-- --- BEGIN op 5781 ( update regular_expression "TRaSH WEB Tier 03 (Radarr)" )
update "regular_expressions" set "pattern" = '^(BLOOM|Dooky|GNOMiSSiON|NINJACENTRAL|NPMS|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$' where "name" = 'TRaSH WEB Tier 03 (Radarr)' and "pattern" = '^(BLOOM|Dooky|GNOMiSSiON|HHWEB|NINJACENTRAL|NPMS|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$';
-- --- END op 5781

-- --- BEGIN op 5782 ( update regular_expression "TRaSH WEB Tier 03 (Sonarr)" )
update "regular_expressions" set "pattern" = '^(BLOOM|Dooky|DRACULA|NINJACENTRAL|SLiGNOME|SwAgLaNdEr|T4H|ViSiON)$' where "name" = 'TRaSH WEB Tier 03 (Sonarr)' and "pattern" = '^(BLOOM|Dooky|DRACULA|HHWEB|NINJACENTRAL|SLiGNOME|SwAgLaNdEr|T4H|ViSiON)$';
-- --- END op 5782
