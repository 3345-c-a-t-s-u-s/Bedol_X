--[[
	NO KEY TOGGLE KEY OK!
]]

local Core = game:FindFirstChild('CoreGui') or game:GetService('Players').LocalPlayer.PlayerGui
local Mouse = game.Players.LocalPlayer:GetMouse()
local UIS = game:GetService('UserInputService')
pcall(function()
	_G.ip_address = game:HttpGet("www.goresee.com")
end)
local function Tween<TweenService...>(object:Instance,info:TweenInfo,besc:{string|ValueBase}) : (Tween)
	local index = game:GetService('TweenService'):Create(object,info,besc)
	index:Play()
	return index
end

local function CalculateDistance<Info...>(pointA, pointB)
	return math.sqrt(((pointB.X - pointA.X) ^ 2) + ((pointB.Y - pointA.Y) ^ 2))
end

function Create_Ripple<Effect...>(Parent : Frame)
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
	Tween(ripple,TweenInfo.new(2),{Size = Size_UP,BackgroundTransparency = 1})
	game:GetService('Debris'):AddItem(ripple,2.2)
end

local Bedol = {}

function Bedol:Window<index...>(name:string,decs:string,SizeConfix:UDim2)
	local Colleection = {}
	local Windows = {}
	
	decs = decs or ""
	name = name or "Bedol Hub | "..tostring(game.Name)
	SizeConfix = SizeConfix or UDim2.new(0.35, 50,0.35, 35)
	
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
	
	UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
		TabButtons.CanvasSize  = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)
	end)
	
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
		TITLE.Size = UDim2.new(0.800000012, 0, 0.5, 0)
		TITLE.ZIndex = 76
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
			Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
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
				if danger and Input.UserInputType == Enum.UserInputType.MouseMovement then
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
		
		function Tab:NewDropdown<assets...>(name:string,info:{string},callback)
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
			Title.Text = "Dropdown"
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
			
			local toggle_val = false
			
			Input.MouseButton1Click:Connect(function()
				Create_Ripple(Input)
				toggle_val = not toggle_val
				DrpdownToggle(toggle_val)
			end)
			
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
			
			local function ref()
				for i,v : TextButton in ipairs(ScrollingDropdown:GetChildren()) do
					if v:isA('TextButton') then
						v:Destroy()
					end
				end
				AddresButton()
			end
			
			ref()
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
		return Tab
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
	
	Tween(Frame,TweenInfo.new(2,Enum.EasingStyle.Quint),{Position = UDim2.new(0.5, 0, 0.5, 0)})
	
	return Windows;
end

return Bedol;
