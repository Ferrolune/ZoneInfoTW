local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

-- town faction color
function ZoneInfoTW:GetTownColoredName(mouseover)
    local colors, towns = ZoneInfoTW.Colors["Factions"], ZoneInfoTW.Towns
    local color = (towns[mouseover] and
                      colors[(towns[mouseover].faction == "Contested" or not towns[mouseover].faction) and "Neutral" or
                          (UnitFactionGroup("player") == towns[mouseover].faction and "Friendly" or "Hostile")]) or
                      ZoneInfoTW.Colors["Errors"]["BAD_FACTION"]

    return string.format(" |cff%02x%02x%02x%s|r", color[1], color[2], color[3] or color[2], mouseover)
end
