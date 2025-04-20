if not game:IsLoaded() then
    game.IsLoaded:Wait()
end;

local function HttpGet(RequestUrl)
    return request({Url = RequestUrl}).Body
end;

local GameSupport = {
	[15002061926] = "https://raw.githubusercontent.com/hexpattern/Inertia/refs/heads/main/loader.lua"
};

local PID = game.PlaceId or 0;

if GameSupport[PID] then
    loadstring(HttpGet(GameSupport[PID]))();
end;
