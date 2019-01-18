--关于for循环
function for_loop_test()
	Table = {[1]=1,[2]=2,[3]=1,[4]=2,[5]=1} --数组
	-- ipairs
	print("======ipairs==============")
	for k,v in ipairs(Table) do
		print(k,v)
	end

	Table = {[1]=1,[2]=2,[3]=1,[5]=2,[6]=1,}--数组
	print("======ipairs==============")
	for k,v in ipairs(Table) do
		print(k,v)
	end
	
	Table = {["a"]=1,["b"]=2,[3]=1,[5]=2,[1]=1,}--数组
	print("======ipairs==============")
	for k,v in ipairs(Table) do
		print(k,v)
	end


	Table = {[1]=1,[2]=2,[3]=1,[4]=2,[5]=1} --数组
	-- pairs
	print("======pairs==============")
	for k,v in pairs(Table) do
		print(k,v)
	end

	Table = {[1]=1,[2]=2,[3]=1,[5]=2,[6]=1,}--数组
	print("======pairs==============")
	for k,v in pairs(Table) do
		print(k,v)
	end
	
	Table = {["a"]=1,["b"]=2,[3]=1,[5]=2,[1]=1,}--数组
	print("======pairs==============")
	for k,v in pairs(Table) do
		print(k,v)
	end
	-- body
end
--for_loop_test()

-- 关于next()
function next_table_test()
	print("======next==============")
	local TableTmp = {99,98}
	print(TableTmp)
	local k, v, s, a= ipairs(TableTmp)
	print(k, v, s, a)

	-- body
end
--next_table_test()

-- 关于if循环
-- lua把 nil和false 判定为 not
function if_loop_test()
	print("======if==============")
	local x = 1
	if not x then
		print("not")
	elseif x then
		print("true, value:"..x)
	else
		print("it isn't false or true")
	end

	print("======if==============")
	local x = false
	if not x then
		print("not")
	elseif x then
		print("true"..x)
	else
		print("it isn't false or true")
	end

	print("======if==============")
	local x = nil
	if not x then
		print("not")
	elseif x then
		print("true"..x)
	else
		print("it isn't false or true")
	end

	if x == nil then
		print("(x == nil) == true!")
	else
		print("(x == nil) ~= true!")
	end
	if x == false then
		print("(x == false) == true!")
	else
		print("(x == false) ~= true!")
	end

	-- body
end
if_loop_test()

-- 实现for循环continue
function for_continue_test( ... )
	local TableTmp = {99,98,99,98,99,98}
	for i,v in ipairs(TableTmp) do
		if v == 99 then
		else
			print(i,v)
		end
	end

	-- body
end
--for_continue_test()

