-- Better Sector Mod changes
NDefines.NGameplay.SECTOR_SUPPORT_RESOURCE_AMOUNT = 100;		-- How much resources each click will give the sector
NDefines.NGameplay.SECTOR_REVOKE_PLANET_COST = 0;				-- Influence cost for revoking a planet from a sector
NDefines.NGameplay.DELETE_SECTOR_COST = 0;						-- Influence cost for deleting a sector

NDefines.NAI.SECTOR_STATION_BUDGET_FRACTION = 0.30;				-- Fraction of budget going to stations
NDefines.NAI.SECTOR_BUILDING_BUDGET_FRACTION = 0.40;			-- Fraction of budget going to buildings
NDefines.NAI.SECTOR_SPACEPORT_BUDGET_FRACTION = 0.20;			-- Fraction of budget going to spaceports
NDefines.NAI.SECTOR_ARMY_BUDGET_FRACTION = 0.10;				-- Fraction of budget going to armies

NDefines.NAI.SECTOR_BUILDING_MAINT_BUDGET_FRACTION = 0.40;		-- Fraction of maintenance budget going to buildings
NDefines.NAI.SECTOR_STATION_MAINT_BUDGET_FRACTION = 0.50;		-- Fraction of maintenance budget going to spaceports and stations
NDefines.NAI.SECTOR_ARMY_MAINT_BUDGET_FRACTION = 0.10;			-- Fraction of maintenance budget going to armies

NDefines.NAI.EXPECTED_SECTOR_ENERGY_SURPLUS = 3;				-- AI wants a surplus of least this amount in monthly energy production
NDefines.NAI.POP_FOOD_MIN = 3;									-- AI should always prioritize to get more food when planet food total is below this value

NDefines.NAI.SECTOR_FOCUS_EFFECT = 10;							-- Resources designated as the focus of a sector are valued this much more
NDefines.NAI.SECTOR_IGNORE_TILE_RESOURCE = 0;					-- Should sectors ignore which resources are on the tile when building?
