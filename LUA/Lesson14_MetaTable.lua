print("***************元表")
print("***************元表概念")
--[[
任何表变量都可以作为另一个表变量的元表
任何表变量都可以被设置元表
当在子表中执行一些特殊操作时，会执行元表中的对应内容
]]
print("***************设置元表")
--setmetatable(表变量，元表)
myTable1 = {}
meta1 = {}
setmetatable(myTable1, meta1)
myTable1.age = 123456
print(myTable1.age)

print("***************特定操作")
print("***************特定操作-__tostring")
--如果将表变量当作字符串使用，会优先调用元表中的__tostring
-- __tostring = function()
--		return " "
--	end
meta2 = {
	__tostring = function()
		return "调用元表中的__tostring"
	end
}
myTable2 = {}
setmetatable(myTable2, meta2)
print(myTable2)

print("***************特定操作-__call")
--当表变量被当成函数的形式使用时，会调用元表中的__call
--[[
	__call = function()
		代码块
	end
]]
--希望传参数时，第一个参数默认传调用者自己
meta3 = {
	__call = function(a, b)
		print("调用call")
		print(a.name)
		print(b)
	end
}
myTable3 = {}
setmetatable(myTable3, meta3)
myTable3.name = "xx"
myTable3("第二个参数")

print("***************特定操作-运算符重载")

meta4 = {
	-- +
	__add = function()
		return 666
	end,
	-- -
	__sub = function()
		return 666
	end,
	-- *
	__mul = function()
		return 666
	end,
	-- /
	__div = function()
		return 666
	end,
	-- %
	__mod = function()
		return 666
	end,
	-- ^ 幂
	__pow = function()
		return 666
	end,

	--下面重载，要求两个表必须有相同的元表

	-- ==
	__eq = function()
		return true
	end,
	-- <
	__lt = function()
		return true
	end,
	-- <=
	__le = function()
		return true
	end,	
	-- ..
	__concat = function()
		return "拼接重载"
	end							
}
myTable4 = {}
myTable5 = {}
setmetatable(myTable4, meta4)
--print(myTable4 + myTable5)
setmetatable(myTable5, meta4)
print(myTable4 .. myTable5)
--并不能重载>,这里比较的是内存地址大小
print(myTable4 > myTable5)

print("***************特定操作-__index和__newindex")
print("__index")
meta5 = {
	age = 2
}
--写在外部
meta5.__index = meta5
myTable6 = {}
setmetatable(myTable6, meta5)

--若表中没有该索引，则会定位到元表中__index 指向的那个表去查找
print(myTable6.age)

--得到某个表的元表
print(getmetatable(myTable6))

--强制只在该表中查找某个变量，第一个参数表名，第二个变量名
--忽略元表的存在
print(rawget(myTable6, "age"))

--还可以嵌套元表
meta5.age = nil
meta5Father = {
	age = 3
}
meta5Father.__index = meta5Father
setmetatable(meta5, meta5Father)
print(myTable6.age)

print("__newindex")
-- 当赋值时，如果赋值一个不存在的索引
-- 会把这个值赋值到newindex所指的表中，不会修改自己
meta5.__newindex = {}
myTable6.name = "ww"
print(myTable6.name)
print(meta5.__newindex.name)

--rawset会强制在自身上修改，忽略元表
rawset(myTable6, "id", 123456)
print(myTable6.id)