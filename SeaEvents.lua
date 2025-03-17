Alive = function(model) if not model then return end local Humanoid = model:FindFirstChild("Humanoid") return Humanoid and Humanoid.Health > 0 end
local Module = {}

Module.FishBoat = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "FishBoat") and v:FindFirstChild("Health").Value > 0 then
      return true
    end
  end
  return false
end
Module.PirateGrandBrigade = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "PirateGrandBrigade" or v.Name == "PirateBrigade") and v:FindFirstChild("Health").Value > 0 then
      return true
    end
  end
  return false
end

Module.Shark = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if v.Name == "Shark" and Alive(v) then
      return true
    end
  end
  return false
end
Module.TerrorShark = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if v.Name == "Terrorshark" and Alive(v) then
      return true
    end
  end
  return false
end
Module.Piranha = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if v.Name == "Piranha" and Alive(v) then
      return true
    end
  end
  return false
end
Module.FishCrew = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "Fish Crew Member" or v.Name == "Haunted Crew Member") and Alive(v) then
      return true
    end
  end
  return false
end
Module.HauntedCrew = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "Haunted Crew Member") and Alive(v) then
      return true
    end
  end
  return false
end

Module.SeaBeast = function()
  if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
    return true
  end
  return false
end
Module.Leviathan = function()
  if workspace.SeaBeasts:FindFirstChild("Leviathan") then
    return true
  end
  return false
end

return Module