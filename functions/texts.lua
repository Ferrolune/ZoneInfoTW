local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}
local useAccurateWhereAvailable = true

function ZoneInfoTW:GetRealTable(table, target)
    local zone = ZoneInfoTW.lastZone[1]
    local t = table
    if table[zone] then
     if table[zone][target] then
            t = table[zone]
        end
    end
    return t
end

function ZoneInfoTW:GetAccurateLevels(target, table)
    table = ZoneInfoTW:GetRealTable(table,target)

    if useAccurateWhereAvailable and table[target].low_accurate and table[target].high_accurate then
        return {table[target].low_accurate, table[target].high_accurate}
    else
        return {table[target].low, table[target].high}
    end
end

function ZoneInfoTW:GetColoredLevelRange(target, table)
    table = ZoneInfoTW:GetRealTable(table, target)
    local colors = ZoneInfoTW.Colors["Levels"]
    local levelrange = ZoneInfoTW:GetAccurateLevels(target, table)


    if table and levelrange[1] and levelrange[2] then
        local color, range = ZoneInfoTW:GetLevelColor(target, table), levelrange[1] .. "-" .. levelrange[2]
        return string.format(" |cff%02x%02x%02x[%s]|r", color[1], color[2], color[3], range)
    end

    return string.format(" |cff%02x%02x%02x[%s]|r", colors.Gray[1], colors.Gray[2], colors.Gray[3], "MISSING")
end


function ZoneInfoTW:GetColoredName(target, table)
    local colors = ZoneInfoTW.Colors["Factions"]
    local t = ZoneInfoTW:GetRealTable(table, target)

    if t[target] then
        local flag = t[target].flag
        local adjustedFlag = ZoneInfoTW:AdjustFlagForPlayerFaction(flag)
        local color = ZoneInfoTW.reactionColors[adjustedFlag]
        print(target)
        print()
        return string.format("%s%s|r", color, target)
    end

    return string.format(" |cff%02x%02x%02x%s|r", colors.Neutral[1], colors.Neutral[2], colors.Neutral[3], target)
end

function ZoneInfoTW:GetLevelColor(target, table)
    local t = ZoneInfoTW:GetRealTable(table, target)
    local min = t[target].low
    local max = t[target].high
    local playerlevel = UnitLevel("player")

    if playerlevel < min then
        if playerlevel <= min - 10 then
            return ZoneInfoTW.Colors["Levels"]["Black"]
        else
            local factor = (playerlevel - (min - 10)) / 10
            return ZoneInfoTW:InterpolateColor(ZoneInfoTW.Colors["Levels"]["Black"], ZoneInfoTW.Colors["Levels"]["Red"], factor)
        end
    end

    if playerlevel <= max then
        local mid = (min + max) / 2
        if playerlevel <= mid then
            local factor = (playerlevel - min) / (mid - min)
            return ZoneInfoTW:InterpolateColor(ZoneInfoTW.Colors["Levels"]["Orange"], ZoneInfoTW.Colors["Levels"]["Yellow"], factor)
        else
            local factor = (playerlevel - mid) / (max - mid)
            return ZoneInfoTW:InterpolateColor(ZoneInfoTW.Colors["Levels"]["Yellow"], ZoneInfoTW.Colors["Levels"]["Green"], factor)
        end
    end

    if playerlevel < max + 6 then
        local factor = (playerlevel - max) / 6
        return ZoneInfoTW:InterpolateColor(ZoneInfoTW.Colors["Levels"]["Green"], ZoneInfoTW.Colors["Levels"]["Gray"], factor)
    else
        return ZoneInfoTW.Colors["Levels"]["Gray"]
    end
end
