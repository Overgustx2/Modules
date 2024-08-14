if game.CoreGui:FindFirstChild('UIBUTTON') then
  game.CoreGui:FindFirstChild('UIBUTTON'):Destroy()
end
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local UIBUTTON = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")

UIBUTTON.Name = "UIBUTTON"
UIBUTTON.Parent = game.CoreGui
UIBUTTON.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = UIBUTTON
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Transparency = 1
Frame.Position = UDim2.new(0.157012194, 0, 0.164366379, 0)
Frame.Size = UDim2.new(0, 115, 0, 49)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.218742043, 0, -0.155235752, 0)
ImageButton.Size = UDim2.new(0, 64, 0, 64)
ImageButton.Image = "rbxassetid://17717916449"
ImageButton.Draggable = true
ImageButton.MouseButton1Click:Connect(function()
	game:GetService('VirtualInputManager'):SendKeyEvent(true,"RightControl",false,game)
	game:GetService('VirtualInputManager'):SendKeyEvent(false,"RightControl",false,game)
end)
UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = ImageButton
UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = Framec

Text = {
	[1] = "The Best Script For Everyone!!",
	[2] = "The Gay Script For Everyone!!",
}

do
	local ui = game.CoreGui:FindFirstChild("SimpleUI")
	if ui then
		ui:Destroy()
	end
end
local logo = "17788183385"
local ToggleImage = false
local ButtonImage = false
--if logo == 14924433216 then logo = 14924433216 end
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Elements = {
    ["Color"] = Color3.fromRGB(153,51,255) --255,0,127
}
local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local library = {}

function library:AddWindow(text,keybind)
    local currenttab = ""
    local uihide = false
    local abc = false
    keybind = keybind or Enum.KeyCode.RightControl
    yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")

    local Kub = Instance.new("ScreenGui")
    Kub.Name = "SimpleUI"
    Kub.Parent = game.CoreGui
    Kub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = Kub
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.ClipsDescendants = true
    Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Main.Position = UDim2.new(0.5, 0, 0.499, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    Main:TweenSize(UDim2.new(0, 450, 0, 375),"Out","Quad",0.4,true)

    local MainCorner = Instance.new("UICorner")
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = Main

    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Top.Size = UDim2.new(1, 0, 0, 27)

    local TopCorner = Instance.new("UICorner")
    TopCorner.Name = "TopCorner"
    TopCorner.Parent = Top

    local NameHub = Instance.new("TextLabel")
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.Position = UDim2.new(0, 45, 0, 3)
    NameHub.Size = UDim2.new(1, 0, 0, 20)
    NameHub.Font = Enum.Font.GothamSemibold
    NameHub.Text = string.upper(text)
    NameHub.TextColor3 = Color3.fromRGB(225, 225, 225)
    NameHub.TextSize = 15.555
    NameHub.TextXAlignment = Enum.TextXAlignment.Left
    
    local btim = Instance.new("ImageLabel")
    btim.Name = "ButtonLogo"
    btim.Parent = Top
    btim.BackgroundTransparency = 1.000
    btim.Position = UDim2.new(0, 7, 0, -7)
    btim.Rotation = 0
    btim.Size = UDim2.new(0, 35, 0, 35)
    btim.Image = 'rbxassetid://17788183385'
    btim.ImageTransparency = 0
    btim.ZIndex = 999
    
    local Logo = Instance.new("ImageLabel")
    Logo.Name = "ButtonLogo"
    Logo.Parent = Main
    Logo.BackgroundTransparency = 1.000
    Logo.Position = UDim2.new(0, 0, 0.63, 0)
    Logo.Rotation = 0
    Logo.Size = UDim2.new(0, 150, 0, 150)
    Logo.Image = 'rbxassetid://17788183385'
    Logo.ImageTransparency = 0
    Logo.ZIndex = 999
    
    local NameHub1 = Instance.new("TextLabel")
    NameHub1.Name = "NameHub"
    NameHub1.Parent = Main
    NameHub1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub1.BackgroundTransparency = 1.000
    NameHub1.Position = UDim2.new(0.3, 0, 0.75, 0)
    NameHub1.Size = UDim2.new(120, 0, 0, 20)
    NameHub1.Font = Enum.Font.GothamSemibold
    NameHub1.Text = string.upper(text:split(" ")[1])
    NameHub1.TextColor3 = Color3.fromRGB(225, 225, 225)
    NameHub1.TextSize = 21.000
    NameHub1.TextXAlignment = Enum.TextXAlignment.Left
    NameHub1.ZIndex = 999
    
    local NameHub2 = Instance.new("TextLabel")
    NameHub2.Name = "NameHub"
    NameHub2.Parent = Main
    NameHub2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub2.BackgroundTransparency = 1.000
    NameHub2.Position = UDim2.new(0.56, 0, 0.75, 0)
    NameHub2.Size = UDim2.new(120, 0, 0, 20)
    NameHub2.Font = Enum.Font.GothamSemibold
    NameHub2.Text = string.upper(text:split(" ")[2])
    NameHub2.TextColor3 = Elements["Color"]
    NameHub2.TextSize = 25.000
    NameHub2.TextXAlignment = Enum.TextXAlignment.Left
    NameHub2.ZIndex = 999
    
    local description = Instance.new("TextLabel")
    description.Name = "NameHub"
    description.Parent = Main
    description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    description.BackgroundTransparency = 1.000
    description.Position = UDim2.new(0.31, 0, 0.82, 0)
    description.Size = UDim2.new(120, 0, 0, 20)
    description.Font = Enum.Font.GothamSemibold
    description.Text = tostring(Text[math.random(1,#Text)])
    description.TextColor3 = Color3.fromRGB(225, 225, 225)
    description.TextSize = 14.000
    description.TextXAlignment = Enum.TextXAlignment.Left
    description.ZIndex = 999
    
    local Close = Instance.new("TextButton")
    Close.Name = "Close"
    Close.Parent = Main
    Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close.BackgroundTransparency = 1.000
    Close.Size = UDim2.new(0, 100, 0, 29)
    Close.Position = UDim2.new(0.7, 0, 0.8, 0)
    Close.Font = Enum.Font.GothamSemibold
    Close.TextColor3 = Color3.fromRGB(225, 225, 225)
    Close.TextSize = 18.000
    Close.Text = "Close"
    Close.TextTransparency = 0.300
    Close.ZIndex = 99
    Close.MouseButton1Click:Connect(function()
        Main:TweenSize(UDim2.new(0, 450, 0, 275),"Out","Quad",0.3,true)
        Logo.Visible = false
        NameHub1.Visible = false
        NameHub2.Visible = false
        description.Visible = false
        Close.Visible = false
    end)
    
    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Tab.Position = UDim2.new(0, 0, 0, 25)
    Tab.Size = UDim2.new(0.9, 0, 0, 20)
    

    local TabCorner = Instance.new("UICorner")
    TabCorner.Name = "TabCorner"
    TabCorner.Parent = Tab
    
    local ScrollTab = Instance.new("ScrollingFrame")
    ScrollTab.Name = "ScrollTab"
    ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.BorderSizePixel = 0
    ScrollTab.Size = UDim2.new(1, 0, 1, 0)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0
    
    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = ScrollTab
    UIPadding.PaddingLeft = UDim.new(0, 1)

    local TabList = Instance.new("UIListLayout")
    TabList.Name = "TabList"
    TabList.Parent = ScrollTab
    TabList.FillDirection = Enum.FillDirection.Horizontal
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 5)

    MakeDraggable(Top,Main)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 450, 0, 275),"Out","Quad",0.4,true)
			end
		end
	end)

    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Page.Position = UDim2.new(0, 0, 0, 53)
    Page.Size = UDim2.new(1, 0, 1, 0)

    
    local PageFolder = Instance.new("Folder")
    PageFolder.Name = "PageFolder"
    PageFolder.Parent = Page

    local UIPageLayout = Instance.new("UIPageLayout")

    UIPageLayout.Parent = PageFolder
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.Padding = UDim.new(0, 10)
    UIPageLayout.TweenTime = 0.200
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false


    local Ui = {}
    function Ui:AddTab(text)
        local TabButton = Instance.new("TextButton")
        TabButton.Name = "TabButton"
        TabButton.Parent = ScrollTab
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Size = UDim2.new(0, 100, 0, 29)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
        TabButton.TextSize = 15.000
        TabButton.Text = text
        TabButton.TextTransparency = 0.500
        
        local UnderLine = Instance.new("Frame")
        UnderLine.Name = "UnderLine"
        UnderLine.Parent = TabButton
        UnderLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        UnderLine.BackgroundTransparency = 1
        UnderLine.Size = UDim2.new(0.5, 0, 0, 2)
        UnderLine.Position = UDim2.new(0.25, 0, 0.85, 0)
        
        local MainPage = Instance.new("Frame")

        MainPage.Name = "MainPage"
        MainPage.Parent = PageFolder
        MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainPage.BackgroundTransparency = 1.000
        MainPage.Position = UDim2.new(0.00157977885, 0, 0, 0)
        MainPage.Size = UDim2.new(1, 0, 0, 290)

        TabButton.MouseButton1Click:Connect(function()
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    for a,b in next, v:GetChildren() do
                        if b.Name == "UnderLine" then
                            b.BackgroundTransparency = 1
                        end
                    end
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
                TweenService:Create(
                    UnderLine,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0}
                ):Play()
            end
            for i,v in next, PageFolder:GetChildren() do 
                if v.Name == "MainPage" then
                    currenttab = v.Name
                end
                UIPageLayout:JumpTo(MainPage)
            end
		end)

		if abc == false then
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    for a,b in next, v:GetChildren() do
                        if b.Name == "UnderLine" then
                            b.BackgroundTransparency = 1
                        end
                    end
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
                TweenService:Create(
                    UnderLine,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0}
                ):Play()
            end
            UIPageLayout:JumpToIndex(1)
			abc = true
		end

        local uitab = {}
        function uitab:AddPage(Name)
            local MainFramePage = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local ScrollPage = Instance.new("ScrollingFrame")
            local PageList = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
            local UIPadding_2 = Instance.new("UIPadding")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local owks = Instance.new("UICorner")
            local NameFrame = Instance.new("TextLabel")
            
            MainFramePage.Name = "MainFramePage"
            MainFramePage.Parent = MainPage
            MainFramePage.BackgroundTransparency = 0
            MainFramePage.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            MainFramePage.Size = UDim2.new(0, 218, 0, 200)
        
            UICorner.Parent = MainFramePage
            
            NameFrame.Name = "NamePage"
            NameFrame.Parent = MainFramePage
            NameFrame.BackgroundTransparency = 0
            NameFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            NameFrame.Size = UDim2.new(1, 0, 0, 18)
            NameFrame.Font = Enum.Font.GothamSemibold
            NameFrame.BorderSizePixel = 0
            NameFrame.Text = Name
            NameFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
            NameFrame.TextSize = 14.000
            
            owks.Parent = NameFrame
            
            ScrollPage.Name = "ScrollPage"
            ScrollPage.Parent = MainFramePage
            ScrollPage.Active = true
            ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollPage.BackgroundTransparency = 1.000
            ScrollPage.BorderSizePixel = 0
            ScrollPage.Position = UDim2.new(0, 0, 0, 20)
            ScrollPage.Size = UDim2.new(0, 300, 1, 0) -- 
            ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollPage.ScrollBarThickness = 0
        
            PageList.Name = "PageList"
            PageList.Parent = ScrollPage
            PageList.SortOrder = Enum.SortOrder.LayoutOrder
            PageList.Padding = UDim.new(0, 10)
        
            UIPadding.Parent = ScrollPage
            UIPadding.PaddingLeft = UDim.new(0, 10)
            UIPadding.PaddingTop = UDim.new(0, 10)
        
            UIPadding_2.Parent = MainPage
            UIPadding_2.PaddingLeft = UDim.new(0, 5)
            UIPadding_2.PaddingTop = UDim.new(0, 10)
        
            UIListLayout_2.Parent = MainPage
            UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 5)

            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 26)
                    ScrollTab.CanvasSize = UDim2.new(0,TabList.AbsoluteContentSize.X + 10,0,0)
                end)
            end)

            local main = {}
            function main:AddSeperator(text)
                local SepText = {}
                local Seperator = Instance.new("Frame")
                local Sep1 = Instance.new("Frame")
                local Sep2 = Instance.new("TextLabel")
                local Sep3 = Instance.new("Frame")
                
                Seperator.Name = "Seperator"
                Seperator.Parent = ScrollPage
                Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Seperator.BackgroundTransparency = 1.000
                Seperator.Size = UDim2.new(0, 260, 0, 20)
                
                Sep1.Name = "Sep1"
                Sep1.Parent = Seperator
                Sep1.BackgroundColor3 = Elements["Color"]
                Sep1.BorderSizePixel = 0
                Sep1.Position = UDim2.new(0, 0, 0, 10)
                Sep1.Size = UDim2.new(0, 40, 0, 1)
                
                Sep2.Name = "Sep2"
                Sep2.Parent = Seperator
                Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.BackgroundTransparency = 1.000
                Sep2.Position = UDim2.new(0, 80, 0, 0)
                Sep2.Size = UDim2.new(0, 100, 0, 20)
                Sep2.Font = Enum.Font.GothamSemibold
                Sep2.Text = text
                Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.TextSize = 14.000
                Sep2.TextXAlignment = Enum.TextXAlignment.Center
                
                Sep3.Name = "Sep3"
                Sep3.Parent = Seperator
                Sep3.BackgroundColor3 = Elements["Color"]
                Sep3.BorderSizePixel = 0
                Sep3.Position = UDim2.new(0, 220, 0, 10)
                Sep3.Size = UDim2.new(0, 40, 0, 1)

                function SepText:RefreshSeperator(l)
                    Sep2.Text = l
                end
                return SepText
            end

            function main:AddLine()
                local Linee = Instance.new("Frame")
                local Line = Instance.new("Frame")
                
                Linee.Name = "Linee"
                Linee.Parent = ScrollPage
                Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Linee.BackgroundTransparency = 1.000
                Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
                Linee.Size = UDim2.new(0, 260, 0, 20)
                
                Line.Name = "Line"
                Line.Parent = Linee
                Line.BackgroundColor3 = Elements["Color"]
                Line.BorderSizePixel = 0
                Line.Position = UDim2.new(0, 0, 0, 10)
                Line.Size = UDim2.new(0, 260, 0, 1)
            end

            function main:AddButton(text,callback)
                local Button = Instance.new("Frame")
                local ButtonCorner = Instance.new("UICorner")
                local Btn = Instance.new("TextButton")
                local BtnCorner = Instance.new("UICorner")
                if ButtonImage == true then
                local btim = Instance.new('ImageLabel')
                end
                
                Button.Name = "Button"
                Button.Parent = ScrollPage
                Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Button.Size = UDim2.new(0.7, 0, 0, 20)
                Button.BackgroundTransparency = 0
                
                ButtonCorner.CornerRadius = UDim.new(0, 5)
                ButtonCorner.Name = "ButtonCorner"
                ButtonCorner.Parent = Button
                
                Btn.Name = "Btn"
                Btn.Parent = Button
                Btn.AutoButtonColor = false
                Btn.BackgroundTransparency = 1
                Btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Btn.Position = UDim2.new(0, 0, 0, 0)
                Btn.Size = UDim2.new(1, 0, 1, 0)
                Btn.Font = Enum.Font.GothamSemibold
                Btn.TextColor3 = Color3.fromRGB(225, 225, 225)
                Btn.TextSize = 12.000
                Btn.Text = text
                Btn.TextTransparency = 0.300
                Btn.TextXAlignment = Enum.TextXAlignment.Center
                
                BtnCorner.CornerRadius = UDim.new(0, 1)
                BtnCorner.Name = "BtnCorner"
                BtnCorner.Parent = Button
                
                local ButtonStroke = Instance.new("UIStroke") 
                ButtonStroke.Color = Color3.fromRGB(233,0,0)
                ButtonStroke.Parent = Button
                ButtonStroke.Thickness = 0
                ButtonStroke.Name = "ButtonStroke"
                
                if ButtonImage == true then
                btim.Name = "ButtonLogo"
                btim.Parent = Btn
                btim.BackgroundTransparency = 1.000
                btim.Position = UDim2.new(0, 5, 0, 3)
                btim.Rotation = 0
                btim.Size = UDim2.new(0, 30, 0, 30)
                btim.Image = 'https://www.roblox.com/asset-thumbnail/image?assetId='..logo..'&width=0&height=0&format=png'
                btim.ImageTransparency = 0
                end

                Btn.MouseEnter:Connect(function()
                    TweenService:Create(
                        ButtonStroke,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Thickness = 1.5}
                    ):Play()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end)

                Btn.MouseLeave:Connect(function()
                    TweenService:Create(
                        ButtonStroke,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Thickness = 0}
                    ):Play()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.3}
                    ):Play()
                end)

                Btn.MouseButton1Click:Connect(function()
                    callback()
                    Btn.TextSize = 6
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextSize = 12}
                    ):Play()
                end)
            end 

            function main:AddDropdown(text,option,default,callback)
                default = default or ""
                local Dropdown = Instance.new("Frame")
                local dropcorner = Instance.new("UICorner")
                local Dropdownn = Instance.new("Frame")
                local droppcorner = Instance.new("UICorner")
                local DropBtn = Instance.new("TextButton")
                local DropLabel = Instance.new("TextLabel")
                local DropScroll = Instance.new("ScrollingFrame")
                local dpd = Instance.new("UIPadding")
                local dll = Instance.new("UIListLayout")
                local DropImage = Instance.new("ImageLabel")
                local isdropping = false

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = ScrollPage
                Dropdown.BackgroundColor3 = Elements["Color"]
                Dropdown.BackgroundTransparency = 0.500
                Dropdown.Size = UDim2.new(0.7, 0, 0, 20) -- 114
                
                dropcorner.CornerRadius = UDim.new(0, 5)
                dropcorner.Name = "dropcorner"
                dropcorner.Parent = Dropdown
                
                Dropdownn.Name = "Dropdownn"
                Dropdownn.Parent = Dropdown
                Dropdownn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Dropdownn.ClipsDescendants = true
                Dropdownn.Position = UDim2.new(0, 0, 0, 0)
                Dropdownn.Size = UDim2.new(1, 0, 1, 0) -- 112
                
                droppcorner.CornerRadius = UDim.new(0, 5)
                droppcorner.Name = "droppcorner"
                droppcorner.Parent = Dropdownn
                
                DropBtn.Name = "DropBtn"
                DropBtn.Parent = Dropdownn
                DropBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropBtn.BackgroundTransparency = 1.000
                DropBtn.Size = UDim2.new(1, 0, 1, 0)
                DropBtn.Font = Enum.Font.SourceSans
                DropBtn.Text = ""
                DropBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropBtn.TextSize = 14.000
                
                DropLabel.Name = "DropLabel"
                DropLabel.Parent = Dropdownn
                DropLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropLabel.BackgroundTransparency = 1.000
                DropLabel.Position = UDim2.new(0, 15, 0, 0)
                DropLabel.Size = UDim2.new(1, 0, 1, 0)
                DropLabel.Font = Enum.Font.GothamSemibold
                DropLabel.Text = text.. " : ".. default
                DropLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                DropLabel.TextSize = 12.000
                DropLabel.TextTransparency = 0.500
                DropLabel.TextXAlignment = Enum.TextXAlignment.Left

                DropImage.Name = "DropImage"
                DropImage.Parent = Dropdownn
                DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropImage.BackgroundTransparency = 1.000
                DropImage.Position = UDim2.new(0, 230, 0, 9)
                DropImage.Rotation = 180.000
                DropImage.Size = UDim2.new(0, 20, 0, 20)
                DropImage.Image = "rbxassetid://6031090990"
                DropImage.ImageTransparency = 0.500
                
                local Win2=Instance.new("Frame")
                Win2.Name="Win2"Win2.Parent=Main;Win2.BackgroundColor3=Color3.fromRGB(0,0,0)
                Win2.Size=UDim2.new(1,0,1,0)Win2.BackgroundTransparency=0.3;Win2.Visible=false;
                
                local Droplist=Instance.new("Frame")
                Droplist.Name="Droplist"Droplist.Parent=Win2;Droplist.BackgroundColor3=Color3.fromRGB(40,40,40)
                Droplist.Size=UDim2.new(0,258,0,128)Droplist.Position=UDim2.new(0.225,0,0.25,0)
                
                DropScroll.Name = "DropScroll"
                DropScroll.Parent = Droplist
                DropScroll.Active = true
                DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropScroll.BackgroundTransparency = 1.000
                DropScroll.BorderSizePixel = 0
                DropScroll.Position = UDim2.new(0, 0, 0, 0)
                DropScroll.Size = UDim2.new(0, 258, 0, 128) -- 70
                DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
                DropScroll.ScrollBarThickness = 3
                DropScroll.Visible = true
                
                dpd.Name = "dpd"
                dpd.Parent = DropScroll
                dpd.PaddingLeft = UDim.new(0, 5)
                dpd.PaddingTop = UDim.new(0, 5)
                
                dll.Name = "dll"
                dll.Parent = DropScroll
                dll.SortOrder = Enum.SortOrder.LayoutOrder
                dll.Padding = UDim.new(0, 5)

                for i,v in next, option do
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                    Item.TextSize = 16.000
                    Item.Text = tostring(v)
                    Item.TextTransparency = 0.5

                    Item.MouseEnter:Connect(function()
                        TweenService:Create(
                        Item,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(63,233,63)}
                    ):Play()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end)
                    Item.MouseLeave:Connect(function()
                        TweenService:Create(
                        Item,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Win2.Visible = false
                        callback(Item.Text)
                        DropLabel.Text = text.." : "..Item.Text
                        callback(v)
                    end)
                end 

                DropScroll.CanvasSize = UDim2.new(0,0,0,dll.AbsoluteContentSize.Y + 10)

                DropBtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0}
                    ):Play()
                end)

                DropBtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0.5}
                    ):Play()
                end)

                DropBtn.MouseButton1Click:Connect(function()
                    if isdropping == false then
                        isdropping = true
                        Win2.Visible = true
                    else
                        isdropping = false
                        Win2.Visible = false
                    end
                end)

                local drop = {}

                function drop:Clear()
                    DropLabel.Text = tostring(text).." : "
                    isdropping = false
                    
                    for i, v in next, DropScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                end
                function drop:Add(t)
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Item.TextSize = 16.000
                    Item.TextTransparency = 0.5
                    Item.Text = tostring(t)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Win2.Visible = false
                        callback(Item.Text)
                        DropLabel.Text = text.." : "..Item.Text
                        callback(t)
                    end)
                end
                return drop
            end

            function main:AddSlider(text,min,max,set,callback)
                local Slider = Instance.new("Frame")
                local slidercorner = Instance.new("UICorner")
                local sliderr = Instance.new("Frame")
                local sliderrcorner = Instance.new("UICorner")
                local SliderLabel = Instance.new("TextLabel")
                local HAHA = Instance.new("Frame")
                local AHEHE = Instance.new("TextButton")
                local bar = Instance.new("Frame")
                local bar1 = Instance.new("Frame")
                local bar1corner = Instance.new("UICorner")
                local barcorner = Instance.new("UICorner")
                local circlebar = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local slidervalue = Instance.new("Frame")
                local valuecorner = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")

                Slider.Name = "Slider"
                Slider.Parent = ScrollPage
                Slider.BackgroundColor3 = Elements["Color"]
                Slider.BackgroundTransparency = 0.500
                Slider.Size = UDim2.new(0.7, 0, 0, 35)

                slidercorner.CornerRadius = UDim.new(0, 1)
                slidercorner.Name = "slidercorner"
                slidercorner.Parent = Slider

                sliderr.Name = "sliderr"
                sliderr.Parent = Slider
                sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                sliderr.Position = UDim2.new(0, 0, 0, 0)
                sliderr.Size = UDim2.new(1, 0, 1, 0)

                sliderrcorner.CornerRadius = UDim.new(0, 1)
                sliderrcorner.Name = "sliderrcorner"
                sliderrcorner.Parent = sliderr

                SliderLabel.Name = "SliderLabel"
                SliderLabel.Parent = sliderr
                SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderLabel.BackgroundTransparency = 1.000
                SliderLabel.Position = UDim2.new(0, 3, 0, 3)
                SliderLabel.Size = UDim2.new(1, 0, 0, 20)
                SliderLabel.Font = Enum.Font.GothamSemibold
                SliderLabel.Text = text
                SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderLabel.TextSize = 12.000
                SliderLabel.TextTransparency = 0.500
                SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
                SliderLabel.TextYAlignment = Enum.TextYAlignment.Top

                HAHA.Name = "HAHA"
                HAHA.Parent = sliderr
                HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                HAHA.BackgroundTransparency = 1.000
                HAHA.Size = UDim2.new(0, 0, 0, 0)

                AHEHE.Name = "AHEHE"
                AHEHE.Parent = sliderr
                AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                AHEHE.BackgroundTransparency = 1.000
                AHEHE.Position = UDim2.new(0, 15, 0, 25)
                AHEHE.Size = UDim2.new(0.6, 0, 0, 3)
                AHEHE.Font = Enum.Font.SourceSans
                AHEHE.Text = ""
                AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
                AHEHE.TextSize = 14.000

                bar.Name = "bar"
                bar.Parent = AHEHE
                bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                bar.Size = UDim2.new(1, 0, 0, 2)

                bar1.Name = "bar1"
                bar1.Parent = bar
                bar1.BackgroundColor3 = Elements["Color"]
                bar1.BackgroundTransparency = 0.500
                bar1.Size = UDim2.new(set/max, 0, 0, 2)

                bar1corner.CornerRadius = UDim.new(0, 5)
                bar1corner.Name = "bar1corner"
                bar1corner.Parent = bar1

                barcorner.CornerRadius = UDim.new(0, 5)
                barcorner.Name = "barcorner"
                barcorner.Parent = bar

                circlebar.Name = "circlebar"
                circlebar.Parent = bar1
                circlebar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                circlebar.Position = UDim2.new(1, -2, 0, -3)
                circlebar.Size = UDim2.new(0, 10, 0, 10)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = circlebar
                
                local cieclestroke = Instance.new("UIStroke")
                cieclestroke.Color = Elements["Color"]
                cieclestroke.Thickness = 2
                cieclestroke.Parent = circlebar
                cieclestroke.Name = "CircleStroke"

                slidervalue.Name = "slidervalue"
                slidervalue.Parent = sliderr
                slidervalue.BackgroundColor3 = Elements["Color"]
                slidervalue.BackgroundTransparency = 0.500
                slidervalue.Position = UDim2.new(0.8, 0, 0, 8)
                slidervalue.Size = UDim2.new(0, 30, 0, 18)

                valuecorner.CornerRadius = UDim.new(0, 5)
                valuecorner.Name = "valuecorner"
                valuecorner.Parent = slidervalue

                TextBox.Parent = slidervalue
                TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                TextBox.Position = UDim2.new(0, 0, 0, 0)
                TextBox.Size = UDim2.new(1, 0, 1, 0)
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextBox.TextSize = 9.000
                TextBox.Text = set
                TextBox.TextTransparency = 0.500

                UICorner_2.CornerRadius = UDim.new(0, 2)
                UICorner_2.Parent = TextBox

                HAHA.MouseEnter:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(225,225,225)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end)

                HAHA.MouseLeave:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(180,180,180)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end)

                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")

                if Value == nil then
                    Value = set
                    pcall(function()
                        callback(Value)
                    end)
                end
                
                AHEHE.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / bar.AbsoluteSize.X) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    --bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, bar.AbsoluteSize.X+2), 0, 3)
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, bar.AbsoluteSize.X), 0, -3)}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, bar.AbsoluteSize.X+2), 0, 3)}
                    ):Play()
                    --circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    moveconnection = mouse.Move:Connect(function()
                        TextBox.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / bar.AbsoluteSize.X) * bar1.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        TweenService:Create(
                            bar1,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, bar.AbsoluteSize.X+2), 0, 3)}
                        ):Play()
                        --bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, bar.AbsoluteSize.X+2), 0, 3)
                        TweenService:Create(
                            circlebar,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, bar.AbsoluteSize.X), 0, -3)}
                        ):Play()
                        --circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 or Mouse.UserInputType == Enum.UserInputType.Touch then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / bar.AbsoluteSize.X) * bar1.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            TweenService:Create(
                                bar1,
                                TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, bar.AbsoluteSize.X+2), 0, 3)}
                            ):Play()
                            --bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, bar.AbsoluteSize.X+2), 0, 3)
                            TweenService:Create(
                                circlebar,
                                TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, bar.AbsoluteSize.X), 0, -3)}
                            ):Play()
                            --circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
                TextBox.FocusLost:Connect(function()
                    if tonumber(TextBox.Text) > max then
                        TextBox.Text  = max
                    end
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Size = UDim2.new((tonumber(TextBox.Text) or 0) / max, 0, 0, 3)}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Position = UDim2.new(1, -2, 0, -3)}
                    ):Play()
                    TextBox.Text = tostring(tonumber(TextBox.Text) and math.floor( (tonumber(TextBox.Text) / max) * (max - min) + min) )
                    pcall(callback, TextBox.Text)
                end)
            end

            function main:AddTextbox(text,Placeholder,Def,callback)
                def = def or ""
                Placeholder = Placeholder or "nil"
                local Textbox = Instance.new("Frame")
                local TextboxCorner = Instance.new("UICorner")
                local Textboxx = Instance.new("Frame")
                local TextboxxCorner = Instance.new("UICorner")
                local TextboxLabel = Instance.new("TextLabel")
                local txtbtn = Instance.new("TextButton")
                local RealTextbox = Instance.new("TextBox")
                local UICorner = Instance.new("UICorner")

                Textbox.Name = "Textbox"
                Textbox.Parent = ScrollPage
                Textbox.BackgroundColor3 = Elements["Color"]
                Textbox.BackgroundTransparency = 1
                Textbox.Size = UDim2.new(0.7, 0, 0, 45)

                TextboxCorner.CornerRadius = UDim.new(0, 5)
                TextboxCorner.Name = "TextboxCorner"
                TextboxCorner.Parent = Textbox

                Textboxx.Name = "Textboxx"
                Textboxx.Parent = Textbox
                Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Textboxx.Position = UDim2.new(0, 0, 0, 0)
                Textboxx.Size = UDim2.new(1, 0, 1, 0)

                TextboxxCorner.CornerRadius = UDim.new(0, 2)
                TextboxxCorner.Name = "TextboxxCorner"
                TextboxxCorner.Parent = Textboxx

                TextboxLabel.Name = "TextboxLabel"
                TextboxLabel.Parent = Textbox
                TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxLabel.BackgroundTransparency = 1.000
                TextboxLabel.Position = UDim2.new(0, 10, 0, -5)
                TextboxLabel.Text = text
                TextboxLabel.Size = UDim2.new(1, 0, 1, 0)
                TextboxLabel.Font = Enum.Font.GothamSemibold
                TextboxLabel.TextColor3 = Elements["Color"]
                TextboxLabel.TextSize = 12.000
                TextboxLabel.TextTransparency = 0.500
                TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
                

                txtbtn.Name = "txtbtn"
                txtbtn.Parent = Textbox
                txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                txtbtn.BackgroundTransparency = 1.000
                txtbtn.Position = UDim2.new(0, 1, 0, 1)
                txtbtn.Size = UDim2.new(1, 0, 1, 0)
                txtbtn.Font = Enum.Font.SourceSans
                txtbtn.Text = ""
                txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                txtbtn.TextSize = 14.000

                RealTextbox.Name = "RealTextbox"
                RealTextbox.Parent = Textbox
                RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                RealTextbox.BackgroundTransparency = 0.500
                RealTextbox.Position = UDim2.new(0, 10, 0, 25)
                RealTextbox.Size = UDim2.new(0.9, 0, 0, 15)
                RealTextbox.Font = Enum.Font.GothamSemibold
                RealTextbox.Text = ""
                RealTextbox.PlaceholderText = tostring(Placeholder)
                RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                RealTextbox.TextSize = 11.000
                RealTextbox.TextTransparency = 0.500

                txtbtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                txtbtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)
                
                if Def == "" then
                else
                    RealTextbox.Text = tostring(Def)
                    callback(def)
                end
                
                RealTextbox.FocusLost:Connect(function()
                    callback(RealTextbox.Text)
                end)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = RealTextbox
            end

            function main:AddToggle1(text,config,callback)
                local tglb = {}
                local Toggle = Instance.new("Frame")
                local ToggleCorner = Instance.new("UICorner")
                local Tgle = Instance.new("Frame")
                local TgleCorner = Instance.new("UICorner")
                local tglebtn = Instance.new("TextButton")
                local ToggleLabel = Instance.new("TextLabel")
                local ToggleImage = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local Circle = Instance.new("Frame")
                local UICorner_4 = Instance.new("UICorner")
                if ToggleImage == true then
                local Tgim = Instance.new('ImageLabel')
                end

                Toggle.Name = "Toggle"
                Toggle.Parent = ScrollPage
                Toggle.BackgroundColor3 = Color3.fromRGB(233, 63, 63)
                Toggle.BackgroundTransparency = 1
                Toggle.Size = UDim2.new(0, 200, 0, 20)

                ToggleCorner.CornerRadius = UDim.new(0, 5)
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.Parent = Toggle

                Tgle.Name = "Tgle"
                Tgle.Parent = Toggle
                Tgle.BackgroundTransparency = 1
                Tgle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Tgle.Position = UDim2.new(0, 0, 0, 0)
                Tgle.Size = UDim2.new(1, 0, 1, 0)

                TgleCorner.CornerRadius = UDim.new(0, 5)
                TgleCorner.Name = "TgleCorner"
                TgleCorner.Parent = Tgle

                tglebtn.Name = "tglebtn"
                tglebtn.Parent = Tgle
                tglebtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                tglebtn.BackgroundTransparency = 1.000
                tglebtn.Size = UDim2.new(1, 0, 1, 0)
                tglebtn.Font = Enum.Font.SourceSans
                tglebtn.Text = ""
                tglebtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                tglebtn.TextSize = 14.000

                ToggleLabel.Name = "ToggleLabel"
                ToggleLabel.Parent = Tgle
                ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleLabel.BackgroundTransparency = 1.000
                ToggleLabel.Position = UDim2.new(0, 0, 0, 0)
                ToggleLabel.Size = UDim2.new(1, 0, 1, 0)
                ToggleLabel.Font = Enum.Font.GothamSemibold
                ToggleLabel.Text = text
                ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                ToggleLabel.TextSize = 15.000
                ToggleLabel.TextTransparency = 0.700
                ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left

                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Toggle
                ToggleImage.BackgroundTransparency = 0
                ToggleImage.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                ToggleImage.Position = UDim2.new(0.75, 0, 0.5, 0)
                ToggleImage.Size = UDim2.new(0, 30, 0, 4)
    
                UICorner_3.CornerRadius = UDim.new(0, 20)
                UICorner_3.Parent = ToggleImage
    
                Circle.Name = "Circle"
                Circle.Parent = ToggleImage
                Circle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Circle.Position = UDim2.new(0, 0, -0.55, -2.5)
                Circle.Size = UDim2.new(0, 12, 0, 12)
    
                UICorner_4.CornerRadius = UDim.new(0, 10)
                UICorner_4.Parent = Circle
                
                local StrokeCircle = Instance.new("UIStroke")
                StrokeCircle.Color = Color3.fromRGB(233, 0, 0)
            	StrokeCircle.Thickness = 0
            	StrokeCircle.Name = "StrokeCircle"
            	StrokeCircle.Parent = Circle

                if ToggleImage == true then
                Tgim.Name = "ToggleLogo"
                Tgim.Parent = Tgle
                Tgim.BackgroundTransparency = 1.000
                Tgim.Position = UDim2.new(0, 5, 0, 3)
                Tgim.Rotation = 0
                Tgim.Size = UDim2.new(0, 30, 0, 30)
                Tgim.Image = 'https://www.roblox.com/asset-thumbnail/image?assetId='..logo..'&width=0&height=0&format=png'
                Tgim.ImageTransparency = 0
                end

                tglebtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                end)
                tglebtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        StrokeCircle,
                        TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                end)
                if config == true then
                    istoggled = true
                    pcall(callback,istoggled)
                    Circle:TweenPosition(UDim2.new(0.75,0,-0.55,-2.5),"Out","Sine",0.2,true)
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(233,0,0)}
				    ):Play()
    				TweenService:Create(
                        StrokeCircle,
                        TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Thickness = 2}
				    ):Play()
                end

                local istoggled = config or false
                tglebtn.MouseButton1Click:Connect(function()
                    if istoggled == false then
                        istoggled = true
                        Circle:TweenPosition(UDim2.new(0.75,0,-0.55,-2.5),"Out","Sine",0.2,true)
                        TweenService:Create(
                        ToggleImage,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(233, 0, 0)}
    				    ):Play()
    				    TweenService:Create(
                            StrokeCircle,
                            TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Thickness = 2}
    				    ):Play()
                        else
                        istoggled = false
                        TweenService:Create(
                            ToggleImage,
                            TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(35,35,35)}
    				    ):Play()
    				    TweenService:Create(
                            StrokeCircle,
                            TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Thickness = 0}
    				    ):Play()
                        Circle:TweenPosition(UDim2.new(0,0,-0.55,-2.5),"Out","Sine",0.2,true)
                    end
                    pcall(callback,istoggled)
                end)
                    function tglb:RefeshToggle(e)
                        ToggleLabel.Text = e
                    end
                return tglb
            end

            function main:AddToggle(Name, default, callback)
                local ToglFunc = {}
                local Tgo = default
                local MainToggle = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local Text = Instance.new("TextLabel")
                local MainToggle_2 = Instance.new("ImageLabel")
                local UICorner_2 = Instance.new("UICorner")
                local MainToggle_3 = Instance.new("ImageLabel")
                local UICorner_3 = Instance.new("UICorner")
                local TextButton = Instance.new("TextButton")
                
                MainToggle.Name = "MainToggle"
                MainToggle.Parent = ScrollPage
                MainToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                MainToggle.BackgroundTransparency = 1
                MainToggle.BorderSizePixel = 0
                MainToggle.ClipsDescendants = true
                MainToggle.Size = UDim2.new(0.675, 0, 0, 20)
                MainToggle.ZIndex = 16
                
                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = MainToggle
                
                Text.Name = "Text"
                Text.Parent = MainToggle
                Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text.BackgroundTransparency = 1.000
                Text.Position = UDim2.new(0, 0, 0, 0)
                Text.Size = UDim2.new(1, 0, 1, 0)
                Text.ZIndex = 16
                Text.Font = Enum.Font.GothamBold
                Text.Text = Name
                Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text.TextSize = 12.000
                Text.TextTransparency = 0.4
                Text.TextXAlignment = Enum.TextXAlignment.Left
                
                MainToggle_2.Name = "MainToggle"
                MainToggle_2.Parent = MainToggle
                MainToggle_2.AnchorPoint = Vector2.new(0.5, 0.5)
                MainToggle_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                MainToggle_2.ClipsDescendants = true
                MainToggle_2.Position = UDim2.new(0.899999976, 0, 0.5, 0)
                MainToggle_2.Size = UDim2.new(0, 15, 0, 15)
                MainToggle_2.ZIndex = 16
                
                UICorner_2.CornerRadius = UDim.new(0, 99)
                UICorner_2.Parent = MainToggle_2
                
                MainToggle_3.Name = "MainToggle"
                MainToggle_3.Parent = MainToggle_2
                MainToggle_3.AnchorPoint = Vector2.new(0.5, 0.5)
                MainToggle_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                MainToggle_3.ClipsDescendants = true
                MainToggle_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                MainToggle_3.Size = UDim2.new(0, 0, 0, 0)
                MainToggle_3.ZIndex = 16
                MainToggle_3.Image = "http://www.roblox.com/asset/?id=6023426945"
                MainToggle_3.ImageColor3 = Color3.fromRGB(19,255,0) or Elements["Color"]
                MainToggle_3.Visible = false
                UICorner_3.CornerRadius = UDim.new(0, 999)
                UICorner_3.Parent = MainToggle_3
                
                TextButton.Name = ""
                TextButton.Parent = MainToggle
                TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                TextButton.BackgroundTransparency = 1.000
                TextButton.BorderSizePixel = 0
                TextButton.Size = UDim2.new(1, 0, 1, 0)
                TextButton.ZIndex = 16
                TextButton.AutoButtonColor = false
                TextButton.Font = Enum.Font.Gotham
                TextButton.Text = ""
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.TextSize = 14.000

                TextButton.MouseButton1Click:Connect(
                    function()
                        Tgo = not Tgo
                        ToglFunc:Update(Tgo)
                        --CircleClick(Button, Mouse.X, Mouse.Y)
                    end
                )

                if default then
                    if default then
                        MainToggle_3.Visible = default
                        end
                    TweenService:Create(
                        Text,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = default and 0 or 0.4
                        }
                    ):Play()
                    local we = TweenService:Create(
                        MainToggle_3,
                        TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                        {
                            Size = default and UDim2.new(0, 19, 0, 19) or UDim2.new(0, 0, 0, 0) 
                        }
                    )
                    we:Play()
                    we.Completed:Wait()
                    if default == false then
                        MainToggle_3.Visible = default
                    end
                    callback(default)
                    Tgo = default
                end
                function ToglFunc:Update(state)
                    if state then
                        MainToggle_3.Visible = state
                        end
                    TweenService:Create(
                        Text,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = state and 0 or 0.4
                        }
                    ):Play()
                    local we = TweenService:Create(
                        MainToggle_3,
                        TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                        {
                            Size = state and UDim2.new(0, 19, 0, 19) or UDim2.new(0, 0, 0, 0) 
                        }
                    )
                    TweenService:Create(
                        Text,
                        TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextTransparency = state and 0 or 0.5}
                    ):Play()
                    we:Play()
                    we.Completed:Wait()
                    if state == false then
                    MainToggle_3.Visible = state
                    end
                    callback(state)
                    Tgo = state
                    getgenv().ToggleState = state
                end

                return ToglFunc
            end
            
            function main:AddLabel(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
                Label.Name = "Label"
                Label.Parent = ScrollPage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 260, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 14.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
                PaddingLabel.PaddingLeft = UDim.new(0,15)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
                function labell:Set(newtext)
                    Label.Text = newtext
                end   
                return labell
            end
            return main
        end
        return uitab
    end
    return Ui
end