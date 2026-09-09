-- @operation: export
-- @entity: batch
-- @name: LQ profile updates
-- @exportedAt: 2026-09-09T14:50:28.133Z
-- @opIds: 5831, 5832, 5833, 5834, 5835, 5836, 5837, 5838, 5839, 5840, 5841, 5842, 5843, 5844, 5845, 5846, 5847, 5848, 5849, 5850, 5851, 5852, 5853, 5854, 5855, 5856, 5857, 5858, 5859, 5860, 5861, 5862, 5863, 5864, 5865, 5866, 5867, 5868, 5869, 5870, 5871, 5872, 5873, 5874, 5875, 5876, 5877, 5878, 5879, 5880, 5881, 5882, 5883, 5884, 5885, 5886, 5887, 5888, 5889, 5890

-- --- BEGIN op 5831 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'AndreMor'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5831

-- --- BEGIN op 5832 ( update custom_format "SIDCA Tier 03" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SIDCA Tier 03', 'iVy', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SIDCA Tier 03', 'iVy', 'iVy');
-- --- END op 5832

-- --- BEGIN op 5833 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'AMZN', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 5833

-- --- BEGIN op 5834 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'AMZN', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 5834

-- --- BEGIN op 5835 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ATVP', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 5835

-- --- BEGIN op 5836 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ATVP', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 5836

-- --- BEGIN op 5837 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DSCP', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'radarr'
);
-- --- END op 5837

-- --- BEGIN op 5838 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DSCP', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DSCP'
    AND arr_type = 'sonarr'
);
-- --- END op 5838

-- --- BEGIN op 5839 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DSNP', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 5839

-- --- BEGIN op 5840 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DSNP', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 5840

-- --- BEGIN op 5841 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HMAX', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 5841

-- --- BEGIN op 5842 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HMAX', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 5842

-- --- BEGIN op 5843 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HULU', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HULU'
    AND arr_type = 'radarr'
);
-- --- END op 5843

-- --- BEGIN op 5844 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HULU', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HULU'
    AND arr_type = 'sonarr'
);
-- --- END op 5844

-- --- BEGIN op 5845 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'NF', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 5845

-- --- BEGIN op 5846 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'NF', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 5846

-- --- BEGIN op 5847 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PCOK', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'radarr'
);
-- --- END op 5847

-- --- BEGIN op 5848 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PCOK', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 5848

-- --- BEGIN op 5849 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'iT', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 5849

-- --- BEGIN op 5850 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'iT', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 5850

-- --- BEGIN op 5851 ( update custom_format "SIDCA Tier 03" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SIDCA Tier 03'
	  AND name = 'iVy'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 5851

-- --- BEGIN op 5852 ( update custom_format "SIDCA Tier 02" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'SIDCA Tier 02'
  AND name = 'iVy'
  AND type = 'release_group'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 0;
-- --- END op 5852

-- --- BEGIN op 5853 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ATV', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 5853

-- --- BEGIN op 5854 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ATV', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 5854

-- --- BEGIN op 5855 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'CC', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'CC'
    AND arr_type = 'radarr'
);
-- --- END op 5855

-- --- BEGIN op 5856 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'CC', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'CC'
    AND arr_type = 'sonarr'
);
-- --- END op 5856

-- --- BEGIN op 5857 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'CR', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 5857

-- --- BEGIN op 5858 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'CR', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 5858

-- --- BEGIN op 5859 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'CRAV', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'radarr'
);
-- --- END op 5859

-- --- BEGIN op 5860 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'CRAV', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'sonarr'
);
-- --- END op 5860

-- --- BEGIN op 5861 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DCU', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DCU'
    AND arr_type = 'radarr'
);
-- --- END op 5861

-- --- BEGIN op 5862 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'DCU', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'DCU'
    AND arr_type = 'sonarr'
);
-- --- END op 5862

-- --- BEGIN op 5863 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'FAND', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'FAND'
    AND arr_type = 'radarr'
);
-- --- END op 5863

-- --- BEGIN op 5864 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'FAND', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'FAND'
    AND arr_type = 'sonarr'
);
-- --- END op 5864

-- --- BEGIN op 5865 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HBO', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 5865

-- --- BEGIN op 5866 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'HBO', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 5866

-- --- BEGIN op 5867 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'MA', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 5867

-- --- BEGIN op 5868 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'MA', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'MA'
    AND arr_type = 'sonarr'
);
-- --- END op 5868

-- --- BEGIN op 5869 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'MAX', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 5869

-- --- BEGIN op 5870 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'MAX', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 5870

-- --- BEGIN op 5871 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PBSK', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PBSK'
    AND arr_type = 'radarr'
);
-- --- END op 5871

-- --- BEGIN op 5872 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PBSK', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PBSK'
    AND arr_type = 'sonarr'
);
-- --- END op 5872

-- --- BEGIN op 5873 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PLAY', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'radarr'
);
-- --- END op 5873

-- --- BEGIN op 5874 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PLAY', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'sonarr'
);
-- --- END op 5874

-- --- BEGIN op 5875 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PMTP', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'radarr'
);
-- --- END op 5875

-- --- BEGIN op 5876 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'PMTP', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 5876

-- --- BEGIN op 5877 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ROKU', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'radarr'
);
-- --- END op 5877

-- --- BEGIN op 5878 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'ROKU', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 5878

-- --- BEGIN op 5879 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SHO', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SHO'
    AND arr_type = 'radarr'
);
-- --- END op 5879

-- --- BEGIN op 5880 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SHO', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 5880

-- --- BEGIN op 5881 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SYFY', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SYFY'
    AND arr_type = 'radarr'
);
-- --- END op 5881

-- --- BEGIN op 5882 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'SYFY', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'SYFY'
    AND arr_type = 'sonarr'
);
-- --- END op 5882

-- --- BEGIN op 5883 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '5.1', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '5.1'
    AND arr_type = 'radarr'
);
-- --- END op 5883

-- --- BEGIN op 5884 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '5.1', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '5.1'
    AND arr_type = 'sonarr'
);
-- --- END op 5884

-- --- BEGIN op 5885 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '7.1', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '7.1'
    AND arr_type = 'radarr'
);
-- --- END op 5885

-- --- BEGIN op 5886 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', '7.1', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = '7.1'
    AND arr_type = 'sonarr'
);
-- --- END op 5886

-- --- BEGIN op 5887 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'radarr'
);
-- --- END op 5887

-- --- BEGIN op 5888 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'sonarr'
);
-- --- END op 5888

-- --- BEGIN op 5889 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital +', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'radarr'
);
-- --- END op 5889

-- --- BEGIN op 5890 ( update quality_profile "LQ 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'LQ 1080p', 'Dolby Digital +', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'LQ 1080p'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'sonarr'
);
-- --- END op 5890
