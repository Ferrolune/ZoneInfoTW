local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

ZoneInfoTW.DisplayRules = {{
    check = function(city)
        return ZoneInfoTW.Cities[city]
    end,
    get = function(city)
        return ZoneInfoTW:GetColoredName(city, ZoneInfoTW.Cities)
    end
}, {
    check = function(town)
        return ZoneInfoTW.Towns[town]
    end,
    get = function(town)
        return ZoneInfoTW:GetColoredName(town, ZoneInfoTW.Towns) .. " " .. (((GetCurrentMapZone() == 0) and "") or (ZoneInfoTW:GetColoredLevelRange(town, ZoneInfoTW.Towns)))
    end
}, {
    check = function(zone)
        return ZoneInfoTW.Zones[zone]
    end,
    get = function(zone)
        return ZoneInfoTW:GetColoredName(zone, ZoneInfoTW.Zones) .. " " .. ZoneInfoTW:GetColoredLevelRange(zone, ZoneInfoTW.Zones)
    end
}, {
    check = function(poi)
        return ZoneInfoTW.PointOfInterests[poi]
    end,
    get = function(poi)
        return ZoneInfoTW:GetColoredName(poi, ZoneInfoTW.PointOfInterests) .. " " .. ZoneInfoTW:GetColoredLevelRange(poi, ZoneInfoTW.PointOfInterests)
    end
}, {
    check = function(poi)
        return true
    end,
    get = function(poi)
        return ZoneInfoTW:GetErrorString(poi)
    end
}



-- Add more rules here as needed




-- ! TODO: POI FOR DUNGEONS/RAIDS, A SWIRLY POI SHOULD SHOW ALL DUNGEONS ON MOUSEOVER, TOOLTIP

-- ! TODO: ADD POI ICONS AND MISSING DATA FOR
-- ! minor POI
-- ! raids
-- ! pvp entrances
-- ! world bosses
-- ! world buffs
-- ! flight mastars
-- ! profession trainers for your professions
-- ! zeppelins
-- ! boats
-- ! portals, I don't classic has any
-- ! translocation orbs like the one in blood elf to undercity, I don't think there is any
-- ! goblin teleporters like the one in booty bay
-- ! maplinks/short portals like the one in darnassus
-- ! innkeepers
-- ! unique info based on type, e.g. info required for dungeons, raids, cities, towns, world buffs, level ranges, faction, group size, etc
-- !

}

