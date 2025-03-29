local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

-- city faction color
function ZoneInfoTW:GetCityColoredName(mouseover)
    local colors, cities = ZoneInfoTW.Colors["Factions"], ZoneInfoTW.Cities
    local color = (cities[mouseover] and
                      colors[(cities[mouseover].faction == "Contested" or not cities[mouseover].faction) and "Neutral" or
                          (UnitFactionGroup("player") == cities[mouseover].faction and "Friendly" or "Hostile")]) or
                      ZoneInfoTW.Colors["Errors"]["BAD_FACTION"]

    return string.format(" |cff%02x%02x%02x%s|r", color[1], color[2], color[3] or color[2], mouseover)
end
