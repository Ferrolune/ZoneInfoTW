local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

function ZoneInfoTW:GetColoredLevelRange(target, table)
    local colors = ZoneInfoTW.Colors["Levels"]

    if table[target] and table[target].high and table[target].low then
        local color, range = ZoneInfoTW:GetLevelColor(target, table), table[target].low .. "-" .. table[target].high
        return string.format(" |cff%02x%02x%02x[%s]|r", color[1], color[2], color[3], range)
    end

    return string.format(" |cff%02x%02x%02x[%s]|r", colors.Gray[1], colors.Gray[2], colors.Gray[3], "MISSING")
end

function ZoneInfoTW:GetLevelColor(target, table)
    local low, charLevel = table[target].low, UnitLevel("player")
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
