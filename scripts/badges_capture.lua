BADGED_LOCATIONS = {

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

badgeMap = {}

function tracker_on_accessibility_updated()
	for _, section in pairs(BADGED_LOCATIONS) do
		local target = Tracker:FindObjectForCode(section)

		print(tostring(target.Owner))

		if not target then
			print("Failed to resolve " .. section)
		end

		if badgeMap[target.Owner] and not Tracker.DisplayAllLocations and target.AccessibilityLevel == AccessibilityLevel.None then
			target.Owner:RemoveBadge(badgeMap[target.Owner])
			badgeMap[target.Owner] = nil
		elseif not badgeMap[target.Owner] and (Tracker.DisplayAllLocations or target.AccessibilityLevel ~= AccessibilityLevel.None) then
			badgeMap[target.Owner] = target.Owner:AddBadge("images/badges/SlitS.png")
        end
	end
end