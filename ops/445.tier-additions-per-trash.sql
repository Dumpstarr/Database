-- @operation: export
-- @entity: batch
-- @name: Tier Additions per TRaSH
-- @exportedAt: 2026-11-18T18:31:23.433Z
-- @opIds: 6855, 6856, 6857

-- --- BEGIN op 6855 ( update regular_expression "TRaSH WEB Tier 03 (Radarr)" )
update "regular_expressions" set "pattern" = '^(BLOOM|Dooky|FIEND|GNOMiSSiON|NINJACENTRAL|NPMS|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$' where "name" = 'TRaSH WEB Tier 03 (Radarr)' and "pattern" = '^(BLOOM|Dooky|GNOMiSSiON|NINJACENTRAL|NPMS|ROCCaT|SiGMA|SLiGNOME|SwAgLaNdEr)$';
-- --- END op 6855

-- --- BEGIN op 6856 ( update regular_expression "TRaSH HD Bluray Tier 02 (Radarr)" )
update "regular_expressions" set "pattern" = '^(EA|HiDt|HiSD|iFT|NTb|QOQ|SA89|sbR|SoLaR)$' where "name" = 'TRaSH HD Bluray Tier 02 (Radarr)' and "pattern" = '^(EA|HiDt|HiSD|iFT|NTb|QOQ|SA89|sbR)$';
-- --- END op 6856

-- --- BEGIN op 6857 ( update regular_expression "TRaSH UHD Bluray Tier 02" )
update "regular_expressions" set "pattern" = '^(HiDt|HQMUX|RandomBytes|SoLaR)$' where "name" = 'TRaSH UHD Bluray Tier 02' and "pattern" = '^(HiDt|HQMUX|RandomBytes)$';
-- --- END op 6857
