--[[
	UI MAKE BY BEDOL HUB;
	
	LINK: https://github.com/3345-c-a-t-s-u-s/Bedol_X/blob/main/README.md
	
	GIVE MONEY FOR BUY DOMAIN!
]]

local Core = game:FindFirstChild('CoreGui') or game:GetService('Players').LocalPlayer.PlayerGui
local Mouse = game.Players.LocalPlayer:GetMouse()
local UIS = game:GetService('UserInputService')
local KeyDec = true

local function Tween<TweenService...>(object:Instance,info:TweenInfo,besc:{string|ValueBase}) : (Tween)
	local index = game:GetService('TweenService'):Create(object,info,besc)
	index:Play()
	return index
end

local function CalculateDistance<Info...>(pointA, pointB)
	return math.sqrt(((pointB.X - pointA.X) ^ 2) + ((pointB.Y - pointA.Y) ^ 2))
end

function Create_Ripple<Effect...>(Parent : Frame, ___)
	Parent.ClipsDescendants = true
	local ripple = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")

	ripple.Active = false
	ripple.Name = "ripple"
	ripple.Parent = Parent
	ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ripple.ZIndex = Parent.ZIndex or 7
	ripple.AnchorPoint = Vector2.new(0.5, 0.5)
	ripple.Size = UDim2.new(0,0,0,0)
	ripple.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner.CornerRadius = UDim.new(0.25, 0)
	UICorner.Parent = ripple

	local buttonAbsoluteSize = Parent.AbsoluteSize
	local buttonAbsolutePosition = Parent.AbsolutePosition

	local mouseAbsolutePosition = Vector2.new(Mouse.X, Mouse.Y)
	local mouseRelativePosition = (mouseAbsolutePosition - buttonAbsolutePosition)

	ripple.BackgroundTransparency = 0.84
	ripple.Position = UDim2.new(0, mouseRelativePosition.X, 0, mouseRelativePosition.Y)
	ripple.Parent = Parent

	local topLeft = CalculateDistance(mouseRelativePosition, Vector2.new(0, 0))
	local topRight = CalculateDistance(mouseRelativePosition, Vector2.new(buttonAbsoluteSize.X, 0))
	local bottomRight = CalculateDistance(mouseRelativePosition, buttonAbsoluteSize)
	local bottomLeft = CalculateDistance(mouseRelativePosition, Vector2.new(0, buttonAbsoluteSize.Y))

	local Size_UP = UDim2.new(50,0,50,0)

	if (___) ~= nil then
		Size_UP = Parent.Size
	end

	Tween(ripple,TweenInfo.new(2),{Size = Size_UP,BackgroundTransparency = 1})

	if (___) ~= nil then
		Tween(ripple,TweenInfo.new(0.2),{Position =UDim2.new(0.5,0,0.5,0)})
	end
	game:GetService('Debris'):AddItem(ripple,2.2)
end

local function GetTheme(name)
	if tostring(name) == "Normal" then
		return {
			TabButtonEffect = Color3.fromRGB(161, 0, 5),
			TextColorGB = Color3.fromRGB(255, 255, 255),
			MainFrameBlackground = Color3.fromRGB(24, 24, 24),
			PreviewFrameColor = Color3.fromRGB(57, 57, 57),
			DropShadow = Color3.fromRGB(0, 0, 0)
		}
	end
end

local Bedol = {}

function Bedol:Window<index...>(name:string,decs:string,SizeConfix:UDim2,theme)
	repeat wait(0.1) until KeyDec or KeyDec == true

	theme = theme or "Normal"

	local UI_THEME = GetTheme(theme)
	local itemindex = {}
	local Colleection = {}
	local Windows = {
		TOGGLE_KEY = Enum.KeyCode.X,
	}

	local ui_val = true
	local function ads<t...>(data,object,value)
		table.insert(itemindex,{
			Object = object,
			Value = value or {}
		})
	end

	local toggleEvent = Instance.new'BindableEvent'

	decs = decs or ""
	name = name or "Bedol Hub | "..tostring(game.Name)
	SizeConfix = SizeConfix or UDim2.new(0.35, 0, 0.4, 10)

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local Preview = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local DropShadow_2 = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local description = Instance.new("TextLabel")
	local TabButtons = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Loaded = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local MovementFrame = Instance.new("Frame")
	local MobileButton

	if UIS.TouchEnabled then
		MobileButton = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local DropShadowHolder = Instance.new("Frame")
		local DropShadow = Instance.new("ImageLabel")

		MobileButton.Name = "MobileButton"
		MobileButton.Parent = Frame
		MobileButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		MobileButton.BackgroundTransparency = 0.050
		MobileButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MobileButton.BorderSizePixel = 0
		MobileButton.Position = UDim2.new(0.97542727, 0, -0.0755599961, 0)
		MobileButton.Rotation = 45.000
		MobileButton.Size = UDim2.new(0.100000001, 0, 0.100000001, 0)
		MobileButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
		MobileButton.ZIndex = 25
		MobileButton.Image = "rbxassetid://10002373478"

		UICorner.Parent = MobileButton

		UIStroke.Transparency = 0.500
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke.Parent = MobileButton

		DropShadowHolder.Name = "DropShadowHolder"
		DropShadowHolder.Parent = MobileButton
		DropShadowHolder.BackgroundTransparency = 1.000
		DropShadowHolder.BorderSizePixel = 0
		DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
		DropShadowHolder.ZIndex = 0
		DropShadowHolder.Rotation = -0.002

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = DropShadowHolder
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Size = UDim2.new(1, 25, 1, 25)
		DropShadow.ZIndex = 0
		DropShadow.Image = "rbxassetid://6014261993"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		DropShadow.Rotation = 0.001

		MobileButton.MouseButton1Click:Connect(function()
			Create_Ripple(MobileButton,true)

			ui_val = not ui_val
			toggleEvent:Fire(ui_val)
		end)
	end

	toggleEvent.Event:Connect(function(val)
		if not val then
			for i,v in ipairs(Colleection) do
				Tween(v[1],TweenInfo.new(0.25),{Position = UDim2.new(1.1,0,0.025,0)})
			end
			Tween(Preview,TweenInfo.new(0.3),{Position = UDim2.new(-0.55,0,0,0)})
			Tween(Frame,TweenInfo.new(0.55),{BackgroundTransparency = 1})
			Tween(DropShadow,TweenInfo.new(0.6),{ImageTransparency = 1})

			if MobileButton then
				Tween(MobileButton,TweenInfo.new(0.4),{
					Rotation = 0.001,
					Position = UDim2.new(0.436, 0,-0.042, 0),
					Size = UDim2.new(0.2, 0,0.2, 0)
				})
			end
		else
			for i,v in ipairs(Colleection) do
				Tween(v[1],TweenInfo.new(0.25),{Position = UDim2.new(0.318, 0,0.025, 0)})
			end
			Tween(Preview,TweenInfo.new(0.3),{Position = UDim2.new(0,0,0,0)})
			Tween(Frame,TweenInfo.new(0.55),{BackgroundTransparency = 0})
			Tween(DropShadow,TweenInfo.new(0.6),{ImageTransparency = 0.5})

			if MobileButton then
				Tween(MobileButton,TweenInfo.new(0.4),{
					Rotation = 45,
					Position = UDim2.new(0.975,0,-0.076,0),
					Size = UDim2.new(0.1,0,0.1,0)
				})
			end
		end
	end)

	UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
		TabButtons.CanvasSize  = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)
	end)

	MovementFrame.Active = true

	ScreenGui.Parent = Core
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ScreenGui.ResetOnSpawn = false

	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(0.5, 0, 5, 0)
	Frame.Size = SizeConfix or UDim2.new(0.349999994, 50, 0.349999994, 35)
	Frame.ZIndex = 5

	UICorner.CornerRadius = UDim.new(0.0250000004, 0)
	UICorner.Parent = Frame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Rotation = 0.001
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Preview.Name = "Preview"
	Preview.Parent = Frame
	Preview.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	Preview.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Preview.BorderSizePixel = 0
	Preview.Size = UDim2.new(0.300000012, 0, 1, 0)
	Preview.ZIndex = 6
	Preview.Active = true

	UICorner_2.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner_2.Parent = Preview

	DropShadow_2.Name = "DropShadow"
	DropShadow_2.Parent = Preview
	DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_2.BackgroundTransparency = 1.000
	DropShadow_2.BorderSizePixel = 0
	DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
	DropShadow_2.ZIndex = 5
	DropShadow_2.Image = "rbxassetid://6015897843"
	DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_2.ImageTransparency = 0.500
	DropShadow_2.ScaleType = Enum.ScaleType.Slice
	DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

	Title.Name = "Title"
	Title.Parent = Preview
	Title.AnchorPoint = Vector2.new(0.5, 0)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.5, 0, 0.0250000004, 0)
	Title.Size = UDim2.new(0.949999988, 0, 0.0710000023, 0)
	Title.ZIndex = 6
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = name or "Bedol Hub"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextYAlignment = Enum.TextYAlignment.Top

	description.Name = "description"
	description.Parent = Preview
	description.AnchorPoint = Vector2.new(0.5, 0)
	description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	description.BackgroundTransparency = 1.000
	description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	description.BorderSizePixel = 0
	description.Position = UDim2.new(0.534219563, 0, 0.0955159888, 0)
	description.Size = UDim2.new(0.881560683, 0, 0.0544080064, 0)
	description.ZIndex = 6
	description.Font = Enum.Font.SourceSansBold
	description.Text = decs or "UI for all"
	description.TextColor3 = Color3.fromRGB(255, 255, 255)
	description.TextScaled = true
	description.TextSize = 14.000
	description.TextTransparency = 0.500
	description.TextWrapped = true
	description.TextXAlignment = Enum.TextXAlignment.Left

	TabButtons.Name = "TabButtons"
	TabButtons.Parent = Preview
	TabButtons.Active = true
	TabButtons.AnchorPoint = Vector2.new(0.5, 0.5)
	TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButtons.BackgroundTransparency = 1.000
	TabButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabButtons.BorderSizePixel = 0
	TabButtons.Position = UDim2.new(0.49999997, 0, 0.575111985, 0)
	TabButtons.Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
	TabButtons.ZIndex = 6
	TabButtons.BottomImage = ""
	TabButtons.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabButtons.ScrollBarThickness = 1
	TabButtons.TopImage = ""

	UIListLayout.Parent = TabButtons
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 9)

	Loaded.Name = "Loaded"
	Loaded.Parent = TabButtons
	Loaded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Loaded.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Loaded.BorderSizePixel = 0
	Loaded.Size = UDim2.new(1, 0, 0.5, 0)

	UIAspectRatioConstraint.Parent = Loaded
	UIAspectRatioConstraint.AspectRatio = 1000.000
	UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

	MovementFrame.Name = "MovementFrame"
	MovementFrame.Parent = Frame
	MovementFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MovementFrame.BackgroundTransparency = 1.000
	MovementFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MovementFrame.BorderSizePixel = 0
	MovementFrame.Size = UDim2.new(1, 0, 0.150000006, 0)
	MovementFrame.ZIndex = 10

	function Windows:Tab<Frame...>(Name:string)
		local Tab = {}

		local Button = Instance.new("Frame")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UICorner = Instance.new("UICorner")
		local TITLE = Instance.new("TextLabel")
		local ImageLabel = Instance.new("ImageLabel")
		local UICorner_2 = Instance.new("UICorner")
		local DropShadow = Instance.new("ImageLabel")
		local Input = Instance.new("TextButton")

		Button.Name = "Button"
		Button.Parent = TabButtons
		Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(0.980000019, 0, 0.5, 0)
		Button.ZIndex = 7

		UIAspectRatioConstraint.Parent = Button
		UIAspectRatioConstraint.AspectRatio = 3.500
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

		UICorner.CornerRadius = UDim.new(0.100000001, 0)
		UICorner.Parent = Button

		TITLE.Name = "TITLE"
		TITLE.Parent = Button
		TITLE.AnchorPoint = Vector2.new(0.5, 0.5)
		TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TITLE.BackgroundTransparency = 1.000
		TITLE.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TITLE.BorderSizePixel = 0
		TITLE.Position = UDim2.new(0.449999988, 0, 0.5, 0)
		TITLE.Size = UDim2.new(0.607, 0, 0.5, 0)
		TITLE.ZIndex = 15
		TITLE.Font = Enum.Font.GothamBold
		TITLE.Text = Name or "Tab"
		TITLE.TextColor3 = Color3.fromRGB(255, 255, 255)
		TITLE.TextScaled = true
		TITLE.TextSize = 14.000
		TITLE.TextWrapped = true
		TITLE.TextXAlignment = Enum.TextXAlignment.Left
		TITLE.TextYAlignment = Enum.TextYAlignment.Top

		ImageLabel.Parent = Button
		ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0.708000004, 0, 0.5, 0)
		ImageLabel.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
		ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
		ImageLabel.ZIndex = 7
		ImageLabel.Image = "rbxassetid://7468828225"

		UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
		UICorner_2.Parent = ImageLabel

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = Button
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Size = UDim2.new(1, 30, 1, 30)
		DropShadow.ZIndex = 6
		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

		Input.Name = "Input"
		Input.Parent = Button
		Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Input.BackgroundTransparency = 1.000
		Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Input.BorderSizePixel = 0
		Input.Size = UDim2.new(1, 0, 1, 0)
		Input.ZIndex = 15
		Input.Font = Enum.Font.SourceSans
		Input.TextColor3 = Color3.fromRGB(0, 0, 0)
		Input.TextSize = 14.000
		Input.TextTransparency = 1.000

		local Tab_Frame_Preview = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			Tab_Frame_Preview.CanvasSize  = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)
		end)


		Tab_Frame_Preview.Name = "Tab_Frame_Preview"
		Tab_Frame_Preview.Parent = Frame
		Tab_Frame_Preview.Active = true
		Tab_Frame_Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab_Frame_Preview.BackgroundTransparency = 1.000
		Tab_Frame_Preview.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab_Frame_Preview.BorderSizePixel = 0
		Tab_Frame_Preview.Position = UDim2.new(0.31824246, 0, 0.0248879418, 0)
		Tab_Frame_Preview.Size = UDim2.new(0.663977087, 0, 0.950000048, 0)
		Tab_Frame_Preview.ZIndex = 6
		Tab_Frame_Preview.ScrollBarThickness = 2
		Tab_Frame_Preview.CanvasSize = UDim2.new(0,0,5,1000)

		UIListLayout.Parent = Tab_Frame_Preview
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 7)

		local eventFire = Instance.new('BindableEvent',Button)

		local function ButtonToggle(val)
			if val then
				Tab_Frame_Preview.Visible = true
				Tween(Button,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(161, 0, 5)})
			else
				Tab_Frame_Preview.Visible = false
				Tween(Button,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(40, 40, 40)})
			end
		end

		if #Colleection == 0 then
			ButtonToggle(true)
		else
			ButtonToggle(false)
		end

		table.insert(Colleection,{
			Tab_Frame_Preview,
			['event'] = eventFire,
		})

		eventFire.Event:Connect(ButtonToggle)

		Input.MouseButton1Click:Connect(function()
			Create_Ripple(Input) 
			for i,v in ipairs(Colleection) do
				local scroll = v[1]
				local EVENT = v.event
				if scroll == Tab_Frame_Preview then
					EVENT:Fire(true)
				else
					EVENT:Fire(false)
				end
			end
		end)

		function Tab:AddTitle<L...>(stringMain:string)
			local Title = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UICorner = Instance.new("UICorner")
			local Title_2 = Instance.new("TextLabel")
			local DropShadow = Instance.new("ImageLabel")

			Title.Name = "Title"
			Title.Parent = Tab_Frame_Preview
			Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Title.ZIndex = 6

			UIAspectRatioConstraint.Parent = Title
			UIAspectRatioConstraint.AspectRatio = 8.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner.CornerRadius = UDim.new(0.150000006, 0)
			UICorner.Parent = Title

			Title_2.Name = "Title"
			Title_2.Parent = Title
			Title_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Title_2.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Title_2.BackgroundTransparency = 1.000
			Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_2.BorderSizePixel = 0
			Title_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Title_2.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Title_2.ZIndex = 6
			Title_2.Font = Enum.Font.GothamMedium
			Title_2.Text = stringMain or "Title"
			Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.TextScaled = true
			Title_2.TextSize = 14.000
			Title_2.TextWrapped = true
			Title_2.TextXAlignment = Enum.TextXAlignment.Left

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Title
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 30, 1, 30)
			DropShadow.ZIndex = 5
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			local Hook = {}

			function Hook:Set(...)
				Title_2.Text = (...) 
			end

			return Hook
		end

		function Tab:NewButton<button...>(name:string,callback:FunctionalTest)
			callback = callback or function() end
			local Button = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local DropShadow = Instance.new("ImageLabel")
			local ImageLabel = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local Input = Instance.new("TextButton")

			Button.Name = "Button"
			Button.Parent = Tab_Frame_Preview
			Button.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Button.ZIndex = 6

			UIAspectRatioConstraint.Parent = Button
			UIAspectRatioConstraint.AspectRatio = 8.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner.CornerRadius = UDim.new(0.150000006, 0)
			UICorner.Parent = Button

			Title.Name = "Title"
			Title.Parent = Button
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.441003293, 0, 0.49999994, 0)
			Title.Size = UDim2.new(0.832006574, 0, 0.5, 0)
			Title.ZIndex = 6
			Title.Font = Enum.Font.GothamMedium
			Title.Text = name or "Buton"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Button
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 30, 1, 30)
			DropShadow.ZIndex = 5
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			ImageLabel.Parent = Button
			ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageLabel.BorderSizePixel = 0
			ImageLabel.Position = UDim2.new(0.874818325, 0, 0.5, 0)
			ImageLabel.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
			ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
			ImageLabel.ZIndex = 7
			ImageLabel.Image = "rbxassetid://3926305904"
			ImageLabel.ImageRectOffset = Vector2.new(84, 204)
			ImageLabel.ImageRectSize = Vector2.new(36, 36)
			ImageLabel.ImageTransparency = 0.100

			UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
			UICorner_2.Parent = ImageLabel

			Input.Name = "Input"
			Input.Parent = Button
			Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Input.BackgroundTransparency = 1.000
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input.BorderSizePixel = 0
			Input.Size = UDim2.new(1, 0, 1, 0)
			Input.ZIndex = 15
			Input.Font = Enum.Font.SourceSans
			Input.TextColor3 = Color3.fromRGB(0, 0, 0)
			Input.TextSize = 14.000
			Input.TextTransparency = 1.000

			Input.MouseButton1Click:Connect(function()
				Create_Ripple(Input)
				callback()
			end)

			local Hook = {}
			function Hook:Fire()
				Create_Ripple(Input)
				callback()
			end
			return Hook
		end

		function Tab:NewToggle<BOOLEAN...>(name:string,info:boolean,callback)
			callback = callback or function() end
			info = info or false
			local Toggle = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local DropShadow = Instance.new("ImageLabel")
			local Input = Instance.new("TextButton")
			local ToggleIcon = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local IconToggle = Instance.new("ImageLabel")

			Toggle.Name = "Toggle"
			Toggle.Parent = Tab_Frame_Preview
			Toggle.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.BorderSizePixel = 0
			Toggle.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Toggle.ZIndex = 6

			UIAspectRatioConstraint.Parent = Toggle
			UIAspectRatioConstraint.AspectRatio = 8.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner.CornerRadius = UDim.new(0.150000006, 0)
			UICorner.Parent = Toggle

			Title.Name = "Title"
			Title.Parent = Toggle
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.441003293, 0, 0.49999994, 0)
			Title.Size = UDim2.new(0.832006574, 0, 0.5, 0)
			Title.ZIndex = 6
			Title.Font = Enum.Font.GothamMedium
			Title.Text = name or "Toggle"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Toggle
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 30, 1, 30)
			DropShadow.ZIndex = 5
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			Input.Name = "Input"
			Input.Parent = Toggle
			Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Input.BackgroundTransparency = 1.000
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input.BorderSizePixel = 0
			Input.Size = UDim2.new(1, 0, 1, 0)
			Input.ZIndex = 15
			Input.Font = Enum.Font.SourceSans
			Input.TextColor3 = Color3.fromRGB(0, 0, 0)
			Input.TextSize = 14.000
			Input.TextTransparency = 1.000

			ToggleIcon.Name = "ToggleIcon"
			ToggleIcon.Parent = Toggle
			ToggleIcon.AnchorPoint = Vector2.new(0, 0.5)
			ToggleIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleIcon.BackgroundTransparency = 1.000
			ToggleIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleIcon.BorderSizePixel = 0
			ToggleIcon.Position = UDim2.new(0.879999995, 0, 0.5, 0)
			ToggleIcon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
			ToggleIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
			ToggleIcon.ZIndex = 7

			UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
			UICorner_2.Parent = ToggleIcon

			UIStroke.Thickness = 1.500
			UIStroke.Transparency = 0.400
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.Parent = ToggleIcon

			IconToggle.Name = "IconToggle"
			IconToggle.Parent = ToggleIcon
			IconToggle.AnchorPoint = Vector2.new(0.5, 0.5)
			IconToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IconToggle.BackgroundTransparency = 1.000
			IconToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IconToggle.BorderSizePixel = 0
			IconToggle.Position = UDim2.new(0.5, 0, 0.5, 0)
			IconToggle.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
			IconToggle.ZIndex = 7
			IconToggle.Image = "rbxassetid://10002398990"

			local function SetToggle(val)
				if val then
					IconToggle.Image = "rbxassetid://3944680095"
					IconToggle.ImageTransparency = 0.9
					IconToggle.Size = UDim2.new(0.3,0,0.3,0)
					Tween(IconToggle,TweenInfo.new(0.3,Enum.EasingStyle.Back),{
						ImageTransparency = 0,
						Size = UDim2.new(0.95,0,0.95,0)
					})
				else
					IconToggle.Image = "rbxassetid://10002398990"
					IconToggle.ImageTransparency = 0.9
					IconToggle.Size = UDim2.new(0.3,0,0.3,0)
					Tween(IconToggle,TweenInfo.new(0.3,Enum.EasingStyle.Back),{
						ImageTransparency = 0,
						Size = UDim2.new(0.95,0,0.95,0)
					})
				end
			end
			SetToggle(info)

			Input.MouseButton1Click:Connect(function()
				Create_Ripple(Input)
				info = not info
				SetToggle(info)
				callback(info)
			end)

			local Hook = {}

			function Hook:Set(val)
				val = val or false
				info = val
				SetToggle(info)
				callback(info)
			end

			return Hook
		end

		function Tab:NewKeybind<Key...>(name:string,info:Enum.KeyCode,callback)
			info = info or "None"
			callback = callback or function() end

			local function Converter(ket)
				if typeof(ket) ~= "EnumItem" then
					return "None"
				else
					local name = ket.Name

					return name
				end
			end

			local Keybind = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local DropShadow = Instance.new("ImageLabel")
			local Input = Instance.new("TextButton")
			local BindIcon = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local Bind = Instance.new("TextLabel")

			Keybind.Name = "Keybind"
			Keybind.Parent = Tab_Frame_Preview
			Keybind.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Keybind.BorderSizePixel = 0
			Keybind.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Keybind.ZIndex = 6

			UIAspectRatioConstraint.Parent = Keybind
			UIAspectRatioConstraint.AspectRatio = 8.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner.CornerRadius = UDim.new(0.150000006, 0)
			UICorner.Parent = Keybind

			Title.Name = "Title"
			Title.Parent = Keybind
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.441003293, 0, 0.49999994, 0)
			Title.Size = UDim2.new(0.832006574, 0, 0.5, 0)
			Title.ZIndex = 6
			Title.Font = Enum.Font.GothamMedium
			Title.Text = name or "Keybind"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Keybind
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 30, 1, 30)
			DropShadow.ZIndex = 5
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			Input.Name = "Input"
			Input.Parent = Keybind
			Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Input.BackgroundTransparency = 1.000
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input.BorderSizePixel = 0
			Input.Size = UDim2.new(1, 0, 1, 0)
			Input.ZIndex = 15
			Input.Font = Enum.Font.SourceSans
			Input.TextColor3 = Color3.fromRGB(0, 0, 0)
			Input.TextSize = 14.000
			Input.TextTransparency = 1.000

			BindIcon.Name = "BindIcon"
			BindIcon.Parent = Keybind
			BindIcon.AnchorPoint = Vector2.new(0, 0.5)
			BindIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BindIcon.BackgroundTransparency = 1.000
			BindIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BindIcon.BorderSizePixel = 0
			BindIcon.Position = UDim2.new(0.879999995, 0, 0.5, 0)
			BindIcon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
			BindIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
			BindIcon.ZIndex = 7

			UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
			UICorner_2.Parent = BindIcon

			UIStroke.Thickness = 1.500
			UIStroke.Transparency = 0.400
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.Parent = BindIcon

			Bind.Name = "Bind"
			Bind.Parent = BindIcon
			Bind.AnchorPoint = Vector2.new(0.5, 0.5)
			Bind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Bind.BackgroundTransparency = 1.000
			Bind.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Bind.BorderSizePixel = 0
			Bind.Position = UDim2.new(0.5, 0, 0.5, 0)
			Bind.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
			Bind.ZIndex = 7
			Bind.Font = Enum.Font.ArialBold
			Bind.Text = Converter(info)
			Bind.TextColor3 = Color3.fromRGB(255, 255, 255)
			Bind.TextScaled = true
			Bind.TextSize = 14.000
			Bind.TextWrapped = true
			local Binding = false
			Input.MouseButton1Click:Connect(function()
				if Binding then
					return
				end
				Binding =  true
				Create_Ripple(Input)
				local targetloadded = nil

				local hook = UIS.InputBegan:Connect(function(is)
					if is.KeyCode ~= Enum.KeyCode.Unknown then
						targetloadded = is.KeyCode
					end
				end)
				Bind.Text = "..."
				repeat task.wait() until targetloadded or not Binding
				Binding =false
				if hook then
					hook:Disconnect()
				end
				if targetloadded then
					Bind.Text = Converter(targetloadded)
					callback(targetloadded)
				end
				return
			end)
			local Hook = {}

			function Hook:Set(val)
				if not val then
					return
				end
				Bind.Text = Converter(val)
				callback(val)
			end

			return Hook
		end

		function Tab:NewSlider<number...>(name:string,Min:number,Max:number,callback)
			Min = Min or 1
			Max = Max or 100
			callback = callback or function() end
			local Slider = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local DropShadow = Instance.new("ImageLabel")
			local Showed = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local Frame = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local VALUE = Instance.new("TextLabel")

			Slider.Name = "Slider"
			Slider.Parent = Tab_Frame_Preview
			Slider.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Slider.BorderSizePixel = 0
			Slider.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Slider.ZIndex = 6

			UIAspectRatioConstraint.Parent = Slider
			UIAspectRatioConstraint.AspectRatio = 8.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner.CornerRadius = UDim.new(0.150000006, 0)
			UICorner.Parent = Slider

			Title.Name = "Title"
			Title.Parent = Slider
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.266047567, 0, 0.49999994, 0)
			Title.Size = UDim2.new(0.482095152, 0, 0.5, 0)
			Title.ZIndex = 6
			Title.Font = Enum.Font.GothamMedium
			Title.Text = name or "Slider"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Slider
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 30, 1, 30)
			DropShadow.ZIndex = 5
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			Showed.Name = "Showed"
			Showed.Parent = Slider
			Showed.AnchorPoint = Vector2.new(0, 0.5)
			Showed.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Showed.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Showed.BorderSizePixel = 0
			Showed.ClipsDescendants = true
			Showed.Position = UDim2.new(0.524818301, 0, 0.5, 0)
			Showed.Size = UDim2.new(0.449999988, 0, 0.25, 0)
			Showed.ZIndex = 6
			Showed.Active = true

			UICorner_2.CornerRadius = UDim.new(0.25, 0)
			UICorner_2.Parent = Showed

			Frame.Parent = Showed
			Frame.AnchorPoint = Vector2.new(0, 0.5)
			Frame.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
			Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame.BorderSizePixel = 0
			Frame.Position = UDim2.new(0, 0, 0.5, 0)
			Frame.Size = UDim2.new(0, 0, 1, 0)
			Frame.ZIndex = 6

			UICorner_3.CornerRadius = UDim.new(0.25, 0)
			UICorner_3.Parent = Frame

			VALUE.Name = "VALUE"
			VALUE.Parent = Slider
			VALUE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			VALUE.BackgroundTransparency = 1.000
			VALUE.BorderColor3 = Color3.fromRGB(0, 0, 0)
			VALUE.BorderSizePixel = 0
			VALUE.Position = UDim2.new(0.700601876, 0, 0.104344666, 0)
			VALUE.Size = UDim2.new(0.273000002, 0, 0.200000003, 0)
			VALUE.ZIndex = 10
			VALUE.Font = Enum.Font.GothamBold
			VALUE.Text = tostring(Min)
			VALUE.TextColor3 = Color3.fromRGB(255, 255, 255)
			VALUE.TextScaled = true
			VALUE.TextSize = 14.000
			VALUE.TextWrapped = true
			VALUE.TextXAlignment = Enum.TextXAlignment.Right

			local danger = false

			Showed.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					danger = true
				end
			end)

			Showed.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					danger = false
				end
			end)

			UIS.InputChanged:Connect(function(Input)
				if danger and (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
					local SizeScale = math.clamp(((Input.Position.X - Showed.AbsolutePosition.X) / Showed.AbsoluteSize.X), 0, 1)
					local Value = math.floor(((Max - Min) * SizeScale) + Min)
					local Size = UDim2.fromScale(SizeScale, 1)
					VALUE.Text = Value
					Tween(Frame,TweenInfo.new(0.1),{Size = Size})
					callback(Value)
				end
			end)

			local Hook = {}

			function Hook:Set(val)
				val = tonumber(val)
				if val then
					local UDSIze = math.clamp((val / Max),0,1)
					local Size = UDim2.fromScale(UDSIze, 1)
					Tween(Frame,TweenInfo.new(0.1),{Size = Size})
					VALUE.Text = tostring(val)
					callback(tonumber(val))
				end
			end

			return Hook;
		end

		function Tab:NewDropdown<assets...>(name:string,info:{string},callback,auto_ref)
			
			info = info or {}
			callback = callback or function() end

			local Dropdown = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UICorner = Instance.new("UICorner")
			local UIListLayout = Instance.new("UIListLayout")
			local IndexInfo = Instance.new("Frame")
			local DropdownInfo = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local Data_Info = Instance.new("TextLabel")
			local Input = Instance.new("TextButton")
			local IndexIcon = Instance.new("ImageLabel")
			local UICorner_3 = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
			local DropShadow = Instance.new("ImageLabel")
			local Main = Instance.new("Frame")
			local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
			local UICorner_4 = Instance.new("UICorner")
			local DropShadow_2 = Instance.new("ImageLabel")
			local ScrollingDropdown = Instance.new("ScrollingFrame")
			local UIListLayout_2 = Instance.new("UIListLayout")

			UIListLayout_2:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
				ScrollingDropdown.CanvasSize  = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)
			end)

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Tab_Frame_Preview
			Dropdown.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown.BorderSizePixel = 0
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Dropdown.ZIndex = 6

			UIAspectRatioConstraint.Parent = Dropdown
			UIAspectRatioConstraint.AspectRatio = 8.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner.CornerRadius = UDim.new(0.100000001, 0)
			UICorner.Parent = Dropdown

			UIListLayout.Parent = Dropdown
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 2)

			IndexInfo.Name = "IndexInfo"
			IndexInfo.Parent = Dropdown
			IndexInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IndexInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IndexInfo.BorderSizePixel = 0
			IndexInfo.Size = UDim2.new(1, 0, 0.5, 0)

			DropdownInfo.Name = "DropdownInfo"
			DropdownInfo.Parent = IndexInfo
			DropdownInfo.AnchorPoint = Vector2.new(0, 0.5)
			DropdownInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownInfo.BackgroundTransparency = 0.850
			DropdownInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropdownInfo.BorderSizePixel = 0
			DropdownInfo.Position = UDim2.new(0.606095254, 0, 0.5, 0)
			DropdownInfo.Size = UDim2.new(2, 0, 0.699999988, 0)
			DropdownInfo.SizeConstraint = Enum.SizeConstraint.RelativeYY
			DropdownInfo.ZIndex = 7

			UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
			UICorner_2.Parent = DropdownInfo

			UIStroke.Thickness = 1.500
			UIStroke.Transparency = 0.400
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
			UIStroke.Parent = DropdownInfo

			Data_Info.Name = "Data_Info"
			Data_Info.Parent = DropdownInfo
			Data_Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Data_Info.BackgroundTransparency = 1.000
			Data_Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Data_Info.BorderSizePixel = 0
			Data_Info.Size = UDim2.new(1, 0, 1, 0)
			Data_Info.ZIndex = 6
			Data_Info.Font = Enum.Font.GothamBold
			Data_Info.Text = "Search..."
			Data_Info.TextColor3 = Color3.fromRGB(255, 255, 255)
			Data_Info.TextScaled = true
			Data_Info.TextSize = 14.000
			Data_Info.TextWrapped = true

			Input.Name = "Input"
			Input.Parent = IndexInfo
			Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Input.BackgroundTransparency = 1.000
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input.BorderSizePixel = 0
			Input.Size = UDim2.new(1, 0, 1, 0)
			Input.ZIndex = 15
			Input.Font = Enum.Font.SourceSans
			Input.TextColor3 = Color3.fromRGB(0, 0, 0)
			Input.TextSize = 14.000
			Input.TextTransparency = 1.000

			IndexIcon.Name = "IndexIcon"
			IndexIcon.Parent = IndexInfo
			IndexIcon.AnchorPoint = Vector2.new(0.5, 0.5)
			IndexIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IndexIcon.BackgroundTransparency = 1.000
			IndexIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IndexIcon.BorderSizePixel = 0
			IndexIcon.Position = UDim2.new(0.92900002, 0, 0.5, 0)
			IndexIcon.Size = UDim2.new(0.550000012, 0, 0.550000012, 0)
			IndexIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
			IndexIcon.ZIndex = 7
			IndexIcon.Image = "rbxassetid://394719559"
			IndexIcon.ImageTransparency = 0.100
			IndexIcon.ScaleType = Enum.ScaleType.Crop

			UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
			UICorner_3.Parent = IndexIcon

			Title.Name = "Title"
			Title.Parent = IndexInfo
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.274909109, 0, 0.500000119, 0)
			Title.Size = UDim2.new(0.499818146, 0, 0.49999997, 0)
			Title.ZIndex = 6
			Title.Font = Enum.Font.GothamMedium
			Title.Text = name or "Dropdown"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UIAspectRatioConstraint_2.Parent = IndexInfo
			UIAspectRatioConstraint_2.AspectRatio = 8.000
			UIAspectRatioConstraint_2.AspectType = Enum.AspectType.ScaleWithParentSize

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = IndexInfo
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 30, 1, 30)
			DropShadow.ZIndex = 5
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			Main.Name = "Main"
			Main.Parent = Dropdown
			Main.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
			Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Main.BorderSizePixel = 0
			Main.Size = UDim2.new(0.899999976, 0, 0.699999988, 0)
			Main.Visible = false
			Main.ZIndex = 7

			UIAspectRatioConstraint_3.Parent = Main
			UIAspectRatioConstraint_3.AspectRatio = 2.300
			UIAspectRatioConstraint_3.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner_4.CornerRadius = UDim.new(0.150000006, 0)
			UICorner_4.Parent = Main

			DropShadow_2.Name = "DropShadow"
			DropShadow_2.Parent = Main
			DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow_2.BackgroundTransparency = 1.000
			DropShadow_2.BorderSizePixel = 0
			DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow_2.Size = UDim2.new(1, 44, 1, 44)
			DropShadow_2.ZIndex = 6
			DropShadow_2.Image = "rbxassetid://6015897843"
			DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow_2.ImageTransparency = 0.500
			DropShadow_2.ScaleType = Enum.ScaleType.Slice
			DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

			ScrollingDropdown.Name = "ScrollingDropdown"
			ScrollingDropdown.Parent = Main
			ScrollingDropdown.Active = true
			ScrollingDropdown.AnchorPoint = Vector2.new(0.5, 0.5)
			ScrollingDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ScrollingDropdown.BackgroundTransparency = 1.000
			ScrollingDropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ScrollingDropdown.BorderSizePixel = 0
			ScrollingDropdown.Position = UDim2.new(0.5, 0, 0.5, 0)
			ScrollingDropdown.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			ScrollingDropdown.ZIndex = 8
			ScrollingDropdown.ScrollBarThickness = 4

			UIListLayout_2.Parent = ScrollingDropdown
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0,1)

			local function Hold(to)
				local currenttime = 0.5
				if to then
					Tween(Main,TweenInfo.new(currenttime),{BackgroundTransparency = 0})
					Tween(DropShadow_2,TweenInfo.new(currenttime),{ImageTransparency = 0.5})

					for i,v : TextButton in ipairs(ScrollingDropdown:GetChildren()) do
						if v:isA('TextButton') then
							local shadow = v:FindFirstChildWhichIsA('ImageLabel')
							Tween(v,TweenInfo.new(currenttime),{
								BackgroundTransparency = 0,
								TextTransparency = 0,
							})
							if shadow then
								Tween(shadow,TweenInfo.new(currenttime),{ImageTransparency = 0.5})
							end
						end
					end
				else
					Tween(Main,TweenInfo.new(currenttime),{BackgroundTransparency = 1})
					Tween(DropShadow_2,TweenInfo.new(currenttime),{ImageTransparency = 1})

					for i,v : TextButton in ipairs(ScrollingDropdown:GetChildren()) do
						if v:isA('TextButton') then
							local shadow = v:FindFirstChildWhichIsA('ImageLabel')
							Tween(v,TweenInfo.new(currenttime),{
								BackgroundTransparency = 1,
								TextTransparency = 1,
							})
							if shadow then
								Tween(shadow,TweenInfo.new(currenttime),{ImageTransparency = 1})
							end
						end
					end
				end
			end

			local function DrpdownToggle(val)
				if val then
					Tween(IndexIcon,TweenInfo.new(0.5),{ImageColor3 = Color3.fromRGB(255, 0, 4)})
					Tween(UIAspectRatioConstraint,TweenInfo.new(0.8,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{AspectRatio = 1.8})
					Main.Visible = true
					Hold(true)
				else
					Tween(IndexIcon,TweenInfo.new(0.5),{ImageColor3 = Color3.fromRGB(255, 255, 255)})
					Tween(UIAspectRatioConstraint,TweenInfo.new(0.8),{AspectRatio = 8})
					Hold(false)
					if Main.BackgroundTransparency == 1 then
						Main.Visible = false
					end
				end
			end

			local function CrButton()
				local TextButton = Instance.new("TextButton")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")

				TextButton.Parent = ScrollingDropdown
				TextButton.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
				TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.BorderSizePixel = 0
				TextButton.Size = UDim2.new(0.930000007, 0, 0.5, 0)
				TextButton.ZIndex = 8
				TextButton.Font = Enum.Font.GothamBold
				TextButton.Text = "List"
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextScaled = true
				TextButton.TextSize = 14.000
				TextButton.TextWrapped = true
				TextButton.AutoButtonColor = false

				UIAspectRatioConstraint.Parent = TextButton
				UIAspectRatioConstraint.AspectRatio = 7.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0.100000001, 0)
				UICorner.Parent = TextButton

				TextButton.MouseEnter:Connect(function()
					Tween(TextButton,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(68, 68, 68)})
				end)
				TextButton.MouseLeave:Connect(function()
					Tween(TextButton,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(39, 39, 39)})
				end)

				return TextButton
			end

			local function AddresButton()
				for i,v in ipairs(info) do
					local nameMain = tostring(v)
					local TextButton = CrButton()
					TextButton.Text = nameMain
					TextButton.MouseButton1Click:Connect(function()
						Create_Ripple(TextButton)
						Data_Info.Text = tostring(v)
						callback(tostring(v))
					end)
				end
			end
			
			local function refreshData()
				if auto_ref then
					info = auto_ref()
				end
			end
			
			local function ref()
				refreshData()
				
				for i,v : TextButton in ipairs(ScrollingDropdown:GetChildren()) do
					if v:isA('TextButton') then
						v:Destroy()
					end
				end

				AddresButton()
			end

			ref()

			local toggle_val = false

			Input.MouseButton1Click:Connect(function()
				ref()
				Create_Ripple(Input)
				toggle_val = not toggle_val
				DrpdownToggle(toggle_val)
			end)

			local Hook = {}

			function Hook:Refresh(infonew)
				if infonew then
					info = infonew
					ref()
				end
			end

			function Hook:Set(name)
				callback(name)
				Data_Info.Text = tostring(name)
			end

			return Hook
		end

		function Tab:NewTextbox<Assets...>(__Title__:string,__InputText__:string,calback:FunctionalTest)
			__InputText__ = __InputText__ or "Input"
			calback = calback or function() end

			local Textbox = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local DropShadow = Instance.new("ImageLabel")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			Textbox.Name = "Textbox"
			Textbox.Parent = Tab_Frame_Preview
			Textbox.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Textbox.BorderSizePixel = 0
			Textbox.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Textbox.ZIndex = 6

			UIAspectRatioConstraint.Parent = Textbox
			UIAspectRatioConstraint.AspectRatio = 8.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			UICorner.CornerRadius = UDim.new(0.150000006, 0)
			UICorner.Parent = Textbox

			Title.Name = "Title"
			Title.Parent = Textbox
			Title.AnchorPoint = Vector2.new(0.5, 0.5)
			Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.35531348, 0, 0.499999851, 0)
			Title.Size = UDim2.new(0.660627007, 0, 0.49999997, 0)
			Title.ZIndex = 6
			Title.Font = Enum.Font.GothamMedium
			Title.Text = __Title__ or "Textbox"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Textbox
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 30, 1, 30)
			DropShadow.ZIndex = 5
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			TextBox.Parent = Textbox
			TextBox.AnchorPoint = Vector2.new(0, 0.5)
			TextBox.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.726252973, 0, 0.500000179, 0)
			TextBox.Size = UDim2.new(0.23574689, 0, 0.600000024, 0)
			TextBox.ZIndex = 6
			TextBox.ClearTextOnFocus = false
			TextBox.Font = Enum.Font.GothamBold
			TextBox.PlaceholderText = __InputText__ or "Input"
			TextBox.Text = ""
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextScaled = true
			TextBox.TextSize = 14.000
			TextBox.TextWrapped = true

			UICorner_2.CornerRadius = UDim.new(0.150000006, 0)
			UICorner_2.Parent = TextBox

			TextBox.FocusLost:Connect(function()
				Create_Ripple(Textbox)
				calback(TextBox.Text)
			end)

			TextBox.InputBegan:Connect(function(al)
				if al.UserInputType == Enum.UserInputType.Touch or al.UserInputType == Enum.UserInputType.MouseButton1 then
					Create_Ripple(Textbox)
				end
			end)

			local idex = {}

			function idex:Set(...)
				if (...) then
					TextBox.Text = tostring((...))
					calback(TextBox.Text)
				end
			end

			return idex
		end

		return Tab
	end

	function Windows:Documentation<Tunknow...>(HeaddTitle:string,documentationstr:string,buttontext:string,cc)
		HeaddTitle = HeaddTitle or "Bedol Hub"
		documentationstr = documentationstr or "- UI from Bedol Hub - \n - None"
		buttontext = buttontext or "Next"

		local Documentation = Instance.new("Frame")
		local DropShadow = Instance.new("ImageLabel")
		local UICorner = Instance.new("UICorner")
		local Header = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local NextButton = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local DropShadow_2 = Instance.new("ImageLabel")

		Documentation.Name = "Documentation"
		Documentation.Parent = ScreenGui
		Documentation.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		Documentation.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Documentation.BorderSizePixel = 0
		Documentation.Position = UDim2.new(0.5,0,0.5,0)
		Documentation.Size = UDim2.new(0,0,0,0) -- UDim2.new(0.449999988, 0, 0.449999988, 0)
		Documentation.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Documentation.ZIndex = 35
		Documentation.AnchorPoint = Vector2.new(0.5,0.5)
		Documentation.Active = true

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = Documentation
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Size = UDim2.new(1, 47, 1, 47)
		DropShadow.ZIndex = 34
		DropShadow.Image = "rbxassetid://6014261993"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		DropShadow.Rotation = 0.3

		UICorner.CornerRadius = UDim.new(0.0250000004, 0)
		UICorner.Parent = Documentation

		Header.Name = "Header"
		Header.Parent = Documentation
		Header.AnchorPoint = Vector2.new(0.5, 0)
		Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Header.BackgroundTransparency = 1.000
		Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Header.BorderSizePixel = 0
		Header.Position = UDim2.new(0.5, 0, 0.00999999978, 0)
		Header.Size = UDim2.new(0.970000029, 0, 0.109999999, 0)
		Header.ZIndex = 36
		Header.Font = Enum.Font.GothamBold
		Header.Text = HeaddTitle or "Documentation"
		Header.TextColor3 = Color3.fromRGB(255, 255, 255)
		Header.TextScaled = true
		Header.TextSize = 14.000
		Header.TextWrapped = true

		Frame.Parent = Documentation
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.147192031, 0, 0.196255982, 0)
		Frame.Size = UDim2.new(0.699999988, 0, 0.600000024, 0)
		Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Frame.ZIndex = 45

		ScrollingFrame.Parent = Frame
		ScrollingFrame.Active = true
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
		ScrollingFrame.ZIndex = 55
		ScrollingFrame.BottomImage = ""
		ScrollingFrame.ScrollBarThickness = 1
		ScrollingFrame.TopImage = ""

		UIListLayout.Parent = ScrollingFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)
		end)

		local function createtext()
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local TextLabel = Instance.new("TextLabel")
			TextLabel.Parent = ScrollingFrame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDim2.new(1, 0, 0.5, 0)
			TextLabel.ZIndex = 56
			TextLabel.Font = Enum.Font.GothamBold
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextTransparency = 0.500
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			UIAspectRatioConstraint.Parent = TextLabel
			UIAspectRatioConstraint.AspectRatio = 10.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			return TextLabel
		end

		NextButton.Name = "NextButton"
		NextButton.Parent = Documentation
		NextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NextButton.BackgroundTransparency = 0.550
		NextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NextButton.BorderSizePixel = 0
		NextButton.Position = UDim2.new(0.252868354, 0, 0.856733203, 0)
		NextButton.Size = UDim2.new(0.5, 0, 0.100000001, 0)
		NextButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
		NextButton.ZIndex = 77
		NextButton.Font = Enum.Font.GothamBold
		NextButton.Text = buttontext or "Next"
		NextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		NextButton.TextScaled = true
		NextButton.TextSize = 14.000
		NextButton.TextWrapped = true

		UICorner_2.CornerRadius = UDim.new(0.0250000004, 0)
		UICorner_2.Parent = NextButton

		DropShadow_2.Name = "DropShadow"
		DropShadow_2.Parent = NextButton
		DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow_2.BackgroundTransparency = 1.000
		DropShadow_2.BorderSizePixel = 0
		DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
		DropShadow_2.ZIndex = 76
		DropShadow_2.Image = "rbxassetid://6014261993"
		DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow_2.ImageTransparency = 0.500
		DropShadow_2.ScaleType = Enum.ScaleType.Slice
		DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)
		DropShadow_2.Rotation = 0.003

		local lines = {}
		for line in documentationstr:gmatch("[^\n]+") do
			table.insert(lines, line)
		end

		for i,v in ipairs(lines) do
			local txt = createtext()

			txt.Text = tostring(v)
		end

		Tween(Documentation,TweenInfo.new(0.45,Enum.EasingStyle.Back),{Size = UDim2.new(0.449999988, 0, 0.449999988, 0)})

		local tg = nil
		local ds = nil
		local sp = nil

		local function slideermove(input)
			local delta = input.Position - ds
			local position = UDim2.new(sp.X.Scale, sp.X.Offset + delta.X,
				sp.Y.Scale, sp.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(Documentation, TweenInfo.new(0.1), {Position = position}):Play()
		end

		Documentation.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				tg = true
				ds = input.Position
				sp = Documentation.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						tg = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if tg then
					slideermove(input)
				end
			end
		end)

		NextButton.MouseButton1Click:Connect(function()
			Create_Ripple(NextButton)
			wait(0.1)
			if cc then
				pcall(function()
					cc()
				end)
			end
			Tween(DropShadow,TweenInfo.new(0.2),{ImageTransparency = 1})
			Tween(DropShadow_2,TweenInfo.new(0.2),{ImageTransparency = 1})

			local s = Tween(Documentation,TweenInfo.new(0.45,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0,0,0,0)})
			s.Completed:Wait()
			wait(0.1)
			Documentation:Destroy()
		end)
	end

	function Windows:SetCustomMouse(on_rgb:boolean?)
		local customCursor = Instance.new("ImageLabel")

		customCursor.Size = UDim2.fromOffset(200, 200)
		customCursor.ZIndex = 65
		customCursor.BackgroundTransparency = 1
		customCursor.Image = ""
		customCursor.Parent = ScreenGui

		local EditBouse = false

		Frame.InputBegan:Connect(function(index)
			if index.UserInputType == Enum.UserInputType.MouseMovement or index.UserInputType == Enum.UserInputType.Touch then
				EditBouse = true
			end
		end)

		Frame.InputEnded:Connect(function(index)
			if index.UserInputType == Enum.UserInputType.MouseMovement or index.UserInputType == Enum.UserInputType.Touch then
				EditBouse = false
			end
		end)

		if on_rgb then
			coroutine.wrap(function()
				local colorx = 0

				while true do task.wait(0.5)

					Tween(customCursor,TweenInfo.new(0.7),{ImageColor3 = Color3.fromHSV(colorx,1,1)}):Play()

					colorx = colorx + 2/255 
					if colorx >= 1 then
						colorx = 0
					end
				end

			end)()
		end

		game:GetService('RunService'):BindToRenderStep("MOUSE_EDITOR", 1, function()
			local mouseLocation = game:GetService('UserInputService'):GetMouseLocation()
			customCursor.Visible = true
			customCursor.Image = "rbxassetid://6065775281"
			customCursor.Position = UDim2.fromOffset(mouseLocation.X - customCursor.AbsoluteSize.X / 2, mouseLocation.Y - customCursor.AbsoluteSize.Y / 2)

			if EditBouse and ui_val then
				pcall(function()
					game:GetService('UserInputService').OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
				end)
				Tween(customCursor,TweenInfo.new(0.1),{ImageTransparency = 0}):Play()
			else
				pcall(function()
					game:GetService('UserInputService').OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
				end)
				Tween(customCursor,TweenInfo.new(0.1),{ImageTransparency = 1}):Play()
			end
		end)
	end

	function Windows:SetRGBShadow(speed:number?)
		speed = speed or 0.5
		coroutine.wrap(function()
			local colorx = 0

			while true do task.wait(speed)

				Tween(DropShadow,TweenInfo.new(speed * 1.1),{ImageColor3 = Color3.fromHSV(colorx,1,1)}):Play()
				Tween(DropShadow_2,TweenInfo.new(speed * 1.1),{ImageColor3 = Color3.fromHSV(colorx,1,0.5)}):Play()

				colorx = colorx + 2/255 
				if colorx >= 1 then
					colorx = 0
				end
			end

		end)()
	end

	local dragToggle = nil
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(Frame, TweenInfo.new(0.1), {Position = position}):Play()
	end

	MovementFrame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

	UIS.InputBegan:Connect(function(k)
		if k.KeyCode == Windows.TOGGLE_KEY then
			ui_val = not ui_val
			toggleEvent:Fire(ui_val)
		end
	end)

	toggleEvent:Fire(false)
	Tween(Frame,TweenInfo.new(2,Enum.EasingStyle.Quint),{Position = UDim2.new(0.5, 0, 0.5, 0)})
	toggleEvent:Fire(true)

	return Windows;
end

function Bedol:LoadKey(__Title__,__desc__,funcchecker)
	funcchecker = funcchecker or function(a) return true end
	KeyDec = false
	local ScreenGui = Instance.new("ScreenGui")
	local Key = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Desc = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local PasteKeyCode = Instance.new("TextBox")
	local UICorner_3 = Instance.new("UICorner")
	local Send = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")

	ScreenGui.Parent = Core
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

	Key.Name = "Key"
	Key.Parent = ScreenGui
	Key.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
	Key.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key.BorderSizePixel = 0
	Key.Position = UDim2.new(0.347853005, 0, 0.298913002, 0)
	Key.Size = UDim2.new(0.5, 0, 0.400000006, 0)
	Key.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Key.ZIndex = 5

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Key
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = -5
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	UICorner.CornerRadius = UDim.new(0.0250000004, 0)
	UICorner.Parent = Key

	Title.Name = "Title"
	Title.Parent = Key
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(1.00000012, 0, 0.155197009, 0)
	Title.ZIndex = 6
	Title.Font = Enum.Font.GothamBold
	Title.Text = __Title__ or "Bedol Hub"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.RichText = true

	Desc.Name = "Desc"
	Desc.Parent = Key
	Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Desc.BackgroundTransparency = 1.000
	Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Desc.BorderSizePixel = 0
	Desc.Position = UDim2.new(0, 0, 0.152853265, 0)
	Desc.Size = UDim2.new(1.00000012, 0, 0.0787703842, 0)
	Desc.ZIndex = 6
	Desc.Font = Enum.Font.GothamBold
	Desc.Text = __desc__ or "Paste Key"
	Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
	Desc.TextScaled = true
	Desc.TextSize = 14.000
	Desc.TextTransparency = 0.500
	Desc.TextWrapped = true
	Desc.RichText = true

	ImageLabel.Parent = Key
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.50000006, 0, 0.50000006, 0)
	ImageLabel.Size = UDim2.new(0.449999988, 0, 0.449999988, 0)
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.ZIndex = 7
	ImageLabel.Image = "rbxassetid://10871266112"
	ImageLabel.ImageTransparency = 0.200

	UICorner_2.CornerRadius = UDim.new(0.0250000004, 0)
	UICorner_2.Parent = ImageLabel

	PasteKeyCode.Name = "PasteKeyCode"
	PasteKeyCode.Parent = Key
	PasteKeyCode.AnchorPoint = Vector2.new(0.5, 0)
	PasteKeyCode.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	PasteKeyCode.BackgroundTransparency = 0.400
	PasteKeyCode.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PasteKeyCode.BorderSizePixel = 0
	PasteKeyCode.Position = UDim2.new(0.50000006, 0, 0.764737844, 0)
	PasteKeyCode.Size = UDim2.new(0.75, 0, 0.100000001, 0)
	PasteKeyCode.ZIndex = 7
	PasteKeyCode.ClearTextOnFocus = false
	PasteKeyCode.Font = Enum.Font.SourceSansBold
	PasteKeyCode.PlaceholderColor3 = Color3.fromRGB(116, 116, 116)
	PasteKeyCode.PlaceholderText = "Paste Key"
	PasteKeyCode.Text = ""
	PasteKeyCode.TextColor3 = Color3.fromRGB(255, 255, 255)
	PasteKeyCode.TextScaled = true
	PasteKeyCode.TextSize = 14.000
	PasteKeyCode.TextWrapped = true

	UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
	UICorner_3.Parent = PasteKeyCode

	Send.Name = "Send"
	Send.Parent = Key
	Send.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Send.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Send.BorderSizePixel = 0
	Send.Position = UDim2.new(0.224000007, 0, 0.889999986, 0)
	Send.Size = UDim2.new(0.550000012, 0, 0.100000001, 0)
	Send.ZIndex = 7
	Send.Font = Enum.Font.GothamBold
	Send.Text = "Submit"
	Send.TextColor3 = Color3.fromRGB(255, 255, 255)
	Send.TextScaled = true
	Send.TextSize = 14.000
	Send.TextWrapped = true

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = Send

	local startset = function()
		Key.Position = UDim2.new(0.347, 0,0.369, 0)
		DropShadow.ImageTransparency = 1
		ImageLabel.ImageTransparency = 1
		Send.TextTransparency = 1
		Key.BackgroundTransparency = 1
		Send.BackgroundTransparency = 1
		Title.TextTransparency = 1
		Desc.TextTransparency = 1
		PasteKeyCode.TextTransparency = 1
		PasteKeyCode.BackgroundTransparency = 1
		Send.BackgroundTransparency = 1
		Send.TextTransparency = 1
	end
	startset()
	local function OnStart()
		Tween(Key,TweenInfo.new(0.35),{Position = UDim2.new(0.347853005, 0, 0.298913002, 0),BackgroundTransparency = 0})
		Tween(DropShadow,TweenInfo.new(0.35),{ImageTransparency = 0.5})
		Tween(ImageLabel,TweenInfo.new(0.35),{ImageTransparency = 0.2})
		Tween(Send,TweenInfo.new(0.35),{
			BackgroundTransparency = 0,
			TextTransparency = 0
		})
		Tween(Title,TweenInfo.new(0.35),{
			TextTransparency = 0
		})
		Tween(Desc,TweenInfo.new(0.35),{
			TextTransparency = 0.5
		})
		Tween(PasteKeyCode,TweenInfo.new(0.35),{
			TextTransparency = 0,
			BackgroundTransparency = 0.4
		})
	end

	local function ShutDown()
		Tween(Key,TweenInfo.new(0.35),{
			Position = UDim2.new(0.347, 0,0.369, 0),
			BackgroundTransparency = 1
		})
		Tween(DropShadow,TweenInfo.new(0.35),{ImageTransparency = 1})
		Tween(ImageLabel,TweenInfo.new(0.35),{ImageTransparency = 1})
		Tween(Send,TweenInfo.new(0.35),{
			BackgroundTransparency = 1,
			TextTransparency = 1
		})
		Tween(Title,TweenInfo.new(0.35),{
			TextTransparency = 1
		})
		Tween(Desc,TweenInfo.new(0.35),{
			TextTransparency = 1
		})
		Tween(PasteKeyCode,TweenInfo.new(0.35),{
			TextTransparency = 1,
			BackgroundTransparency = 1
		})
		wait(0.5)
		ScreenGui:Destroy()
	end

	local round = 0
	wait(0.1)
	OnStart()
	local ischecking = false

	Send.MouseButton1Click:Connect(function()
		if ischecking then
			return
		end
		round+=1
		Send.Text = "Checking"
		ischecking = true
		local value = funcchecker(PasteKeyCode.Text,round)
		if value then
			PasteKeyCode.TextColor3 = Color3.fromRGB(26, 255, 0)
			Send.Text = "Pass"
			Tween(PasteKeyCode,TweenInfo.new(0.7),{
				TextColor3 = Color3.fromRGB(255, 255, 255)
			})
			Tween(Send,TweenInfo.new(0.1),{
				TextColor3 = Color3.fromRGB(55, 255, 0)
			})
			wait(0.1)
			ShutDown()
			wait(1)
			KeyDec = true

		else
			PasteKeyCode.TextColor3 = Color3.fromRGB(255, 0, 4)
			Send.Text = "wrong key"
			Tween(PasteKeyCode,TweenInfo.new(0.7),{
				TextColor3 = Color3.fromRGB(255, 255, 255)
			})

			Tween(Send,TweenInfo.new(0.1),{
				TextColor3 = Color3.fromRGB(255, 0, 4)
			})

			Tween(Send,TweenInfo.new(0.2,Enum.EasingStyle.Bounce,Enum.EasingDirection.InOut,5),{
				Position = UDim2.new(0.25, 0,0.89, 0)
			})

			wait(0.4)

			Tween(Send,TweenInfo.new(0.2,Enum.EasingStyle.Back),{
				Position = UDim2.new(0.224, 0,0.89, 0)
			})

			Tween(Send,TweenInfo.new(0.1),{
				TextColor3 = Color3.fromRGB(255, 255, 255)
			})

			PasteKeyCode.Text = ""
			Send.Text = "Submit"
		end
		ischecking = false
	end)
end


return Bedol;
