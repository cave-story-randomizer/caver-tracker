function canFightMaPignon()
    return Tracker:ProviderCountForCode("polarStar") or Tracker:ProviderCountForCode("fireball") or
           Tracker:ProviderCountForCode("bubbler") or Tracker:ProviderCountForCode("machineGun") or
           Tracker:ProviderCountForCode("snake") or Tracker:ProviderCountForCode("nemesis")
end

function canEnterArthurs()
    if Tracker:ProviderCountForCode("weaponSN") > 0 and Tracker:ProviderCountForCode("arthursKey") > 0 then
       return 1 else return 0 
    end
end

function canAccessPlantation()
    if Tracker:ProviderCountForCode("eventKazuma") > 0 then
        return 1
    end
    if Tracker:ProviderCountForCode("teleportKey") > 0 and canEnterArthurs() then
        return 1
    end
    return 0
end
