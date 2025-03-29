local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

-- zone level range colors
function ZoneInfoTW:GetZoneLevelColor(zone)
    local low, charLevel = ZoneInfoTW.Zones[zone].low, UnitLevel("player")
    if not low then
        return ZoneInfoTW.Colors["Levels"]["Gray"]
    end

    for _, t in ipairs(ZoneInfoTW.colorThresholds) do
        if low >= charLevel + t.offset then
            return ZoneInfoTW.Colors["Levels"][t.color]
        end
    end

    return ZoneInfoTW.Colors["Levels"]["Gray"]
end

function ZoneInfoTW:GetPOILevelColor(poiName)
    local low, charLevel = ZoneInfoTW.PointOfInterests[poiName].low, UnitLevel("player")
    if not low then
        return ZoneInfoTW.Colors["Levels"]["Gray"]
    end

    for _, t in ipairs(ZoneInfoTW.colorThresholds) do
        if low >= charLevel + t.offset then
            return ZoneInfoTW.Colors["Levels"][t.color]
        end
    end

    return ZoneInfoTW.Colors["Levels"]["Gray"]
end


function ZoneInfoTW:GetColoredLevelRange(zone)
    local zones, colors = ZoneInfoTW.Zones, ZoneInfoTW.Colors["Levels"]
    if not zones[zone] then
        return string.format(" |cff%02x%02x%02x[%s]|r", colors.Gray[1], colors.Gray[2], colors.Gray[3], "MISSING")
    end

    local color, range = ZoneInfoTW:GetZoneLevelColor(zone), zones[zone].low .. "-" .. zones[zone].high
    return string.format(" |cff%02x%02x%02x[%s]|r", color[1], color[2], color[3], range)
end

function ZoneInfoTW:GetColoredPOILevelRange(poiName)
    local pois, colors = ZoneInfoTW.PointOfInterests, ZoneInfoTW.Colors["Levels"]
    if not pois[poiName] then
        return string.format(" |cff%02x%02x%02x[%s]|r", colors.Gray[1], colors.Gray[2], colors.Gray[3], "MISSING")
    end

    local color, range = ZoneInfoTW:GetPOILevelColor(poiName), pois[poiName].low .. "-" .. pois[poiName].high
    return string.format(" |cff%02x%02x%02x[%s]|r", color[1], color[2], color[3], range)
end
