json = (loadfile "JSON.lua")() 

string.bNilorEmpty = function(str)
	if str == nil then
		return true
	end
	if type(str) ~= "string" then
		return true
	end
	local fstr = string.match(str,"%s*(.-)%s*$")
	local ret = fstr == ""
	if ret == true then
		str = nil
	end
	return ret
end

local file = io.open("t.txt","r")

while(0) do
	str=file:read("*line")
	if string.bNilorEmpty(str) then break end

	print(type(str))
	print(str)

	local fstr = "{"
	local i = string.find(str, fstr)
	str = string.sub(str, i)
	local tmp = json:encode(str)
	print(type(tmp))
	print(tmp)

end

file:close()