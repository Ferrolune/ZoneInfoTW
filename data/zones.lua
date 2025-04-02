local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

ZoneInfoTW.Zones = {
    ["Redridge Mountains"] = { name = "Redridge", flag = "1010", low = 15, low_accurate = 14, high = 25, high_accurate = 27 },
    ["Stonetalon Mountains"] = { name = "StonetalonMountains", flag = "1010", low = 15, high = 27 },
    ["Ashenvale"] = { name = "Ashenvale", flag = "1010", low = 18, high = 30 },
    ["Duskwood"] = { name = "Duskwood", flag = "1010", low = 18, low_accurate = 18, high = 30, high_accurate = 35 },
    ["Wetlands"] = { name = "Wetlands", flag = "1010", low = 20, low_accurate = 19, high = 30, high_accurate = 34 },
    ["Hillsbrad Foothills"] = { name = "Hillsbrad", flag = "1010", low = 20, low_accurate = 20, high = 35, high_accurate = 38 },
    ["Thousand Needles"] = { name = "ThousandNeedles", flag = "1010", low = 25, high = 35 },
    ["Alterac Mountains"] = { name = "Alterac", flag = "1010", low = 30, low_accurate = 24, high = 40, high_accurate = 46 },
    ["Arathi Highlands"] = { name = "Arathi", flag = "1010", low = 30, high = 40 },
    ["Desolace"] = { name = "Desolace", flag = "1010", low = 30, high = 40 },
    ["Stranglethorn Vale"] = { name = "Stranglethorn", flag = "1010", low = 30, low_accurate = 25, high = 45, high_accurate = 48 },
    ["Dustwallow Marsh"] = { name = "Dustwallow", flag = "1010", low = 35, high = 45 },
    ["Badlands"] = { name = "Badlands", flag = "1010", low = 35, high = 45 },
    ["Swamp of Sorrows"] = { name = "SwampOfSorrows", flag = "1010", low = 35, low_accurate = 34, high = 45, high_accurate = 50 },
    ["Feralas"] = { name = "Feralas", flag = "1010", low = 40, high = 50 },
    ["The Hinterlands"] = { name = "Hinterlands", flag = "1010", low = 40, high = 50 },
    ["Tanaris"] = { name = "Tanaris", flag = "1010", low = 40, high = 50 },
    ["Searing Gorge"] = { name = "SearingGorge", flag = "1010", low = 45, high = 50 },
    ["Azshara"] = { name = "Azshara", flag = "1010", low = 45, high = 55 },
    ["Blasted Lands"] = { name = "BlastedLands", flag = "1010", low = 45, low_accurate = 45, high = 55, high_accurate = 60 },
    ["Un'Goro Crater"] = { name = "UngoroCrater", flag = "1010", low = 48, high = 55 },
    ["Felwood"] = { name = "Felwood", flag = "1010", low = 48, high = 55 },
    ["Burning Steppes"] = { name = "BurningSteppes", flag = "1010", low = 50, high = 58 },
    ["Western Plaguelands"] = { name = "WesternPlaguelands", flag = "1010", low = 51, high = 58 },
    ["Eastern Plaguelands"] = { name = "EasternPlaguelands", flag = "1010", low = 53, low_accurate = 51, high = 60, high_accurate = 60 },
    ["Winterspring"] = { name = "Winterspring", flag = "1010", low = 53, high = 60 },
    ["Deadwind Pass"] = { name = "DeadwindPass", flag = "1010", low = 55, low_accurate = 50, high = 60, high_accurate = 60 },
    ["Moonglade"] = { name = "Moonglade", flag = "1010", low = 55, high = 60 },
    ["Silithus"] = { name = "Silithus", flag = "1010", low = 55, high = 60 },
    ["Dun Morogh"] = { name = "DunMorogh", flag = "0000", low = 1, low_accurate = 1, high = 10, high_accurate = 26 },
    ["Elwynn Forest"] = { name = "Elwynn", flag = "0000", low = 1, low_accurate = 1, high = 10, high_accurate = 11 },
    ["Teldrassil"] = { name = "Teldrassil", flag = "0000", low = 1, high = 10 },
    ["Darkshore"] = { name = "Darkshore", flag = "0000", low = 10, high = 20 },
    ["Loch Modan"] = { name = "LochModan", flag = "0000", low = 10, low_accurate = 10, high = 20, high_accurate = 22 },
    ["Westfall"] = { name = "Westfall", flag = "0000", low = 10, low_accurate = 9, high = 20, high_accurate = 24 },
    ["Durotar"] = { name = "Durotar", flag = "0100", low = 1, low_accurate = 1, high = 10, high_accurate = 14 },
    ["Mulgore"] = { name = "Mulgore", flag = "0100", low = 1, high = 10 },
    ["Tirisfal Glades"] = { name = "Tirisfal", flag = "0100", low = 1, high = 10 },
    ["Silverpine Forest"] = { name = "Silverpine", flag = "0100", low = 10, low_accurate = 10, high = 20, high_accurate = 25 },
    ["The Barrens"] = { name = "Barrens", flag = "0100", low = 10, high = 25 },
    ["Tel'Abim"] = { name = "TelAbim", flag = "1010", low = 54, high = 60 },
    ["Thalassian Highlands"] = { name = "ThalassianHighlands", flag = "0000", low = 1, low_accurate = 1, high = 10, high_accurate = 11 },
    ["Lapidis Isle"] = { name = "Lapidis", flag = "1010", low = 48, low_accurate = 47, high = 53, high_accurate = 55 },
    ["Gillijim's Isle"] = { name = "Gillijim", flag = "1010", low = 48, low_accurate = 47, high = 53, high_accurate = 55 },
    ["Scarlet Enclave"] = { name = "ScarletEnclave", flag = "1010", low = 54, low_accurate = 53, high = 60, high_accurate = 60 },
    ["Gilneas"] = { name = "Gilneas", flag = "0000", low = 39, low_accurate = 35, high = 46, high_accurate = 48 },
    ["Icepoint Rock"] = { name = "IcepointRock", flag = "1010", low = 40, high = 50 },
    ["Blackstone Island"] = { name = "BlackstoneIsland", flag = "0100", low = 1, high = 10 },
    ["Hyjal"] = { name = "Hyjal", flag = "1010", low = 58, high = 60 },

}


ZoneInfoTW.ZoneShortsToFullName = {
    ["Redridge"] = "Redridge Mountains",
    ["StonetalonMountains"] = "Stonetalon Mountains",
    ["Ashenvale"] = "Ashenvale",
    ["Duskwood"] = "Duskwood",
    ["Wetlands"] = "Wetlands",
    ["Hilsbrad"] = "Hillsbrad Foothills",
    ["ThousandNeedles"] = "Thousand Needles",
    ["Alterac"] = "Alterac Mountains",
    ["Arathi"] = "Arathi Highlands",
    ["Desolace"] = "Desolace",
    ["Stranglethorn"] = "Stranglethorn Vale",
    ["Dustwallow"] = "Dustwallow Marsh",
    ["Badlands"] = "Badlands",
    ["SwampOfSorrows"] = "Swamp of Sorrows",
    ["Feralas"] = "Feralas",
    ["Hinterlands"] = "The Hinterlands",
    ["Tanaris"] = "Tanaris",
    ["SearingGorge"] = "Searing Gorge",
    ["Azshara"] = "Azshara",
    ["BlastedLands"] = "Blasted Lands",
    ["UngoroCrater"] = "Un'Goro Crater",
    ["Felwood"] = "Felwood",
    ["BurningSteppes"] = "Burning Steppes",
    ["WesternPlaguelands"] = "Western Plaguelands",
    ["EasternPlaguelands"] = "Eastern Plaguelands",
    ["Winterspring"] = "Winterspring",
    ["DeadwindPass"] = "Deadwind Pass",
    ["Moonglade"] = "Moonglade",
    ["Silithus"] = "Silithus",
    ["DunMorogh"] = "Dun Morogh",
    ["Elwynn"] = "Elwynn Forest",
    ["Teldrassil"] = "Teldrassil",
    ["Darkshore"] = "Darkshore",
    ["LochModan"] = "Loch Modan",
    ["Westfall"] = "Westfall",
    ["Durotar"] = "Durotar",
    ["Mulgore"] = "Mulgore",
    ["Tirisfal"] = "Tirisfal Glades",
    ["Silverpine"] = "Silverpine Forest",
    ["Barrens"] = "The Barrens",
    ["TelAbim"] = "Tel'Abim",
    ["ThalassianHighlands"] = "Thalassian Highlands",
    ["Lapidis"] = "Lapidis Isle",
    ["Gillijim"] = "Gillijim's Isle",
    ["ScarletEnclave"] = "Scarlet Enclave",
    ["Gilneas"] = "Gilneas",
    ["IcepointRock"] = "Icepoint Rock",
    ["BlackstoneIsland"] = "Blackstone Island",
    ["Hyjal"] = "Hyjal"
}
