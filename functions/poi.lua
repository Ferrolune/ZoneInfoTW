local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}


function ZoneInfoTW:AdjustFlagForPlayerFaction(flag)
    local isHorde = (UnitFactionGroup("player") == "Horde" and "1") or "0"
    local reactiondata = (string.sub(flag,2,2) ~= isHorde and ZoneInfoTW.reactionRemap[flag]) or flag
    return reactiondata
end


function ZoneInfoTW:GetPOIColoredName(poiName)
    local poi = ZoneInfoTW.PointOfInterests[poiName]
    if not poi or not poi.flag then
        return string.format("|cffffffff%s|r", poiName)
    end

    local adjustedFlag = ZoneInfoTW:AdjustFlagForPlayerFaction(poi.flag)
    local color = ZoneInfoTW.reactionColors[adjustedFlag] or "|cffffffff"

    local range = ZoneInfoTW:GetColoredPOILevelRange(poiName)

    return string.format("%s%s|r %s|r", color, poiName, range)
end


function ZoneInfoTW:GetZoneColoredName(zone)
    local colors, zones = ZoneInfoTW.Colors["Factions"], ZoneInfoTW.Zones
    local color = (zones[zone] and
                      colors[(zones[zone].faction == "Contested" or not zones[zone].faction) and "Neutral" or
                          (UnitFactionGroup("player") == zones[zone].faction and "Friendly" or "Hostile")]) or
                      ZoneInfoTW.Colors["Errors"]["BAD_FACTION"]

    return string.format(" |cff%02x%02x%02x%s|r", color[1], color[2], color[3] or color[2], zone)
end

