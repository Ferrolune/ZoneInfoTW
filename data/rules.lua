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
        return ZoneInfoTW:GetColoredName(town, ZoneInfoTW.Towns) .. " " ..
                   (((GetCurrentMapZone() == 0) and "") or (ZoneInfoTW:GetColoredLevelRange(town, ZoneInfoTW.Towns)))
    end
}, {
    check = function(zone)
        return ZoneInfoTW.Zones[zone]
    end,
    get = function(zone)
        return ZoneInfoTW:GetColoredName(zone, ZoneInfoTW.Zones) .. " " ..
                   ZoneInfoTW:GetColoredLevelRange(zone, ZoneInfoTW.Zones)
    end,
    isZone = function(zone)
        return ZoneInfoTW.Zones[zone] ~= nil
    end

}, {
    check = function(poi)
        local zone = ZoneInfoTW.ZoneShortsToFullName[ZoneInfoTW.lastZone[1]]
        return ZoneInfoTW.PointOfInterests[zone] and ZoneInfoTW.PointOfInterests[zone][poi]
    end,
    get = function(poi)
        local zone = ZoneInfoTW.ZoneShortsToFullName[ZoneInfoTW.lastZone[1]]
        return ZoneInfoTW:GetColoredName(poi, ZoneInfoTW.PointOfInterests[zone]) .. " " ..
                   ZoneInfoTW:GetColoredLevelRange(poi, ZoneInfoTW.PointOfInterests[zone])
    end
}, {
    check = function(continent)
        return ZoneInfoTW.Continents[continent]
    end,
    get = function(continent)
        return ZoneInfoTW:GetColoredName(continent, ZoneInfoTW.PointOfInterests)
    end
}, {
    check = function(poi)
        return true
    end,
    get = function(poi)
        return ZoneInfoTW:GetErrorString(poi)
    end
}}

