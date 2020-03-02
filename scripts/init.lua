Tracker:AddItems("items/items.json")

if not (string.find(Tracker.ActiveVariantUID, "items_only")) then
    Tracker:AddItems("items/settings.json")
    Tracker:AddMaps("maps/maps.json")
    ScriptHost:LoadScript("scripts/logic_common.lua")
    Tracker:AddLocations("locations/locations.json")
    Tracker:AddLayouts("layouts/settings.json")
end

Tracker:AddLayouts("layouts/shared.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
