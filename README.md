# Bedol_X

```lua
local UI = loadstring(game:HttpGet(""))()

local window = UI:Window("Bedol Hub UI","UI Test by me")


--[[
	- window
	name
	desc
	size ui
]]

local tab = window:Tab('Tabd')
local tab = window:Tab('Tabd2')

tab:AddTitle('Esg')

tab:NewButton('Button',function()
	print('f')
end)

tab:NewToggle('Toggle',false,function(b)
	print(b)
end)

tab:NewKeybind('Bind me',nil,function(k)
	print(k)
end)

tab:NewSlider('slider',1,200,function(val)
	print(val)
end)

tab:NewDropdown('db',{"1","2","3"},function(ds)
	print(ds)
end)
```
