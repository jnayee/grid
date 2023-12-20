CREATE TABLE `errors` (
  `action` varchar(32) NOT NULL,
  `error` varchar(128) NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`action`,`error`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `latest` (
  `source` varchar(22) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `value` decimal(7,2) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `latest_half_hours` (
  `source` varchar(22) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `value` decimal(7,2) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `past_days` (
  `time` datetime NOT NULL,
  `embedded_wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `embedded_solar` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped_storage_pumping` decimal(4,2) NOT NULL DEFAULT 0.00,
  `coal` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ccgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ocgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `nuclear` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `oil` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `hydro` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `biomass` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `other` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ifa` decimal(3,2) NOT NULL DEFAULT 0.00,
  `moyle` decimal(3,2) NOT NULL DEFAULT 0.00,
  `britned` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ewic` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nemo` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ifa2` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nsl` decimal(3,2) NOT NULL DEFAULT 0.00,
  `eleclink` decimal(3,2) NOT NULL DEFAULT 0.00,
  `viking` decimal(3,2) NOT NULL DEFAULT 0.00,
  `price` decimal(7,2) NOT NULL DEFAULT 0.00,
  `emissions` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `past_half_hours` (
  `time` datetime NOT NULL,
  `embedded_wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `embedded_solar` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped_storage_pumping` decimal(4,2) NOT NULL DEFAULT 0.00,
  `coal` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ccgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ocgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `nuclear` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `oil` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `hydro` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `biomass` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `other` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ifa` decimal(3,2) NOT NULL DEFAULT 0.00,
  `moyle` decimal(3,2) NOT NULL DEFAULT 0.00,
  `britned` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ewic` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nemo` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ifa2` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nsl` decimal(3,2) NOT NULL DEFAULT 0.00,
  `eleclink` decimal(3,2) NOT NULL DEFAULT 0.00,
  `viking` decimal(3,2) NOT NULL DEFAULT 0.00,
  `price` decimal(7,2) NOT NULL DEFAULT 0.00,
  `emissions` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `past_weeks` (
  `time` datetime NOT NULL,
  `embedded_wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `embedded_solar` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped_storage_pumping` decimal(4,2) NOT NULL DEFAULT 0.00,
  `coal` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ccgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ocgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `nuclear` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `oil` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `hydro` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `biomass` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `other` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ifa` decimal(3,2) NOT NULL DEFAULT 0.00,
  `moyle` decimal(3,2) NOT NULL DEFAULT 0.00,
  `britned` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ewic` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nemo` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ifa2` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nsl` decimal(3,2) NOT NULL DEFAULT 0.00,
  `eleclink` decimal(3,2) NOT NULL DEFAULT 0.00,
  `viking` decimal(3,2) NOT NULL DEFAULT 0.00,
  `price` decimal(7,2) NOT NULL DEFAULT 0.00,
  `emissions` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `past_years` (
  `time` datetime NOT NULL,
  `embedded_wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `embedded_solar` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped_storage_pumping` decimal(4,2) NOT NULL DEFAULT 0.00,
  `coal` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ccgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ocgt` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `nuclear` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `oil` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `wind` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `hydro` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pumped` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `biomass` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `other` decimal(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `ifa` decimal(3,2) NOT NULL DEFAULT 0.00,
  `moyle` decimal(3,2) NOT NULL DEFAULT 0.00,
  `britned` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ewic` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nemo` decimal(3,2) NOT NULL DEFAULT 0.00,
  `ifa2` decimal(3,2) NOT NULL DEFAULT 0.00,
  `nsl` decimal(3,2) NOT NULL DEFAULT 0.00,
  `eleclink` decimal(3,2) NOT NULL DEFAULT 0.00,
  `viking` decimal(3,2) NOT NULL DEFAULT 0.00,
  `price` decimal(7,2) NOT NULL DEFAULT 0.00,
  `emissions` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wind_records` (
  `value` decimal(4,2) UNSIGNED NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
