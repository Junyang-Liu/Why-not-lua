-- 克隆方法
table.clone = function (Tab)
    local ret = {}
    if type(Tab) == "table" then
        for k,v in pairs(Tab) do -- 挨个拿出来重新赋值
        	ret[k] = v
        end
    end
    return ret

	-- body
end

function print_line( ... )
	print("---------------")

	-- body
end

-- 为什么要用clone
function table_clone_why( ... )
	local tab = {1,2,3}
	local tmp = tab
	for k,v in pairs(tab) do
		print(k,v)
	end
	for k,v in pairs(tmp) do
		print(k,v)
	end
	print_line()

	tab[1] = 99
	for k,v in pairs(tab) do
		print(k,v)
	end
	for k,v in pairs(tmp) do
		print(k,v)
	end
	print_line()

	tmp[1] = 98
	for k,v in pairs(tab) do
		print(k,v)
	end
	for k,v in pairs(tmp) do
		print(k,v)
	end
	print_line()

	tab = {}
	print(tmp)
	for k,v in pairs(tab) do
		print(k,v)
	end
	print(tmp)
	for k,v in pairs(tmp) do
		print(k,v)
	end

	-- body
end
--table_clone_why()

-- clone的结果
function table_clone_test( ... )
	local tab = {1,2,3}
	local tmp = table.clone(tab)
	print(tab, tmp) -- 地址不一样了

	tab[1] = 99
	for k,v in pairs(tab) do
		print(k,v)
	end
	for k,v in pairs(tmp) do
		print(k,v)
	end
	print_line()

	tmp[1] = 98
	for k,v in pairs(tab) do
		print(k,v)
	end
	for k,v in pairs(tmp) do
		print(k,v)
	end
	print_line()

	-- body
end
table_clone_test()

