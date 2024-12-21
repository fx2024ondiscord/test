



--script has many varibles
 
       --anti.c
--⚠️ Anti bypass attempt ⚠️
 --ru.
--if.if.if.if.if.f.if.f.iif.i.f.if.ifi.fi..if.ifi.fi.fi.fi.fi.i.fi.f. end

local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "335c42844e634b09ad72fd645207eee0"
local falseData = "72d05c65a9924465974624da1c696bd7"

KeyGuardLibrary.Set({
    publicToken = "b88c31a0112f466aa50ddb4540ced147",
    privateToken = "24ced444c3ad4d26abf8ee98cf37daaa",
    trueData = trueData,
    falseData = falseData,
})

local Directory = "Saved_KeyGuard_Key.txt"

local function showNotification(title, message, icon)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = message,
        Icon = icon or "",
        Duration = 5,
    })
end

local function loadKeySystem()
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

    local Window = Fluent:CreateWindow({
        Title = "🎄🎁 Super League Soccer - 2025 🎁🎄",
        SubTitle = "fx_Scripts",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 340),
        Acrylic = true,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.H,
    })

    local Tabs = {
        KeySys = Window:AddTab({ Title = "🔑 Key System", Icon = "🔐" }),
    }

    local InputKey = Tabs.KeySys:AddInput("InputKey", {
        Title = "🎁 Input Key",
        Description = "Insert your key...",
        Default = "",
        Placeholder = "Enter key...",
        Numeric = false,
        Finished = false,
    })

    local CheckKey = Tabs.KeySys:AddButton({
        Title = "✅ Check Key",
        Description = "Enter Key before pressing this button",
        Callback = function()
            local response = KeyGuardLibrary.validateDefaultKey(InputKey.Value)
            if response == trueData then
                writefile(Directory, InputKey.Value)
                showNotification("Success!", "🎉 Key Saved Successfully!", "rbxassetid://123456")
                wait(1)
                Window:Destroy()
                loadstring(game:HttpGet("https://pastefy.app/IySxsude/raw"))()
            else
                showNotification("Error!", "Invalid Key. Try again.", "rbxassetid://123457")
            end
        end
    })

    local GetKey = Tabs.KeySys:AddButton({
        Title = "Get Key",
        Description = "Copy Key Link",
        Callback = function()
            setclipboard(KeyGuardLibrary.getLink())
            showNotification("Copied!", "Link Coppied..Paste on your broswer", "rbxassetid://123458")
        end
    })

    Window:SelectTab(1)
end

if isfile(Directory) then
    local storedKey = readfile(Directory)
    if storedKey and storedKey ~= "" then
        local response = KeyGuardLibrary.validateDefaultKey(storedKey)
        if response == trueData then
            showNotification("Success!", "🎉 Saved Key Valid! Proceeding...", "rbxassetid://123459")
            loadstring(game:HttpGet("https://pastefy.app/IySxsude/raw"))()
        else
            showNotification("Error!", "❌ Saved Key Invalid. Get Another one", "rbxassetid://123460")
            delfile(Directory)
            loadKeySystem()
        end
    else
        loadKeySystem()
    end
else
    loadKeySystem()
end 
-- ⚠️ WARNING:protected!
