_G.VERSIONS = 2.2
--[[
    2.1 changelog:
        + Improve Auto Use Ant Pass
        + Added Auto Ant (Beta)
        + Added Auto Bucko/Riley Bee Quest (Beta)
        + Added Auto farm leaves
        + Added Auto farm Sparkle
    2.2 changelog:
        + Improve Auto Bucko/Riley Bee Quest (Beta)
        + Added Auto Panda Bear Quest (Beta)

]]
repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.Players.LocalPlayer.Character
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui")
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui"):FindFirstChild("Menus")
wait(3)

local print = function() end


local LevelFarm = {"CurrentField","FieldBoost","Quest","Sprout","Mob"}




local AutoFAnt2 = false
local ValidAnt2 = true
local ValidLeaf = true
local NearTP=false
local NearTPMag=4
local ValidDodg = true
local ValidAnt=true
local Exploit = "Synapse X"
if http_request and secure_load then
    Exploit = "Sentinel"
    if syn then
        setreadonly(syn, false)
        syn.request = http_request
    else
        syn = {}
        syn.request = http_request
    end
end
local QuestTFBeta={}

local AutoSave = writefile~=nil
local Con = {}

spawn = function(a)
    coroutine.wrap(
        function()
            --print("D")
            local s, e = pcall(a)
            print(e)
            print("Done1")
            if e then
                local HttpService = game:GetService("HttpService")
                local sec = {}
                for k, v in pairs(Con) do
                    if type(v) ~= "table" then
                        sec[k] = v
                    end
                end
                local tb = {
                    content = "Error",
                    embeds = {
                        {
                            color = nil,
                            fields = {
                                {
                                    name = "Error Mess",
                                    value = e
                                },
                                {
                                    name = "Exploit Used",
                                    value = Exploit
                                },
                                {
                                    name = "Settings",
                                    value = HttpService:JSONEncode(sec)
                                }
                            },
                            author = {
                                name = "Sea Hub Bee Swarm Simulator Bug Reporter"
                            }
                        }
                    }
                }
                local a =
                    syn.request(
                    {
                        Url = "https://discord.com/api/webhooks/848166928446783489/ACsHIldjqsXk3TqmBX9AyrJOU6phGfX9F1cBN86P_QXjvHQ3CMcKYr5yuvRw4TvcAA_r",
                        Method = "POST",
                        Body = HttpService:JSONEncode(tb),
                        Headers = {
                            ["Content-Type"] = "application/json"
                        }
                    }
                )
                print(a.Body)
                print("Found bug. Reported to tvk1308.")
                print(e)
            end
        end
    )()
end

_G.SeaHubVersion = "2.0"

--getgenv().Spawn = function(a)  print("Hi") coroutine.wrap(a)() end
local s, e =
    pcall(
    function()
        local vantoc = 100
        local QuestList = {
            "Polar Bear",
            "Brown Bear",
            "Black Bear",
        }
        local plr = game.Players.LocalPlayer
        local CollectType = "Optimize"
        local CurrentField = "Sunflower Field"
        local Field = CurrentField
        local TempField = Field
        local IgnoreHoney = false
        local Killing = false
        local Farm = false
        local SproutRare = false
        local NoChange = false
        local AttackMask = "Demon Mask"
        local BringInsValid = true
        local BringInsValidQ = true
        local ValidEquip = true
        local Kiet1308 = false
        local EquipAttack = false
        local noclip = false
        local inactiveTransparencyTokens = 0.7
        local inactiveBufferTokens = 0.05
        local Valid2 = true
        function isActiveTokens(v)
            if v and v:IsA("Part") then
                return --[[v.DataCost ~= 32]] not ((v.Transparency + inactiveBufferTokens) > inactiveTransparencyTokens and
                    (v.Transparency - inactiveBufferTokens) < inactiveTransparencyTokens)
            end
        end

      

       
        if getgenv().Kiet then 
            pcall(function() 
                game.CoreGui["SeaHub[Main]"]:Destroy()
                getgenv().Kiet=false
            end)
        end
        getgenv().Kiet=true
        getgenv().UI_Loaded = true

local Library = {}
local dropisbusy = false
local TweenService = game:GetService('TweenService')

local function tweentran(obj,style,tran_value)
	if string.lower(style) == 'bg' then
		TweenService:Create(obj,TweenInfo.new(.25),{BackgroundTransparency = tran_value}):Play()
	elseif string.lower(style) == 'img' then 
		TweenService:Create(obj,TweenInfo.new(.25),{ImageTransparency = tran_value}):Play()
	elseif string.lower(style) == 'text' then 
		TweenService:Create(obj,TweenInfo.new(.25),{TextTransparency = tran_value}):Play()
	end
end

Library.NotiUI = Instance.new("ScreenGui")
Library.NotiUI.Name = 'SeaHub[Noti]'

Library.NotiUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
if is_synapse_function then
	syn.protect_gui(Library.NotiUI)
	Library.NotiUI.Parent = game:GetService('CoreGui')
else 
	Library.NotiUI.Parent = game:GetService('CoreGui')
end

--Button Effect
function Library.addbuttoneffect()
	local mouse = game:GetService("Players").LocalPlayer:GetMouse();
	local buoi = Drawing.new("Circle")
	buoi.Visible = true
	buoi.Radius = 10
	buoi.Filled = true
	buoi.Color = getgenv().CustomUI and getgenv().CustomUI.Misc.ClickEffect or Color3.fromRGB(255, 255, 255)
	buoi.Position = Vector2.new(mouse.X, mouse.Y + 35)


	local BuoiFolder = Instance.new('Folder')
	BuoiFolder.Parent = Library.gui
	BuoiFolder.Name = 'Game nhu buoi'

	local a = Instance.new('NumberValue')
	a.Value = 10
	a.Parent = BuoiFolder
	a.Name = 'Rua nhu buoi'

	local b = Instance.new('NumberValue')
	b.Value = 1
	b.Parent = BuoiFolder
	b.Name = 'Rua nhu buoi 2'

	TweenService:Create(a,TweenInfo.new(.25),{Value = 30}):Play()
	TweenService:Create(b,TweenInfo.new(.25),{Value = 0}):Play()


	a:GetPropertyChangedSignal('Value'):Connect(function()
		buoi.Radius = a.Value
	end)


	b:GetPropertyChangedSignal('Value'):Connect(function()
		buoi.Transparency = b.Value
	end)

	wait(.5)
	BuoiFolder:Destroy()
end

function Library.DestroyUI()
	getgenv().UI_Loaded = false
	Library.gui:Destroy()
end

local NotiContainer = Instance.new("Frame")
local NotiContainerListLayout = Instance.new("UIListLayout")

NotiContainer.Name = "Container"
NotiContainer.Parent = Library.NotiUI
NotiContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotiContainer.BackgroundTransparency = 1.000
NotiContainer.Size = UDim2.new(1, -10, 1, -10)

NotiContainerListLayout.Parent = NotiContainer
NotiContainerListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
NotiContainerListLayout.SortOrder = Enum.SortOrder.LayoutOrder
NotiContainerListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
NotiContainerListLayout.Padding = UDim.new(0, 5)

function Library.AddNoti(Setting)

	local TitleText = Setting.Title or 'Sea Hub Premium'
	local Text = Setting.Text or 'None'
	local Time = Setting.Time or 1


	local connn = Instance.new("Frame")
	local con = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local line = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local label = Instance.new("TextLabel")
	local Icon = Instance.new("ImageLabel")


	connn.Name = "connn"
	connn.Parent = NotiContainer
	connn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	connn.BackgroundTransparency = 1.000
	connn.Size = UDim2.new(0, 400, 0, 70)

	con.Name = "con"
	con.Parent = connn
	con.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Notification.Background or Color3.fromRGB(67, 67, 67)
	con.BackgroundTransparency = 1.000
	con.BorderSizePixel = 0
	con.Size = UDim2.new(0, 400, 1, 0)

	local Top = Instance.new("ImageLabel")
	Top.Name = "Top"
	Top.Parent = con
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.Position = UDim2.new(0, 0, 0, 0)
	Top.Size = UDim2.new(1, 0, 0, 30)
	Top.Image = "rbxassetid://4550094255"
	Top.ScaleType = Enum.ScaleType.Slice
	Top.ImageColor3 = getgenv().CustomUI and getgenv().CustomUI.Notification.TopBackground or Color3.fromRGB(42, 42, 42)
	Top.SliceCenter = Rect.new(4, 4, 296, 296)

	UICorner.Parent = con

	line.Name = "line"
	line.Parent = con
	line.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Notification.CooldownLine or Color3.fromRGB(108, 167, 255)
	line.BackgroundTransparency = 1.000
	line.BorderSizePixel = 0
	line.Position = UDim2.new(0, 2, 1, -6)
	line.Size = UDim2.new(1, -4, 0, 6)

	UICorner_2.Parent = line

	label.Name = "label"
	label.Parent = con
	label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	label.BackgroundTransparency = 1.000
	label.Position = UDim2.new(0, 5, 0, 38)
	label.Size = UDim2.new(1, -5, 1, -41)
	label.Font = Enum.Font.GothamBold
	label.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Notification.BackgroundText or Color3.fromRGB(255, 255, 255)
	label.TextSize = 14.000
	label.TextTransparency = 1.000
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.TextYAlignment = Enum.TextYAlignment.Top
	label.RichText = true

	Icon.Name = "Icon"
	Icon.Parent = con
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.Position = UDim2.new(0, 5, 0, 0)
	Icon.Size = UDim2.new(0, 25, 0, 25)
	Icon.Image = getgenv().CustomUI and getgenv().CustomUI.Notification.Logo or "rbxassetid://6248942117"
	Icon.ImageTransparency = 1.000

	Title.Name = "Title"
	Title.Parent = con
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 35, 0, 4)
	Title.Size = UDim2.new(0, 200, 0, 25)
	Title.Font = Enum.Font.GothamBold
	Title.Text = TitleText
	Title.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Notification.TopBackgroundText or Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextTransparency = 1.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	
		label.Text = tostring(Text)

		tweentran(con,'bg',0)
		tweentran(Icon,'img',0)
		tweentran(Title,'text',0)
		tweentran(line,'bg',0)
		tweentran(label,'text',0)

		local close = TweenService:Create(line,TweenInfo.new(Time),{Size = UDim2.new(0, 0,0, 6)})

		close:Play()

		close.Completed:Connect(function()
		TweenService:Create(con,TweenInfo.new(0.5),{Position = UDim2.new(0, 0,0, NotiContainer.AbsoluteSize.Y)}):Play()
			wait(0.5)
			connn:Destroy()
		end)
end

function Library.AddNotiQuestion(Setting,Callback)

	local TitleText = Setting.Title or 'Sea Hub Premium'
	local Text = Setting.Text or 'None'
	local Time = Setting.Time or 120

	local YesText = Setting.Yes or 'Yes'
	local NoText = Setting.No or 'No'

	local asd = Instance.new("Frame")
	local con = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local line = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local label = Instance.new("TextLabel")
	local no = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local notext = Instance.new("TextLabel")
	local nobutton = Instance.new("TextButton")
	local yes = Instance.new("Frame")
	local yesimg = Instance.new("ImageLabel")
	local UICorner_4 = Instance.new("UICorner")
	local yesbutton = Instance.new("TextButton")
	local Icon = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")

	local YesLabel = Instance.new('TextLabel')

	local NoLabel = Instance.new('TextLabel')

	asd.Name = Text..'Noti'
	asd.Parent = NotiContainer
	asd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	asd.BackgroundTransparency = 1.000
	asd.Size = UDim2.new(0, 400, 0, 100)

	con.Name = "con"
	con.Parent = asd
	con.BackgroundColor3 = getgenv().CustomUI.Notification.Background or Color3.fromRGB(67, 67, 67)
	con.BackgroundTransparency = 1.000
	con.BorderSizePixel = 0
	con.Size = UDim2.new(0, 400, 1, 0)

	local Top = Instance.new("ImageLabel")
	Top.Name = "Top"
	Top.Parent = con
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.Position = UDim2.new(0, 0, 0, 0)
	Top.Size = UDim2.new(1, 0, 0, 30)
	Top.Image = "rbxassetid://4550094255"
	Top.ScaleType = Enum.ScaleType.Slice
	Top.ImageColor3 = getgenv().CustomUI.Notification.TopBackground or Color3.fromRGB(42, 42, 42)
	Top.SliceCenter = Rect.new(4, 4, 296, 296)

	UICorner.Parent = con

	line.Name = "line"
	line.Parent = con
	line.BackgroundColor3 = getgenv().CustomUI.Notification.CooldownLine or Color3.fromRGB(108, 167, 255)
	line.BackgroundTransparency = 1.000
	line.BorderSizePixel = 0
	line.Position = UDim2.new(0, 2, 1, -6)
	line.Size = UDim2.new(1, -4, 0, 6)

	UICorner_2.Parent = line

	label.Name = "label"
	label.Parent = con
	label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	label.BackgroundTransparency = 1.000
	label.Position = UDim2.new(0, 5, 0, 38)
	label.Size = UDim2.new(1, -5, 1, -60)
	label.Font = Enum.Font.GothamBold
	label.TextColor3 = getgenv().CustomUI.Notification.BackgroundText or Color3.fromRGB(255, 255, 255)
	label.TextSize = 14.000
	label.TextTransparency = 1.000
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.TextYAlignment = Enum.TextYAlignment.Top
	label.RichText = true

	no.Name = "no"
	no.Parent = con
	no.BackgroundColor3 = getgenv().CustomUI.Notification.QuestionBackground or Color3.fromRGB(42, 42, 42)
	no.BackgroundTransparency = 1.000
	no.Position = UDim2.new(0, 110, 0, 70)
	no.Size = UDim2.new(0, 100, 0, 20)

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = no

	notext.Name = "notext"
	notext.Parent = no
	notext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	notext.BackgroundTransparency = 1.000
	notext.Position = UDim2.new(0, 0, 0, -1)
	notext.Size = UDim2.new(0, 20, 0, 20)
	notext.Font = Enum.Font.GothamSemibold
	notext.Text = "x"
	notext.TextColor3 = getgenv().CustomUI.Notification.QuestionNoSymbol or Color3.fromRGB(255, 80, 83)
	notext.TextScaled = true
	notext.TextSize = 14.000
	notext.TextTransparency = 1.000
	notext.TextWrapped = true

	NoLabel.Name = "NoLabel"
	NoLabel.Parent = no
	NoLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NoLabel.BackgroundTransparency = 1.000
	NoLabel.Position = UDim2.new(0, 30, 0, 0)
	NoLabel.Size = UDim2.new(1, -30, 1, 0)
	NoLabel.Font = Enum.Font.GothamBold
	NoLabel.Text = NoText
	NoLabel.TextColor3 = getgenv().CustomUI.Notification.QuestionText or Color3.fromRGB(255, 255, 255)
	NoLabel.TextSize = 14.000
	NoLabel.TextTransparency = 0
	NoLabel.TextWrapped = true
	NoLabel.TextXAlignment = Enum.TextXAlignment.Left

	nobutton.Name = "nobutton"
	nobutton.Parent = no
	nobutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	nobutton.BackgroundTransparency = 1.000
	nobutton.Size = UDim2.new(1, 0, 1, 0)
	nobutton.Font = Enum.Font.SourceSans
	nobutton.Text = ""
	nobutton.TextColor3 = Color3.fromRGB(0, 0, 0)
	nobutton.TextSize = 14.000

	yes.Name = "yes"
	yes.Parent = con
	yes.BackgroundColor3 = getgenv().CustomUI.Notification.QuestionBackground or Color3.fromRGB(42, 42, 42)
	yes.BackgroundTransparency = 1.000
	yes.BorderSizePixel = 0
	yes.Position = UDim2.new(0, 5, 0, 70)
	yes.Size = UDim2.new(0, 100, 0, 20)

	yesimg.Name = "yesimg"
	yesimg.Parent = yes
	yesimg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	yesimg.BackgroundTransparency = 1.000
	yesimg.Position = UDim2.new(0, 3, 0, 0)
	yesimg.Size = UDim2.new(0, 20, 0, 20)
	yesimg.Image = "rbxassetid://4555411759"
	yesimg.ImageColor3 = getgenv().CustomUI.Notification.QuestionYesSymbol or Color3.fromRGB(85, 255, 127)
	yesimg.ImageTransparency = 1.000

	YesLabel.Name = "YesLabel"
	YesLabel.Parent = yes
	YesLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	YesLabel.BackgroundTransparency = 1.000
	YesLabel.Position = UDim2.new(0, 30, 0, 0)
	YesLabel.Size = UDim2.new(1, -30, 1, 0)
	YesLabel.Font = Enum.Font.GothamBold
	YesLabel.Text = YesText
	YesLabel.TextColor3 = getgenv().CustomUI.Notification.QuestionText or Color3.fromRGB(255, 255, 255)
	YesLabel.TextSize = 14.000
	YesLabel.TextTransparency = 0
	YesLabel.TextWrapped = true
	YesLabel.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = yes

	yesbutton.Name = "yesbutton"
	yesbutton.Parent = yes
	yesbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	yesbutton.BackgroundTransparency = 1.000
	yesbutton.Size = UDim2.new(1, 0, 1, 0)
	yesbutton.Font = Enum.Font.SourceSans
	yesbutton.Text = ""
	yesbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
	yesbutton.TextSize = 14.000

	Icon.Name = "Icon"
	Icon.Parent = con
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.Position = UDim2.new(0, 5, 0, 0)
	Icon.Size = UDim2.new(0, 25, 0, 25)
	Icon.Image = getgenv().CustomUI and getgenv().CustomUI.Notification.Logo or "rbxassetid://6248942117"
	Icon.ImageTransparency = 1.000

	Title.Name = "Title"
	Title.Parent = con
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 35, 0, 4)
	Title.Size = UDim2.new(0, 200, 0, 25)
	Title.Font = Enum.Font.GothamBold
	Title.Text = TitleText
	Title.TextColor3 = getgenv().CustomUI.Notification.TopBackgroundText or Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextTransparency = 1.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	label.Text = Text

	tweentran(con,'bg',0)
	tweentran(Icon,'img',0)
	tweentran(Title,'text',0)
	tweentran(line,'bg',0)
	tweentran(label,'text',0)
	tweentran(yes,'bg',0)
	tweentran(yesimg,'img',0)
	tweentran(no,'bg',0)
	tweentran(notext,'text',0)
	
	local close = TweenService:Create(line,TweenInfo.new(Time),{Size = UDim2.new(0, 0,0, 6)})

	close:Play()
	
	local function close_noti()
		TweenService:Create(con,TweenInfo.new(0.5),{Position = UDim2.new(0, 0,0, NotiContainer.AbsoluteSize.Y)}):Play()
		wait(0.02)
		asd:Destroy()
	end

	close.Completed:Connect(function()
		close_noti()
	end)
	
	yesbutton.MouseButton1Click:Connect(function()
		close_noti()
		wait(.5)
		Callback()
	end)
	
	nobutton.MouseButton1Click:Connect(function()
		close_noti()
	end)

	nobutton.MouseButton1Click:Connect(function()
		Library.addbuttoneffect()
	end)

	yesbutton.MouseButton1Click:Connect(function()
		Library.addbuttoneffect()
	end)
end

function Library.CreateMain(MainName)
    --Drag function, by Ririchi / Inori
    local UIS = game:GetService("UserInputService");
	local Heartbeat = game:GetService("RunService").Heartbeat;

	local dragger = {};

	do
		local mouse        = game:GetService("Players").LocalPlayer:GetMouse();
		local inputService = game:GetService('UserInputService');
		local heartbeat    = game:GetService("RunService").Heartbeat;

		function dragger.new(frame, secondlol)
			frame.Active = true;
			secondlol.Active = true;

			secondlol.MouseLeave:connect(function()
				IsInFrame = false;
			end)

			secondlol.MouseEnter:connect(function()
				IsInFrame = true;
			end)

			local input = secondlol.InputBegan:connect(function(key)
				if key.UserInputType == Enum.UserInputType.MouseButton1 and IsInFrame then
					local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
					while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						pcall(function()
							frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.01, true);
						end)
					end
				end
			end)
		end
    end


	--Create ScreenUI
	Library.gui = Instance.new("ScreenGui")
	Library.gui.Parent = game:WaitForChild('CoreGui')
	Library.gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Library.gui.Name = 'SeaHub[Main]'
	Library.toggled = true
	if is_synapse_function then 
		syn.protect_gui(Library.gui)
		Library.gui.Parent = game:GetService('CoreGui')
	else
		Library.gui.Parent = game:GetService('CoreGui')
	end

	--Toggle UI Function
	function  Library.ToggledUI()
		Library.toggled = not Library.toggled
		Library.gui.Enabled = Library.toggled
	end

	local Top = Instance.new("ImageLabel")
	local MainContainer = Instance.new("Frame")
	local MainContainer_Corner = Instance.new("UICorner")
	local TopContainer = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local IconRua = Instance.new("ImageLabel")


	Top.Name = "Top"
	Top.Parent = Library.gui
	Top.AnchorPoint = Vector2.new(0.5, 0.5)
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.Position = UDim2.new(0.5, 0, 0.3, 0)
	Top.Size = UDim2.new(0, 700, 0, 25)
	Top.Image = "rbxassetid://4550094255"
	Top.ScaleType = Enum.ScaleType.Slice
	Top.SliceCenter = Rect.new(4, 4, 296, 296)

	dragger.new(Top,Top)

	MainContainer.Name = "MainContainer"
	MainContainer.Parent = Top
	MainContainer.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.Background or Color3.fromRGB(67, 67, 67)
	MainContainer.BorderSizePixel = 0
	MainContainer.Position = UDim2.new(0, 0, -0.0140002444, 0)
	MainContainer.Size = UDim2.new(1, 0, 0, 400)

	MainContainer_Corner.CornerRadius = UDim.new(0, 4)
	MainContainer_Corner.Name = "MainContainer_Corner"
	MainContainer_Corner.Parent = MainContainer

	TopContainer.Name = "TopContainer"
	TopContainer.Parent = MainContainer
	TopContainer.AnchorPoint = Vector2.new(0.5, 0)
	TopContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopContainer.BackgroundTransparency = 1.000
	TopContainer.Position = UDim2.new(0.5, 0, 0, 0)
	TopContainer.Size = UDim2.new(0, 700, 0, 25)
	TopContainer.Image = "rbxassetid://4550094255"
	TopContainer.ImageColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.TopBackground or Color3.fromRGB(42, 42, 42)
	TopContainer.ScaleType = Enum.ScaleType.Slice
	TopContainer.SliceCenter = Rect.new(4, 4, 296, 296)

	Title.Name = "Title"
	Title.Parent = TopContainer
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 35, 0, 0)
	Title.Size = UDim2.new(1, -35, 1, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = MainName
	Title.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.TopBackgroundText or Color3.fromRGB(255, 255, 255)
	Title.TextSize = 20.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	IconRua.Name = "IconRua"
	IconRua.Parent = TopContainer
	IconRua.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IconRua.BackgroundTransparency = 1.000
	IconRua.Position = UDim2.new(0, 5, 0, 0)
	IconRua.Size = UDim2.new(0, 20, 0, 20)
	IconRua.Image = getgenv().CustomUI and getgenv().CustomUI.UI.Logo or "rbxassetid://6248942117"

	
	local PageContainers = Instance.new("Frame")
	local UIPageLayout = Instance.new("UIPageLayout")

	PageContainers.Name = "PageContainers"
	PageContainers.Parent = MainContainer
	PageContainers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PageContainers.BackgroundTransparency = 1.000
	PageContainers.ClipsDescendants = true
	PageContainers.Position = UDim2.new(0, 4, 0, 65)
	PageContainers.Size = UDim2.new(1, -10, 0, 330)

	UIPageLayout.Parent = PageContainers
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.Padding = UDim.new(0, 10)
	UIPageLayout.TweenTime = 0.500

	local Page_Section = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Page_Container = Instance.new("ScrollingFrame")
	local PageUI_ListLayout = Instance.new("UIListLayout")

	Page_Section.Name = "Page_Section"
	Page_Section.Parent = MainContainer
	Page_Section.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.PageBackground or Color3.fromRGB(42, 42, 42)
	Page_Section.BorderSizePixel = 0
	Page_Section.Position = UDim2.new(0, 4, 0, 30)
	Page_Section.Size = UDim2.new(1, -10, 0, 30)

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Page_Section

	Page_Container.Name = "Page_Container"
	Page_Container.Parent = Page_Section
	Page_Container.Active = true
	Page_Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Page_Container.BackgroundTransparency = 1.000
	Page_Container.BorderSizePixel = 0
	Page_Container.Position = UDim2.new(0, 5, 0, 5)
	Page_Container.Size = UDim2.new(1, -10, 1, -5)
	Page_Container.BottomImage = ""
	Page_Container.CanvasSize = UDim2.new(0, 700, 0, 0)
	Page_Container.ScrollBarThickness = 0
	Page_Container.TopImage = ""

	PageUI_ListLayout.Name = "Tab_ListLayout"
	PageUI_ListLayout.Parent = Page_Container
	PageUI_ListLayout.FillDirection = Enum.FillDirection.Horizontal
	PageUI_ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	PageUI_ListLayout.Padding = UDim.new(0, 5)

	PageUI_ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		local absoluteSize = PageUI_ListLayout.AbsoluteContentSize
		Page_Container.CanvasSize = UDim2.new(0,absoluteSize.X + 10,0,0)
	end)

	local main_function = {}
	local LayoutOrder = - 1

	function main_function.AddPage(PageName)

		LayoutOrder = LayoutOrder +1;

		local PageFrame = Instance.new("Frame")
		local Button = Instance.new("TextButton")


		PageFrame.Name = PageName.."PageFrame"
		PageFrame.Parent = Page_Container
		PageFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PageFrame.BackgroundTransparency = 1.000
		PageFrame.Size = UDim2.new(0, 85, 0, 20)

		Button.Name = "Button"
		Button.Parent = PageFrame
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.Size = UDim2.new(1, 0, 1, 0)
		Button.Font = Enum.Font.GothamBold
		Button.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.PageBackgroundText or Color3.fromRGB(124, 124, 124)
		Button.TextSize = 14.000
		Button.Text = PageName

		PageFrame.Size = UDim2.new(0, 10 + Button.TextBounds.X, 0, 20)

		local PageObject = Instance.new("ScrollingFrame")
		local UICorner = Instance.new("UICorner")
		local InObject = Instance.new("Frame")
		local Left = Instance.new("Frame")
		local Right = Instance.new("Frame")
		local Page_UIListLayout = Instance.new("UIListLayout")


		PageObject.Name = PageName.."_PageObject"
		PageObject.Parent = PageContainers
		PageObject.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.PageBackground or Color3.fromRGB(42, 42, 42)
		PageObject.BorderSizePixel = 0
		PageObject.Position = UDim2.new(0, 4, 0, 65)
		PageObject.Selectable = false
		PageObject.Size = UDim2.new(1, 0, 1, 0)
		PageObject.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		PageObject.CanvasSize = UDim2.new(0, 0, 0, 0)
		PageObject.ScrollBarThickness = 5
		PageObject.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		PageObject.LayoutOrder = LayoutOrder

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = PageObject

		InObject.Name = "InObject"
		InObject.Parent = PageObject
		InObject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		InObject.BackgroundTransparency = 1.000
		InObject.Position = UDim2.new(0, 5, 0, 5)
		InObject.Size = UDim2.new(1, -10, 1, -10)

		Left.Name = "Left"
		Left.Parent = InObject
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.Size = UDim2.new(0.497999996, 0, 1, 0)

		local LeftListLayout = Instance.new("UIListLayout")

		LeftListLayout.Parent = Left
		LeftListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		LeftListLayout.Padding = UDim.new(0, 5)

		LeftListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			local absoluteSize = LeftListLayout.AbsoluteContentSize
			Left.Size = UDim2.new(0.497999996,0,0,absoluteSize.Y + 10)
		end)

		Right.Name = "Right"
		Right.Parent = InObject
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.Size = UDim2.new(0.497999996, 0, 0, 0)

		local RightListLayout = Instance.new("UIListLayout")

		RightListLayout.Parent = Right
		RightListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		RightListLayout.Padding = UDim.new(0, 5)

		RightListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			local absoluteSize = RightListLayout.AbsoluteContentSize
			Right.Size = UDim2.new(0.497999996,0,0,absoluteSize.Y + 10)
		end)

		Page_UIListLayout.Parent = InObject
		Page_UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		Page_UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		Page_UIListLayout.Padding = UDim.new(0, 4)

		
		Page_UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			local absoluteSize = Page_UIListLayout.AbsoluteContentSize
			PageObject.CanvasSize = UDim2.new(0,0,0,absoluteSize.Y)
		end)

		for i,v in pairs(Page_Container:GetChildren()) do
			if not (v:IsA('UIListLayout')) then
				if i == 2 then 
					v.Button.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.PageBackgroundSelectedText or Color3.fromRGB(255, 255, 255)
				end
			end
		end

		Button.MouseButton1Click:Connect(function()
			if PageFrame.Name == PageName.."PageFrame" then

				for i,v in pairs(Page_Container:GetChildren()) do
					if not (v:IsA('UIListLayout')) then
						if v.Name == PageName.."PageFrame" then 
							TweenService:Create(v.Button,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{TextColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.PageBackgroundSelectedText or Color3.fromRGB(255, 255, 255)}):Play()
						else 
							TweenService:Create(v.Button,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{TextColor3 = getgenv().CustomUI and getgenv().CustomUI.UI.PageBackgroundText or Color3.fromRGB(124, 124, 124)}):Play()
						end
					end 
				end

				for i,v in pairs(PageContainers:GetChildren()) do
					if not (v:IsA('UIPageLayout')) and not (v:IsA('UICorner')) then
						if v.Name == PageName.."_PageObject" then
							UIPageLayout:JumpToIndex(PageObject.LayoutOrder)
						end
					end
				end
			end
		end)

			local page_function = {}
			local countsec = 0
			local section_parent = Left
			function page_function.AddSection(SectionName)
				countsec = countsec + 1

				if countsec % 2 == 1 then section_parent = Left else section_parent = Right end

				local Section_ = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local SectionListLayout = Instance.new("UIListLayout")
				local TopSection = Instance.new("Frame")
				local SectionTitle = Instance.new("TextLabel")


				Section_.Name = "Section_"..SectionName
				Section_.Parent = section_parent
				Section_.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Section.SectionBackground or Color3.fromRGB(63, 63, 63)
				Section_.Size = UDim2.new(1, 0, 0, 100)

				UICorner.Parent = Section_

				SectionListLayout.Name = "SectionListLayout"
				SectionListLayout.Parent = Section_
				SectionListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				SectionListLayout.Padding = UDim.new(0, 5)

				SectionListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					local absoluteSize = SectionListLayout.AbsoluteContentSize
					Section_.Size = UDim2.new(1,0,0,absoluteSize.Y+10)
				end)

				TopSection.Name = "TopSection"
				TopSection.Parent = Section_
				TopSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TopSection.BackgroundTransparency = 1.000
				TopSection.Size = UDim2.new(1, 0, 0, 25)

				SectionTitle.Name = "SectionTitle"
				SectionTitle.Parent = TopSection
				SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.BackgroundTransparency = 1.000
				SectionTitle.Position = UDim2.new(0, 10, 0, 0)
				SectionTitle.Size = UDim2.new(1, -10, 1, 0)
				SectionTitle.Font = Enum.Font.GothamBold
				SectionTitle.Text = SectionName
				SectionTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Section.SectionBackgroundText or Color3.fromRGB(108, 167, 255)
				SectionTitle.TextSize = 16.000
				SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
				SectionTitle.RichText = true

				local section_function = {}

					function section_function.AddToggle(ToggleName,Setting,Callback)

						local DefaultValue = Setting.DefaultValue or false

						local Callback = Callback or function() end

						local InformationText = Setting.Information or 'Rua bi gay'

						if DefaultValue and Callback then Callback(DefaultValue) end

						local ToggleFrame = Instance.new("Frame")
						local ToggleInFrame = Instance.new("Frame")
						local ToggleButton = Instance.new("TextButton")
						local ToggleTitle = Instance.new("TextLabel")
						local ToggleBox = Instance.new("Frame")
						local Box = Instance.new("Frame")
						local check = Instance.new("ImageLabel")
						local InformationImage = Instance.new("ImageLabel")
						local InformationButton = Instance.new("TextButton")
						local InfromationFrame = Instance.new("Frame")
						local InformationLabel = Instance.new("TextLabel")
						local UICorner = Instance.new("UICorner")


						ToggleFrame.Name = ToggleName.."ToggleFrame"
						ToggleFrame.Parent = Section_
						ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ToggleFrame.BackgroundTransparency = 1.000
						ToggleFrame.ClipsDescendants = true
						ToggleFrame.Position = UDim2.new(0, 0, 0.300000012, 0)
						ToggleFrame.Size = UDim2.new(1, 0, 0, 30)

						ToggleInFrame.Name = "ToggleInFrame"
						ToggleInFrame.Parent = ToggleFrame
						ToggleInFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ToggleInFrame.BackgroundTransparency = 1.000
						ToggleInFrame.Size = UDim2.new(1, 0, 0, 30)

						ToggleButton.Name = "ToggleButton"
						ToggleButton.Parent = ToggleInFrame
						ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ToggleButton.BackgroundTransparency = 1.000
						ToggleButton.Size = UDim2.new(1, 0, 1, 0)
						ToggleButton.Font = Enum.Font.GothamBold
						ToggleButton.Text = ""
						ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
						ToggleButton.TextSize = 14.000

						ToggleTitle.Name = "ToggleTitle"
						ToggleTitle.Parent = ToggleButton
						ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ToggleTitle.BackgroundTransparency = 1.000
						ToggleTitle.Position = UDim2.new(0, 40, 0, 0)
						ToggleTitle.Size = UDim2.new(1, -40, 1, 0)
						ToggleTitle.Font = Enum.Font.GothamBold
						ToggleTitle.Text = ToggleName
						ToggleTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Toggle.ToggleText or Color3.fromRGB(255, 255, 255)
						ToggleTitle.TextSize = 14.000
						ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

						ToggleBox.Name = "ToggleBox"
						ToggleBox.Parent = ToggleInFrame
						ToggleBox.AnchorPoint = Vector2.new(0, 0.5)
						ToggleBox.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Toggle.ToggleBoxBackground or Color3.fromRGB(42, 42, 42)
						ToggleBox.BorderSizePixel = 0
						ToggleBox.Position = UDim2.new(0, 10, 0.5, 0)
						ToggleBox.Size = UDim2.new(0, 21, 0, 21)

						Box.Name = "Box"
						Box.Parent = ToggleBox
						Box.AnchorPoint = Vector2.new(0.5, 0.5)
						Box.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Toggle.ToggleBox or Color3.fromRGB(108, 167, 255)
						Box.BackgroundTransparency = 1.000
						Box.BorderSizePixel = 0
						Box.Position = UDim2.new(0.5, 0, 0.5, 0)
						Box.Size = UDim2.new(1, -6, 1, -6)

						check.Name = "check"
						check.Parent = Box
						check.AnchorPoint = Vector2.new(0.5, 0.5)
						check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						check.BackgroundTransparency = 1.000
						check.Position = UDim2.new(0.5, 0, 0.5, 0)
						check.Size = UDim2.new(1, 2, 1, 2)
						check.Image = getgenv().CustomUI and getgenv().CustomUI.Toggle.ToggleCheckLogo or "rbxassetid://4555411759"
						check.ImageTransparency = 1.000
						
						if DefaultValue then 
							local BgTrans = DefaultValue and 0 or 1 
							local ImgTrans = DefaultValue and 0 or 1
							TweenService:Create(Box,TweenInfo.new(.5,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{BackgroundTransparency = BgTrans}):Play()
							TweenService:Create(check,TweenInfo.new(.5,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{ImageTransparency = BgTrans}):Play()
							if Callback then 
								Callback(DefaultValue)
							end
						end

						ToggleButton.MouseButton1Click:Connect(function()
							Library.addbuttoneffect()
						end)

						ToggleButton.MouseButton1Click:Connect(function()
							DefaultValue = not DefaultValue
							local BgTrans = DefaultValue and 0 or 1 
							local ImgTrans = DefaultValue and 0 or 1
							TweenService:Create(Box,TweenInfo.new(.5,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{BackgroundTransparency = BgTrans}):Play()
							TweenService:Create(check,TweenInfo.new(.5,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{ImageTransparency = BgTrans}):Play()
							if Callback then Callback(DefaultValue) end
						end)

						local toggle_function = {}

						function toggle_function.SetStage(Stage)
							DefaultValue = Stage
							local BgTrans = DefaultValue and 0 or 1 
							local ImgTrans = DefaultValue and 0 or 1
							TweenService:Create(Box,TweenInfo.new(.5,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{BackgroundTransparency = BgTrans}):Play()
							TweenService:Create(check,TweenInfo.new(.5,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{ImageTransparency = BgTrans}):Play()
							if Callback then Callback(DefaultValue) end
						end

						return toggle_function

					end

					function section_function.AddLabel(LabelName,Setting)
						local TextColor = Color3.fromRGB(255,255,255)
						local BGColor = Color3.fromRGB(42, 42, 42)
						local TextTrans = 0 
						local BgTrans = 0

						if Setting then 
							TextColor = Setting.TextColor or Color3.fromRGB(255,255,255)
							BGColor = Setting.BGColor or Color3.fromRGB(42, 42, 42)
							TextTrans = Setting.TextTrans or 0
							BgTrans = Setting.BgTrans or 0
						end

						local LabelFrame = Instance.new("Frame")
						local Frame = Instance.new("Frame")
						local LabelText = Instance.new("TextLabel")
						local UICorner = Instance.new("UICorner")

						LabelFrame.Name = LabelName.."LabelFrame"
						LabelFrame.Parent = Section_
						LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						LabelFrame.BackgroundTransparency = 1.000
						LabelFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
						LabelFrame.Size = UDim2.new(1, 0, 0, 25)

						Frame.Parent = LabelFrame
						Frame.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Label.LabelBackground or Color3.fromRGB(42, 42, 42)
						Frame.Position = UDim2.new(0, 10, 0, 0)
						Frame.Size = UDim2.new(1, -20, 1, 0)
						Frame.BackgroundTransparency = BgTrans

						LabelText.Name = "LabelText"
						LabelText.Parent = Frame
						LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						LabelText.BackgroundTransparency = 1.000
						LabelText.Position = UDim2.new(0, 10, 0, 0)
						LabelText.Size = UDim2.new(1, -20, 1, 0)
						LabelText.Font = Enum.Font.GothamBold
						LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
						LabelText.TextSize = 14.000
						LabelText.TextXAlignment = Enum.TextXAlignment.Left
						LabelText.Text = LabelName
						LabelText.TextTransparency = TextTrans

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = Frame

						local label_function = {}

						function label_function.SetText(Text)
							LabelText.Text = Text 
						end

						function label_function.SetTextColor(Color)
							LabelText.TextColor3 = Color 
						end 

						function label_function.SetBGColor(Color)
							LabelFrame.BackgroundColor3 = Color
						end


						return label_function

					end

					function section_function.AddButton(ButtonName,Callback)

						local Callback = Callback or function() end

						local ButtonFrame = Instance.new("Frame")
						local Frame = Instance.new("Frame")
						local ButtonTitle = Instance.new("TextLabel")
						local UICorner = Instance.new("UICorner")
						local Button = Instance.new("TextButton")

						ButtonFrame.Name = ButtonName.."ButtonFrame"
						ButtonFrame.Parent = Section_
						ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ButtonFrame.BackgroundTransparency = 1.000
						ButtonFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
						ButtonFrame.Size = UDim2.new(1, 0, 0, 25)

						Frame.Parent = ButtonFrame
						Frame.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Button.ButtonBackground or Color3.fromRGB(108, 167, 255)
						Frame.Position = UDim2.new(0, 10, 0, 0)
						Frame.Size = UDim2.new(1, -20, 1, 0)

						ButtonTitle.Name = "ButtonTitle"
						ButtonTitle.Parent = Frame
						ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ButtonTitle.BackgroundTransparency = 1.000
						ButtonTitle.Position = UDim2.new(0, 10, 0, 0)
						ButtonTitle.Size = UDim2.new(1, -20, 1, 0)
						ButtonTitle.Font = Enum.Font.GothamBold
						ButtonTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Button.ButtonBackgroundText or Color3.fromRGB(255, 255, 255)
						ButtonTitle.TextSize = 14.000
						ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left
						ButtonTitle.Text = ButtonName

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = Frame

						Button.Name = "Button"
						Button.Parent = ButtonFrame
						Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDim2.new(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 14.000

						Button.MouseButton1Click:Connect(function()
							Library.addbuttoneffect()
						end)

						Button.MouseButton1Click:Connect(function()
							if Callback then Callback() end
						end)

					end

					function section_function.AddTextBox(TextBoxName,Setting,Callback)
						local Number_Only = Setting.Number or false 

						local DefaultVal = Setting.DefaultValue or '' 

						local Placeholder = Setting.Placeholder or TextBoxName

						local Callback = Callback or function() end

						local TextBoxFrame = Instance.new("Frame")
						local Frame = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local TextBox = Instance.new("TextBox")
						local BoxTitle = Instance.new("TextLabel")


						TextBoxFrame.Name = TextBoxName.."TextBoxFrame"
						TextBoxFrame.Parent = Section_
						TextBoxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextBoxFrame.BackgroundTransparency = 1.000
						TextBoxFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
						TextBoxFrame.Size = UDim2.new(1, 0, 0, 60)

						Frame.Parent = TextBoxFrame
						Frame.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.TextBox.TextBoxBackground or Color3.fromRGB(108, 167, 255)
						Frame.Position = UDim2.new(0, 10, 0, 25)
						Frame.Size = UDim2.new(1, -20, 0, 25)

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = Frame

						TextBox.Parent = Frame
						TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextBox.BackgroundTransparency = 1.000
						TextBox.Position = UDim2.new(0, 10, 0, 0)
						TextBox.Size = UDim2.new(1, -20, 1, 0)
						TextBox.Font = Enum.Font.GothamBold
						TextBox.PlaceholderColor3 = getgenv().CustomUI and getgenv().CustomUI.TextBox.TextBoxBackgroundText or Color3.fromRGB(221, 221, 221)
						TextBox.Text = ""
						TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextBox.TextSize = 14.000
						TextBox.TextXAlignment = Enum.TextXAlignment.Left
						TextBox.PlaceholderText = Placeholder

						BoxTitle.Name = "BoxTitle"
						BoxTitle.Parent = TextBoxFrame
						BoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						BoxTitle.BackgroundTransparency = 1.000
						BoxTitle.Position = UDim2.new(0, 20, 0, 0)
						BoxTitle.Size = UDim2.new(1, -40, 0, 25)
						BoxTitle.Font = Enum.Font.GothamBold
						BoxTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.TextBox.TextBoxText or Color3.fromRGB(255, 255, 255)
						BoxTitle.TextSize = 14.000
						BoxTitle.TextXAlignment = Enum.TextXAlignment.Left
						BoxTitle.Text = TextBoxName

						local valuecall
						local isbucac = true

						TextBox.Focused:Connect(function() 
						
							Library.addbuttoneffect()

						end)

						TextBox:GetPropertyChangedSignal("Text"):Connect(function()
							if string.len(TextBox.Text) > 45 then
								if isbucac then 
									isbucac = false
									valuecall = TextBox.Text
									game:GetService("RunService").Heartbeat:Wait()
									TextBox.Text = string.match(TextBox.Text,'.............................................').."..."
								end
							else 
								isbucac = true
							end
						end)


						if Number_Only then 
							TextBox:GetPropertyChangedSignal("Text"):Connect(function()
								if tonumber(TextBox.Text) then 
								else 
									TextBox.PlaceholderText = Placeholder
									TextBox.Text = ''
								end
							end)
						end

						TextBox.FocusLost:Connect(function()
							if TextBox.Text ~= '' then
								if isbucac then 
									Callback(TextBox.Text)
								else 
									Callback(valuecall)
								end
							end
						end)

						local textbox_function = {}

						if DefaultVal then
							TextBox.Text = DefaultVal
							Callback(DefaultVal)
						end

						function textbox_function.SetValue(Value)
							TextBox.Text = Value
							Callback(Value)
						end 

						return textbox_function;


					end

					function section_function.AddSlider(SliderName,Setting,Callback)

						local Min_Value = Setting.Min or 0
						local Max_Value = Setting.Max or 100
						local DefaultValue = Setting.DefaultValue or Min_Value
						local Precise = Setting.Precise or false

						local SizeChia = 300

						local Callback = Callback or function() end

						local SliderFrame = Instance.new("Frame")
						local SliderTitle = Instance.new("TextLabel")
						local BoxFrame = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local SliderBox = Instance.new("TextBox")
						local Bar = Instance.new("Frame")
						local UICorner_2 = Instance.new("UICorner")
						local UICorner_3 = Instance.new("UICorner")
						local Inbar = Instance.new("Frame")
						local SliderButton = Instance.new("TextButton")

						SliderFrame.Name = SliderName.."SliderFrame"
						SliderFrame.Parent = Section_
						SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SliderFrame.BackgroundTransparency = 1.000
						SliderFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
						SliderFrame.Size = UDim2.new(1, 0, 0, 55)

						SliderTitle.Name = "SliderTitle"
						SliderTitle.Parent = SliderFrame
						SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SliderTitle.BackgroundTransparency = 1.000
						SliderTitle.Position = UDim2.new(0, 20, 0, 0)
						SliderTitle.Size = UDim2.new(1, -100, 0, 25)
						SliderTitle.Font = Enum.Font.GothamBold
						SliderTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Slider.SliderText or Color3.fromRGB(255, 255, 255)
						SliderTitle.TextSize = 14.000
						SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
						SliderTitle.Text = SliderName

						BoxFrame.Name = "BoxFrame"
						BoxFrame.Parent = SliderFrame
						BoxFrame.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Slider.SliderBoxBackground or  Color3.fromRGB(42, 42, 42)
						BoxFrame.BorderSizePixel = 0
						BoxFrame.Position = UDim2.new(0.76187104, 0, 0, 0)
						BoxFrame.Size = UDim2.new(0, 70, 0, 25)

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = BoxFrame

						SliderBox.Name = "SliderBox"
						SliderBox.Parent = BoxFrame
						SliderBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SliderBox.BackgroundTransparency = 1.000
						SliderBox.Size = UDim2.new(1, 0, 1, 0)
						SliderBox.Font = Enum.Font.GothamBold
						SliderBox.Text = ""
						SliderBox.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Slider.SliderBoxText or Color3.fromRGB(255, 255, 255)
						SliderBox.TextSize = 14.000

						Bar.Name = "Bar"
						Bar.Parent = SliderFrame
						Bar.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Slider.SliderBar or Color3.fromRGB(255, 255, 255)
						Bar.Position = UDim2.new(0, 20, 0, 40)
						Bar.Size = UDim2.new(1, -40, 0, 6)

						UICorner_2.CornerRadius = UDim.new(0, 4)
						UICorner_2.Parent = Bar

						Inbar.Name = "Inbar"
						Inbar.Parent = Bar
						Inbar.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Slider.SliderSelectedBar or Color3.fromRGB(108, 167, 255)
						Inbar.BorderSizePixel = 0
						Inbar.Size = UDim2.new(0, 0, 1, 0)

						UICorner_3.CornerRadius = UDim.new(0, 4)
						UICorner_3.Parent = Inbar

						SliderButton.Name = "SliderButton"
						SliderButton.Parent = Bar
						SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SliderButton.BackgroundTransparency = 1.000
						SliderButton.Size = UDim2.new(1, 0, 1, 0)
						SliderButton.Font = Enum.Font.SourceSans
						SliderButton.Text = ""
						SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
						SliderButton.TextSize = 14.000

						local mouse = game.Players.LocalPlayer:GetMouse()
						local uis = game:GetService("UserInputService")

						Inbar.Size = UDim2.new(1 - ((Max_Value - DefaultValue) / (Max_Value - Min_Value)),0, 0, 6)
						SliderBox.Text = DefaultValue
						Callback(DefaultValue)

						SliderButton.MouseButton1Down:Connect(function()
							Library.addbuttoneffect()
						end)

						SliderButton.MouseButton1Down:Connect(function()
							local value = Precise and  tonumber(string.format("%.1f",(((tonumber(Max_Value) - tonumber(Min_Value)) / SizeChia) * Inbar.AbsoluteSize.X) + tonumber(Min_Value))) or math.floor((((tonumber(Max_Value) - tonumber(Min_Value)) / SizeChia) * Inbar.AbsoluteSize.X) + tonumber(Min_Value))

							pcall(function()
								Callback(value)
								SliderBox.Text = value
							end)
							Inbar.Size = UDim2.new(0, math.clamp(mouse.X - Inbar.AbsolutePosition.X, 0, SizeChia), 0, 6)
							moveconnection = mouse.Move:Connect(function()   
								local value = Precise and  tonumber(string.format("%.1f",(((tonumber(Max_Value) - tonumber(Min_Value)) / SizeChia) * Inbar.AbsoluteSize.X) + tonumber(Min_Value))) or math.floor((((tonumber(Max_Value) - tonumber(Min_Value)) / SizeChia) * Inbar.AbsoluteSize.X) + tonumber(Min_Value))
								pcall(function()
									Callback(value)
									SliderBox.Text = value
								end)
								Inbar.Size = UDim2.new(0, math.clamp(mouse.X - Inbar.AbsolutePosition.X, 0, SizeChia), 0, 6)
							end)
							releaseconnection = uis.InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									local value = Precise and  tonumber(string.format("%.1f",(((tonumber(Max_Value) - tonumber(Min_Value)) / SizeChia) * Inbar.AbsoluteSize.X) + tonumber(Min_Value))) or math.floor((((tonumber(Max_Value) - tonumber(Min_Value)) / SizeChia) * Inbar.AbsoluteSize.X) + tonumber(Min_Value))

									pcall(function()
										Callback(value)
										SliderBox.Text = value
									end)
									Inbar.Size = UDim2.new(0, math.clamp(mouse.X - Inbar.AbsolutePosition.X, 0, SizeChia), 0, 6)
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)

						local function GetSliderValue(Value)
							if tonumber(Value) <= Min_Value then
								Inbar.Size = UDim2.new(0,(0 * SizeChia), 0, 6)
								SliderBox.Text = Min_Value
								Callback(tonumber(Min_Value))

							elseif tonumber(Value) >= Max_Value then
								Inbar.Size = UDim2.new(0,(Max_Value  /  Max_Value * SizeChia), 0, 6)
								SliderBox.Text = Max_Value
								Callback(tonumber(Max_Value))
							else
								Inbar.Size = UDim2.new(1 - ((Max_Value - Value) / (Max_Value - Min_Value)),0, 0, 6)
								Callback(tonumber(Value))
							end
						end


						SliderBox.FocusLost:Connect(function()
							GetSliderValue(SliderBox.Text)
						end)


						local slider_function = {}

						function slider_function.SetValue(Value)
							GetSliderValue(Value)
						end

						return slider_function
						
					end

					function section_function.AddDropdown(DropdownName,Setting,Callback)

						local List = Setting.List
						local Search_Setting = Setting.Search or false
						local Selected = Setting.Selected or false
						local DefaultVal = Setting.DefaultValue
						local Callback = Callback or function() end

						local Dropdown = Instance.new("Frame")
						local DropdownFrame = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local InDrop = Instance.new("ScrollingFrame")
						local ListF = Instance.new("Frame")
						local UIListLayout = Instance.new("UIListLayout")
						local TopDrop = Instance.new("ImageLabel")
						local DropTitle = Instance.new("TextLabel")
						local DropButton = Instance.new("TextButton")
						local Dropbox = Instance.new('TextBox')
						local Dropc = Instance.new("ImageLabel")

						Dropdown.Name = DropdownName.."Dropdown"
						Dropdown.Parent = Section_
						Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Dropdown.BackgroundTransparency = 1.000
						Dropdown.Position = UDim2.new(0, 0, 0.242718443, 0)
						Dropdown.Size = UDim2.new(1, 0, 0, 25)

						DropdownFrame.Name = "DropdownFrame"
						DropdownFrame.Parent = Dropdown
						DropdownFrame.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropdownBackground or Color3.fromRGB(99, 99, 99)
						DropdownFrame.ClipsDescendants = true
						DropdownFrame.Position = UDim2.new(0, 10, 0, 0)
						DropdownFrame.Size = UDim2.new(1, -20, 0, 25)

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = DropdownFrame

						InDrop.Name = "InDrop"
						InDrop.Parent = DropdownFrame
						InDrop.Active = true
						InDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						InDrop.BackgroundTransparency = 1.000
						InDrop.BorderSizePixel = 0
						InDrop.Position = UDim2.new(0, 0, 0, 30)
						InDrop.Size = UDim2.new(1, 0, 1, -30)
						InDrop.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
						InDrop.CanvasSize = UDim2.new(0, 0, 0, 0)
						InDrop.ScrollBarThickness = 3
						InDrop.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

						ListF.Name = "ListF"
						ListF.Parent = InDrop
						ListF.AnchorPoint = Vector2.new(0.5, 0)
						ListF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ListF.BackgroundTransparency = 1.000
						ListF.Position = UDim2.new(0.5, 0, 0, 0)
						ListF.Size = UDim2.new(1, -10, 0, 170)

						UIListLayout.Parent = ListF
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout.Padding = UDim.new(0, 5)

						UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
							local absoluteSize = UIListLayout.AbsoluteContentSize
							InDrop.CanvasSize = UDim2.new(0, 0, 0, 10 + absoluteSize.Y)
						end)

						TopDrop.Name = "TopDrop"
						TopDrop.Parent = DropdownFrame
						TopDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TopDrop.BackgroundTransparency = 1.000
						TopDrop.Size = UDim2.new(1, 0, 0, 25)
						TopDrop.Image = "rbxassetid://4550094255"
						TopDrop.ImageColor3 = getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropdownTopBackground or Color3.fromRGB(42, 42, 42)
						TopDrop.ScaleType = Enum.ScaleType.Slice
						TopDrop.SliceCenter = Rect.new(4, 4, 296, 296)

						if not Search_Setting then
							DropTitle.Name = "DropTitle"
							DropTitle.Parent = TopDrop
							DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							DropTitle.BackgroundTransparency = 1.000
							DropTitle.Position = UDim2.new(0, 5, 0, 0)
							DropTitle.Size = UDim2.new(1, -5, 0, 25)
							DropTitle.Font = Enum.Font.GothamBold
							DropTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropDownTopBackgroundText or Color3.fromRGB(255, 255, 255)
							DropTitle.TextSize = 14.000
							DropTitle.TextXAlignment = Enum.TextXAlignment.Left
							DropTitle.Text = DropdownName

							DropButton.Name = "DropButton"
							DropButton.Parent = TopDrop
							DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							DropButton.BackgroundTransparency = 1.000
							DropButton.Size = UDim2.new(1, 0, 0, 25)
							DropButton.Font = Enum.Font.SourceSans
							DropButton.Text = ""
							DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
							DropButton.TextSize = 14.000
						else

							Dropbox.Name = "Dropbox"
							Dropbox.Parent = TopDrop
							Dropbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Dropbox.BackgroundTransparency = 1.000
							Dropbox.Position = UDim2.new(0, 5, 0, 0)
							Dropbox.Size = UDim2.new(1, -5, 0, 25)
							Dropbox.Font = Enum.Font.GothamBold
							Dropbox.TextColor3 = Color3.fromRGB(255, 255, 255)
							Dropbox.TextSize = 14.000
							Dropbox.TextXAlignment = Enum.TextXAlignment.Left
							Dropbox.ClearTextOnFocus = true
							Dropbox.PlaceholderText = DropdownName
							Dropbox.Text = ''
							
						end

						Dropc.Name = "Dropc"
						Dropc.Parent = TopDrop
						Dropc.AnchorPoint = Vector2.new(0, 0.5)
						Dropc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Dropc.BackgroundTransparency = 1.000
						Dropc.Position = UDim2.new(1, -20, 0.5, 0)
						Dropc.Size = UDim2.new(0, 15, 0, 15)
						Dropc.Image = "http://www.roblox.com/asset/?id=6954383209"

						local isbusy = false

						local found = {}

						local searchtable = {}
						
						local function edit()
							for i in pairs(found) do
								found[i] = nil
							end
							for h, l in pairs(ListF:GetChildren()) do
								if not l:IsA("UIListLayout") and not l:IsA("UIPadding") and not l:IsA('UIGridLayout') then
									l.Visible = false
								end
							end
							Dropbox.Text = string.lower(Dropbox.Text)
						end

						local function Search()
							local Results = {}
							for i, v in pairs(searchtable) do
								if string.find(v, Dropbox.Text) then
									table.insert(found, v)
								end
							end
							for a, b in pairs(ListF:GetChildren()) do
								for c, d in pairs(found) do
									if d == b.Name then
										b.Visible = true
									end
								end
							end
						end

						local ListNew = List
						
						local function clear_object_in_list()
							for i,v in next, ListF:GetChildren() do 
								if v:IsA('Frame') then 
									v:Destroy()
								end
							end
						end
						
						local function refreshlist()
							clear_object_in_list()

							searchtable = {}
							
							for i, v in pairs(ListNew) do
								if not Selected then 
								table.insert(searchtable, string.lower(v))
								else 
									table.insert(searchtable, string.lower(i))
								end 
							end
							
							if not Selected then 
								for i,v in pairs (ListNew) do
									
									local Object = Instance.new("Frame")
									local UICorner = Instance.new("UICorner")
									local Button = Instance.new("TextButton")
									local Title = Instance.new("TextLabel")

									Object.Name = string.lower(v)
									Object.Parent = ListF
									Object.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropdownButtonBackground or Color3.fromRGB(72, 72, 72)
									Object.Size = UDim2.new(1, 0, 0, 20)

									UICorner.CornerRadius = UDim.new(0, 4)
									UICorner.Parent = Object

									Button.Name = "Button"
									Button.Parent = Object
									Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									Button.BackgroundTransparency = 1.000
									Button.Size = UDim2.new(1, 0, 1, 0)
									Button.Font = Enum.Font.GothamBold
									Button.Text = ""
									Button.TextColor3 = Color3.fromRGB(255, 255, 255)
									Button.TextSize = 14.000

									Title.Name = "Title"
									Title.Parent = Object
									Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									Title.BackgroundTransparency = 1.000
									Title.Position = UDim2.new(0, 5, 0, 0)
									Title.Size = UDim2.new(1, -5, 1, 0)
									Title.Font = Enum.Font.GothamBold
									Title.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropdownButtonBackgroundText or Color3.fromRGB(255, 255, 255)
									Title.TextSize = 14.000
									Title.TextXAlignment = Enum.TextXAlignment.Left
									Title.Text = v
									
									Button.MouseButton1Click:Connect(function()

										--Library.addbuttoneffect()

										isbusy = not isbusy

										if Search_Setting then
											Dropbox.PlaceholderText = DropdownName..': '..v
										else
											DropTitle.Text = DropdownName..': '..v
										end

										TweenService:Create(InDrop,TweenInfo.new(.5),{Size = UDim2.new(1, 0,0, 0)}):Play()
										TweenService:Create(DropdownFrame,TweenInfo.new(.5),{Size = UDim2.new(1,-20 ,0, 25)}):Play()
										local dropsize = isbusy and UDim2.new(1,0 ,0, 215) or UDim2.new(1, 0,0, 25)
										TweenService:Create(Dropdown,TweenInfo.new(.5),{Size = dropsize}):Play()
										local DropCRotation = isbusy and 90 or 0
										TweenService:Create(Dropc,TweenInfo.new(.5),{Rotation = DropCRotation}):Play()

										refreshlist()
										if Callback then 
											Callback(v)
										end

									end)

									Button.MouseButton1Click:Connect(function()
										Library.addbuttoneffect()
									end)

								end
						else 	

								for i,v in pairs (ListNew) do
									
									local cSelected, cnotSelected = getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropdownToggleEnabledBackground or Color3.fromRGB(108, 167, 255), getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropdownToggleDisabledBackground or Color3.fromRGB(255, 65, 65)

									local colorSelecteda = v and cSelected or cnotSelected

									local Object = Instance.new("Frame")
									local UICorner = Instance.new("UICorner")
									local Button = Instance.new("TextButton")
									local Title = Instance.new("TextLabel")

									Object.Name = string.lower(i)
									Object.Parent = ListF
									Object.BackgroundColor3 = colorSelecteda
									Object.Size = UDim2.new(1, 0, 0, 20)

									UICorner.CornerRadius = UDim.new(0, 4)
									UICorner.Parent = Object

									Button.Name = "Button"
									Button.Parent = Object
									Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									Button.BackgroundTransparency = 1.000
									Button.Size = UDim2.new(1, 0, 1, 0)
									Button.Font = Enum.Font.GothamBold
									Button.Text = ""
									Button.TextColor3 = Color3.fromRGB(255, 255, 255)
									Button.TextSize = 14.000

									Title.Name = "Title"
									Title.Parent = Object
									Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									Title.BackgroundTransparency = 1.000
									Title.Position = UDim2.new(0, 5, 0, 0)
									Title.Size = UDim2.new(1, -5, 1, 0)
									Title.Font = Enum.Font.GothamBold
									Title.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Dropdown.DropdownToggleBackgroundText or Color3.fromRGB(255, 255, 255)
									Title.TextSize = 14.000
									Title.TextXAlignment = Enum.TextXAlignment.Left
									Title.Text = i

									Button.MouseButton1Click:Connect(function()
										Library.addbuttoneffect()
									end)
									
									Button.MouseButton1Click:Connect(function()
										v = not v 

										local colorSelected = v and cSelected or cnotSelected

										TweenService:Create(Object,TweenInfo.new(.5),{BackgroundColor3 = colorSelected}):Play()

										if Callback then
											Callback(i,v)
											List[i] = v

										end
									end)
								end

						end 
								
								
								
							end
							
						Dropbox.Changed:Connect(function()
							edit()
							Search()
						end)

						if typeof(DefaultVal) ~= 'table' then
							Callback(DefaultVal)
							if Search_Setting then
                                Dropbox.PlaceholderText = DropdownName..': '..tostring(DefaultVal)
                            else
                                DropTitle.Text = DropdownName..': '..tostring(DefaultVal)
                            end
						elseif Selected then
							for i,v in next, DefaultVal do
								ListNew[i] = v
								Callback(i,v)
							end
						end


						Dropbox.Focused:Connect(function()
							refreshlist()
							isbusy = not isbusy 
							local listsize = isbusy and UDim2.new(1, 0,0, 170) or UDim2.new(1, 0,0, 0)
							local dropframesize = isbusy and UDim2.new(1,-20 ,0, 205) or UDim2.new(1, -20,0, 25)
							local dropsize = isbusy and UDim2.new(1,0 ,0, 215) or UDim2.new(1, 0,0, 25)
							local DropCRotation = isbusy and 90 or 0

							TweenService:Create(Dropc,TweenInfo.new(.5),{Rotation = DropCRotation}):Play()
							TweenService:Create(InDrop,TweenInfo.new(.5),{Size = listsize}):Play()
							TweenService:Create(DropdownFrame,TweenInfo.new(.5),{Size = dropframesize}):Play()
							TweenService:Create(Dropdown,TweenInfo.new(.5),{Size = dropsize}):Play()
						end)

						Dropbox.Focused:Connect(function() 
						
							Library.addbuttoneffect()

						end)

						DropButton.MouseButton1Click:Connect(function()
							Library.addbuttoneffect()
						end)

						DropButton.MouseButton1Click:Connect(function()
							isbusy = not isbusy 
							local listsize = isbusy and UDim2.new(1, 0,0, 170) or UDim2.new(1, 0,0, 0)
							local dropframesize = isbusy and UDim2.new(1,-20 ,0, 205) or UDim2.new(1, -20,0, 25)
							local dropsize = isbusy and UDim2.new(1,0 ,0, 215) or UDim2.new(1, 0,0, 25)
							local DropCRotation = isbusy and 90 or 0

							refreshlist()
							TweenService:Create(Dropc,TweenInfo.new(.5),{Rotation = DropCRotation}):Play()
							TweenService:Create(InDrop,TweenInfo.new(.5),{Size = listsize}):Play()
							TweenService:Create(DropdownFrame,TweenInfo.new(.5),{Size = dropframesize}):Play()
							TweenService:Create(Dropdown,TweenInfo.new(.5),{Size = dropsize}):Play()

						end)
						
						local dropdown_function = {}
								function dropdown_function:GetNewList(List)
									
									refreshlist()
									isbusy = false
									local listsize = isbusy and UDim2.new(1, 0,0, 170) or UDim2.new(1, 0,0, 0)
									local dropframesize = isbusy and UDim2.new(1,-20 ,0, 205) or UDim2.new(1, -20,0, 25)
									local dropsize = isbusy and UDim2.new(1,0 ,0, 215) or UDim2.new(1, 0,0, 25)
									local DropCRotation = isbusy and 90 or 0
									TweenService:Create(Dropc,TweenInfo.new(.5),{Rotation = DropCRotation}):Play()
									TweenService:Create(InDrop,TweenInfo.new(.5),{Size = listsize}):Play()
									TweenService:Create(DropdownFrame,TweenInfo.new(.5),{Size = dropframesize}):Play()
									TweenService:Create(Dropdown,TweenInfo.new(.5),{Size = dropsize}):Play()
									
									ListNew = {}
									ListNew = List

								end
								
						return dropdown_function
						

					end

					function section_function.AddColorPicker(ColorName,Setting,Callback)

						local Callback = Callback or function() end

						local Colordrop = false 
						local Data = {}
						local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
						local rpgdragging = false
						local valuedragging = false

						local DefaultValue = Setting.DefaultValue or Color3.fromRGB(255,255,255)
						
						local ColorPicker = Instance.new("Frame")
						local ColorTitle = Instance.new("TextLabel")
						local ColorFrame = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local Frame = Instance.new("Frame")
						local RGBFrame = Instance.new("ImageLabel")
						local RGBPicker = Instance.new("TextButton")
						local ValueFrame = Instance.new("ImageLabel")
						local Valuepicker = Instance.new("TextButton")
						local UICorner_2 = Instance.new("UICorner")
						local ColorButton = Instance.new("TextButton")

						ColorPicker.Name = ColorName.."ColorPicker"
						ColorPicker.Parent = Section_
						ColorPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ColorPicker.BackgroundTransparency = 1.000
						ColorPicker.BorderColor3 = Color3.fromRGB(27, 42, 53)
						ColorPicker.Size = UDim2.new(1, 0, 0, 25)

						ColorTitle.Name = "ColorTitle"
						ColorTitle.Parent = ColorPicker
						ColorTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ColorTitle.BackgroundTransparency = 1.000
						ColorTitle.Position = UDim2.new(0, 20, 0, 0)
						ColorTitle.Size = UDim2.new(1, -100, 0, 25)
						ColorTitle.Font = Enum.Font.GothamBold
						ColorTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.ColorPicker.ColorPickerText or Color3.fromRGB(255, 255, 255)
						ColorTitle.TextSize = 14.000
						ColorTitle.TextXAlignment = Enum.TextXAlignment.Left
						ColorTitle.Text = ColorName

						ColorFrame.Name = "ColorFrame"
						ColorFrame.Parent = ColorPicker
						ColorFrame.BackgroundColor3 = DefaultValue
						ColorFrame.BorderSizePixel = 0
						ColorFrame.Position = UDim2.new(1, -110, 0, 0)
						ColorFrame.Size = UDim2.new(0, 100, 0, 25)

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = ColorFrame

						Frame.Parent = ColorPicker
						Frame.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.ColorPicker.ColorPickerBackground or Color3.fromRGB(99, 99, 99)
						Frame.BorderSizePixel = 0
						Frame.ClipsDescendants = true
						Frame.Position = UDim2.new(0, 10, 0, 30)
						Frame.Size = UDim2.new(1, -20, 0, 0)

						RGBFrame.Name = "RGBFrame"
						RGBFrame.Parent = Frame
						RGBFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						RGBFrame.BorderSizePixel = 0
						RGBFrame.Position = UDim2.new(0, 5, 0, 5)
						RGBFrame.Size = UDim2.new(0, 270, 0, 140)
						RGBFrame.Image = "rbxassetid://4018903152"

						RGBPicker.Name = "RGBPicker"
						RGBPicker.Parent = RGBFrame
						RGBPicker.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
						RGBPicker.BorderSizePixel = 0
						RGBPicker.Position = UDim2.new(-6.10947609e-07, 0, 0, 0)
						RGBPicker.Size = UDim2.new(0, 6, 0, 6)
						RGBPicker.Font = Enum.Font.SourceSans
						RGBPicker.Text = ""
						RGBPicker.TextColor3 = Color3.fromRGB(0, 0, 0)
						RGBPicker.TextSize = 14.000

						ValueFrame.Name = "ValueFrame"
						ValueFrame.Parent = Frame
						ValueFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						ValueFrame.BorderSizePixel = 0
						ValueFrame.Position = UDim2.new(1, -35, 0, 5)
						ValueFrame.Size = UDim2.new(0, 30, 0, 140)
						ValueFrame.Image = "rbxassetid://4019265005"
						ValueFrame.ImageColor3 = DefaultValue

						Valuepicker.Name = "Valuepicker"
						Valuepicker.Parent = ValueFrame
						Valuepicker.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.ColorPicker.ColorPickerValuePicker or Color3.fromRGB(255, 255, 255)
						Valuepicker.BorderSizePixel = 0
						Valuepicker.Size = UDim2.new(1, 0, 0, 6)
						Valuepicker.Font = Enum.Font.SourceSans
						Valuepicker.Text = ""
						Valuepicker.TextColor3 = Color3.fromRGB(0, 0, 0)
						Valuepicker.TextSize = 14.000
						Valuepicker.AutoButtonColor = false

						UICorner_2.CornerRadius = UDim.new(0, 4)
						UICorner_2.Parent = Frame

						ColorButton.Name = "ColorButton"
						ColorButton.Parent = ColorPicker
						ColorButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ColorButton.BackgroundTransparency = 1.000
						ColorButton.Size = UDim2.new(1, 0, 0, 25)
						ColorButton.Font = Enum.Font.SourceSans
						ColorButton.Text = ""
						ColorButton.TextColor3 = Color3.fromRGB(0, 0, 0)
						ColorButton.TextSize = 14.000

						ColorButton.MouseButton1Click:Connect(function()
							Library.addbuttoneffect()
						end)

						if DefaultValue then Callback(DefaultValue) end

						ColorButton.MouseButton1Click:Connect(function()
							Colordrop = not Colordrop
							local sizedrop =  Colordrop and UDim2.new(1, -20,0, 150) or UDim2.new(1, -20,0, 0)
							local sizedrop2 = Colordrop and UDim2.new(1, 0,0, 185) or UDim2.new(1, 0,0, 30)
							TweenService:Create(Frame,TweenInfo.new(.5),{Size = sizedrop}):Play()
							TweenService:Create(ColorPicker,TweenInfo.new(.5),{Size = sizedrop2}):Play()
						end)
						
						RGBFrame.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								rpgdragging = true;
							end;
						end);
						
						RGBFrame.InputEnded:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								rpgdragging = false;
							end;
						end);
						
						ValueFrame.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								valuedragging = true;
							end;
						end)
						
						ValueFrame.InputEnded:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								valuedragging = false;
							end;
						end);
						
						game:GetService("UserInputService").InputChanged:Connect(function(input)
							if rpgdragging and input.UserInputType == Enum.UserInputType.MouseMovement then
								RGBPicker.Position = UDim2.new(math.clamp((input.Position.X - RGBFrame.AbsolutePosition.X) / RGBFrame.AbsoluteSize.X, 0, 1), 0, math.clamp((input.Position.Y - RGBFrame.AbsolutePosition.Y) / RGBFrame.AbsoluteSize.Y, 0, 1), 0);
								ColorFrame.BackgroundColor3 = Color3.fromHSV(RGBPicker.Position.X.Scale, 1 - RGBPicker.Position.Y.Scale, 1 - Valuepicker.Position.Y.Scale);
								ValueFrame.ImageColor3 = Color3.fromHSV(RGBPicker.Position.X.Scale, 1 - RGBPicker.Position.Y.Scale, 1);
								Callback(ColorFrame.BackgroundColor3);
							elseif valuedragging and input.UserInputType == Enum.UserInputType.MouseMovement then
								Valuepicker.Position = UDim2.new(0, 0, math.clamp((input.Position.Y - ValueFrame.AbsolutePosition.Y) / ValueFrame.AbsoluteSize.Y, 0, 1), 0);
								ColorFrame.BackgroundColor3 = Color3.fromHSV(RGBPicker.Position.X.Scale, 1 - RGBPicker.Position.Y.Scale, 1 - Valuepicker.Position.Y.Scale);
								ValueFrame.ImageColor3 = Color3.fromHSV(RGBPicker.Position.X.Scale, 1 - RGBPicker.Position.Y.Scale, 1);
								Callback(ColorFrame.BackgroundColor3);
							end;
						end);
						

					end

					function section_function.AddKeybind(KeybindName,Setting,Callback)

						local Callback = Callback or function() end
						local keycodename = Setting.KeyDefault or Setting.Key or Setting.Default
						local Default = Setting.KeyDefault or Setting.Key or Setting.Default
						local Type = tostring(Default):match("UserInputType") and "UserInputType" or "KeyCode"
						keycodename = tostring(keycodename):gsub("Enum.UserInputType.", "")
						keycodename = tostring(keycodename):gsub("Enum.KeyCode.", "")
						
						local Keybind = Instance.new("Frame")
						local KeybindTitle = Instance.new("TextLabel")
						local KeybindFrame = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local BindButton = Instance.new("TextButton")

						Keybind.Name = KeybindName.."Keybind"
						Keybind.Parent = Section_
						Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Keybind.BackgroundTransparency = 1.000
						Keybind.BorderColor3 = Color3.fromRGB(27, 42, 53)
						Keybind.Size = UDim2.new(1, 0, 0, 25)

						KeybindTitle.Name = "KeybindTitle"
						KeybindTitle.Parent = Keybind
						KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						KeybindTitle.BackgroundTransparency = 1.000
						KeybindTitle.Position = UDim2.new(0, 20, 0, 0)
						KeybindTitle.Size = UDim2.new(1, -100, 0, 25)
						KeybindTitle.Font = Enum.Font.GothamBold
						KeybindTitle.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Keybind.KeybindText or Color3.fromRGB(255, 255, 255)
						KeybindTitle.TextSize = 14.000
						KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left
						KeybindTitle.Text = KeybindName

						KeybindFrame.Name = "KeybindFrame"
						KeybindFrame.Parent = Keybind
						KeybindFrame.BackgroundColor3 = getgenv().CustomUI and getgenv().CustomUI.Keybind.KeybindBoxBackground or Color3.fromRGB(42, 42, 42)
						KeybindFrame.BorderSizePixel = 0
						KeybindFrame.Position = UDim2.new(1, -110, 0, 0)
						KeybindFrame.Size = UDim2.new(0, 100, 0, 25)

						UICorner.CornerRadius = UDim.new(0, 4)
						UICorner.Parent = KeybindFrame

						BindButton.Parent = KeybindFrame
						BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						BindButton.BackgroundTransparency = 1.000
						BindButton.Size = UDim2.new(1, 0, 1, 0)
						BindButton.Font = Enum.Font.GothamBold
						BindButton.TextColor3 = getgenv().CustomUI and getgenv().CustomUI.Keybind.KeybindBoxText or Color3.fromRGB(255, 255, 255)
						BindButton.TextSize = 14.000
						BindButton.Text = tostring(Default):gsub("Enum.KeyCode.", "");

						local WhitelistedType = {
							[Enum.UserInputType.MouseButton1] = "Mouse1";
							[Enum.UserInputType.MouseButton2] = "Mouse2";
							[Enum.UserInputType.MouseButton3] = "Mouse3";
						};

						BindButton.MouseButton1Click:Connect(function()
							Library.addbuttoneffect()
						end)
		
						BindButton.MouseButton1Click:Connect(function()
							local Connection;
		
							BindButton.Text = "...";
		
							Connection = UIS.InputBegan:Connect(function(i)
								if WhitelistedType[i.UserInputType] then
									BindButton.Text = WhitelistedType[i.UserInputType];
									spawn(function()
										wait(0.1)
										Default = i.UserInputType;
										Type = "UserInputType";
									end);
								elseif i.KeyCode ~= Enum.KeyCode.Unknown then
									BindButton.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
									spawn(function()
										wait(0.1)
										Default = i.KeyCode;
										Type = "KeyCode";
									end);
								else
									warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
								end;
		
		
								Connection:Disconnect();
							end);
						end);
		
						UIS.InputBegan:Connect(function(i)
							if (Default == i.UserInputType or Default == i.KeyCode) then
								Callback(Default);
							end;
						end);

					end


					return section_function

			end

			return page_function

	end

	return main_function
	

end

        function vToK(tabl)
            local out = {}
            for k, v in pairs(tabl) do
                out[v] = k
            end
            return out
        end
        function ToTrueFalse(tabl, f)
            local out = {}
            for k, v in pairs(tabl) do
                if f then
                    out[k] = f
                else
                    out[k] = false
                end
            end

            return out
        end
        function ToST(tabl, s)
            local out = {}
            for k, v in pairs(tabl) do
               out[k]=s
            end

            return out
        end
        -----------------------------------------CODE----------------------------------
        local LevelFarmVK = vToK(LevelFarm)
        local FarmFieldList = ToST(LevelFarmVK,CurrentField)
        local TokenId = {
            ["Ticket"] = "rbxassetid://1674871631",
            ["Glue"] = "rbxassetid://2504978518",
            ["Pineapple"] = "rbxassetid://1952796032",
            ["Strawberry"] = "rbxassetid://1952740625",
            ["Blueberry"] = "rbxassetid://2028453802",
            ["SunflowerSeed"] = "rbxassetid://1952682401",
            ["Treat"] = "rbxassetid://2028574353",
            ["Gumdrop"] = "rbxassetid://1838129169",
            ["Red Extract"] = "2495935291",
            ["Blue Extract"] = "rbxassetid://2495936060",
            ["Oil"] = "2545746569",
            ["Glitter"] = "rbxassetid://2542899798",
            ["Enzymes"] = "rbxassetid://2584584968",
            ["TropicalDrink"] = "3835877932",
            ["Diamond Egg"] = "rbxassetid://1471850677",
            ["Gold Egg"] = "rbxassetid://1471849394",
            ["Mythic Egg"] = "4520739302",
            ["Star Treat"] = "rbxassetid://2028603146",
            ["Royal Jelly"] = "rbxassetid://1471882621",
            ["Star Jelly"] = "rbxassetid://2319943273",
            ["Moon Charm"] = "rbxassetid://2306224708"
        }
        local PrioritizeList = {
            ["Token Link"] = "1629547638",
            ["Inspire"] = "2000457501",
            ["Bear Morph"] = "177997841",
            ["Polen Bomb"] = "1442725244",
            ["Fuzz Bomb"] = "4889322534",
            ["Polen Haze"] = "4889470194",
            ["Triangulate"] = "4519523935",
            ["Inferno"] = "4519549299",
            ["Summon Frog"] = "4528414666",
            ["Tornado"] = "3582519526"
        }
        local ItemDonateList = {
            "Ticket",
            "Gumdrops",
            "Coconut",
            "Stinger",
            "Micro-Converter",
            "FieldDice",
            "JellyBeans",
            "RedExtract",
            "BlueExtract",
            "Glitter",
            "Glue",
            "Oil",
            "Enzymes",
            "TropicalDrink",
            "MagicBean",
            "CloudVial",
            "Box-O-Frogs",
            "AntPass",
            "Treat",
            "SunflowerSeed",
            "Strawberry",
            "Pineapple",
            "Blueberry",
            "Bitterberry",
            "Neonberry",
            "Moon Charm",
            "BasicEgg",
            "SilverEgg",
                        "DiamondEgg",
            "RoyalJelly"
        }
        for k, v in pairs(TokenId) do
            PrioritizeList[k] = v
        end
        
        
        local PrioritizeListTF = ToTrueFalse(PrioritizeList)
        PrioritizeListTF["Token Link"] = true
        local NoSell = false

        local AutoGum = false
        local AutoCoco = false
        local TypeFarming = "Walk"
        local TypeSell = "TP"
        local AutoDig = false

        local StopMoreOne = false
        local Valid = true
        local InsValid = 26110

        local AutoRare = false
        local TokenIdByK = vToK(TokenId)
        local TokenTrueFakse = ToTrueFalse(TokenId)
        local TokenTrueFakse2 = ToTrueFalse(TokenId)
        local PlantMagic = false
        local HoneyPolen = {
            ["Honey"] = true,
            ["Pollen"] = true
        }
        local BarId = {
            ["Glue"] = "rbxassetid://2504978518",
            ["Oil"] = "rbxassetid://2545746569",
            ["Enzymes"] = "rbxassetid://2584584968",
            ["Tropical Drink"] = "3835877932",
            ["Blue Extract"] = "rbxassetid://2495936060",
            ["Red Extract"] = "rbxassetid://2495935291",
            ["Stinger"] = "2314214749"
        }
        local FieldIconID = {
            ["Sunflower Field"] = "rbxassetid://2908769405",
            ["Dandelion Field"] = "rbxassetid://2908769047",
            ["Strawberry Field"] = "rbxassetid://2908769330",
            ["Blue Flower Field"] = "rbxassetid://2908768899",
            ["Clover Field"] = "rbxassetid://2908768973",
            ["Mushroom Field"] = "rbxassetid://2908769124",
            ["Spider Field"] = "rbxassetid://2908769301",
            ["Bamboo Field"] = "rbxassetid://2908768829",
            ["Pineapple Patch"] = "rbxassetid://2908769153",
            ["Stump Field"] = "rbxassetid://2908769372",
            ["Cactus Field"] = "rbxassetid://2908768937",
            ["Pumpkin Patch"] = "rbxassetid://2908769220",
            ["Pine Tree Forest"] = "rbxassetid://2908769190",
            ["Rose Field"] = "rbxassetid://2908818982",
            ["Coconut Field"] = "rbxassetid://2908769010",
            ["Mountain Top Field"] = "rbxassetid://2908769086",
            ["Ant Field"] = "rbxassetid://2908768728",
            ["Pepper Patch"] = "3835712489"
        }
        local Sprinklers = {
            ["The Supreme Saturator"] = 1,
            ["Basic Sprinkler"] = 1,
            ["Silver Soakers"] = 2,
            ["Golden Gushers"] = 3,
            ["Diamond Drenchers"] = 4
        }
        local TimerMob = {
            ["Rhino Beetles"] = {"Rhino Bush", "Rhino Cave 1", "Rhino Cave 2", "Rhino Cave 3", "PineappleBeetle"},
            ["Spider"] = {"Spider Cave"},
            ["Werewol"] = {"WerewolfCave"},
            ["Scorpion"] = {"RoseBush", "RoseBush2"},
            ["Mantises"] = {"ForestMantis1", "ForestMantis2", "PineappleMantis1"},
            ["Ladybug"] = {"MushroomBush", "Ladybug Bush", "Ladybug Bush 2", "Ladybug Bush 3"}
        }
        local TimerKiet = ToTrueFalse(TimerMob, true)
        local fieldlistpolar = {
            "Spider Field",
            "Mushroom Field",
            "Rose Field",
            "Strawberry Field",
            "Bamboo Field",
            "Pumpkin Patch",
            "Sunflower Field",
            "Cactus Field",
            "Blue Flower Field",
            "Clover Field",
            "Pineapple Patch",
            "Dandelion Field",
            "Pine Tree Forest"
        }
        local moblistpolar = {
            "Spider",
            "Scorpion",
            "Werewol",
            "Mantises",
            "Ladybug",
            "Rhino Beetles"
        }
        local MaskField = {
            ["White"] = {
                "Sunflower Field",
                "Dandelion Field",
                "Spider Field",
                "Pineapple Patch",
                "Pumpkin Patch",
                "Coconut Field"
            },
            ["Blue"] = {
                "Blue Flower Field",
                "Bamboo Field",
                "Pine Tree Forest",
                "Stump Field"
            },
            ["Red"] = {
                "Mushroom Field",
                "Clover Field",
                "Strawberry Field",
                "Cactus Field",
                "Rose Field",
                "Pepper Patch",
                "Mountain Top Field",
                "Ant Field"
            }
        }
        local ShopList = {
        }
        for k,v in pairs(game.Workspace.Shops:GetChildren()) do 
            table.insert(ShopList,v.Name)
        end
        for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
            local Black = Instance.new("IntValue")
            Black.Parent = v
            Black.Name = "Blacklisted"
        end
        local AutoSprout = false
        local times = 0.2
        local Running = true
        local Invisible = false
        local Particles = game.Workspace.Particles
        local Folder2 = Particles.Folder2
        local vu = game:GetService("VirtualUser")
        local x = 0
        local y = 0
        local QuestF = game.Players.LocalPlayer.PlayerGui.ScreenGui.Menus.Children.Quests.Content
        local MaskF = {
            ["White"] = "Gummy Mask",
            ["Red"] = "Demon Mask",
            ["Blue"] = "Diamond Mask"
        }
        game:GetService("Players").LocalPlayer.Idled:connect(
            function()
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                print("Afk 15m")
            end
        )
        for i, v in pairs(workspace.FieldDecos:GetChildren()) do
            v:Destroy()
        end
        function GetFieldByName(name)
            return game.Workspace.FlowerZones[name]
        end



        local maxx = 31
        local maxy = 12
        function mysplit(inputstr, sep)
            if sep == nil then
                sep = "%s"
            end
            local t = {}
            for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
                table.insert(t, str)
            end
            return t
        end
        function GetFlower(field, x, y)
            local part = game.Workspace.Flowers:FindFirstChild(tostring(field) .. "-" .. tostring(x) .. "-" .. tostring(y))
            return part
        end
        function TpToXy(field, x, y)
            local part = GetFlower(field, x, y)
            if part then
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = part.CFrame * CFrame.new(0, 2, 0)
            end
        end
        function GetXY(part)
            local name = mysplit(part.name, "-")
            return unpack(name)
        end
        function IsValidPos(field, x, y)
            local flower = GetFlower(field,x,y)
            if flower then
                local validx = true
                local validy = true
        
                for i = 0, maxx do
                    local fl = GetFlower(field, i, y)
                   
                    if fl and fl:FindFirstChild("FireParticles") then
                       -- print(fl,1)
                        validy = false
                        break
                    end
                end
                for i = 0, maxy do
                    local fl = GetFlower(field, x, i)
                    if fl and fl:FindFirstChild("FireParticles") then
                       -- print(fl,2)
                        validx = false
                        break
                    end
                end
                return (validx and validy), validx, validy
            end
        end

        function Check3() 
            for i,v in pairs(workspace.Toys["Ant Challenge"].Obstacles:GetChildren()) do
                if v:FindFirstChild("Root") then
                    local root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    if (v.Root.Position-root.Position).magnitude <= 40  then
                        local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                       -- ValidAnt=false
                       ValidAnt2=false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.6603203, 31.9465809, 507.179993, 0.910263836, -3.83360472e-08, -0.414028674, 6.1910626e-08, 1, 4.35210374e-08, 0.414028674, -6.52484005e-08, 0.910263836)
                        repeat wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.6603203, 31.9465809, 507.179993, 0.910263836, -3.83360472e-08, -0.414028674, 6.1910626e-08, 1, 4.35210374e-08, 0.414028674, -6.52484005e-08, 0.910263836)
                        until not ((v.Root.Position-old.p).magnitude <= 40) or not v or not v.Parent
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
                        ValidAnt2=true
                    end
                    
                    
                end
            end
        end
        function Check2()
            local ray = Ray.new(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, Vector3.new(0, -5, 0))
            local t = workspace:FindPartOnRayWithIgnoreList(ray, {game.Players.LocalPlayer.Character})
            if t then
                if string.match(t.Name, "FP") then
                    local kiett, validx, validy = IsValidPos(GetXY(t))
                    if kiett then
                        --print("Valid")
        
                    else
                        local validposx = nil
                        local validposy = nil
                        local field, x, y = GetXY(t)
                        x=tonumber(x)
                        y=tonumber(y)
                        if not validx and validy then
                            --print(1)
                            for i = x, maxx do
                               
                                if IsValidPos(field,i, y) then
                                    validposx = i
                                    validposy=y
                                    break
                                end
                            end
                            if not validposx then
                                local i = x - 1
                                while i >= 0 do
                                    if IsValidPos(field,i, y) then
                                        validposx = i
                                        validposy=y
                                        break
                                    end
                                    i = i - 1
                                end
                            end
                        end
                        if not validy and validx then
                           -- print(2)
                            for i = y, maxy do
                                if IsValidPos(field,x, i) then
                                    validposy = i
                                    validposx=x
                                    break
                                end
                            end
                            if not validposy then
                                local i = y - 1
                                while i >= 0 do
                                    if IsValidPos(field,x, i) then
                                        validposy = i
                                        validposx=x
                                        break
                                    end
                                    i = i - 1
                                end
                            end
                        end
                        if not validx and not validy then
                            --print(3)
                            local i = x
                            local j = y
                            while i <= maxx and j <= maxy do
                                if IsValidPos(field,i, j) then
                                    validposx = i
                                    validposy = j
                                    break
                                end
                                j = j + 1
                                i = i + 1
                            end
                            local i = x - 1
                            local j = y - 1
                            if not validposx and not validposy then 
                                while i >= 0 and j >= 0 do
                                    if IsValidPos(field,i, j) then
                                        validposx = i
                                        validposy = j
                                        break
                                    end
                                    j = j - 1
                                    i = i - 1
                                end
                            end
                            
                        end
                       -- print(validposx,validposy)
                        if validposx and validposy then
                            ValidAnt=false
                            wait(.1)
                            TpToXy("FP15", validposx, validposy)
                            ValidAnt=true
                        end
                    end
                end
            end
        end
        function Conv2LayerTable(tab)
            local tabl = {}
            for k, v in pairs(tab) do
                for f, s in pairs(v) do
                    tabl[s] = k
                end
            end
            return tabl
        end
        local MaskField2 = Conv2LayerTable(MaskField)

        function ValidFarm()
            if StopMoreOne then
                if #game.Players:GetChildren() > 1 then
                    return false
                end
            end
            if not ValidLeaf then return false end
            if not ValidAnt then return false end
            if not ValidDodg then return false end
            if Kiet1308 then
                return false
            end
            if not Valid2 then
                return false
            end
            if not Valid then return false end
            return true
        end
        --print(game.Workspace.Decorations.Misc)
        for k, v in pairs(game.Workspace.Decorations.Misc:GetChildren()) do
            if string.match(v.Name, "Mushroom") or string.match(v.Name, "Blue Flower") then
                if v:IsA("Model") and #v:GetChildren() ~= 6 then
                    for k, v in pairs(v:GetChildren()) do
                        if v:IsA("Part") then
                            v.Transparency = 0.5
                            v.CanCollide = false
                        end
                    end
                end
            end
        end
        function CountTab(tab)
            local c = 0
            for k, v in pairs(tab) do
                c = c + 1
            end
            return c
        end
        function GetFieldColor(Field)
            local k = GetFieldByName(Field)
            if k:FindFirstChild("ColorGroup") then
                return k.ColorGroup.Value
            else
                return "Red"
            end
        end
        function GetCurrentFieldBoost()
            local tab = {}
            local GUI = game.Players.LocalPlayer.PlayerGui.ScreenGui.TileGrid
            for k, v in pairs(GUI:GetChildren()) do
                if v.Name == "IconTile" and v:FindFirstChild("BG") then
                    for f, s in pairs(FieldIconID) do
                        if
                            v.BG:FindFirstChild("Icon") and v.BG:FindFirstChild("Text") and v.BG:FindFirstChild("Bar") and
                                v.BG.Icon.Image == s and
                                v.BG.Bar.BackgroundColor3 == Color3.fromRGB(255, 228, 81)
                         then
                            tab[f] = v.BG.Text.Text
                        end
                    end
                end
            end
            return tab
        end
        function IsAnyBoost()
            local t = GetCurrentFieldBoost()
            for k, v in pairs(t) do
                return true
            end
            return false
        end
        function IsBoostEnd(Field)
            local GUI = game.Players.LocalPlayer.PlayerGui.ScreenGui.TileGrid
            for k, v in pairs(GUI:GetChildren()) do
                if v.Name == "IconTile" and v:FindFirstChild("BG") then
                    for f, s in pairs(FieldIconID) do
                        if
                            v.BG:FindFirstChild("Icon") and v.BG:FindFirstChild("Text") and v.BG:FindFirstChild("Bar") and
                                v.BG.Icon.Image == s and
                                v.BG.Bar.BackgroundColor3 == Color3.fromRGB(255, 228, 81)
                         then
                            if f == Field then
                                return false
                            end
                        end
                    end
                end
            end
            return true
        end
        function GetTunnel()
            for k, v in pairs(game.Workspace.Monsters:GetChildren()) do
                if string.match(v.Name, "Tunnel") then
                    if v:FindFirstChild("Config") then
                        if v:FindFirstChild("Hunter") then
                            if v.Hunter.Value == game.Players.LocalPlayer.Name then
                                return v
                            end
                        end
                    end
                end
            end
        end
        function GetKing()
            for k, v in pairs(game.Workspace.Monsters:GetChildren()) do
                if v.Name=="King Beetle (Lvl 7)" then
                    if v:FindFirstChild("Config") then
                        if v:FindFirstChild("Hunter") then
                            if v.Hunter.Value == game.Players.LocalPlayer.Name then
                                return v
                            end
                        end
                    end
                end
            end
        end
        function GetMobIns(Mob)
            return game.Workspace.MonsterSpawners[Mob]
        end
        function GetAttach(Mob)
            local Att = Mob:FindFirstChild("Attachment")
            if Att then
                return Att
            else
                return Mob:FindFirstChild("TimerAttachment")
            end
        end
        function GetQuestMob(Quest)
            for k, v in pairs(moblistpolar) do
                if string.match(Quest, v) then
                    --print(v)
                    return v
                end
            end
        end

        function CheckMob(Mob)
            for k, v in pairs(TimerMob[Mob]) do
                local t = GetMobIns(v)
                if GetAttach(t).TimerGui.TimerLabel.Visible == false then
                    return t
                end
            end
        end

        function CheckCoco()
            local k = "CoconutCrab"
            local t = GetMobIns(k)
            if GetAttach(t).TimerGui.TimerLabel.Visible == false then
                return t
            end
        end
        function CheckSnail()
            local k = "StumpSnail"
            local t = GetMobIns(k)
            if GetAttach(t).TimerGui.TimerLabel.Visible == false then
                return t
            end
        end
        function CheckTunnel()
            local k = "TunnelBear"
            local t = GetMobIns(k)
            if GetAttach(t).TimerGui.TimerLabel.Visible == false then
                return t
            end
        end
        function CheckKing()
            local k = "King Beetle Cave"
            local t = GetMobIns(k)
            if GetAttach(t).TimerGui.TimerLabel.Visible == false then
                return t
            end
        end
        function CheckComando()
            local k = "Commando Chick"
            local t = GetMobIns(k)
            if GetAttach(t).TimerGui.TimerLabel.Visible == false then
                return t
            end
        end

        function GetCurrentAmountOfBee()
            local bee = 0
            for k, v in pairs(game.Workspace.Honeycombs:GetChildren()) do
                if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                    for l, s in pairs(v.Cells:GetChildren()) do
                        if s.CellType.Value ~= "Empty" and tostring(s.CellType.Value) ~= "nil" then
                            bee = bee + 1
                        end
                    end
                end
            end
            return bee
        end
        function SendHook(Url, HoneyPolen, TFItemHook)
            local HttpService = game:GetService("HttpService")
            local tb = {
                content = "Sent in: " .. tostring(os.date()),
                embeds = {
                    {
                        color = nil,
                        fields = ListToField(HoneyPolen, TFItemHook),
                        author = {
                            name = "Sea Hub Bee Swarm Simulator"
                        }
                    }
                }
            }
            local a =
                syn.request(
                {
                    Url = Url,
                    Method = "POST",
                    Body = HttpService:JSONEncode(tb),
                    Headers = {
                        ["Content-Type"] = "application/json"
                    }
                }
            )
            --print(a.Body)
            return a.Body
        end
        function RedBlueWhite(bee)
            local FieldColor = {
                ["Red"] = "Strawberry Field",
                ["Blue"] = "Pine Tree Forest",
                ["White"] = "Pineapple Patch"
            }
            if bee < 5 then
                FieldColor["Red"] = "Mushroom Field"
                FieldColor["Blue"] = "Blue Flower Field"
                FieldColor["White"] = "Sunflower Field"
            else
                if bee >= 5 and bee < 15 then
                    FieldColor["Red"] = "Strawberry Field"
                    FieldColor["Blue"] = "Bamboo Field"
                    FieldColor["White"] = "Spider Field"
                else
                    if bee >= 15 then
                        FieldColor["Red"] = "Rose Field"
                        FieldColor["Blue"] = "Pine Tree Forest"
                        FieldColor["White"] = "Pumpkin Patch"

                        if bee >= 35 then
                            if not CheckCoco() then
                                FieldColor["White"] = "Coconut Field"
                            end
                            FieldColor["Red"] = "Pepper Patch"
                        end
                    end
                end
            end
            return FieldColor
        end
        local col = {"Red", "Blue", "White"}
        local FieldColor = {
            ["Red"] = "Strawberry Field",
            ["Blue"] = "Pine Tree Forest",
            ["White"] = "Pineapple Patch"
        }
        local PanaBearQuest = {
            "Lesson on Ladybugs",
            "Rhino Rumble",
            "Beetle Battle",
            "Spider Slayer",
            "Ladybug Bonker",
            "Spider Slayer 2",
            "Rhino Wrecking",
            "Final Showdown",
            "Werewolf Hunter",
            "Skirmish with Scorpions",
            "Mantis Massacre",
            "The REAL Final Showdown",
            "Ant Arrival",
            "Winged Wack Attack",
            "Fire Fighter",
            "Army Ant Assault",
            "Colossal Combat",
            "Eager Exterminator",
            "Leaper Lickin'",
            "Colossal Combat 2",
            "Outrageous Onslaught",
            "Royal Rumble",
            "Ultimate Ant Annihilation 1",
            "Ultimate Ant Annihilation 2",
            "Ultimate Ant Annihilation 3",
            "Ultimate Ant Annihilation 4",
            "Ultimate Ant Annihilation 5"
        }
        local BlackBearQuest = {
            "Sunflower Start",
            "Dandelion Deed",
            "Pollen Fetcher",
            "Red Request",
            "Into The Blue",
            "Variety Fetcher",
            "Bamboo Boogie",
            "Red Request 2",
            "Cobweb Sweeper",
            "Leisure Loot",
            "White Pollen Wrangler",
            "Pineapple Picking",
            "Pollen Fetcher 2",
            "Weed Wacker",
            "Red + Blue = Gold",
            "Colorless Collection",
            "Spirit Of Springtime",
            "Weed Wacker 2",
            "Pollen Fetcher 3",
            "Lucky Landscaping",
            "Azure Adventure",
            "Pink Pineapples",
            "Blue Mushrooms",
            "Cobweb Sweeper 2",
            "Rojo-A-Go-Go",
            "Rojo-A-Go-Go",
            "Pollen Fetcher 4",
            "Bouncing Around Biomes",
            "Blue Pineapples",
            "Rose Request",
            "Search For The White Clover",
            "Stomping Grounds",
            "Collecting Cliffside",
            "Mountain Meandering",
            "Quest Of Legends",
            "High Altitude",
            "Blissfully Blue",
            "Rouge Round-up",
            "White As Snow",
            "Solo On The Stump",
            "Colorful Craving",
            "Pumpkins, Please!",
            "Smorgasbord",
            "Pollen Fetcher 5",
            "White Clover Redux",
            "Strawberry Field Forever",
            "Tasting The Sky",
            "Whispy and Crispy",
            "Walk Through The Woods",
            "Get Red-y",
            "One Stop On The Tip Top",
            "Blue Mushrooms 2",
            "Pretty Pumpkins",
            "Black Bear, Why?",
            "Bee A Star",
            "Bamboo Boogie 2: Bamboo Boogaloo",
            "Rocky Red Mountain",
            "Can't Without Ants",
            "The 15 Bee Zone",
            "Bubble Trouble",
            "Sweet And Sour",
            "Rare Red Clover",
            "Low Tier Treck",
            "Okey-Pokey",
            "Pollen Fetcher 6",
            "Capsaicin Collector",
            "Mountain Mix",
            "You Blue It",
            "Variety Fetcher 2",
            "Getting Stumped",
            "Weed Wacker 3",
            "All-Whitey Then",
            "Red Delicacy",
            "Boss Battles",
            "Myth In The Making"
        }
        function FieldQuest(Quest)
            local Fiel = false
            local cl = false
            for k, v in pairs(GetListField()) do
                if string.match(Quest, v) then
                    Fiel = true
                    break
                end
            end
            for k, v in pairs(col) do
                if string.match(Quest, v) then
                    cl = true
                    break
                end
            end
            if not Fiel and not cl and string.match(Quest, "Collect") then
                return Field
            end
            for k, v in pairs(GetListField()) do
                if string.match(Quest, v) then
                    --print(v)
                    return v
                end
            end
            for k, v in pairs(col) do
                if string.match(Quest, v) then
                    return RedBlueWhite(GetCurrentAmountOfBee())[v]
                end
            end
        end
        function GetPolarQuest()
            if QuestF:FindFirstChild("Frame") then
                for k, v in pairs(QuestF.Frame:GetChildren()) do
                    if v:IsA("Frame") then
                        if string.match(v.TitleBar.Text, "Polar") then
                            if string.match(v.TitleBar.Text, "Polar Bear's Beesmas Feast") then
                                --return v
                            else
                                return v
                            end
                        -- print(v.TitleBar.Text)
                        end
                    end
                end
            end
        end
        function GetQuest(name)
            if QuestF:FindFirstChild("Frame") then
                for k, v in pairs(QuestF.Frame:GetChildren()) do
                    if v:IsA("Frame") then
                        if name == "Black Bear" then
                            for f, s in pairs(BlackBearQuest) do
                                if string.match(string.lower(v.TitleBar.Text), string.lower(s)) or v.TitleBar.Text == s then
                                    return v
                                end
                            end
                        end
                        if name=="Panda Bear" then 
                            for f,s in pairs(PanaBearQuest) do 
                                if string.match(string.lower(v.TitleBar.Text), string.lower(s)) or v.TitleBar.Text == s then
                                    return v
                                end
                            end
                        end
                    end
                end
                for k, v in pairs(QuestF.Frame:GetChildren()) do
                    if v:IsA("Frame") then
                        if string.match(v.TitleBar.Text, name) then
                            return v
                        -- print(v.TitleBar.Text)
                        end
                    end
                end
            end
        end
        function IsQuestDone(Quest)
            if Quest:FindFirstChild("Description") then
                if string.match(Quest.Description.Text, "Complete") then
                    return true
                else
                    return false
                end
            else
                return true
            end
        end
        function GetQuestField(Quest)
            for k, v in pairs(fieldlistpolar) do
                if string.match(Quest, v) then
                    --print(v)
                    return v
                end
            end
        end
        function God()
            local cam = workspace.CurrentCamera
            local cf = cam.CFrame
            local me = game.Players.LocalPlayer
            local c, h =
                (me.Character or workspace:FindFirstChild(me.Name)),
                me.Character:FindFirstChildOfClass("Humanoid")
            local nh = h:Clone()
            nh.Health = nh.MaxHealth
            me.Character = nil
            nh:SetStateEnabled(15, false)
            nh:SetStateEnabled(1, false)
            nh:SetStateEnabled(0, false)
            nh.Parent = c
            h:Destroy()
            me.Character, cam.CameraSubject = c, nh
            wait()
            cam.CFrame = cf
            local s = c:FindFirstChild("Animate")
            if s then
                s.Disabled = true
                wait()
                s.Disabled = false
            end
            delay(
                1,
                function()
                    if nh then
                        nh.Health = 256
                    end
                end
            )
        end
        function GetItemListWithValue()
            local HttpService = game:GetService("HttpService")
            local StatCache = require(game.ReplicatedStorage.ClientStatCache)
            local data = StatCache.Get()
            return data.Eggs
        end
        function GetItemList()
            local ks = GetItemListWithValue()
            local tb = {}
            for k, v in pairs(ks) do
                table.insert(tb, k)
            end
            return tb
        end
        function IsInstantValid(Instant)
            local replicatedstorage = game:GetService("ReplicatedStorage")
            local rep = replicatedstorage
            local r = require
            local player = game:GetService("Players").LocalPlayer

            local function getTimeSinceToyActivation(name)
                return r(rep.OsTime)() - r(rep.ClientStatCache):Get("ToyTimes")[name]
            end

            local function getTimeUntilToyAvailable(n)
                return workspace.Toys[n].Cooldown.Value - getTimeSinceToyActivation(n)
            end
            local StatCache = require(game.ReplicatedStorage.ClientStatCache)
            local gt = StatCache.Get()
            local toy = gt["ToyTimes"]
            if toy[Instant] then
                return getTimeUntilToyAvailable(Instant) <= 0
            else
                return false
            end
        end
        function UseInstant(Instant)
            game.ReplicatedStorage.Events.ToyEvent:FireServer(Instant)
        end
        function IsAnyInstantValid()
            local Lis = GetInstantList()
            for k, v in pairs(Lis) do
                if IsInstantValid(v.Name) then
                    return true
                end
            end
            return false
        end
        function UnGod()
            local cam = workspace.CurrentCamera
            local cf = cam.CFrame
            local me = game.Players.LocalPlayer
            local c, h =
                (me.Character or workspace:FindFirstChild(me.Name)),
                me.Character:FindFirstChildOfClass("Humanoid")
            local nh = h:Clone()
            nh.Health = nh.MaxHealth
            me.Character = nil
            nh:SetStateEnabled(15, true)
            nh:SetStateEnabled(1, true)
            nh:SetStateEnabled(0, true)
            nh.Parent = c
            h:Destroy()
            me.Character, cam.CameraSubject = c, nh
            wait()
            cam.CFrame = cf
            local s = c:FindFirstChild("Animate")
            if s then
                s.Disabled = false
                wait()
                s.Disabled = true
            end
            delay(
                1,
                function()
                    if nh then
                        nh.Health = 0
                    end
                end
            )
        end
        function GetEquipSrinkler()
            local StatCache = require(game.ReplicatedStorage.ClientStatCache)
            return StatCache["Get"]()["EquippedSprinkler"]
        end
        function GetListField()
            local tablee = {}
            for k, v in pairs(game.Workspace.FlowerZones:GetChildren()) do
                table.insert(tablee, v.Name)
            end
            return tablee
        end

        function GetListNpc()
            local tablee = {}
            for k, v in pairs(game.Workspace.NPCs:GetChildren()) do
                table.insert(tablee, v.Name)
            end
            return tablee
        end

        function GetNerestFieldByObject(Obj)
            local lis = GetListField()
            local old = "Sunflower Field"
            for k, v in pairs(lis) do
                if v then
                    if
                        (Obj.Position - GetFieldByName(v).Position).magnitude <
                            (Obj.Position - GetFieldByName(old).Position).magnitude
                     then
                        old = v
                    end
                end
            end
            return old
        end
        function GetNpcByName(name)
            return game.Workspace.NPCs[name]
        end
        function IsValidTokenPos(token, Field)
            local bool = false
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            if (token.Position - GetFieldByName(Field).Position).magnitude < 60 then
                bool = true
            end
            return bool
        end
        local ksf = nil
        function ValidTokenRare(TempField)
            if SproutRare then
                local t = IsSprout()
                for k, v in pairs(Folder2:GetChildren()) do
                    if v.Name == "Sprout" then
                        if GetNerestFieldByObject(v) == TempField then
                            ksf = tick()
                            return true
                        end
                    end
                end
                if ksf then
                    if tick() - ksf < 10 then
                        return true
                    else
                        ksf = nil
                    end
                end
                return false
            else
                return true
            end
        end
        function IsValidCharactPos(Field)
            local bool = false
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            if (GetFieldByName(Field).Position - HumanoidRootPart.Position).magnitude < 60 then
                bool = true
            end
            return bool
        end
        function IsToken(token)
            if token == nil then
                return false
            end
            if not token.Parent then return false end
            if token then
                if token.Orientation.Z ~= 0 then
                    return false
                end
                if token:FindFirstChild("FrontDecal") then
                else
                    return false
                end
                if not token.Name == "C" then
                    return false
                end
                if not token:IsA("Part") then
                    return false
                end

                return true
            else
                return false
            end
        end
        function IsTokenBlacklist(token)
            local bool = false
            if token:FindFirstChild("Blacklisted") then
                bool = true
            end
            return bool
        end
        function GetNerestToken(Field)
            local token = game.Workspace.Collectibles:FindFirstChild("C")
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local h = HumanoidRootPart.Position
            for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                if v and token then
                    if v and IsValidTokenPos(v, Field) and IsToken(v) and not IsTokenBlacklist(v) and isActiveTokens(v) then
                        if string.match(v.FrontDecal.Texture, "1629547638") then
                            return v
                        end
                    end
                    if
                        IsToken(v) and IsValidTokenPos(v, Field) and isActiveTokens(v) and not IsTokenBlacklist(v) and
                            not (AutoRare and ValidTokenRare(Field))
                     then
                        for k, ss in pairs(PrioritizeList) do
                            if PrioritizeListTF[k] then
                                if string.match(v.FrontDecal.Texture, ss) then
                                    return v
                                end
                            end
                        end
                    end
                    if
                        (h - v.Position).magnitude < (h - token.Position).magnitude and IsToken(v) and
                            IsValidTokenPos(v, Field) and
                            not IsTokenBlacklist(v) and
                            not (IgnoreHoney and string.match(v.FrontDecal.Texture, "1472135114")) and
                            isActiveTokens(v)
                     then
                        if AutoRare and ValidTokenRare() then
                            if TokenIdByK[v.FrontDecal.Texture] then
                                if TokenTrueFakse[TokenIdByK[v.FrontDecal.Texture]] then
                                    token = v
                                end
                            end
                        else
                            token = v
                        end
                    end
                end
            end
            if v and token and AutoRare and ValidTokenRare() and IsToken(token) and isActiveTokens(v) then
                if TokenIdByK[token.FrontDecal.Texture] then
                    if TokenTrueFakse[TokenIdByK[token.FrontDecal.Texture]] then
                        return token
                    end
                end
            else
                return token
            end
        end

        function EyeAllSprout()
            for k, v in pairs(Folder2:GetChildren()) do
                if v.Name == "Sprout" then
                    v.Transparency = 0
                end
            end
        end
        function GetComandoMob()
            for k, v in pairs(game.Workspace.Monsters:GetChildren()) do
                if string.match(v.Name, "Commando") then
                    if
                        v:FindFirstChild("Target") and v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart")
                     then
                        if tostring(v.Target.Value) == game.Players.LocalPlayer.Name then
                            return v
                        end
                    end
                end
            end
        end
        function tpT(t, k)
            if k == nil then
                k = 1
            end
            local plr = game:service "Players".LocalPlayer
            local tween_s = game:service "TweenService"
            local info =
                TweenInfo.new(
                (game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - t.p).magnitude / k,
                Enum.EasingStyle.Quad
            )
            local tic_k = tick()
            --local params = {...};
            --local cframe = CFrame.new(params[1],params[2],params[3]);
            local cframe = t
            local tween, err =
                pcall(
                function()
                    local tween =
                        tween_s:Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = cframe})
                    local done = false
                    --print(done)
                    tween.Completed:Connect(
                        function()
                            done = true
                        end
                    )
                    noclip = true
                    tween:Play()
                    while (done == false) do
                        wait()

                        --print(tostring(done.."k"))
                    end
                    noclip = false
                    -- print(done)
                end
            )
            --syn.write_clipboard(err)
            --print(err)
            if not tween then
                return err
            end
        end

        function Walkk(t, Call,token)
            local Players = game:GetService("Players")
            local Character = Players.LocalPlayer.Character
            local Humanoid = Character:WaitForChild("Humanoid")
            local stop = false
            Character:WaitForChild("Humanoid"):MoveTo(t.p)
            Character:WaitForChild("Humanoid").MoveToFinished:Connect(
                function()
                    stop = true
                end
            )
            local a = tick()
            while (stop == false) do
                if Call then
                    Call()
                end
                
                --print(token)
                wait()
                if not ValidFarm() then 
                    Character:WaitForChild("Humanoid"):Move(Vector3.new(0, 0, 0))
                    stop=true
                    return
                end
                if (token and not IsToken(token)) then
                   -- print("Not Find")
                   Character:WaitForChild("Humanoid"):Move(Vector3.new(0, 0, 0))
                    stop=true
                    return
                end
                --Humanoid:MoveTo(t.p)
                if tick() - a >= 5  then
                    Character:WaitForChild("Humanoid"):Move(Vector3.new(0, 0, 0))
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = t
                    stop = true
                --wait(1)
                end
                if NearTP and (game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position-t.p).magnitude<=NearTPMag then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=t
                    stop=true
                end
            end
        end

        function tp(t, k,token)
            if TypeFarming == "Fast Tween" then
                tpT(t, 100)
            else
                if TypeFarming == "Tween" then
                    tpT(t, 40)
                else
                    if TypeFarming == "TP" then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = t
                        wait(0.1)
                    else
                        if TypeFarming == "Walk" then
                            --game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(t.Position.X,t.Position.Y,t.Position.Z))
                            --game:GetService("Players").LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
                            --WalkToHive(t)
                            Walkk(t,function() end,token)
                        else
                            local Players = game:GetService("Players")
                            local Character = Players.LocalPlayer.Character
                            local Humanoid = Character:WaitForChild("Humanoid")
                            local speed = Humanoid.WalkSpeed
                            Walkk(
                                t,
                                function()
                                    Humanoid.WalkSpeed = 100
                                end,token
                            )
                            Humanoid.WalkSpeed = speed
                        end
                    end
                end
            end
        end

        function TpToHive()
            local sp = game:GetService("Players").LocalPlayer.SpawnPos.Value.p
            local p = CFrame.new(sp.X, sp.Y, sp.Z, -0.996, 0, 0.02, 0, 1, 0, -0.02, 0, -0.9) + Vector3.new(0, 0, 8)
            Going = true
            if TypeSell == "TP" then
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = p
            else
                if TypeSell == "Tween" then
                    tpT(p, 40)
                else
                    tpT(p, 100)
                end
            end
            Going = false
        end
        function TpToField(Field)
            local p = GetFieldByName(Field).CFrame * CFrame.new(0, 0, 0) + Vector3.new(0, 8, 0)
            if TypeSell == "TP" then
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = p
            else
                if TypeSell == "Tween" then
                    tpT(p, 40)
                else
                    tpT(p, 100)
                end
            end
        end
        function IsBackPackFull()
            local bool = false
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            if Player.CoreStats.Pollen.Value >= Player.CoreStats.Capacity.Value then
                bool = true
            end
            return bool
        end
        function DigOther()
            for k, v in pairs(game.Players:GetChildren()) do
                local chara = v.Character
                for f, s in pairs(chara:GetChildren()) do
                    if s:IsA("Tool") then
                        if s:FindFirstChild("ClickEvent") then
                            s.ClickEvent:FireServer()
                        end
                    end
                end
            end
        end

        function Dig()
            coroutine.wrap(
                function()
                    local tool
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Tool") and v:FindFirstChild("ClickEvent") then
                            tool = v
                            if tool:FindFirstChild("ClickEvent") then
                                v.ClickEvent:FireServer()
                            end
                        end
                    end
                    local s, e =
                        pcall(
                        function()
                            if tool and getsenv and not is_sirhurt_closure and not PROTOSMASHER_LOADED then -- Sirhurt and proto argggg
                                local t = getsenv(tool.ClientScriptMouse).collectStart
                                t()
                            else
                                if tool then
                                tool.ClickEvent:FireServer()
                                end
                            end
                        end
                    )
                    if e then
                        pcall(
                            function()
                                if tool then
                                tool.ClickEvent:FireServer()
                                end
                            end
                        )
                    end
                end
            )()
            pcall(
                function()
                    --DigOther()
                    workspace.NPCs.Onett.Onett["Porcelain Dipper"].ClickEvent:FireServer()
                end
            )
        end
        function IsSprout()
            for k, v in pairs(Folder2:GetChildren()) do
                if v.Name == "Sprout" then
                    return v
                end
            end
            return nil
        end
        function IsSproutInField(TempField)
            local s = false
            for k, v in pairs(Folder2:GetChildren()) do
                if v.Name == "Sprout" then
                    if GetNerestFieldByObject(v) == TempField then
                        s = true
                    end
                end
            end
            return s
        end
        function GetCurrenItem(Item)
            local StatCache = require(game.ReplicatedStorage.ClientStatCache)
            return StatCache.Get()["Eggs"][Item]
        end
        function GetCurrenMicro()
            local StatCache = require(game.ReplicatedStorage.ClientStatCache)
            return StatCache.Get()["Eggs"]["Micro-Converter"]
        end

        function IsBuffOn(Buff)
            local PlGui = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:WaitForChild("TileGrid")

            for k, v in pairs(PlGui:GetChildren()) do
                if v:FindFirstChild("BG") then
                    if v.BG:FindFirstChild("Icon") then
                        if string.match(v.BG.Icon.Image, BarId[Buff]) then
                            return true
                        end
                    --print(v.BG.Icon.Image)
                    end
                end
            end
            return false
        end
        function GetMemoList()
            local tab = {}
            for k, v in pairs(game.Workspace.Toys:GetChildren()) do
                if string.match(v.Name, "Memory Match") then
                    table.insert(tab, v)
                end
            end
            return tab
        end
        function GetInstantList()
            local tab = {}
            for k, v in pairs(game.Workspace.Toys:GetChildren()) do
                if string.match(v.Name, "Instant Converter") then
                    table.insert(tab, v)
                end
            end
            return tab
        end
        function ObjListTostring(tabl)
            local Tab = {}
            for k, v in pairs(tabl) do
                table.insert(Tab, v.Name)
            end
            return Tab
        end
        function ListToField(ListHoney, ListItem)
            local ListAll = GetItemListWithValue()
            local fields = {}

            for k, v in pairs(ListHoney) do
                if v then
                    table.insert(
                        fields,
                        {
                            name = k,
                            value = game:GetService("Players").LocalPlayer.CoreStats[k].Value
                        }
                    )
                end
            end

            for k, v in pairs(ListItem) do
                if v then
                    table.insert(
                        fields,
                        {
                            name = k,
                            value = ListAll[k]
                        }
                    )
                end
            end

            return fields
        end
        function CollectAllTokenInField()
            for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                if
                    IsToken(v) and
                        IsValidTokenPos(v, GetNerestFieldByObject(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")))
                 then
                    tp(
                        CFrame.new(
                            v.Position.X,
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y,
                            v.Position.Z
                        )
                    )
                end
            end
        end
        function UseAnt()
            game.ReplicatedStorage.Events.ToyEvent:FireServer("Ant Challenge")
        end
        function NormalSell()
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local sangzboi = HumanoidRootPart.CFrame
            TpToHive()
            wait(.2)
            game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
            wait(.5)
            repeat
                local tpos = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ActivateButton
                if tpos.AbsolutePosition.Y ~= 4 then
                    game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
                    TpToHive()
                    wait(.5)
                end
                if string.match(tpos.TextBox.Text, "Stop") then
                else
                    if string.match(tpos.TextBox.Text, "Collect") then
                    else
                        if string.match(tpos.TextBox.Text, "Talk") then
                        else
                            game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(
                                "ToggleHoneyMaking"
                            )
                        end
                    end
                end
                wait()
            until Player.CoreStats.Pollen.Value <= 0 or not Farm or not Running or not ValidFarm()
            wait(3)
        end
        game:GetService("RunService").Stepped:connect(
            function()
                if noclip then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
                end
            end
        )
        function ListToOb(tabl, tf)
            local out = {}
            for k, v in pairs(tabl) do
                if tf then
                    out[v] = true
                else
                    out[v] = false
                end
            end
            return out
        end

        function GetCurrentFieldMask()
            local nr = GetNerestFieldByObject(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
            if IsValidTokenPos(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), nr) then
                local Colour = MaskField2[tostring(nr)]
                local Mask = MaskF[Colour]
                return Mask
            end
        end
        function EquipMaskByField()
            local A_1 = "Equip"
            local A_2 = {
                ["Mute"] = true,
                ["Type"] = GetCurrentFieldMask(),
                ["Category"] = "Accessory"
            }
            local Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
            Event:InvokeServer(A_1, A_2)
        end
        function EquipAtt()
            local A_1 = "Equip"
            local A_2 = {
                ["Mute"] = true,
                ["Type"] = AttackMask,
                ["Category"] = "Accessory"
            }
            local Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
            Event:InvokeServer(A_1, A_2)
        end



        function GetSortedToken(Field)
            local token = {}
            local sortedtoken = {}
            for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                if v and IsValidTokenPos(v, Field) and IsToken(v) and not IsTokenBlacklist(v) and isActiveTokens(v) and (v.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude < 60 then
                    local booll = false
                    for k, ss in pairs(PrioritizeList) do
                        if PrioritizeListTF[k] then
                            if string.match(v.FrontDecal.Texture, ss) then

                                table.insert(sortedtoken,v)
                                booll=true
                                break
                            end
                        end
                    end
                    if not bool and
                    not (IgnoreHoney and string.match(v.FrontDecal.Texture, "1472135114")) then
                    table.insert(token, v)
                    end
                end
            end
            
        
            function Por(p)
                local nr
                local kk = 0
                for k, v in pairs(token) do
                    if not nr then
                        nr = v
                        kk = k
                    end
                    
                    if (v.Position - p.Position).magnitude < (nr.Position - p.Position).magnitude then
                        nr = v
                        kk = k
                    end
                
                end
                if nr then
                    table.insert(sortedtoken, nr)
                    table.remove(token, kk)
                    Por(nr)
                end
            end
            Por(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
        
            return sortedtoken
        end
        
        function GetSortedBubble(Field)
            local token = {}
            local sortedtoken = {}
            for k, v in pairs(game.Workspace.Particles:GetChildren()) do
                if v:IsA("Part") then
                    if v.Name == "Bubble" then
                        if IsValidTokenPos(v, Field) and ValidFarm() and Farm then
                            table.insert(token,v)
                        end
                    end
                end
            end
            
        
            function Por(p)
                local nr
                local kk = 0
                for k, v in pairs(token) do
                    if not nr then
                        nr = v
                        kk = k
                    end
                    
                    if (v.Position - p.Position).magnitude < (nr.Position - p.Position).magnitude then
                        nr = v
                        kk = k
                    end
                
                end
                if nr then
                    table.insert(sortedtoken, nr)
                    table.remove(token, kk)
                    Por(nr)
                end
            end
            Por(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
        
            return sortedtoken
        end
        function GetSortedFlame(Field)
            local token = {}
            local sortedtoken = {}
            for k, v in pairs(game.Workspace.Particles:GetChildren()) do
                if v:IsA("Part") then
                    if v.Name == "FlamePart" then
                        if
                            IsValidTokenPos(v, Field) and ValidFarm() and
                                v:FindFirstChild("Fire") and
                                Farm
                         then
                          table.insert(token,v)
                        end
                    end
                end
            end
            
        
            function Por(p)
                local nr
                local kk = 0
                for k, v in pairs(token) do
                    if not nr then
                        nr = v
                        kk = k
                    end
                    
                    if (v.Position - p.Position).magnitude < (nr.Position - p.Position).magnitude then
                        nr = v
                        kk = k
                    end
                
                end
                if nr then
                    table.insert(sortedtoken, nr)
                    table.remove(token, kk)
                    Por(nr)
                end
            end
            Por(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
        
            return sortedtoken
        end
        
        function GetSortedCoconut(Field)
            local token = {}
            local sortedtoken = {}
            for d, f in pairs(game.Workspace.Particles:GetChildren()) do
                if f.Name == "WarningDisk" then
                    if f:FindFirstChild("Mesh") then
                        if IsValidTokenPos(f, Field) and Farm and Running and ValidFarm() then
                            if f.Size == Vector3.new(30, 0.4, 30) then
                                table.insert(token,f)
                            end
                        end
                    end
                end
            end
            
        
            function Por(p)
                local nr
                local kk = 0
                for k, v in pairs(token) do
                    if not nr then
                        nr = v
                        kk = k
                    end
                    
                    if (v.Position - p.Position).magnitude < (nr.Position - p.Position).magnitude then
                        nr = v
                        kk = k
                    end
                
                end
                if nr then
                    table.insert(sortedtoken, nr)
                    table.remove(token, kk)
                    Por(nr)
                end
            end
            Por(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
        
            return sortedtoken
        end


        



        local ks = {}
        for k, v in pairs(GetInstantList()) do
            ks[v.Name] = v.Platform.CFrame
        end
        local Snail = false
        local AutoSaveSettings = false
        local QuestTF = ListToOb(QuestList, true)
        local AutoTunnel2=false
        local AutoTunnel = false
        local Crab = false
        local AntMethod = ""
        local AutoBoost = false
        local memo = false
        local AutoQuest = false
        local AutoDispenser = false
        local KickWhen = false
        local AutoQ = false
        local AutoMob = false
        
        local AutoBadge = false
        local Speed = false
        local SmartSp = false
        local AutoBuffItem = false
        local AutoMob = false
        local KillVici = false
        local TpRare = false
        local Jump = false
        local CollectBubble = false
        local DonateItem = "Ticket"
        local AutoDonate = false
        local WebHookTime = 120
        local DonateAmount = 1
        local SpeedTy = 70
        local JumpTy = 70
        local AutoPolar = false
        local WebHook = false
        local KillWindy = false
        local AutoMondo = false
        local BringIns = false
        local AutoInstant = false
        local AutoMicro = false
        local AutoAntPass = false
        local AutoFAnt = false
        local AutoEquipSpark = false
        local AutoComando = false
        local GatherFlame = false
        local AutoBoostOnly = false
        local WebHookUrl = ""
        local AutoKing = false
        local AutoDodge = false
        local EquipMaskBy = false
        local BuyAnt = false
        local AutoFarmBoost = false
        local ListBuff = {"Blue Extract", "Red Extract", "Oil", "Enzymes", "Glue", "Tropical Drink", "Stinger"}
        local ListFieldBoost = {"Red Field Booster", "Blue Field Booster", "Field Booster","Coconut Dispenser"}
        local TFListFieldBoost = ListToOb(ListFieldBoost, true)
        local FarmBuffList = {
            ["Blue Extract"] = false,
            ["Red Extract"] = false,
            ["Oil"] = false,
            ["Enzymes"] = false,
            ["Glue"] = false,
            ["Tropical Drink"] = false,
            ["Stinger"] = false
        }
        --local FarmBuffList = ToTrueFalse(ListBuff)
        local TFItemHook = ListToOb(GetItemList())
        local ShowS = false
        local UntilGif = false
        
        -- default settings
        local DefaultConfig = {
            AutoDig=AutoDig,
            KickWhen=KickWhen,
            Farm = Farm,
            NearTP=NearTP,
            NearTPMag=NearTPMag,
            WebHookUrl = WebHookUrl,
            WebHookTime = WebHookTime,
            HoneyPolen = HoneyPolen,
            TFItemHook = TFItemHook,
            AutoSaveSettings = AutoSaveSettings,
            CurrentField = CurrentField,
            TypeFarming = TypeFarming,
            TypeSell = TypeSell,
            CollectCoco = CollectCoco,
            StopMoreOne = StopMoreOne,
            CollectBubble = CollectBubble,
            GatherFlame = GatherFlame,
            SmartSp = SmartSp,
            AutoMicro = AutoMicro,
            AutoInstant = AutoInstant,
            AutoAntPass = AutoAntPass,
            IgnoreHoney = IgnoreHoney,
            AutoRare = AutoRare,
            AutoSprout = AutoSprout,
            AutoMob = AutoMob,
            AutoQ = AutoQ,
            AutoFarmBoost = AutoFarmBoost,
            AutoQuest = AutoQuest,
            AutoBadge = AutoBadge,
            AutoDispenser = AutoDispenser,
            AutoGum = AutoGum,
            AutoCoco = AutoCoco,
            memo = memo,
            BringIns = BringIns,
            BuyAnt = BuyAnt,
            EquipMaskBy = EquipMaskBy,
            EquipAttack = EquipAttack,
            AutoBoost = AutoBoost,
            TFListFieldBoost = TFListFieldBoost,
            TokenTrueFakse2 = TokenTrueFakse2,
            KillCrab = KillCrab,
            Snail = Snail,
            KillVici = KillVici,
            KillWindy = KillWindy,
            AutoTunnel = AutoTunnel,
            AutoComando = AutoComando,
            AutoMondo = AutoMondo,
            AutoBoostOnly = AutoBoostOnly,
            TokenTrueFakse = TokenTrueFakse,
            SproutRare = SproutRare,
            QuestTF = QuestTF,
            TimerKiet = TimerKiet,
            CollectType = CollectType,
            PrioritizeListTF = PrioritizeListTF,
            MaskF = MaskF,
            AttackMask = AttackMask,
            AutoSaveSettings = AutoSaveSettings,
            AutoKing=AutoKing
        }

        local HttpService = game:GetService("HttpService")
        local SaveFileName = "BeeSwarmSimulator.json" -- name
        if AutoSave then
        if not isfolder("Sea Hub Premium") then
            makefolder("Sea Hub Premium")
        end
        if
            not pcall(
                function()
                    readfile("Sea Hub Premium/" .. SaveFileName)
                end
            )
         then
            writefile("Sea Hub Premium/" .. SaveFileName, HttpService:JSONEncode(DefaultConfig))
        end
        local function SaveSettings()
            writefile("Sea Hub Premium/" .. SaveFileName, HttpService:JSONEncode(S))
        end
        local S
        function k()
           local s,e = pcall(
                function()
                    S = HttpService:JSONDecode(readfile("Sea Hub Premium/" .. SaveFileName))
                end
            )
            if e then 
                writefile("Sea Hub Premium/" .. SaveFileName, HttpService:JSONEncode(DefaultConfig))
                k()
            end
        end
        k()
            
        --pcall(
            --function()
                if S.AutoDig then AutoDig = S.AutoDig end
                if S.KickWhen then KickWhen=S.KickWhen end
                if S.NearTP then NearTP=S.NearTP end
                if S.NearTPMag then NearTPMag=S.NearTPMag end
                if S.Farm then  Farm = S.Farm end
                BringIns = S.BringIns
                GatherFlame = S.GatherFlame
                AutoSaveSettings = S.AutoSaveSettings
                AutoCoco = S.AutoCoco
                AutoQ = S.AutoQ
                AutoSprout = S.AutoSprout
                AutoAntPass = S.AutoAntPass
                SmartSp = S.SmartSp
                AutoBoost = S.AutoBoost
                CollectCoco = S.CollectCoco
                SproutRare = S.SproutRare
                TokenTrueFakse2 = S.TokenTrueFakse2
                StopMoreOne = S.StopMoreOne
                AutoFarmBoost = S.AutoFarmBoost
                AutoRare = S.AutoRare
                memo = S.memo
                KillCrab = S.KillCrab
                AttackMask = S.AttackMask
                EquipMaskBy = S.EquipMaskBy
                AutoDispenser = S.AutoDispenser
                MaskF = S.MaskF
                IgnoreHoney = S.IgnoreHoney
                AutoBoostOnly = S.AutoBoostOnly
                KillVici = S.KillVici
                CollectType = S.CollectType
                TimerKiet = S.TimerKiet
                AutoBadge = S.AutoBadge
                AutoInstant = S.AutoInstant
                TFListFieldBoost = S.TFListFieldBoost
                QuestTF = S.QuestTF
                TokenTrueFakse = S.TokenTrueFakse
                CollectBubble = S.CollectBubble
                AutoMicro = S.AutoMicro
                EquipAttack = S.EquipAttack
                AutoComando = S.AutoComando
                AutoTunnel = S.AutoTunnel
                KillWindy = S.KillWindy
                PrioritizeListTF = S.PrioritizeListTF
                TypeSell = S.TypeSell
                AutoMob = S.AutoMob
                AutoMondo = S.AutoMondo
                BuyAnt = S.BuyAnt
                AutoQuest = S.AutoQuest
                CurrentField = S.CurrentField
                AutoGum = S.AutoGum
                TypeFarming = S.TypeFarming
                Snail = S.Snail
                if S.WebHookUrl then
                    WebHookUrl = S.WebHookUrl
                end
                if S.HoneyPolen then
                    HoneyPolen = S.HoneyPolen
                end
                if S.TFItemHook then
                    TFItemHook = S.TFItemHook
                end
                if S.WebHookTime then
                    WebHookTime = S.WebHookTime
                end
                if S.AutoKing then AutoKing = S.AutoKing end
            --end
        --)
            end
        -- save settings function

        spawn(
            function()
                while wait(1) do
                    if AutoSaveSettings then
                        local DefaultConfig = {
                            AutoDig=AutoDig,
                            KickWhen=KickWhen,
                            Farm=Farm,
                            NearTP=NearTP,
                            NearTPMag=NearTPMag,
                            WebHookTime = WebHookTime,
                            WebHookUrl = WebHookUrl,
                            HoneyPolen = HoneyPolen,
                            TFItemHook = TFItemHook,
                            AutoSaveSettings = AutoSaveSettings,
                            CurrentField = CurrentField,
                            TypeFarming = TypeFarming,
                            TypeSell = TypeSell,
                            CollectCoco = CollectCoco,
                            StopMoreOne = StopMoreOne,
                            CollectBubble = CollectBubble,
                            GatherFlame = GatherFlame,
                            SmartSp = SmartSp,
                            AutoMicro = AutoMicro,
                            AutoInstant = AutoInstant,
                            AutoAntPass = AutoAntPass,
                            IgnoreHoney = IgnoreHoney,
                            AutoRare = AutoRare,
                            AutoSprout = AutoSprout,
                            AutoMob = AutoMob,
                            AutoQ = AutoQ,
                            AutoFarmBoost = AutoFarmBoost,
                            AutoQuest = AutoQuest,
                            AutoBadge = AutoBadge,
                            AutoDispenser = AutoDispenser,
                            AutoGum = AutoGum,
                            AutoCoco = AutoCoco,
                            memo = memo,
                            BringIns = BringIns,
                            BuyAnt = BuyAnt,
                            EquipMaskBy = EquipMaskBy,
                            EquipAttack = EquipAttack,
                            AutoBoost = AutoBoost,
                            TFListFieldBoost = TFListFieldBoost,
                            TokenTrueFakse2 = TokenTrueFakse2,
                            KillCrab = KillCrab,
                            Snail = Snail,
                            KillVici = KillVici,
                            KillWindy = KillWindy,
                            AutoTunnel = AutoTunnel,
                            AutoComando = AutoComando,
                            AutoMondo = AutoMondo,
                            AutoBoostOnly = AutoBoostOnly,
                            TokenTrueFakse = TokenTrueFakse,
                            SproutRare = SproutRare,
                            QuestTF = QuestTF,
                            TimerKiet = TimerKiet,
                            CollectType = CollectType,
                            PrioritizeListTF = PrioritizeListTF,
                            MaskF = MaskF,
                            AttackMask = AttackMask,
                            AutoKing=AutoKing
                        }

                        local HttpService = game:GetService("HttpService")
                        local SaveFileName = "BeeSwarmSimulator.json" -- name

                        if not isfolder("Sea Hub Premium") then
                            makefolder("Sea Hub Premium")
                        end

                        writefile("Sea Hub Premium/" .. SaveFileName, HttpService:JSONEncode(DefaultConfig))
                    end
                end
            end
        )
        spawn(
            function()
                while wait(1) do
                    Con = {
                        AutoDig=AutoDig,
                        KickWhen=KickWhen,
                        Farm = Farm,
                        NearTP=NearTP,
                        NearTPMag=NearTPMag,
                        HoneyPolen = HoneyPolen,
                        TFItemHook = TFItemHook,
                        AutoSaveSettings = AutoSaveSettings,
                        CurrentField = CurrentField,
                        TypeFarming = TypeFarming,
                        TypeSell = TypeSell,
                        CollectCoco = CollectCoco,
                        StopMoreOne = StopMoreOne,
                        CollectBubble = CollectBubble,
                        GatherFlame = GatherFlame,
                        SmartSp = SmartSp,
                        AutoMicro = AutoMicro,
                        AutoInstant = AutoInstant,
                        AutoAntPass = AutoAntPass,
                        IgnoreHoney = IgnoreHoney,
                        AutoRare = AutoRare,
                        AutoSprout = AutoSprout,
                        AutoMob = AutoMob,
                        AutoQ = AutoQ,
                        AutoFarmBoost = AutoFarmBoost,
                        AutoQuest = AutoQuest,
                        AutoBadge = AutoBadge,
                        AutoDispenser = AutoDispenser,
                        AutoGum = AutoGum,
                        AutoCoco = AutoCoco,
                        memo = memo,
                        BringIns = BringIns,
                        BuyAnt = BuyAnt,
                        EquipMaskBy = EquipMaskBy,
                        EquipAttack = EquipAttack,
                        AutoBoost = AutoBoost,
                        TFListFieldBoost = TFListFieldBoost,
                        TokenTrueFakse2 = TokenTrueFakse2,
                        KillCrab = KillCrab,
                        Snail = Snail,
                        KillVici = KillVici,
                        KillWindy = KillWindy,
                        AutoTunnel = AutoTunnel,
                        AutoComando = AutoComando,
                        AutoMondo = AutoMondo,
                        AutoBoostOnly = AutoBoostOnly,
                        TokenTrueFakse = TokenTrueFakse,
                        SproutRare = SproutRare,
                        QuestTF = QuestTF,
                        TimerKiet = TimerKiet,
                        CollectType = CollectType,
                        PrioritizeListTF = PrioritizeListTF,
                        MaskF = MaskF,
                        AttackMask = AttackMask
                    }
                end
            end
        )

        Title = Library.CreateMain("Sea Hub Premium")

        Page1 = Title.AddPage("Farming")

        Section11 = Page1.AddSection("Settings")
        LibDropdown =
            Section11.AddDropdown(
            "Sellect Field",
            {List = GetListField(), Search = true, Selected = false, DefaultValue = CurrentField},
            function(v)
                FarmFieldList["CurrentField"] = v
               -- CurrentField = tostring(v)
                --Field = tostring(v)
               -- TempField = Field
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Sellect Mode",
            {List = {"Walk", "Tween", "Fast Tween", "TP"}, Search = false, Selected = false, DefaultValue = TypeFarming},
            function(v)
                local tx =tostring(v)
                TypeFarming = tostring(v)
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Sellect Go To Hive Mode",
            {List = {"TP", "Tween", "Fast Tween"}, Search = false, Selected = false, DefaultValue = TypeSell},
            function(v)
                TypeSell = tostring(v)
            end
        )
        -- LibToggle =
        --     Section11.AddToggle(
        --     "Auto Dodge Mob",
        --     {DefaultValue = AutoDodge},
        --     function(v)
        --         AutoDodge = v
        --     end
        -- )
        LibToggle =
            Section11.AddToggle(
            "Instant Tp when get near to token",
            {DefaultValue = NearTP},
            function(v)
                NearTP = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Collect Coconut",
            {DefaultValue = CollectCoco},
            function(v)
                CollectCoco = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Stop Farm when >1 players",
            {DefaultValue = StopMoreOne},
            function(v)
                StopMoreOne = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Collect Bubble",
            {DefaultValue = CollectBubble},
            function(v)
                CollectBubble = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Gather Flame",
            {DefaultValue = GatherFlame},
            function(v)
                GatherFlame = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Smart Auto Sprinkler",
            {DefaultValue = SmartSp},
            function(v)
                SmartSp = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Use Micro Conventer",
            {DefaultValue = AutoMicro},
            function(v)
                AutoMicro = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Use Instant Conventer",
            {DefaultValue = AutoInstant},
            function(v)
                AutoInstant = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Use Ant Pass",
            {DefaultValue = AutoAntPass},
            function(v)
                AutoAntPass = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Ignore Honey Token",
            {DefaultValue = IgnoreHoney},
            function(v)
                IgnoreHoney = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Collect Rare Item only",
            {DefaultValue = AutoRare},
            function(v)
                AutoRare = v
            end
        )
        Section11 = Page1.AddSection("Farms")
        LibToggle =
            Section11.AddToggle(
            "Auto Farm",
            {DefaultValue = Farm},
            function(v)
                Farm = v
                TempField = Field
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Dig",
            {DefaultValue = AutoDig},
            function(Toggle)
                AutoDig = Toggle
                spawn(
                    
                    function()
                        while wait() and Running and AutoDig do
                            if AutoDig then
                                Dig()
                            end
                        end
                    end
                )
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Farm Sprout",
            {DefaultValue = AutoSprout},
            function(v)
                AutoSprout = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill mob",
            {DefaultValue = AutoMob},
            function(v)
                AutoMob = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Farm Quest",
            {DefaultValue = AutoQ},
            function(v)
                AutoQ = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Farm Field Boost",
            {DefaultValue = AutoFarmBoost},
            function(v)
                AutoFarmBoost = v
            end
        )

        Page1 = Title.AddPage("Extras")
        Section11 = Page1.AddSection("Extras")
        LibToggle =
            Section11.AddToggle(
            "Auto Accept Quest",
            {DefaultValue = AutoQuest},
            function(v)
                AutoQuest = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Recive Badge",
            {DefaultValue = AutoBadge},
            function(v)
                AutoBadge = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Use Dispensers",
            {DefaultValue = AutoDispenser},
            function(v)
                AutoDispenser = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Use Gumdrop",
            {DefaultValue = AutoGum},
            function(Toggle)
                AutoGum = Toggle
                spawn(
                    function()
                        while wait(2) and Running and AutoGum do
                            if AutoGum then
                                local A = {
                                    ["Name"] = "Gumdrops"
                                }
                                local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
                                Event:FireServer(A)
                            end
                        end
                    end
                )
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Use Coconut",
            {DefaultValue = AutoCoco},
            function(Toggle)
                AutoCoco = Toggle
                spawn(
                    function()
                        while wait(3) and Running and AutoCoco do
                            if AutoCoco then
                                local A = {
                                    ["Name"] = "Coconut"
                                }
                                local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
                                Event:FireServer(A)
                            end
                        end
                    end
                )
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Godmode",
            {DefaultValue = false},
            function(Toggle)
                print("Hi")
                if Toggle then
                    God()
                else
                    UnGod()
                end
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Memory match cheat",
            {DefaultValue = memo},
            function(Toggle)
                memo = Toggle
                spawn(
                    function()
                        while wait() and memo do
                            if memo then
                                for i, v in pairs(
                                    game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("MinigameLayer"):GetChildren(

                                    )
                                ) do
                                    for k, q in pairs(v:WaitForChild("GuiGrid"):GetDescendants()) do
                                        if q.Name == "ObjContent" or q.Name == "ObjImage" then
                                            q.Visible = true
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Bring Instant Converter",
            {DefaultValue = BringIns},
            function(Toggle)
                BringIns = Toggle
                spawn(
                    function()
                        while wait() and BringIns do
                            if BringIns and BringInsValid and BringInsValidQ then
                                local x = GetInstantList()
                                for k, v in pairs(x) do
                                    if IsInstantValid(v.Name) and GetCurrenItem("Ticket") > 0 then
                                        local x = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position
                                        v.Platform.CFrame =
                                            CFrame.new(
                                            x.X,
                                            x.Y - 7,
                                            x.Z,
                                            2.11000443e-05,
                                            0.0596015155,
                                            0.998222232,
                                            -1,
                                            2.11000443e-05,
                                            1.9878149e-05,
                                            -1.9878149e-05,
                                            -0.998222232,
                                            0.0596014857
                                        )
                                        break
                                    else
                                        v.Platform.CFrame = ks[v.Name]
                                    end
                                end
                            else
                                for k, v in pairs(GetInstantList()) do
                                    v.Platform.CFrame = ks[v.Name]
                                end
                            end
                        end
                        --if not BringIns then
                        for k, v in pairs(GetInstantList()) do
                            -- print("Bring back")
                            v.Platform.CFrame = ks[v.Name]
                        end
                        --end
                    end
                )
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto buy ant pass when end",
            {DefaultValue = BuyAnt},
            function(Toggle)
                BuyAnt = Toggle
                spawn(
                    function()
                        while wait(.5) and BuyAnt do
                            if BuyAnt then
                                if GetCurrenItem("AntPass") == 0 and GetCurrenItem("Ticket") >= 10 then
                                    game.ReplicatedStorage.Events.ToyEvent:FireServer("Ant Pass Dispenser")
                                end
                            end
                        end
                    end
                )
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto plant magic bean",
            {DefaultValue = PlantMagic},
            function(Toggle)
                PlantMagic = Toggle
                spawn(
                    function()
                        while wait(.5) and PlantMagic do
                            if PlantMagic then
                                game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Magic Bean"})
                            end
                        end
                    end
                )
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Rejoin When Get Kicked",
            {DefaultValue = KickWhen},
            function(Toggle)
                KickWhen = Toggle
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto farm leaves",
            {DefaultValue = false},
            function(Toggle)
                Leaf = Toggle
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto farm Sparkle",
            {DefaultValue = false},
            function(Toggle)
                SparkF = Toggle
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto equip mask by field",
            {DefaultValue = EquipMaskBy},
            function(Toggle)
                EquipMaskBy = Toggle
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto equip mask when attack",
            {DefaultValue = EquipAttack},
            function(Toggle)
                EquipAttack = Toggle
            end
        )
        local DropdownToggleDefaultValue = {
            ["Kiet"] = true
        }
        LibToggle =
            Section11.AddToggle(
            "Auto use items",
            {DefaultValue = false},
            function(v)
                AutoBuffItem = v
            end
        )
        Section11.AddDropdown(
            "Item List",
            {List = FarmBuffList, Search = false, Selected = true, DefaultValue = nil},
            function(i, v)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto use field boost",
            {DefaultValue = AutoBoost},
            function(Toggle)
                AutoBoost = Toggle
                spawn(
                    function()
                        while AutoBoost and wait(3) do
                            --print(IsAnyBoost())
                            if AutoBoost then
                                
                                for k, v in pairs(ListFieldBoost) do
                                    if TFListFieldBoost[v] and not (AutoBoostOnly and IsAnyBoost()) and AutoBoost then
                                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                                        Event:FireServer(v)
                                        wait(3)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        )

        Section11.AddDropdown(
            "Boost List",
            {List = TFListFieldBoost, Search = false, Selected = true, DefaultValue = nil},
            function(i, v)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto TP rare items",
            {DefaultValue = false},
            function(Toggle)
                TpRare = Toggle
                spawn(
                    function()
                        while wait() and TpRare do
                            --wait(.3)
                            if TpRare then
                                for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                                    if IsToken(v) and TokenIdByK[v.FrontDecal.Texture] then
                                        if
                                            TokenTrueFakse2[TokenIdByK[v.FrontDecal.Texture]] and TpRare and
                                                not IsTokenBlacklist(v)
                                         then
                                            Kiet1308 = true
                                            wait(.2)
                                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                CFrame.new(v.Position.X, v.Position.Y, v.Position.Z)
                                            local Black = Instance.new("IntValue")
                                            Black.Parent = v
                                            Black.Name = "Blacklisted"
                                        --Kiet1308 = false
                                        end
                                    end
                                end
                            end
                            Kiet1308 = false
                        end
                    end
                )
            end
        )
        Section11.AddDropdown(
            "Item List",
            {List = TokenTrueFakse2, Search = false, Selected = true, DefaultValue = nil},
            function(i, v)
            end
        )
        Section11.AddButton(
            "Check vicious bee",
            function()
                local function callback(text)
                    if text == "Yes" then
                        plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                            game.workspace.Particles.Vicious.CFrame * CFrame.new(0, 10, 0)
                    end
                end
                local bindableFunction = Instance.new("BindableFunction")
                bindableFunction.OnInvoke = callback
                if game.workspace.Particles:FindFirstChild("Vicious") then
                    -- game.StarterGui:SetCore(
                    --     "SendNotification",
                    --     {
                    --         Title = "VICIOUS SPAWNED!",
                    --         Text = "Would u like to TP to Vicious?",
                    --         Duration = 30,
                    --         Callback = bindableFunction,
                    --         Button1 = "Yes",
                    --         Button2 = "No"
                    --     }
                    -- )
                    Library.AddNotiQuestion(
                        {
                            Title = "Sea Hub Premium",
                            Text = "Windy Bee SPAWNED! Would u like to TP to it?",
                            Yes = "Yes",
                            No = "No",
                            Time = 10
                        },
                        function()
                            plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                game.workspace.Particles.Vicious.CFrame * CFrame.new(0, 10, 0)
                        end
                    )
                else
                    -- game.StarterGui:SetCore(
                    --     "SendNotification",
                    --     {
                    --         Title = "No Vicious",
                    --         Text = "Vicious isn't spawned yet",
                    --         Duration = 10
                    --     }
                    -- )
                    Library.AddNoti({Title = "Sea Hub Premium", Text = "Vicious Bee isnt spawned yet", Time = 5})
                end
            end
        )
        Section11.AddButton(
            "Check windy bee",
            function()
                local function callback(text)
                    if text == "Yes" then
                        plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                            game.workspace.NPCBees.Windy.CFrame * CFrame.new(0, 5, 0)
                    end
                end
                local bindableFunction = Instance.new("BindableFunction")
                bindableFunction.OnInvoke = callback
                if game.workspace.NPCBees:FindFirstChild("Windy") then
                    -- game.StarterGui:SetCore(
                    --     "SendNotification",
                    --     {
                    --         Title = "WINDY SPAWNED!",
                    --         Text = "Would u like to TP to Windy?",
                    --         Duration = 30,
                    --         Callback = bindableFunction,
                    --         Button1 = "Yes",
                    --         Button2 = "No"
                    --     }
                    -- )
                    Lib.AddNotiQuestion(
                        {Text = "WINDY BEE SPAWNED! Would u like to TP to Vicious?", Time = 10},
                        function()
                            plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                game.workspace.NPCBees.Windy.CFrame * CFrame.new(0, 5, 0)
                        end
                    )
                else
                    -- game.StarterGui:SetCore(
                    --     "SendNotification",
                    --     {
                    --         Title = "No Windy",
                    --         Text = "Windy isn't spawned yet",
                    --         Duration = 10
                    --     }
                    -- )
                    Library.AddNoti({Title = "Sea Hub Premium", Text = "Windy Bee isnt spawned yet", Time = 5})
                end
            end
        )

        Section11 = Page1.AddSection("Auto Kill")
        LibToggle =
            Section11.AddToggle(
            "Auto Kill Coconut Crab",
            {DefaultValue = KillCrab},
            function(v)
                KillCrab = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill Stump Snail",
            {DefaultValue = Snail},
            function(v)
                Snail = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill Vicious Bee",
            {DefaultValue = KillVici},
            function(v)
                KillVici = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill Windy Bee",
            {DefaultValue = KillWindy},
            function(v)
                KillWindy = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill King Beetle",
            {DefaultValue = AutoKing},
            function(v)
                AutoKing = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill Tunnel Bear",
            {DefaultValue = AutoTunnel},
            function(v)
                AutoTunnel = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill Comando Chick",
            {DefaultValue = AutoComando},
            function(v)
                AutoComando = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Kill Mondo Chick",
            {DefaultValue = AutoMondo},
            function(v)
                AutoMondo = v
            end
        )

        Page1 = Title.AddPage("Local Player")
        Section11 = Page1.AddSection("Humanoid Settings")
        LibToggle =
            Section11.AddToggle(
            "Set Walk Speed",
            {DefaultValue = false},
            function(v)
                Speed = v
            end
        )
        LibSlider =
            Section11.AddSlider(
            "Walk Speed",
            {Min = 1, Max = 200, DefaultValue = 70, Precise = false},
            function(v)
                SpeedTy = tonumber(v)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Set Jump Power",
            {DefaultValue = false},
            function(v)
                Jump = v
            end
        )
        LibSlider =
            Section11.AddSlider(
            "Jump Power",
            {Min = 1, Max = 200, DefaultValue = 70, Precise = false},
            function(v)
                JumpTy = tonumber(v)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Invisible",
            {DefaultValue = false},
            function(Toggle)
                Invisible = Toggle
                while Invisible do 
                    wait()
                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") then
                    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,-1600,0)
                    local Toroso = game.Players.LocalPlayer.Character.LowerTorso
                    Toroso.Name="Kiet"
                    Toroso.Parent = game.ReplicatedStorage
                    --wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=old
                    end

                end
                if not Invisible then 
                   -- game.Players.LocalPlayer.Character.Humanoid.Health = 0
                   if not game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") and game.ReplicatedStorage:FindFirstChild("Kiet") then 
                        local t = game.ReplicatedStorage:FindFirstChild("Kiet")
                        t.Name = "LowerTorso"
                        t.Parent = game.Players.LocalPlayer.Character
                    end
                
                end
            end
        )
        Section11 = Page1.AddSection("Teleports")
        LibDropdown =
            Section11.AddDropdown(
            "TP Field",
            {List = GetListField(), Search = true, Selected = false, DefaultValue = nil},
            function(v)
                if v then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = GetFieldByName(v).CFrame
                end
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "TP NPC",
            {List = GetListNpc(), Search = true, Selected = false, DefaultValue = nil},
            function(v)
                if not v then
                    return
                end
                local cf = GetNpcByName(v).Platform.Position
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(cf.X, cf.Y + 3, cf.Z)
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "TP Shop",
            {List = ShopList, Search = true, Selected = false, DefaultValue = nil},
            function(v)
                if not v then
                    return
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Shops[v].Floor.Value.CFrame*CFrame.new(0,5,0)
            end
        )
        local ListIns = GetInstantList()
        LibDropdown =
            Section11.AddDropdown(
            "TP Instant Converter",
            {List = ObjListTostring(ListIns), Search = true, Selected = false, DefaultValue = nil},
            function(v)
                if not v then
                    return
                end
                for k, s in pairs(ListIns) do
                    if s.Name == v then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                            CFrame.new(s.Platform.Position.X, s.Platform.Position.Y + 3, s.Platform.Position.Z)
                    end
                end
            end
        )
        local ListMemo = GetMemoList()
        LibDropdown =
            Section11.AddDropdown(
            "TP Memory Matches",
            {List = ObjListTostring(ListMemo), Search = true, Selected = false, DefaultValue = nil},
            function(v)
                if not v then
                    return
                end
                for k, s in pairs(ListMemo) do
                    if s.Name == v then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                            CFrame.new(s.Platform.Position.X, s.Platform.Position.Y + 3, s.Platform.Position.Z)
                    end
                end
            end
        )
        Section11.AddButton(
            "TP to hive",
            function()
                local sp = game:GetService("Players").LocalPlayer.SpawnPos.Value
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = sp
            end
        )

        Page1 = Title.AddPage("Extras 2")
        Section11 = Page1.AddSection("Auto Feed")

        local Item2Feed = "Treat"
        local FeedAmout = 1
        local AutoFeed = false
        LibTextBox =
            Section11.AddTextBox(
            "Horizontal",
            {Number = true, DefaultValue = nil, Placeholder = "Number here"},
            function(v)
                if not v then
                    return
                end
                x = tonumber(v)
            end
        )
        LibTextBox =
            Section11.AddTextBox(
            "Vertical",
            {Number = true, DefaultValue = nil, Placeholder = "Number here"},
            function(v)
                if not v then
                    return
                end
                y = tonumber(v)
            end
        )
        LibTextBox =
            Section11.AddTextBox(
            "Feed Amount",
            {Number = true, DefaultValue = nil, Placeholder = "Number here"},
            function(v)
                if not v then
                    return
                end
                FeedAmout = tonumber(v)
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Item To Feed",
            {
                List = {
                    "Blueberry",
                    "Strawberry",
                    "Pineapple",
                    "SunflowerSeed",
                    "Bitterberry",
                    "Neonberry",
                    "MoonCharm",
                    "AtomicTreat",
                    "Treat"
                },
                Search = true,
                Selected = false,
                DefaultValue = nil
            },
            function(v)
                if not v then
                    return
                end
                Item2Feed = tostring(v)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Feed until gifted",
            {DefaultValue = false},
            function(v)
                UntilGif = v
            end
        )
        local LibToggle
        LibToggle =
            Section11.AddToggle(
            "Auto Feed",
            {DefaultValue = false},
            function(v)
                AutoFeed = v
                spawn(
                    function()
                        while AutoFeed and wait() do
                            if AutoFeed then
                                local DoEvent = game.ReplicatedStorage.Events.ConstructHiveCellFromEgg
                                DoEvent:InvokeServer(x, y, Item2Feed, FeedAmout)
                                wait()
                                if UntilGif then
                                    local k = game.Players.LocalPlayer.PlayerGui.ScreenGui.BeePopUp.TypeName
                                    if string.match(k.Text, "Gif") then
                                        AutoFeed=false
                                    end
                                    k.Text = ""
                                end
                            end
                        end
                    end
                )
            end
        )
        Section11 = Page1.AddSection("Auto Donate")
        LibDropdown =
            Section11.AddDropdown(
            "Item To Donate",
            {List = ItemDonateList, Search = true, Selected = false, DefaultValue = nil},
            function(v)
                if not v then
                    return
                end
                DonateItem = tostring(v)
            end
        )
        LibTextBox =
            Section11.AddTextBox(
            "Donate Amount",
            {Number = true, DefaultValue = nil, Placeholder = "Number here"},
            function(v)
                if not v then
                    return
                end
                DonateAmount = tonumber(v)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Donate",
            {DefaultValue = false},
            function(v)
                AutoDonate = v
            end
        )

        Page1 = Title.AddPage("Webhook")
        Section11 = Page1.AddSection("Web Hook")
        LibTextBox =
            Section11.AddTextBox(
            "Web Hook Url",
            {Number = false, DefaultValue = WebHookUrl, Placeholder = "Text here"},
            function(v)
                if not v then
                    return
                end
                WebHookUrl = v
            end
        )
        LibTextBox =
            Section11.AddTextBox(
            "Time per request",
            {Number = true, DefaultValue = nil, Placeholder = "Text here"},
            function(v)
                if not v then
                    return
                end
                WebHookTime = tonumber(v)
            end
        )
        Section11.AddButton(
            "Test Webhook ",
            function()
                SendHook(WebHookUrl, HoneyPolen, TFItemHook)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Web Hook",
            {DefaultValue = false},
            function(v)
                WebHook = v
            end
        )
        Section11 = Page1.AddSection("Notification Setting")
        LibDropdown =
            Section11.AddDropdown(
            "Core Stats Notification",
            {List = HoneyPolen, Search = true, Selected = true, DefaultValue = nil},
            function(v)
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Item Notification",
            {List = TFItemHook, Search = true, Selected = true, DefaultValue = nil},
            function(v)
            end
        )
        if _G.Beta then
        Page1 = Title.AddPage("Beta")
        Section11 = Page1.AddSection("Auto Ant")
        LibToggle =
            Section11.AddToggle(
            "Auto Farm Ant Chanllenge",
            {DefaultValue = false},
            function(v)
                AutoFAnt = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Equip Spark Staff",
            {DefaultValue = false},
            function(v)
                AutoEquipSpark = v
            end
        )
        Section11 = Page1.AddSection("Auto Quest")
        LibToggle =
            Section11.AddToggle(
            "Auto Bucko Bee Quest",
            {DefaultValue = false},
            function(v)
                QuestTFBeta["Bucko Bee"] = v
               
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Riley Bee Quest",
            {DefaultValue = false},
            function(v)
                QuestTFBeta["Riley Bee"] = v
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Auto Panda Bear Bee Quest",
            {DefaultValue = false},
            function(v)
                QuestTFBeta["Panda Bear"] = v
            end
        )
    end

        Page1 = Title.AddPage("Settings")
        Section11 = Page1.AddSection("Auto Use Field Boost Setting")
        LibToggle =
            Section11.AddToggle(
            "Auto When other field boost end",
            {DefaultValue = false},
            function(v)
                AutoBoostOnly = v
            end
        )
        Section11 = Page1.AddSection("Collect Rare Item settings")
        LibDropdown =
            Section11.AddDropdown(
            "Token List",
            {List = TokenTrueFakse, Search = true, Selected = true, DefaultValue = nil},
            function(v)
            end
        )
        LibToggle =
            Section11.AddToggle(
            "Enable when have sprout only",
            {DefaultValue = SproutRare},
            function(v)
                SproutRare = v
            end
        )
        Section11 = Page1.AddSection("Auto Farm Quest Settings")
        LibDropdown =
            Section11.AddDropdown(
            "Quest List",
            {List = QuestTF, Search = true, Selected = true, DefaultValue = nil},
            function(v)
            end
        )
        Section11 = Page1.AddSection("Auto Kill Mob Settings")
        LibDropdown =
            Section11.AddDropdown(
            "Mob List",
            {List = TimerKiet, Search = true, Selected = true, DefaultValue = nil},
            function(v)
            end
        )
       

        Section11 = Page1.AddSection("Auto Farm Settings")
        LibDropdown =
            Section11.AddDropdown(
            "Collect Token Type",
            {List = {"Optimize", "Normal"}, Search = true, Selected = false, DefaultValue = "Optimize"},
            function(v)
                if not v then
                    return
                end
                if v == "Optimize" then
                    CollectType = "Optimize"
                else
                    CollectType = "Normal"
                end
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Prioritize Token",
            {List = PrioritizeListTF, Search = true, Selected = true, DefaultValue = nil},
            function(v)
            end
        )
        LibSlider =
        Section11.AddSlider(
        "Instant TP when get near to token settings",
        {Min = 1, Max = 30, DefaultValue = NearTPMag, Precise = false},
        function(v)
           NearTPMag=tonumber(v)
        end
    )
        Section11 = Page1.AddSection("Auto Equip Mask Settings")
        LibDropdown =
            Section11.AddDropdown(
            "White Mask",
            {
                List = {"Gummy Mask", "Demon Mask", "Diamond Mask", "Honey Mask", "Bubble Mask", "Fire Mask"},
                Search = true,
                Selected = false,
                DefaultValue = MaskF["White"]
            },
            function(v)
                if not v then
                    return
                end
                MaskF["White"] = v
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Red Mask",
            {
                List = {"Gummy Mask", "Demon Mask", "Diamond Mask", "Honey Mask", "Bubble Mask", "Fire Mask"},
                Search = true,
                Selected = false,
                DefaultValue = MaskF["Red"]
            },
            function(v)
                if not v then
                    return
                end
                MaskF["Red"] = v
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Blue Mask",
            {
                List = {"Gummy Mask", "Demon Mask", "Diamond Mask", "Honey Mask", "Bubble Mask", "Fire Mask"},
                Search = true,
                Selected = false,
                DefaultValue = MaskF["Blue"]
            },
            function(v)
                if not v then
                    return
                end
                MaskF["Blue"] = v
            end
        )
        LibDropdown =
            Section11.AddDropdown(
            "Attack Mask",
            {List = {"Demon Mask", "Fire Mask"}, Search = true, Selected = false, DefaultValue = AttackMask},
            function(v)
                AttackMask = v
            end
        )
        Section11 = Page1.AddSection("Script Settings")
        LibToggle =
            Section11.AddToggle(
            "Auto Saves Settings",
            {DefaultValue = AutoSaveSettings},
            function(v)
                AutoSaveSettings = v
            end
        )
        Section11 = Page1.AddSection("UI Settings")
        LibToggle =
            Section11.AddKeybind(
            "Toggle UI",
            {Key = Enum.KeyCode.RightControl},
            function(v)
                Library.ToggledUI()
            end
        )
        --Library.LoadUI()

        spawn(
            function()
                while wait() do
                    if AutoDonate then
                        game.ReplicatedStorage.Events.WindShrineDonation:InvokeServer(DonateItem, DonateAmount)
                        --wait(2)
                        game.ReplicatedStorage.Events.WindShrineTrigger:FireServer()
                        --wait(2)
                        for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                            if IsToken(v) then
                                local win = game:GetService("Workspace").NPCs["Wind Shrine"].Platform
                                if (win.Position - v.Position).magnitude < 30 then
                                    Valid2 = false
                                    wait(.5)
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                        v.CFrame
                                end
                            end
                        end
                        wait(.5)
                        Valid2 = true
                    end
                end
            end
        )
        spawn(function() 
            while wait() do 
                if AutoDodge and Farm and ValidFarm() then 
                    for k,v in pairs(game.Workspace.Monsters:GetChildren()) do 
                        if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health >0 and (game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position-v.Head.Position).magnitude<30 then 
                            ValidDodg = false
                            noclip=true
                            repeat wait()
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Head.CFrame * CFrame.new(25,0,0)    
                            
                            until not v or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health==0  or not v:FindFirstChild("Head") or not ((game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position-v.Head.Position).magnitude<30) or not AutoDodge or not Farm
                            noclip=false
                            ValidDodg=true
                        end
                    end
                end
            end
        end)
        spawn(
            function()
                while wait() do
                    if WebHook then
                        local s, e =
                            pcall(
                            function()
                                SendHook(WebHookUrl, HoneyPolen, TFItemHook)
                            end
                        )
                        --print(e)

                        local tic = tick()
                        repeat
                            wait()
                        until (tick() - tic) > WebHookTime or not WebHook
                    end
                end
            end
        )
        spawn(
            function()
                while (wait()) do
                    local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
                    if Speed then
                        Humanoid.WalkSpeed = SpeedTy
                    end
                    if Jump then
                        Humanoid.JumpPower = JumpTy
                    end
                    for k, v in pairs(ListBuff) do
                        if FarmBuffList[v] == true then
                            if not IsBuffOn(v) then
                                local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand

                                local A = {
                                    ["Name"] = v
                                }
                                Event:FireServer(A)
                            end
                        end
                    end
                end
            end
        )

        -- spawn(
        --     function()
        --         while wait(3) do
        --             --print(IsAnyBoost())
        --             if AutoBoost then
        --                 for k, v in pairs(ListFieldBoost) do

        --                     if TFListFieldBoost[v] and not(AutoBoostOnly and IsAnyBoost()) and AutoBoost then
        --                         local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
        --                         Event:FireServer(v)
        --                         wait(3)
        --                     end
        --                 end
        --             end
        --         end
        --     end
        -- )
        -- spawn(
        --     function()
        --         while wait() do
        --             if BringIns and BringInsValid and BringInsValidQ then
        --                 local x = GetInstantList()
        --                 for k, v in pairs(x) do
        --                     if IsInstantValid(v.Name) and GetCurrenItem("Ticket") > 0 then
        --                         local x = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        --                         v.Platform.CFrame =
        --                             CFrame.new(
        --                             x.X,
        --                             x.Y - 7,
        --                             x.Z,
        --                             2.11000443e-05,
        --                             0.0596015155,
        --                             0.998222232,
        --                             -1,
        --                             2.11000443e-05,
        --                             1.9878149e-05,
        --                             -1.9878149e-05,
        --                             -0.998222232,
        --                             0.0596014857
        --                         )
        --                         break
        --                     else
        --                         v.Platform.CFrame = ks[v.Name]
        --                     end
        --                 end
        --             else
        --                 for k, v in pairs(GetInstantList()) do
        --                     v.Platform.CFrame = ks[v.Name]
        --                 end
        --             end
        --         end
        --     end
        -- )
        spawn(
            function()
                while wait() do
                    if EquipAttack and Killing then
                        EquipAtt()
                    else
                        if EquipMaskBy and ValidEquip then
                            EquipMaskByField()
                        end
                    end
                end
            end
        )
        function IsInArr(it, arr)
            for k, v in pairs(arr) do
                if v == it then
                    return true
                end
            end
            return false
        end
        spawn(function()
            while wait(1) do 
                if KickWhen then 
                    if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
                        while wait() do
                            game.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
                        end
                    end
                end
            end
        end)
        local Blacklist = {"Gummy Bear", "Ant Challenge Info", "Bubble Bee Man 2", "Stick Bug"}
        spawn(
            function()
                while wait(2) do
                    if AutoQuest then
                        for k, v in pairs(game.Workspace.NPCs:GetChildren()) do
                            if not IsInArr(v.Name, Blacklist) then
                                if v:FindFirstChild("Platform") then
                                    if v.Platform.AlertPos.AlertGui.ImageLabel.ImageTransparency == 0 then
                                        local old = v.Platform.CFrame
                                        v.Platform.CanCollide = false
                                        BringInsValidQ = false
                                        local x = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position
                                        v.Platform.CFrame =
                                            CFrame.new(
                                            x.X,
                                            x.Y - 7,
                                            x.Z,
                                            2.11000443e-05,
                                            0.0596015155,
                                            0.998222232,
                                            -1,
                                            2.11000443e-05,
                                            1.9878149e-05,
                                            -1.9878149e-05,
                                            -0.998222232,
                                            0.0596014857
                                        )
                                        wait(.3)
                                        if
                                            string.match(
                                                game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text,
                                                "Talk"
                                            )
                                         then
                                            for i, v in pairs(
                                                getconnections(
                                                    game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.MouseButton1Click
                                                )
                                            ) do
                                                v.Function()
                                            end
                                        end
                                        wait(.3)
                                        repeat
                                            wait()
                                            local x = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position
                                            v.Platform.CFrame =
                                                CFrame.new(
                                                x.X,
                                                x.Y - 7,
                                                x.Z,
                                                2.11000443e-05,
                                                0.0596015155,
                                                0.998222232,
                                                -1,
                                                2.11000443e-05,
                                                1.9878149e-05,
                                                -1.9878149e-05,
                                                -0.998222232,
                                                0.0596014857
                                            )
                                            for i, v in pairs(
                                                getconnections(
                                                    game.Players.LocalPlayer.PlayerGui.ScreenGui.NPC.ButtonOverlay.MouseButton1Click
                                                )
                                            ) do
                                                v.Function()
                                            end
                                        until game.Players.LocalPlayer.PlayerGui.ScreenGui.NPC.Visible == false
                                        v.Platform.CFrame = old
                                        BringInsValidQ = true
                                    end
                                end
                            end
                        end
                    end
                    if AutoDispenser then
                        local A_1 = "Glue Dispenser"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                        local A_1 = "Wealth Clock"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                        local A_1 = "Strawberry Dispenser"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                        local A_1 = "Treat Dispenser"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                        local A_1 = "Free Ant Pass Dispenser"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                        local A_1 = "Blueberry Dispenser"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                        local A_1 = "Honey Dispenser"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                        local A_1 = "Free Royal Jelly Dispenser"
                        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                        Event:FireServer(A_1)
                    end
                    if AutoBadge then
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pepper")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Coconut")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Playtime")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Honey")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Quest")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Battle")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Ability")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Goo")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Sunflower")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Dandelion")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Mushroom")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Blue Flower")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Clover")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Spider")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Bamboo")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Strawberry")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pineapple")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pumpkin")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Cactus")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Rose")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pine Tree")
                        game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Stump")
                    end
                end
            end
        )
        -- spawn(
        --     function()
        --         while wait(2) and Running do
        --             if AutoGum then
        --                 local A = {
        --                     ["Name"] = "Gumdrops"
        --                 }
        --                 local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
        --                 Event:FireServer(A)
        --             end
        --         end
        --     end
        -- )
        -- spawn(
        --     function()
        --         while wait() do
        --             if memo then
        --                 for i, v in pairs(
        --                     game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("MinigameLayer"):GetChildren()
        --                 ) do
        --                     for k, q in pairs(v:WaitForChild("GuiGrid"):GetDescendants()) do
        --                         if q.Name == "ObjContent" or q.Name == "ObjImage" then
        --                             q.Visible = true
        --                         end
        --                     end
        --                 end
        --             end
        --         end
        --     end
        -- )
        -- spawn(
        --     function()
        --         while wait(3) and Running do
        --             if AutoCoco then
        --                 local A = {
        --                     ["Name"] = "Coconut"
        --                 }
        --                 local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
        --                 Event:FireServer(A)
        --             end
        --         end
        --     end
        -- )
        -- spawn(
        --     function()
        --         while wait() and Running do
        --             if AutoDig then
        --                 Dig()
        --             end
        --         end
        --     end
        -- )
        local RunSp = 0
        spawn(function() 
        while wait() do 
            if AutoSprout and Farm and ValidFarm() then
                local Sprout = IsSprout()
                if Sprout ~= nil then
                    local Fieldname = GetNerestFieldByObject(Sprout)
                    FarmFieldList["Sprout"] = Fieldname
                    while (wait() and Farm and AutoSprout) do
                        local t = IsSprout()
                        FarmFieldList["Sprout"] = Fieldname
                        if t then
                            if t.Position ~= Sprout.Position then
                                break
                            end
                        else
                            break
                        end
                    end
                    wait(20)
                else
                end
            end
            FarmFieldList["Sprout"] = FarmFieldList[LevelFarm[LevelFarmVK["Sprout"]-1]] 
        end
        end)

        spawn(function() 
            while wait(1) do 
                if Leaf then 
                    

                    for k,v in pairs(game.Workspace.Flowers:GetChildren()) do
                   
                        if v:FindFirstChild("LeafBurst") then
                            if ValidLeaf then ValidLeaf=false wait(.1) end
                           -- ValidLeaf=false
                           -- wait(.1)
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame=v.CFrame
                                wait(1)
                        end    
                        
                    end
                    ValidLeaf=true

                end
                if SparkF then 
                    
                    for _,v in pairs(game.workspace.Flowers:GetDescendants()) do
                        if string.find(v.Name,"Sparkles") then
                            if ValidLeaf then ValidLeaf=false wait(.1) end
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.CFrame
                            wait(1)
                            for k,v in pairs(workspace.Collectibles:GetChildren()) do
                                if IsToken(v) and IsValidTokenPos(v,GetNerestFieldByObject( game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))) then 
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v.Position.x,game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y,v.Position.z)
            
                                end
                                
                                
                            end
                        end
                    end
                      --  wait(1)
                       
                    ValidLeaf=true
                end
                

               
            end
        end)
        spawn(
            function()
                while (wait()) do
                    if AutoMob and Farm and ValidFarm() then
                        for k, v in pairs(TimerMob) do
                            if TimerKiet[k] then
                                local mob = CheckMob(k)
                                if mob and GetAttach(mob) then
                                    FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                    
                                    while wait() and AutoMob do
                                        local t = tick()
                                        FarmFieldList["Quest"] = GetNerestFieldByObject(mob)

                                        if GetAttach(mob).TimerGui.TimerLabel.Visible == true or tick() - t > 20 then
                                            break
                                        end
                                    end
                                    if AutoMob then
                                        wait(4)
                                    end
                                end
                            end
                        end
                        FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                        
                    end
                    if AutoQ then
                        if Farm and ValidFarm() then
                            if QuestTF["Polar Bear"] then
                                local t = GetPolarQuest()
                                --print(t)
                                if t then
                                    for k, v in pairs(t:GetChildren()) do
                                        if v:IsA("Frame") then
                                            if v:FindFirstChild("Description") then
                                                if not IsQuestDone(v) then
                                                    if string.match(v.Description.Text, "Collect") then
                                                        local field = GetQuestField(v.Description.Text)
                                                        --print(v.Description.Text)
                                                        if field then
                                                            
                                                            FarmFieldList["Quest"] = field
                                                            while (AutoQ and QuestTF["Polar Bear"] and
                                                                IsQuestDone(v) == false and
                                                                Farm and
                                                                ValidFarm()) do
                                                                
                                                                FarmFieldList["Quest"] = field
                                                                wait()
                                                            end
                                                        end
                                                    else
                                                        if
                                                            string.match(v.Description.Text, "Defeat") and
                                                                not IsQuestDone(v)
                                                         then
                                                            local mob = CheckMob(GetQuestMob(v.Description.Text))
                                                            if mob and GetAttach(mob) then
                                                                
                                                                FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                                while wait() and AutoQ and QuestTF["Polar Bear"] do
                                                                    local t = tick()
                                                                    FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                                    
                                                                    if
                                                                        GetAttach(mob).TimerGui.TimerLabel.Visible ==
                                                                            true or
                                                                            tick() - t > 20 or
                                                                            IsQuestDone(v) or
                                                                            not AutoQ and not QuestTF["Polar Bear"]
                                                                     then
                                                                        break
                                                                    end
                                                                end
                                                                if AutoQ and QuestTF["Polar Bear"] then
                                                                    wait(4)
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                            end


                            if QuestTFBeta["Panda Bear"] then
                                local t = GetQuest("Panda Bear")
                                --print(t)
                                if t then
                                    for k, v in pairs(t:GetChildren()) do
                                        if v:IsA("Frame") then
                                            if v:FindFirstChild("Description") then
                                                if not IsQuestDone(v) then
                                                    if string.match(v.Description.Text, "Collect") then
                                                        local field = GetQuestField(v.Description.Text)
                                                        --print(v.Description.Text)
                                                        if field then
                                                            
                                                            FarmFieldList["Quest"] = field
                                                            while (AutoQ and QuestTF["Panda Bear"] and
                                                                IsQuestDone(v) == false and
                                                                Farm and
                                                                ValidFarm()) do
                                                                
                                                                FarmFieldList["Quest"] = field
                                                                wait()
                                                            end
                                                        end
                                                    else
                                                        if
                                                            string.match(v.Description.Text, "Defeat") and
                                                                not IsQuestDone(v)
                                                         then

                                                            if string.match(v.Description.Text,"King") then
                                                                if CheckKing() then 
                                                                    
                                                                    repeat wait() AutoKing2=true until IsQuestDone(v) or not AutoQ or not QuestTFBeta["Panda Bear"] or not CheckKing()
                                                                    AutoKing2=false
                                                                end 
                                                            elseif string.match(v.Description.Text,"Tunnel") then
                                                                if CheckTunnel() then 
                                                                    repeat wait() AutoKing2=true until IsQuestDone(v) or not AutoQ or not QuestTFBeta["Panda Bear"] or not CheckTunnel()
                                                                    AutoKing2=false
                                                                end
                                                            elseif string.match(v.Description.Text,"Ant") then
                                                                if GetCurrenItem("AntPass") > 0 then
                                                                AutoFAnt2=true
                                                                repeat wait() AutoFAnt2=true until IsQuestDone(v) or not AutoQ or not QuestTFBeta["Panda Bear"]
                                                                AutoFAnt2=false
                                                                end
                                                            else

                                                                local mob = CheckMob(GetQuestMob(v.Description.Text))
                                                                if mob and GetAttach(mob) then
                                                                    
                                                                    FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                                    while wait() and AutoQ and QuestTFBeta["Panda Bear"] do
                                                                        local t = tick()
                                                                        FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                                        
                                                                        if
                                                                            GetAttach(mob).TimerGui.TimerLabel.Visible ==
                                                                                true or
                                                                                tick() - t > 20 or
                                                                                IsQuestDone(v) or
                                                                                not AutoQ and not QuestTFBeta["Panda Bear"]
                                                                         then
                                                                            break
                                                                        end
                                                                    end
                                                                    if AutoQ and QuestTF["Polar Bear"] then
                                                                        wait(4)
                                                                    end
                                                                end
                                                            end
                                                            


                                                            
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                            end

                            if QuestTF["Brown Bear"] then
                                local Quest = GetQuest("Brown Bear")
                                if Quest then
                                    for k, v in pairs(Quest:GetChildren()) do
                                        if v:IsA("Frame") then
                                            if v:FindFirstChild("Description") then
                                                if not IsQuestDone(v) then
                                                    if string.match(v.Description.Text, "Collect") then
                                                        local field = FieldQuest(v.Description.Text)
                                                        if field then
                                                            FarmFieldList["Quest"] = field

                                                            while (AutoQ and QuestTF["Brown Bear"] and
                                                                IsQuestDone(v) == false and
                                                                Farm and
                                                                ValidFarm()) do
                                                                
                                                                    FarmFieldList["Quest"] = field
                                                                wait()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                                end
                            end
                            if QuestTF["Black Bear"] then
                                local Quest = GetQuest("Black Bear")
                                if Quest then
                                    for k, v in pairs(Quest:GetChildren()) do
                                        if v:IsA("Frame") then
                                            if v:FindFirstChild("Description") then
                                                if not IsQuestDone(v) then
                                                    if string.match(v.Description.Text, "Collect") then
                                                        local field = FieldQuest(v.Description.Text)
                                                        if field then
                                                            while (AutoQ and QuestTF["Black Bear"] and
                                                                IsQuestDone(v) == false and
                                                                Farm and
                                                                ValidFarm()) do
                                                               
                                                                    FarmFieldList["Quest"] = field
                                                                wait()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                                end
                            end

                            if QuestTFBeta["Bucko Bee"] then
                               -- print("Have")
                                local Quest = GetQuest("Bucko Bee")
                                
                                if Quest then
                                   -- print("Have2")
                                    for k, v in pairs(Quest:GetChildren()) do
                                        if v:IsA("Frame") then
                                            if v:FindFirstChild("Description") then
                                                if not IsQuestDone(v) then
                                                    local ques =v.Description.Text

                                                    if not IsQuestDone(v) and (string.match(ques, "tokens") or string.match(ques, "Tokens")) then
                                                        --while (AutoQ and QuestTFBeta["Bucko Bee"] and IsQuestDone(v) == false and Farm and ValidFarm()) do
                                                          --  FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"] - 1]]
                                                           -- wait()
                                                      --  end
                                                    elseif not IsQuestDone(v) and string.match(ques,"Ant") then
                                                        if GetCurrenItem("AntPass") > 0 then
                                                        AutoFAnt2=true
                                                        repeat wait() AutoFAnt2=true until IsQuestDone(v) or not(AutoQ and QuestTFBeta["Bucko Bee"])
                                                        AutoFAnt2=false
                                                        end
                                                    elseif not IsQuestDone(v) and string.match(ques,"Use") then
                                                    

                                                    game.ReplicatedStorage.Events.ToyEvent:FireServer("Blue Field Booster")
                                                    elseif not IsQuestDone(v) and string.match(ques,"Blueberries") then 
                                                        local DoEvent = game.ReplicatedStorage.Events.ConstructHiveCellFromEgg
                                                        repeat wait()
                                                            DoEvent:InvokeServer(1, 1, "Blueberry", 5)
                                                        until IsQuestDone(v) or not(AutoQ and QuestTFBeta["Bucko Bee"])
                                                        
                                                        
                                                    elseif not IsQuestDone(v) and string.match(v.Description.Text, "Defeat") then
                                                        local mob = CheckMob(GetQuestMob(v.Description.Text))
                                                        if mob and GetAttach(mob) then
                                                            FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                            while wait() and AutoQ and QuestTFBeta["Bucko Bee"] do
                                                                local t = tick()
                                                                FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                    
                                                                if
                                                                    GetAttach(mob).TimerGui.TimerLabel.Visible == true or tick() - t > 20 or IsQuestDone(v) or
                                                                        not AutoQ and not QuestTFBeta["Bucko Bee"]
                                                                 then
                                                                    break
                                                                end
                                                            end
                                                            if AutoQ and QuestTFBeta["Bucko Bee"] then
                                                                wait(4)
                                                            end
                                                        end
                                                    elseif not IsQuestDone(v) and string.match(ques,"Collect") then
                                                        local field = FieldQuest(v.Description.Text)
                                                        if field then
                                                            FarmFieldList["Quest"] = field

                                                            while (AutoQ and QuestTFBeta["Bucko Bee"] and
                                                                IsQuestDone(v) == false and
                                                                Farm and
                                                                ValidFarm()) do
                                                                
                                                                    FarmFieldList["Quest"] = field
                                                                wait()
                                                            end
                                                            FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 

                                                        end 
                                                    end
                                                    


                                                   
                                                end
                                            end
                                        end
                                    end
                                    FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                                end
                            end



                            if QuestTFBeta["Riley Bee"] then
                                -- print("Have")
                                 local Quest = GetQuest("Riley Bee")
                                 
                                 if Quest then
                                    -- print("Have2")
                                     for k, v in pairs(Quest:GetChildren()) do
                                         if v:IsA("Frame") then
                                             if v:FindFirstChild("Description") then
                                                 if not IsQuestDone(v) then
                                                     local ques =v.Description.Text
 
                                                     if not IsQuestDone(v) and (string.match(ques, "tokens") or string.match(ques, "Tokens")) then
                                                        --  while (AutoQ and QuestTFBeta["Riley Bee"] and IsQuestDone(v) == false and Farm and ValidFarm()) do
                                                        --      FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"] - 1]]
                                                        --      wait()
                                                        --  end
                                                     elseif not IsQuestDone(v) and string.match(ques,"Ant") then
                                                        if GetCurrenItem("AntPass") > 0 then
                                                         AutoFAnt2=true
                                                         repeat wait() AutoFAnt2=true until IsQuestDone(v) or not(AutoQ and QuestTFBeta["Riley Bee"])
                                                         AutoFAnt2=false
                                                        end
                                                     elseif not IsQuestDone(v) and string.match(ques,"Use") then
                                                     
 
                                                     game.ReplicatedStorage.Events.ToyEvent:FireServer("Red Field Booster")
                                                    elseif not IsQuestDone(v) and string.match(ques,"Strawberries") then 
                                                        local DoEvent = game.ReplicatedStorage.Events.ConstructHiveCellFromEgg
                                                        repeat wait()
                                                            DoEvent:InvokeServer(1, 1, "Strawberry", 5)
                                                        until IsQuestDone(v) or not(AutoQ and QuestTFBeta["Riley Bee"])
                                                         
                                                     elseif not IsQuestDone(v) and string.match(v.Description.Text, "Defeat") then
                                                         local mob = CheckMob(GetQuestMob(v.Description.Text))
                                                         if mob and GetAttach(mob) then
                                                             FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                             while wait() and AutoQ and QuestTFBeta["Riley Bee"] do
                                                                 local t = tick()
                                                                 FarmFieldList["Quest"] = GetNerestFieldByObject(mob)
                                                     
                                                                 if
                                                                     GetAttach(mob).TimerGui.TimerLabel.Visible == true or tick() - t > 20 or IsQuestDone(v) or
                                                                         not AutoQ and not QuestTFBeta["Riley Bee"]
                                                                  then
                                                                     break
                                                                 end
                                                             end
                                                             if AutoQ and QuestTFBeta["Riley Bee"] then
                                                                 wait(4)
                                                             end
                                                         end
                                                     elseif not IsQuestDone(v) and string.match(ques,"Collect") then
                                                         local field = FieldQuest(v.Description.Text)
                                                         if field then
                                                             FarmFieldList["Quest"] = field
 
                                                             while (AutoQ and QuestTFBeta["Riley Bee"] and
                                                                 IsQuestDone(v) == false and
                                                                 Farm and
                                                                 ValidFarm()) do
                                                                 
                                                                     FarmFieldList["Quest"] = field
                                                                 wait()
                                                             end
                                                             FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
 
                                                         end 
                                                     end
                                                     
 
 
                                                    
                                                 end
                                             end
                                         end
                                     end
                                     FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                                 end
                             end



                        end
                    end
                    FarmFieldList["Quest"] = FarmFieldList[LevelFarm[LevelFarmVK["Quest"]-1]] 
                   
                end
                
            end
        )
        spawn(
            function()
                while wait() do
                    if AutoFarmBoost then
                        for k, v in pairs(GetCurrentFieldBoost()) do
                            --Field = k
                            FarmFieldList["FieldBoost"] = k
                            repeat
                                wait()
                                FarmFieldList["FieldBoost"] = k
                            until IsBoostEnd(k) or not AutoFarmBoost
                            
                        end
                    end
                    FarmFieldList["FieldBoost"] = FarmFieldList[LevelFarm[LevelFarmVK["FieldBoost"]-1]] 
                end
            end
        )
        -- spawn(
        --     function()
        --         while wait(.5) do
        --             if BuyAnt then
        --                 if GetCurrenItem("AntPass") == 0 and GetCurrenItem("Ticket") >= 10 then
        --                     game.ReplicatedStorage.Events.ToyEvent:FireServer("Ant Pass Dispenser")
        --                 end
        --             end
        --         end
        --     end
        -- )
        -- spawn(
        --     function()
        --         while wait() do
        --             --wait(.3)
        --             if TpRare then
        --                 for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
        --                     if IsToken(v) and TokenIdByK[v.FrontDecal.Texture] then
        --                         if TokenTrueFakse2[TokenIdByK[v.FrontDecal.Texture]] and TpRare and not IsTokenBlacklist(v) then
        --                             Kiet1308 = true
        --                             wait(.2)
        --                             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        --                                 CFrame.new(v.Position.X, v.Position.Y, v.Position.Z)
        --                                 local Black = Instance.new("IntValue")
        --                                 Black.Parent = v
        --                                 Black.Name = "Blacklisted"
        --                         --Kiet1308 = false
        --                         end
        --                     end
        --                 end
        --             end
        --             Kiet1308 = false
        --         end
        --     end
        -- )
        spawn(
            function()
                while wait() do
                    if KillVici then
                        for i, v in pairs(game.workspace.Particles:GetChildren()) do
                            if string.find(v.Name, "Vicious") then
                                local plr = game.Players.LocalPlayer

                                Valid = false
                                v.Name = "KillingViciousBee"
                                plr.Character:WaitForChild("HumanoidRootPart").CFrame = v.CFrame
                                wait(.1)
                                plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                    CFrame.new(v.Position.x, v.Position.y + 20, v.Position.z)
                                wait(1)
                                Killing = true
                                repeat
                                    wait()
                                    if noclip == false then
                                        noclip = true
                                    end
                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                        CFrame.new(v.Position.x, v.Position.y + 10, v.Position.z)
                                    for k, v in pairs(game.workspace.Collectibles:GetDescendants()) do
                                        if v.Name == "C" then
                                            if v:FindFirstChild("FrontDecal") then
                                                if
                                                    v.FrontDecal.Texture == "rbxassetid://1629547638" and
                                                        (v.Position -
                                                            plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                            20 or -- token link
                                                        v.FrontDecal.Texture == "rbxassetid://2319083910" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                20 or -- stinger
                                                        v.FrontDecal.Texture == "rbxassetid://1442700745" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                20 or -- rage
                                                        v.FrontDecal.Texture == "rbxassetid://1629649299" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                20
                                                 then -- focus
                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                        CFrame.new(v.Position) + Vector3.new(0, 3, 0)
                                                    wait(.2)
                                                end
                                            end
                                        end
                                    end
                                until not game.workspace.Particles:FindFirstChild("KillingViciousBee") or not KillVici
                                Killing = false
                                Valid = true
                                if noclip == true then
                                    noclip = false
                                end
                                wait(1)
                            end
                        end
                    end
                    if KillWindy then
                        if game.Workspace.NPCBees:FindFirstChild("Windy") then
                            local nr = GetNerestFieldByObject(game.Workspace.NPCBees:FindFirstChild("Windy"))
                            if IsValidTokenPos(game.Workspace.NPCBees:FindFirstChild("Windy"), nr) then
                                noclip = true
                                Valid = false
                                --wait(.5)

                                local plr = game.Players.LocalPlayer
                                plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                    game.Workspace.NPCBees.Windy.CFrame
                                --wait(.5)
                                noclip = false
                                Valid = true
                            end

                        -- noclip = true
                        -- Valid = false

                        -- --wait(.5)
                        -- local plr = game.Players.LocalPlayer
                        -- plr.Character:WaitForChild("HumanoidRootPart").CFrame = game.Workspace.NPCBees.Windy.CFrame
                        -- --wait(.5)
                        -- noclip = false
                        -- Valid = true
                        end
                        for i, v in pairs(game.Workspace.Monsters:GetChildren()) do
                            if (string.find(v.Name, "Windy") or v.Name == "KillingWindyBee") and KillWindy then
                                v.Name = "KillingWindyBee"
                                local plr = game.Players.LocalPlayer
                                Valid = false
                                Killing = true
                                repeat
                                    local plr = game.Players.LocalPlayer
                                    wait()
                                    if v:FindFirstChild("Torso") then
                                        if noclip == false then
                                            noclip = true
                                        end

                                        plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            CFrame.new(v.Torso.Position.x, v.Torso.Position.y + 20, v.Torso.Position.z)
                                        for k, v in pairs(game.workspace.Collectibles:GetDescendants()) do
                                            if v.Name == "C" then
                                                if v:FindFirstChild("FrontDecal") then
                                                    if
                                                        v.FrontDecal.Texture == "rbxassetid://1629547638" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                20 or -- token link
                                                            v.FrontDecal.Texture == "rbxassetid://2319083910" and
                                                                (v.Position -
                                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                    20 or -- stinger
                                                            v.FrontDecal.Texture == "rbxassetid://1442700745" and
                                                                (v.Position -
                                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                    20 or -- rage
                                                            v.FrontDecal.Texture == "rbxassetid://1629649299" and
                                                                (v.Position -
                                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                    20
                                                     then -- focus
                                                        plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                            CFrame.new(v.Position) + Vector3.new(0, 3, 0)
                                                        wait(.2)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                until not game.workspace.Monsters:FindFirstChild("KillingWindyBee") or
                                    KillWindy == false
                                Killing = false
                                if noclip == true then
                                    noclip = false
                                end
                                wait(2)

                                if Farm then
                                    local nre = GetNerestFieldByObject(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
                                    if IsValidTokenPos(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), nre) then
                                        local plr = game.Players.LocalPlayer
                                        
                                        FarmFieldList["Mob"] = nre
                                        Valid = true
                                        wait(10)
                                        Valid = false
                                        FarmFieldList["Mob"] = FarmFieldList[LevelFarm[LevelFarmVK["Mob"]-1]] 
                                        NoChange = false
                                    end
                                end
                            --CollectAllTokenInField()
                            end
                        end
                        for i, v in pairs(game.workspace.Monsters:GetChildren()) do
                            if not string.find(v.Name, "Windy") and not game.workspace.NPCBees:FindFirstChild("Windy") then
                                Valid = true
                                NoSell = false
                            end
                        end
                        Valid = true
                        NoSell = false
                    end
                    if KillCrab then
                        if CheckCoco() then
                            local old = Valid
                            Valid = false
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                CFrame.new(
                                -367.055786,
                                111.078384,
                                536.868652,
                                0.967295885,
                                -1.81630276e-06,
                                0.253650427,
                                -9.20609364e-06,
                                1,
                                4.22681369e-05,
                                -0.253650427,
                                -4.32209345e-05,
                                0.967295885
                            )
                            wait(1.5)
                            if KillCrab == true then
                                noclip = true
                                Killing = true
                                while CheckCoco() and wait() and KillCrab do
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                        CFrame.new(-261.811249, 115.952774, 503.228455, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                                end
                                Killing = false

                                noclip = false

                                if KillCrab and Farm then
                                    NoChange = true
                                    wait(5)
                                    Valid = old
                                  
                                    FarmFieldList["Mob"] = "Coconut Field"
                                    for i = 1, 20 do
                                        wait(1)
                                        FarmFieldList["Mob"] = "Coconut Field"
                                        if not KillCrab then
                                            break
                                        end
                                    end
                                    FarmFieldList["Mob"] = FarmFieldList[LevelFarm[LevelFarmVK["Mob"]-1]] 
                                    NoChange = false
                                end
                            else
                                Valid = old
                            end
                        end
                        Valid = true
                    end

                    
                    if (AutoFAnt or AutoFAnt2) then 
                        if not game:GetService("Workspace").Toys["Ant Challenge"].Busy.Value then 
                            if GetCurrenItem("AntPass") > 0 then
                                ValidAnt=false
                                wait(.1)
                                UseAnt()
                                local k = tick()
                                repeat wait() until game:GetService("Workspace").Toys["Ant Challenge"].Busy.Value ==true or tick()-k >5 or not (AutoFAnt or AutoFAnt2)
                               -- wait(1)
                                if game:GetService("Workspace").Toys["Ant Challenge"].Busy.Value ==true then
                                    game.Players.LocalPlayer.Character.Humanoid:Destroy()
                                    local old = ""
                                    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                    wait(1)
                                   -- if AntMethod=="Filing" then 
                                        noclip=true
                                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(92.6141205, 45.4476166, 547.385254, -1, -4.76778114e-05, 8.39982658e-06, -6.96244262e-09, 0.173648417, 0.98480773, -4.84120937e-05, 0.98480773, -0.173648417)
                                        for k,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                                            if v:IsA("Tool") then 
                                                old=v.Name
                                            end
                                        end
                                        if AutoEquipSpark then 
                                            game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = false,["Type"] = "Spark Staff",["Category"] = "Collector"})
    
                                        end
                                        game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer(
                                            {["Name"] = "Sprinkler Builder"}
                                        )
                                  --  end
                                    FarmFieldList["Mob"] = "Ant Field"
                                    wait(.1)
                                   
                                    spawn(function() 
                                        repeat wait() Check3() until not game:GetService("Workspace").Toys["Ant Challenge"].Busy.Value or not (AutoFAnt or AutoFAnt2)
    
                                    end)
                                    repeat wait()
                                       
                                        local TempField="Ant Field"
                                        if not IsValidCharactPos(TempField) then
                                            TpToField(TempField)
                                        end
                                        for k,token in pairs(game.Workspace.Collectibles:GetChildren()) do 
                                            if IsValidTokenPos(token, TempField) and IsToken(token) and
                                            not IsTokenBlacklist(token) and ValidAnt2 then 
                                                local passed = true
                                                local ray = Ray.new(token.Position+Vector3.new(0,1,0), Vector3.new(0, -5, 0))
                                                local t = workspace:FindPartOnRayWithIgnoreList(ray, {token})
                                                if t and t:FindFirstChild("FireParticles") then 
                                                    passed=false
                                                end
                                                if passed then
                                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = token.CFrame
                                                    wait(.2)
                                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(92.6141205, 45.4476166, 547.385254, -1, -4.76778114e-05, 8.39982658e-06, -6.96244262e-09, 0.173648417, 0.98480773, -4.84120937e-05, 0.98480773, -0.173648417)
                                                end
                                               
    
                                            end
                                        end
                                    until not game:GetService("Workspace").Toys["Ant Challenge"].Busy.Value or not (AutoFAnt or AutoFAnt2)
                                    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = false,["Type"] = old,["Category"] = "Collector"})
    
                                    noclip=false
                                    ValidAnt=true
                                end
                               
                            end
                        end
                    end
                    ValidAnt=true
                    if Snail then
                        if CheckSnail() then
                            local old = Valid
                            Valid = false
                            Killing = true
                            while Snail and CheckSnail() do
                                local uTorso =
                                    workspace:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild(
                                    "HumanoidRootPart"
                                )
                                uTorso.CFrame = CFrame.new(405, 72.7, -176)
                                noclip = true
                                wait()
                            end
                            Killing = false

                            local uTorso =
                                workspace:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart")
                            uTorso.CFrame = GetFieldByName("Stump Field").CFrame
                            wait(.4)
                            noclip = false
                            Valid = old
                        end
                        Valid = true
                    end
                    
                    if (AutoTunnel or AutoTunnel2) then

                        local tunnel = CheckTunnel()
                        if tunnel then
                            local old = Valid
                            Valid = false
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                CFrame.new(
                                516.041992,
                                6.46273232,
                                -46.5097466,
                                -0.438616902,
                                -3.91755606e-08,
                                -0.89867413,
                                2.49588794e-08,
                                1,
                                -5.57743292e-08,
                                0.89867413,
                                -4.68934651e-08,
                                -0.4386169020
                            )
                            local k = tick()
                            local target
                            local st = true
                            while wait() and tick() - k < 30 and (AutoTunnel or AutoTunnel2) and st do
                                if GetTunnel() then
                                    break
                                end
                            end
                            wait(5)
                            
                            if (AutoTunnel or AutoTunnel2) then
                                Killing = true
                                local ticcc=tick()
                                repeat
                                    local tun = GetTunnel()
                                    wait()
                                    if tun and tun:FindFirstChild("HumanoidRootPart") then
                                        noclip = true
                                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            tun.HumanoidRootPart.CFrame + Vector3.new(0, 20, 0)
                                    end
                                until not CheckTunnel() or not (AutoTunnel or AutoTunnel2) or tick() - ticcc > 60
                                Killing = false
                            end
                            noclip = false
                            wait(2)
                            if (AutoTunnel or AutoTunnel2) then
                                for i = 1, 3 do
                                    for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                                        if
                                            (v.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude <
                                                40
                                         then
                                            tp(
                                                CFrame.new(
                                                    v.Position.X,
                                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y,
                                                    v.Position.Z
                                                )
                                            )
                                        end
                                    end
                                end
                            end
                            Valid = old
                        end
                        Valid = true
                    end
                    if AutoMondo then
                        for i, v in pairs(game.Workspace.Monsters:GetChildren()) do
                            if string.find(v.Name, "Mondo Chick") then
                                if true then
                                    v.Name = "KillingMondo Chick"
                                    Valid = false
                                    Killing = true
                                    repeat
                                        wait()
                                        local plr = game.Players.LocalPlayer
                                        noclip = true
                                        if v:FindFirstChild("Head") then
                                            plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                CFrame.new(v.Head.Position.x + 25, 176.4, v.Head.Position.z + 25)
                                        --wait(.2)
                                        end
                                        for k, v in pairs(game.workspace.Collectibles:GetDescendants()) do
                                            if v.Name == "C" then
                                                if v:FindFirstChild("FrontDecal") then
                                                    if
                                                        v.FrontDecal.Texture == "rbxassetid://1629547638" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                20 or -- token link
                                                            v.FrontDecal.Texture == "rbxassetid://2319083910" and
                                                                (v.Position -
                                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                    20 or -- stinger
                                                            v.FrontDecal.Texture == "rbxassetid://1442700745" and
                                                                (v.Position -
                                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                    20 or -- rage
                                                            v.FrontDecal.Texture == "rbxassetid://1629649299" and
                                                                (v.Position -
                                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                    20
                                                     then -- focus
                                                        plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                            CFrame.new(v.Position) + Vector3.new(0, 3, 0)
                                                        wait(.2)
                                                    end
                                                end
                                            end
                                        end
                                    until not game.workspace.Monsters:FindFirstChild("KillingMondo Chick") or
                                        not AutoMondo
                                    Killing = false
                                    
                                    noclip = false
                                    wait(1)
                                    if Farm and AutoMondo then
                                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            GetFieldByName("Mountain Top Field").CFrame
                                        NoChange = true
                                        NoSell=true
                                        wait(.2)
                                        Valid = true
                                        FarmFieldList["Mob"] = "Mountain Top Field"
                                        for i = 1, 20 do
                                            FarmFieldList["Mob"] = "Mountain Top Field"
                                            if not Farm or not AutoMondo then
                                                break
                                            end
                                            wait(1)
                                        end
                                        FarmFieldList["Mob"] = FarmFieldList[LevelFarm[LevelFarmVK["Mob"]-1]] 
                                        NoChange = false
                                        NoSell=false
                                    end
                                    Valid = true
                                end
                            end
                        end
                    end
                    if AutoComando then
                        if CheckComando() then
                            Valid = false
                            local ToPos =
                                CFrame.new(
                                510.769714,
                                46.2348976,
                                164.753113,
                                0.510934234,
                                -4.59572291e-08,
                                -0.859619498,
                                2.90317903e-08,
                                1,
                                -3.62065649e-08,
                                0.859619498,
                                -6.45711751e-09,
                                0.510934234
                            )
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = ToPos
                            until GetComandoMob() or not CheckComando() or not AutoComando
                            wait(1)
                            local plr = game.Players.LocalPlayer
                            Killing = true
                            while wait() do
                                local plr = game.Players.LocalPlayer
                                if not CheckComando() or not AutoComando then
                                    break
                                end
                                local comman = GetComandoMob()
                                if comman then
                                    noclip = true
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                                        comman.HumanoidRootPart.CFrame + Vector3.new(0, 15, 0)
                                    for k, v in pairs(game.workspace.Collectibles:GetDescendants()) do
                                        if v.Name == "C" then
                                            if v:FindFirstChild("FrontDecal") then
                                                if
                                                    v.FrontDecal.Texture == "rbxassetid://1629547638" and
                                                        (v.Position -
                                                            plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                            25 or -- token link
                                                        v.FrontDecal.Texture == "rbxassetid://2319083910" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                25 or -- stinger
                                                        v.FrontDecal.Texture == "rbxassetid://1442700745" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                25 or -- rage
                                                        v.FrontDecal.Texture == "rbxassetid://1629649299" and
                                                            (v.Position -
                                                                plr.Character:WaitForChild("HumanoidRootPart").CFrame.Position).magnitude <=
                                                                25
                                                 then -- focus
                                                    plr.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                        CFrame.new(v.Position) + Vector3.new(0, 3, 0)
                                                    wait(.1)
                                                    v.Name = "CollectedToken"
                                                end
                                            end
                                        end
                                    end
                                else
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = ToPos
                                end
                            end
                            Killing = false
                            noclip = false
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = ToPos
                            wait(3)
                            for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                                if v.Name == "C" then
                                    if v:FindFirstChild("FrontDecal") then
                                        if
                                            (v.Position - plr.Character:WaitForChild("HumanoidRootPart").CFrame.p).magnitude <=
                                                30
                                         then
                                            tp(
                                                CFrame.new(
                                                    v.Position.X,
                                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y,
                                                    v.Position.Z
                                                )
                                            )
                                        end
                                    end
                                end
                            end
                            Valid = true
                        end
                    end
                    if (AutoKing or AutoKing2) then 

                        if CheckKing() then
                            Valid=false
                            wait(.2)
                            local KingSpawn = CFrame.new(167.829041, 6.20121384, 182.805527)
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = KingSpawn

                            repeat wait() until GetKing()
                            local King = GetKing()
                            noclip=true
                            repeat wait()
                                if King:FindFirstChild("Torso") then
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = King.Torso.CFrame*CFrame.new(0,20,0)
                                end
                            
                            until not GetKing() or not CheckKing() or not (AutoKing or AutoKing2)
                            noclip=false
                            wait(2)
                            for i=1,3 do 
                                for k, v in pairs(game.Workspace.Collectibles:GetChildren()) do
                                    if IsToken(v) then
                                        if v:FindFirstChild("FrontDecal") then
                                            if
                                                (v.Position - plr.Character:WaitForChild("HumanoidRootPart").CFrame.p).magnitude <=
                                                    30
                                             then
                                                tp(
                                                    CFrame.new(
                                                        v.Position.X,
                                                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y,
                                                        v.Position.Z
                                                    )
                                                )
                                            end
                                        end
                                    end
                                end
                            end
                            Valid=true
                        end
                        
                        
                    end
                    FarmFieldList["Mob"] = FarmFieldList[LevelFarm[LevelFarmVK["Mob"]-1]] 
                    Valid=true
                end
            end
        )
       
        -- spawn(
        --     function()
        --         while wait(.5) do
        --             if PlantMagic then
        --                 game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Magic Bean"})
        --             end
        --         end
        --     end
        -- )

        spawn(
            function()
                while wait() and Running do
                    --local TempField = Field
                    if ValidFarm() and Farm then
                        if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health==0 then 
                            wait(8)
                        end
                        local TempField=FarmFieldList[LevelFarm[#LevelFarm]]
                        local Player = game:GetService("Players").LocalPlayer
                        local Character = Player.Character
                        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                        local sangzboi = HumanoidRootPart.CFrame
                        if Farm then
                            if not IsValidCharactPos(TempField) then
                                TpToField(TempField)
                                wait(.2)
                                if Sprinklers[GetEquipSrinkler()] and SmartSp and Sprinklers[GetEquipSrinkler()] > 1 then
                                    for i = 1, Sprinklers[GetEquipSrinkler()] do
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
                                            wait(.8)
                                            game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer(
                                                {["Name"] = "Sprinkler Builder"}
                                            )
                                            wait(1.5)
                                        end
                                    end
                                else
                                    game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer(
                                        {["Name"] = "Sprinkler Builder"}
                                    )
                                end
                            end

                            if CollectCoco then
                                for d, f in pairs(GetSortedCoconut(TempField)) do
                                    if f.Name == "WarningDisk" then
                                        if f:FindFirstChild("Mesh") then
                                            if IsValidTokenPos(f, TempField) and Farm and Running and ValidFarm() then
                                                if f.Size == Vector3.new(30, 0.4, 30) then
                                                    tp(CFrame.new(f.Position.X, f.Position.Y, f.Position.Z))
                                                    while (f:FindFirstChild("Mesh")) do
                                                        wait()
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            if CollectBubble then
                                for k, v in pairs(GetSortedBubble(TempField)) do
                                    if v:IsA("Part") then
                                        if v.Name == "Bubble" then
                                            if IsValidTokenPos(v, TempField) and ValidFarm() and Farm then
                                                tp(CFrame.new(v.Position.X, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y, v.Position.Z))
                                            end
                                        end
                                    end
                                end
                            end
                            if GatherFlame then
                                for k, v in pairs(GetSortedFlame(TempField)) do
                                    if v:IsA("Part") then
                                        if v.Name == "FlamePart" then
                                            if
                                                IsValidTokenPos(v, TempField) and ValidFarm() and
                                                    v:FindFirstChild("Fire") and
                                                    Farm
                                             then
                                                v.Name = "Flame Cua Kiet"
                                                tp(CFrame.new(v.Position.X, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y, v.Position.Z))
                                                local t = tick()
                                                while wait() do
                                                    if not GatherFlame then
                                                        break
                                                    end
                                                    if (tick() - t) > 10 then
                                                        break
                                                    end
                                                    if game.Workspace.Particles:FindFirstChild("Flame Cua Kiet") then
                                                    else
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            if CollectType == "Optimize" then
                                local token = GetNerestToken(TempField)
                                if token then
                                    if
                                        IsValidTokenPos(token, TempField) and IsToken(token) and
                                            not IsTokenBlacklist(token) and
                                            Farm and
                                            ValidFarm()
                                     then
                                        --HumanoidRootPart.CFrame = CFrame.new(token.Position.X,token.Position.Y,token.Position.Z)
                                        tp(CFrame.new(token.Position.X, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y, token.Position.Z),0,token)

                                        local Black = Instance.new("IntValue")
                                        Black.Parent = token
                                        Black.Name = "Blacklisted"
                                    end
                                end
                            else
                                for k, token in pairs(GetSortedToken(TempField)) do
                                    if
                                        IsValidTokenPos(token, TempField) and IsToken(token) and
                                            not IsTokenBlacklist(token) and
                                            Farm and
                                            ValidFarm()
                                     then
                                        tp(CFrame.new(token.Position.X, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position.Y, token.Position.Z),0,token)

                                        local Black = Instance.new("IntValue")
                                        Black.Parent = token
                                        Black.Name = "Blacklisted"
                                    end
                                end
                            end
                            if IsBackPackFull() and Running and ValidFarm() and not NoSell then
                                local old = BringInsValid
                                BringInsValid = false
                                if AutoMicro and GetCurrenMicro() > 0 then
                                    game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer(
                                        {["Name"] = "Micro-Converter"}
                                    )
                                    wait(.5)
                                else
                                    if AutoInstant and IsAnyInstantValid() and GetCurrenItem("Ticket") > 0 then
                                        local Lis = GetInstantList()
                                        for k, v in pairs(Lis) do
                                            if IsInstantValid(v.Name) then
                                                UseInstant(v.Name)
                                                -- wait(.5)
                                                -- if IsBackPackFull() then
                                                --     NormalSell()
                                                -- end
                                                break
                                            end
                                        end
                                    else
                                        if AutoAntPass and GetCurrenItem("AntPass") > 0 and not game:GetService("Workspace").Toys["Ant Challenge"].Busy.Value then
                                            --local OldAnt = GetCurrenItem("AntPass")
                                            UseAnt()
                                            wait(.4)
                                            if IsBackPackFull() then
                                                NormalSell()
                                            end
                                        else
                                            NormalSell()
                                        end
                                    end
                                end
                                BringInsValid = old
                            end
                        end
                    end
                end
            end
        )

        while wait() do
        end
    end
)
print(e)
if e then
    local HttpService = game:GetService("HttpService")
    local sec = {}
    for k, v in pairs(Con) do
        if type(v) ~= "table" then
            sec[k] = v
        end
    end
    local tb = {
        content = "Error",
        embeds = {
            {
                color = nil,
                fields = {
                    {
                        name = "Error Mess",
                        value = e
                    },
                    {
                        name = "Exploit Used",
                        value = Exploit
                    },
                    {
                        name = "Settings",
                        value = HttpService:JSONEncode(sec)
                    }
                },
                author = {
                    name = "Sea Hub Bee Swarm Simulator Bug Reporter"
                }
            }
        }
    }
    local a =
        syn.request(
        {
            Url = "https://discord.com/api/webhooks/848166928446783489/ACsHIldjqsXk3TqmBX9AyrJOU6phGfX9F1cBN86P_QXjvHQ3CMcKYr5yuvRw4TvcAA_r",
            Method = "POST",
            Body = HttpService:JSONEncode(tb),
            Headers = {
                ["Content-Type"] = "application/json"
            }
        }
    )
    print(a.Body)
    print("Done2 form 2")
    print("Found bug. Reported to tvk1308.")
    print(e)
end
