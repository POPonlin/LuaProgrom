print("条件分支语句")
a = 2

-- if 条件 then 代码块 end
if a > 1 and a < 9 then
	print("666")
end

--if 条件 then 代码块 else 代码块 end
if a == 1 then
	print("666")
else
	print("999")
end

--[[
if 条件 then
	代码块
elseif 条件 then
	代码块
else
	代码块
end
]]

if a == 1 then
	print("666")
elseif a == 2 then
	print("999")
else
	print("111")
end

-- lua里没有switch，需要自己实现
