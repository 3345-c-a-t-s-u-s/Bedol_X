# MY UI
![Screenshot 2023-07-28 075807](https://github.com/3345-c-a-t-s-u-s/Bedol_X/assets/117000269/665b05c1-7c5f-4eea-84bb-c57dc28f6e4b)


## Source Link
[Here](https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Bedol_X/main/source.lua)

### Main Code
```lua
local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Bedol_X/main/source.lua"))()

local window = UI:Window("Bedol Hub UI","UI Test by me")

--[[
	- window
	name
	desc
	size ui
]]

-- set key toggle

window.TOGGLE_KEY = Enum.KeyCode.X

-- color

window:SetRGBShadow(0.001)

window:SetCustomMouse(true)

-- create documentation

window:Documentation(
	"Documentation",
	"Documentation Test UI \n Text here \n text \n text",
	"Click me!"
)

----------------------------

local tab = window:Tab('Tabd')
local tab = window:Tab('Tabd2')

tab:AddTitle('Esg')
-- Use - :Set(new)

tab:NewButton('Button',function()
	print('f')
end)

-- use - :Fire()

tab:NewToggle('Toggle',false,function(b)
	print(b)
end)

-- use - :Set(boolean)

tab:NewKeybind('Bind me',nil,function(k)
	print(k)
end)

-- use - :Set(key code)

tab:NewSlider('slider',1,200,function(val)
	print(val)
end)

-- use - :Set(numer)
tab:NewDropdown('db',{"1","2","3"},function(ds)
	print(ds)
end)

-- have auto refresh
-- use - :Refresh(new list)
-- use - :Set(name)

tab:NewTextbox("textbox","Send",function(text)
	print(text)
end)

-- use - :Set(text value)
```
