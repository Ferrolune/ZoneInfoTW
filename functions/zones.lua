local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

-- zone faction color
function ZoneInfoTW:GetZoneColoredName(zone)
    local colors, zones = ZoneInfoTW.Colors["Factions"], ZoneInfoTW.Zones
    local color = (zones[zone] and
                      colors[(zones[zone].faction == "Contested" or not zones[zone].faction) and "Neutral" or
                          (UnitFactionGroup("player") == zones[zone].faction and "Friendly" or "Hostile")]) or
                      ZoneInfoTW.Colors["Errors"]["BAD_FACTION"]

    return string.format(" |cff%02x%02x%02x%s|r", color[1], color[2], color[3] or color[2], zone)
end

