local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

ZoneInfoTW.Colors = {}

ZoneInfoTW.Colors["Factions"] = {
    ["Hostile"] = {255, 0, 0},
    ["Friendly"] = {0, 255, 0},
    ["Neutral"] = {255, 255, 0},
    ["Sanctuary"] = {0, 0, 255}
}

ZoneInfoTW.Colors["Levels"] = {
    ["White"] = {255, 255, 255},
    ["Red"] = {255, 0, 0},
    ["Orange"] = {255, 102, 0},
    ["Yellow"] = {255, 255, 0},
    ["Green"] = {0, 255, 0},
    ["Gray"] = {128, 128, 128},
    ["Black"] = {0, 0, 0}
}

ZoneInfoTW.Colors["Errors"] = {
    ["BAD_FACTION"] = {128, 128, 128}
}

-- Helper function for linear interpolation between two RGB colors
local function InterpolateColor(c1, c2, factor)
    local r = c1[1] + (c2[1] - c1[1]) * factor
    local g = c1[2] + (c2[2] - c1[2]) * factor
    local b = c1[3] + (c2[3] - c1[3]) * factor
    return {r, g, b}
end

function ZoneInfoTW:GetLevelColor(target, table)
    local min = table[target].low
    local max = table[target].high
    local playerlevel = UnitLevel("player")

    if playerlevel < min then
        if playerlevel <= min - 10 then
            return ZoneInfoTW.Colors["Levels"]["Black"]
        else
            local factor = (playerlevel - (min - 10)) / 10
            return InterpolateColor(ZoneInfoTW.Colors["Levels"]["Black"], ZoneInfoTW.Colors["Levels"]["Red"], factor)
        end
    end

    if playerlevel <= max then
        local mid = (min + max) / 2
        if playerlevel <= mid then
            local factor = (playerlevel - min) / (mid - min)
            return
                InterpolateColor(ZoneInfoTW.Colors["Levels"]["Orange"], ZoneInfoTW.Colors["Levels"]["Yellow"], factor)
        else
            local factor = (playerlevel - mid) / (max - mid)
            return InterpolateColor(ZoneInfoTW.Colors["Levels"]["Yellow"], ZoneInfoTW.Colors["Levels"]["Green"], factor)
        end
    end

    if playerlevel < max + 6 then
        local factor = (playerlevel - max) / 6
        return InterpolateColor(ZoneInfoTW.Colors["Levels"]["Green"], ZoneInfoTW.Colors["Levels"]["Gray"], factor)
    else
        return ZoneInfoTW.Colors["Levels"]["Gray"]
    end
end
