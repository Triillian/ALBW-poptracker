HyruleWeatherVanes = {
    "@Weather Vane 01/Your House",
    "@Weather Vane 02/Kakariko Village",
    "@Weather Vane 03/Eastern Palace",
    "@Weather Vane 04/House of Gales",
    "@Weather Vane 05/Tower of Hera",
    "@Weather Vane 06/Witch's House",
    "@Weather Vane 07/Death Mountain (Hyrule)",
    "@Weather Vane 08/Desert Palace",
    "@Weather Vane 09/Sanctuary"
}
LoruleWeatherVanes = {
    "@Weather Vane 10/Skull Woods",
    "@Weather Vane 11/Treacherous Tower",
    "@Weather Vane 12/Ice Ruins",
    "@Weather Vane 13/Lorule Castle",
    "@Weather Vane 14/Graveyard",
    "@Weather Vane 15/Thieves' Town",
    "@Weather Vane 16/Dark Palace",
    "@Weather Vane 17/Blacksmith",
    "@Weather Vane 18/Vacant House",
    "@Weather Vane 19/Misery Mire",
    "@Weather Vane 20/Swamp Palace",
    "@Weather Vane 21/Turtle Rock",
    "@Weather Vane 22/Death Mountain (Lorule)"
}
Cracks = {
-----------------------------------------------------------
    "@Your House/Crack",
    "@Swamp Pillar Crack/",
    "@Paradox Hyrule Left Crack/",
    "@Paradox Hyrule Right Crack/",
    "@Stylish Woman's House/Stylish Woman Crack",
    "@Hyrule Castle Crack/Inside Hyrule Castle",
-----------------------------------------------------------
    "@Lost Woods Pillar Crack/",
    "@Rosso's House/Rosso's House Crack",
    "@Sahasrahla's House Crack/",
-----------------------------------------------------------
    "@Death Mountain West Crack/",
    "@Floating Island/Floating Island Crack",
    "@Rosso's Ore Mine Crack/Death Mountain",
-----------------------------------------------------------
    "@Sanctuary /Sanctuary Crack",
    "@Graveyard Ledge/Graveyard Crack",
-----------------------------------------------------------
    "@Waterfall Crack/",
    "@Zora's Domain Crack/",
    "@Eastern Pillar Crack/",
    "@Eastern Ruins SE Crack/",
-----------------------------------------------------------
    "@Lake Hylia Crack/",
    "@River Crack/",
    "@Hyrule Hotfoot Crack/",
-----------------------------------------------------------
    "@Misery Mire Entrance Crack/",
    "@Desert/Desert North Crack",
    "@Desert Pillar Left Crack/",
    "@Desert Pillar Right Crack/",
    "@Desert Middle Crack/",
    "@Desert SW Crack/",
    "@Desert Palace Ledge/Desert Palace Crack",
-----------------------------------------------------------
-----------------------------------------------------------
-----------------------------------------------------------
    "@Vacant House Crack/",
    "@Thieves' Town /Thieves' Town Crack",
    "@Lorule Swamp Pillar Crack/",
    "@Paradox Lorule Left Crack/",
    "@Paradox Lorule Right Crack/",
    "@Lorule Castle Crack/Lorule Castle",
-----------------------------------------------------------
    "@Skull Woods Pillar Crack/",
    "@Destroyed House Crack/",
    "@n-Shaped House Crack/",
-----------------------------------------------------------
    "@Lorule Death Mountain West Crack/",
    "@Lorule Floating Island/Lorule Floating Island Crack",
    "@Lorule Rosso's Ore Mine Crack/Lorule Death Mountain",
-----------------------------------------------------------
    "@Philosopher's Cave Crack/Graveyard",
    "@Lorule Graveyard/Lorule Graveyard Crack",
-----------------------------------------------------------
    "@Lorule Waterfall Crack/Dark Ruins",
    "@Ku's Domain Crack/Dark Ruins",
    "@Dark Pillar Crack/Dark Ruins",
    "@Dark Ruins SE Crack/Dark Ruins",
-----------------------------------------------------------
    "@Lorule Lake Crack/Turtle Rock Area",
    "@Lorule River Crack/Turtle Rock Area",
    "@Lorule Hotfoot Crack/Turtle Rock Area",
-----------------------------------------------------------
    "@Misery Mire Exit Crack/",
    "@Misery Mire North/Misery Mire North Crack",
    "@Misery Mire Pillar Left Crack/",
    "@Misery Mire Pillar Right Crack/",
    "@Misery Mire Middle Crack/",
    "@Misery Mire SW Crack/",
    "@Misery Mire /Zaganaga Crack"
}

-- Adds static badge to location
-- Badge references are thrown out as these badges are intended to be permanent location labels
function add_static_badges(badge, locations)

    for _, section in pairs(locations) do

        local target = Tracker:FindObjectForCode(section)

        if not target then
            print("Failed to resolve " .. section)
        else
            target.Owner:AddBadge(badge)
        end
    end
end

add_static_badges("images/badges/wv_hyrule.png", HyruleWeatherVanes)
add_static_badges("images/badges/wv_lorule.png", LoruleWeatherVanes)
add_static_badges("images/badges/SlitS.png", Cracks)
