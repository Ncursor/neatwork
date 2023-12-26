local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Neatwork = {}
local Event = Instance.new("RemoteEvent")
Event.Parent = ReplicatedStorage

local function FireEvent(self,...)
    task.desynchronize()
    Event:FireServer(...)
end

function Neatwork:NewEvent()
    return {FireServer = FireEvent}
end 

return Neatwork