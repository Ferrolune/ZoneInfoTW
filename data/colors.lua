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
 function ZoneInfoTW:InterpolateColor(c1, c2, factor)
    local r = c1[1] + (c2[1] - c1[1]) * factor
    local g = c1[2] + (c2[2] - c1[2]) * factor
    local b = c1[3] + (c2[3] - c1[3]) * factor
    return {r, g, b}
end

