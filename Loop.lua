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

	-- body
end
for_loop_test()