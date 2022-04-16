local library = {}
local countof = 1

function library:CreateWindow(title, subtitle)
	for i,v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == title then
			v:Destroy()
		end
	end

	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TabHolder = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UICorner = Instance.new("UICorner")
	local UIGridLayout = Instance.new("UIGridLayout")
	local UIPadding = Instance.new("UIPadding")
	local Information = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Subtitle = Instance.new("TextLabel")
	local Content = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")

	ScreenGui.Name = title
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.ResetOnSpawn = false
	
	_G.NAME = ScreenGui.Name

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Main.Position = UDim2.new(0.166396111, 0, 0.161137447, 0)
	Main.Size = UDim2.new(0, 699, 0, 407)



	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Main

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = Main
	TabHolder.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	TabHolder.Position = UDim2.new(0.0190427937, 0, 0.178336471, 0)
	TabHolder.Size = UDim2.new(0, 205, 0, 323)

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = TabHolder

	UIGridLayout.Parent = TabHolder
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 188, 0, 34)

	UIPadding.Parent = TabHolder
	UIPadding.PaddingBottom = UDim.new(0, 10)
	UIPadding.PaddingLeft = UDim.new(0, 8)
	UIPadding.PaddingTop = UDim.new(0, 10)

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = TabHolder

	Information.Name = "Information"
	Information.Parent = Main
	Information.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Information.Position = UDim2.new(0.0190427937, 0, 0.0333733335, 0)
	Information.Size = UDim2.new(0, 205, 0, 53)

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = Information

	Title.Name = "Title"
	Title.Parent = Information
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0390243903, 0, 0.132075474, 0)
	Title.Size = UDim2.new(0, 188, 0, 24)
	Title.Font = Enum.Font.Gotham
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(218, 218, 218)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Subtitle.Name = "Subtitle"
	Subtitle.Parent = Information
	Subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Subtitle.BackgroundTransparency = 1.000
	Subtitle.Position = UDim2.new(0.0390243903, 0, 0.584905684, 0)
	Subtitle.Size = UDim2.new(0, 188, 0, 14)
	Subtitle.Font = Enum.Font.Gotham
	Subtitle.Text = subtitle
	Subtitle.TextColor3 = Color3.fromRGB(176, 176, 176)
	Subtitle.TextScaled = true
	Subtitle.TextSize = 14.000
	Subtitle.TextWrapped = true
	Subtitle.TextXAlignment = Enum.TextXAlignment.Left

	Content.Name = "Content"
	Content.Parent = Main
	Content.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Content.Position = UDim2.new(0.323763818, 0, 0.0333733335, 0)
	Content.Size = UDim2.new(0, 462, 0, 382)

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = Content

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		local dragSpeed = 0.25
		dragInput = nil
		dragStart = nil
		local dragPos = nil
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
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
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	dragify(Main)

	local shadowHolder = Instance.new("Frame")
	local umbraShadow = Instance.new("ImageLabel")
	local penumbraShadow = Instance.new("ImageLabel")
	local ambientShadow = Instance.new("ImageLabel")

	shadowHolder.Name = "shadowHolder"
	shadowHolder.Parent = Main
	shadowHolder.BackgroundTransparency = 1.000
	shadowHolder.Size = UDim2.new(1, 0, 1, 0)

	umbraShadow.Name = "umbraShadow"
	umbraShadow.Parent = shadowHolder
	umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow.BackgroundTransparency = 1.000
	umbraShadow.Position = UDim2.new(0.499284685, 0, 0.486486495, 6)
	umbraShadow.Size = UDim2.new(1.00429189, 10, 1.00737095, 10)
	umbraShadow.Image = "rbxassetid://1316045217"
	umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow.ImageTransparency = 0.860
	umbraShadow.ScaleType = Enum.ScaleType.Slice
	umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	penumbraShadow.Name = "penumbraShadow"
	penumbraShadow.Parent = shadowHolder
	penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow.BackgroundTransparency = 1.000
	penumbraShadow.Position = UDim2.new(0.499284685, 0, 0.486486495, 6)
	penumbraShadow.Size = UDim2.new(1.00429189, 10, 1.00737095, 10)
	penumbraShadow.Image = "rbxassetid://1316045217"
	penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow.ImageTransparency = 0.880
	penumbraShadow.ScaleType = Enum.ScaleType.Slice
	penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	ambientShadow.Name = "ambientShadow"
	ambientShadow.Parent = shadowHolder
	ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow.BackgroundTransparency = 1.000
	ambientShadow.Position = UDim2.new(0.499284685, 0, 0.486486495, 6)
	ambientShadow.Size = UDim2.new(1.00429189, 10, 1.00737095, 10)
	ambientShadow.Image = "rbxassetid://1316045217"
	ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow.ImageTransparency = 0.880
	ambientShadow.ScaleType = Enum.ScaleType.Slice
	ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	local windowlib = {}

	function windowlib:EditTitle(title)
		ScreenGui.Name = title
		Title.Text = title
	end

	function windowlib:EditSubTitle(title)
		Subtitle.Text = title
	end

	function windowlib:Destroy()
		ScreenGui:Destroy()
	end

	local active = false
	function windowlib:CreateTab(title)
		countof = countof + 1
		
		active = true
		local TextButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")

		TextButton.Name = title
		TextButton.Parent = TabHolder
		TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.Position = UDim2.new(0.0390243903, 0, 0.046439629, 0)
		TextButton.Size = UDim2.new(0, 188, 0, 34)
		TextButton.Font = Enum.Font.Gotham
		TextButton.Text = title
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 20.000
		TextButton.TextWrapped = true

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = TextButton

		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UICorner = Instance.new("UICorner")
		local UIGridLayout = Instance.new("UIGridLayout")
		local UIPadding = Instance.new("UIPadding")

		ScrollingFrame.Name = title
		ScrollingFrame.Parent = Content
		ScrollingFrame.Active = true
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		ScrollingFrame.Size = UDim2.new(0, 462, 0, 382)
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
		ScrollingFrame.ScrollBarThickness = 8
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.Visible = false

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = ScrollingFrame

		UIGridLayout.Parent = ScrollingFrame
		UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIGridLayout.CellSize = UDim2.new(0, 432, 0, 34)

		UIPadding.Parent = ScrollingFrame
		UIPadding.PaddingBottom = UDim.new(0, 5)
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 10)

		TextButton.MouseButton1Click:Connect(function()
			if active ~= true then
				active = true
				ScrollingFrame.Visible = true
			else
				for i,v in pairs(Content:GetChildren()) do
					if v.Name ~= title and v:IsA('ScrollingFrame') then
						v.Visible = false
						ScrollingFrame.Visible = true
						active = true
					end
				end
			end
		end)

		local tablib = {}

		function tablib:CreateButton(title, callback)
			local buttonlib = {}

			local TextButton = Instance.new("TextButton")
			local Click = Instance.new('Sound')
			local UICorner = Instance.new("UICorner")

			TextButton.Name = title
			TextButton.Parent = ScrollingFrame
			TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.Position = UDim2.new(0.0152149275, 0, 0.00496978825, 0)
			TextButton.Size = UDim2.new(0, 432, 0, 34)
			TextButton.Font = Enum.Font.Gotham
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextSize = 20.000
			TextButton.Text = title
			TextButton.TextWrapped = true

			Click.Name = 'Click'
			Click.Parent = TextButton
			Click.SoundId = 'rbxassetid://6324790483'

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = TextButton

			TextButton.MouseButton1Click:Connect(function()
				Click:Play()
				callback()
			end)

			function buttonlib:EditName(name)
				TextButton.Name = name
				TextButton.Text = name
			end
			return buttonlib
		end

		function tablib:CreateTextBox(text, defaulttext, callback)
			local boxlib = {}

			local Frame = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")
			local UIPadding = Instance.new("UIPadding")

			Frame.Name = text
			Frame.Parent = ScrollingFrame
			Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Frame.Position = UDim2.new(0, 0, 0.00158311345, 0)
			Frame.Size = UDim2.new(0, 432, 0, 34)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Frame

			Title.Name = "Title"
			Title.Parent = Frame
			Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0231481474, 0, 0.117645264, 0)
			Title.Size = UDim2.new(0, 422, 0, 30)
			Title.Font = Enum.Font.Gotham
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 20.000
			Title.Text = text
			Title.TextXAlignment = Enum.TextXAlignment.Left

			TextBox.Name = text
			TextBox.Parent = Frame
			TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.Position = UDim2.new(0.532, 0,0.294, 0)
			TextBox.Size = UDim2.new(0, 188,0, 17)
			TextBox.Font = Enum.Font.Gotham
			TextBox.PlaceholderColor3 = Color3.fromRGB(95, 95, 95)
			TextBox.PlaceholderText = defaulttext
			TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.TextSize = 14.000
			TextBox.TextWrapped = true
			TextBox.TextXAlignment = Enum.TextXAlignment.Left

			UICorner_2.CornerRadius = UDim.new(0, 2)
			UICorner_2.Parent = TextBox

			UIPadding.Parent = TextBox
			UIPadding.PaddingBottom = UDim.new(0, 1)
			UIPadding.PaddingLeft = UDim.new(0, 3)
			UIPadding.PaddingTop = UDim.new(0, 2)

			TextBox.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					callback(TextBox.Text)
				end
			end)

			function boxlib:EditName(name)
				TextBox.Name = name
				TextBox.Text = name
			end

			function boxlib:EditDefaultText(name)
				TextBox.PlaceholderText = name
			end
			return boxlib
		end

		function tablib:CreateLabel(title)
			local labellib = {}

			local TextButton = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")

			TextButton.Name = title
			TextButton.Parent = ScrollingFrame
			TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.Position = UDim2.new(0.0152149275, 0, 0.00496978825, 0)
			TextButton.Size = UDim2.new(0, 432, 0, 34)
			TextButton.Font = Enum.Font.Gotham
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextSize = 20.000
			TextButton.Text = title
			TextButton.TextWrapped = true

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = TextButton

			function labellib:EditName(name)
				TextButton.Name = name
				TextButton.Text = name
			end

			return labellib
		end

		function tablib:CreateSlider(title, minval, maxval, callback)
			local Frame = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local Fill = Instance.new("Frame")
			local TextButton = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local UICorner_3 = Instance.new("UICorner")

			--Properties:

			Frame.Name = title
			Frame.Parent = ScrollingFrame
			Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Frame.Position = UDim2.new(0, 0, 0.00158311345, 0)
			Frame.Size = UDim2.new(0, 432, 0, 34)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Frame

			Title.Name = "Title"
			Title.Parent = Frame
			Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0231481474, 0, 0.117645264, 0)
			Title.Size = UDim2.new(0, 422, 0, 30)
			Title.Font = Enum.Font.Gotham
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 20.000
			Title.Text = title
			Title.TextXAlignment = Enum.TextXAlignment.Left

			Fill.Name = "Fill"
			Fill.Parent = Frame
			Fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Fill.BorderSizePixel = 4
			Fill.Position = UDim2.new(0.346576333, 0, 0.462938726, 0)
			Fill.Size = UDim2.new(0, 249, 0, 5)

			TextButton.Parent = Fill
			TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.BorderSizePixel = 4
			TextButton.Position = UDim2.new(0.0122364461, 0, 0.431750476, 0)
			TextButton.Size = UDim2.new(0, 6, 0, 19)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = TextButton

			UICorner_3.CornerRadius = UDim.new(0, 4)
			UICorner_3.Parent = Fill

			local UserInputService = game:GetService("UserInputService")
			local Dragging = false
			TextButton.MouseButton1Down:Connect(function()
				Dragging = true
			end)

			UserInputService.InputChanged:Connect(function()
				if Dragging then
					local MousePos = UserInputService:GetMouseLocation()+Vector2.new(0,36)
					local RelPos = MousePos - Fill.AbsolutePosition
					local Precent = math.clamp(RelPos.X/Fill.AbsoluteSize.X,0,1)
					TextButton.Position = UDim2.new(Precent,0,0.5,0)
					callback(Precent*100)
					if TextButton.Position == UDim2.new(0.012, 0,0.432, 0) then
						callback(minval)
					end
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Dragging = false
				end
			end)
		end

		function tablib:CreateToggle(title, callback)
			local togglelib = {}

			local Frame = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local holder = Instance.new("Frame")
			local TextButton = Instance.new("TextButton")
			local ToggleS = Instance.new('Sound')
			local UICorner_2 = Instance.new("UICorner")
			local UICorner_3 = Instance.new("UICorner")

			Frame.Name = title
			Frame.Parent = ScrollingFrame
			Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Frame.Position = UDim2.new(0, 0, 0.00158311345, 0)
			Frame.Size = UDim2.new(0, 432, 0, 34)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Frame

			Title.Name = "Title"
			Title.Parent = Frame
			Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0231481474, 0, 0.117645264, 0)
			Title.Size = UDim2.new(0, 422, 0, 30)
			Title.Font = Enum.Font.Gotham
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 20.000
			Title.Text = title
			Title.TextXAlignment = Enum.TextXAlignment.Left

			holder.Name = "holder"
			holder.Parent = Frame
			holder.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			holder.BorderColor3 = Color3.fromRGB(27, 42, 53)
			holder.Position = UDim2.new(0.817129612, 0, 0.17646879, 0)
			holder.Size = UDim2.new(0, 57, 0, 22)

			TextButton.Parent = holder
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			TextButton.Position = UDim2.new(-0.008, 0,0, 0)
			TextButton.Size = UDim2.new(0, 29, 0, 22)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = " "
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000

			ToggleS.Name = 'ToggleS'
			ToggleS.Parent = Frame
			ToggleS.SoundId = 'rbxassetid://1722389642'

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = TextButton

			UICorner_3.CornerRadius = UDim.new(0, 4)
			UICorner_3.Parent = holder


			local toggle = false
			TextButton.MouseButton1Click:Connect(function()
				if toggle == false then
					toggle = true
					TextButton.BackgroundColor3 = Color3.fromRGB(0, 255)
					TextButton.Position = UDim2.new(-0.008, 0,0, 0)

					local tween1 = TextButton:TweenPosition(UDim2.new(0.483, 0,0, 0),
						Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 2, true)
				else
					toggle = false
					TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					TextButton.Position = UDim2.new(0.483, 0,0, 0)

					local tween1 = TextButton:TweenPosition(UDim2.new(-0.008, 0,0, 0),
						Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 2, true)
				end

				ToggleS:Play()
				callback(toggle)
			end)

			function togglelib:EditName(name)
				Frame.Name = name
				Title.Text = name
			end
			return togglelib
		end


		return tablib
	end

	function windowlib:StartPage(name)
		if Content:FindFirstChild(name) then
			for i,v in pairs(Content:GetChildren()) do
				if v.Name ~= name and v:IsA('ScrollingFrame') then
					v.Visible = false
					Content[name].Visible = true
				end
			end
		else
			print('Cannot find StartPage')
		end
	end
	

	if countof == 1 then
		for _,sk in pairs(Content:GetChildren()) do
			if sk:IsA('ScrollingFrame') then
				sk.Visible = true
			end
		end
	end

	return windowlib
end

print(countof)

local activen = false
function library:Notify(title, text, duration)
	if activen == true then
		game.CoreGui[_G.NAME].Notification:Destroy()
		activen = true
	else
		activen = true
	end

	local Notification = Instance.new("Frame")
	local Sound = Instance.new('Sound')
	local Title = Instance.new("TextLabel")
	local Subtitle = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local notifications = Instance.new("ImageButton")
	local shadowHolder = Instance.new("Frame")
	local umbraShadow = Instance.new("ImageLabel")
	local penumbraShadow = Instance.new("ImageLabel")
	local ambientShadow = Instance.new("ImageLabel")

	Notification.Name = "Notification"
	Notification.Parent = game.CoreGui[_G.NAME]
	Notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Notification.Position = UDim2.new(0.009, -241,0.872, 0)
	Notification.Size = UDim2.new(0, 229, 0, 54)

	Sound.Name = 'Notification'
	Sound.Parent = Notification
	Sound.SoundId = 'rbxassetid://5568992074'
	Sound:Play()

	Title.Name = "Title"
	Title.Parent = Notification
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0390243866, 0, 0.0898222774, 0)
	Title.Size = UDim2.new(0, 188, 0, 20)
	Title.Font = Enum.Font.Gotham
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(218, 218, 218)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Subtitle.Name = "Subtitle"
	Subtitle.Parent = Notification
	Subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Subtitle.BackgroundTransparency = 1.000
	Subtitle.Position = UDim2.new(0.0390243866, 0, 0.478632033, 0)
	Subtitle.Size = UDim2.new(0, 206, 0, 17)
	Subtitle.Font = Enum.Font.Gotham
	Subtitle.Text = text
	Subtitle.TextColor3 = Color3.fromRGB(176, 176, 176)
	Subtitle.TextSize = 14.000
	Subtitle.TextWrapped = true
	Subtitle.TextXAlignment = Enum.TextXAlignment.Left

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Notification

	notifications.Name = "notifications"
	notifications.Parent = Notification
	notifications.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	notifications.BackgroundTransparency = 0.500
	notifications.LayoutOrder = 1
	notifications.Position = UDim2.new(0.844978154, 0, 0.259259254, 0)
	notifications.Size = UDim2.new(0, 25, 0, 25)
	notifications.ZIndex = 2
	notifications.Image = "rbxassetid://3926305904"
	notifications.ImageColor3 = Color3.fromRGB(165, 165, 165)
	notifications.ImageRectOffset = Vector2.new(844, 564)
	notifications.ImageRectSize = Vector2.new(36, 36)

	shadowHolder.Name = "shadowHolder"
	shadowHolder.Parent = Notification
	shadowHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	shadowHolder.BackgroundTransparency = 1.000
	shadowHolder.Size = UDim2.new(1, 0, 1, 0)

	umbraShadow.Name = "umbraShadow"
	umbraShadow.Parent = shadowHolder
	umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow.BackgroundTransparency = 1.000
	umbraShadow.Position = UDim2.new(0.5, 0, 0.388888896, 6)
	umbraShadow.Size = UDim2.new(1, 10, 1.03703701, 10)
	umbraShadow.Image = "rbxassetid://1316045217"
	umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow.ImageTransparency = 0.860
	umbraShadow.ScaleType = Enum.ScaleType.Slice
	umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	penumbraShadow.Name = "penumbraShadow"
	penumbraShadow.Parent = shadowHolder
	penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow.BackgroundTransparency = 1.000
	penumbraShadow.Position = UDim2.new(0.5, 0, 0.388888896, 6)
	penumbraShadow.Size = UDim2.new(1, 10, 1.03703701, 10)
	penumbraShadow.Image = "rbxassetid://1316045217"
	penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow.ImageTransparency = 0.880
	penumbraShadow.ScaleType = Enum.ScaleType.Slice
	penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	ambientShadow.Name = "ambientShadow"
	ambientShadow.Parent = shadowHolder
	ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow.BackgroundTransparency = 1.000
	ambientShadow.Position = UDim2.new(0.5, 0, 0.388888896, 6)
	ambientShadow.Size = UDim2.new(1, 10, 1.03703701, 10)
	ambientShadow.Image = "rbxassetid://1316045217"
	ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow.ImageTransparency = 0.880
	ambientShadow.ScaleType = Enum.ScaleType.Slice
	ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	local tween1 = Notification:TweenPosition(UDim2.new(0.00892857183, 0, 0.872037888, 0),
		Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, true)

	wait(duration)

	local tween2 = Notification:TweenPosition(UDim2.new(0.009, -241,0.872, 0),
		Enum.EasingDirection.In, Enum.EasingStyle.Quart, 2, true)
end
return library
