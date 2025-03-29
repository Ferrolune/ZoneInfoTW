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
    ["Skull"] = {0, 0, 0}
}

ZoneInfoTW.Colors["Errors"] = {
    ["BAD_FACTION"] = {128, 128, 128}
}

ZoneInfoTW.colorThresholds = {
    { offset = 10, color = "Skull" },
    { offset = 5,  color = "Red"   },
    { offset = 3,  color = "Orange"},
    { offset = -2, color = "Yellow"},
    { offset = -5, color = "Green" }
}