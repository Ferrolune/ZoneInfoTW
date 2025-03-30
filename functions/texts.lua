local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}
local useAccurateWhereAvailable = true

function ZoneInfoTW:GetAccurateLevels(target, table)
    if useAccurateWhereAvailable and table[target].low_accurate and table[target].high_accurate then
        return {table[target].low_accurate, table[target].high_accurate}
    else
        return {table[target].low, table[target].high}
    end
end

function ZoneInfoTW:GetColoredLevelRange(target, table)
    local colors = ZoneInfoTW.Colors["Levels"]
    local levelrange = ZoneInfoTW:GetAccurateLevels(target, table)

    if table[target] and levelrange[1] and levelrange[2] then
        local color, range = ZoneInfoTW:GetLevelColor(target, table), levelrange[1] .. "-" .. levelrange[2]
        return string.format(" |cff%02x%02x%02x[%s]|r", color[1], color[2], color[3], range)
    end

    return string.format(" |cff%02x%02x%02x[%s]|r", colors.Gray[1], colors.Gray[2], colors.Gray[3], "MISSING")
end


function ZoneInfoTW:GetColoredName(target, table)
    local colors = ZoneInfoTW.Colors["Factions"]

    if table[target] then
        local flag = table[target].flag
        local adjustedFlag = ZoneInfoTW:AdjustFlagForPlayerFaction(flag)
        local color = ZoneInfoTW.reactionColors[adjustedFlag]
        return string.format("%s%s|r", color, target)
    end

    return string.format(" |cff%02x%02x%02x%s|r", colors.Gray[1], colors.Gray[2], colors.Gray[3], target)
end
