str = "adsf"
str2 = 'safsfe'

--加#获取字符串长度
--一个汉字占3个长度，一个英文字符占1个长度
s = "f"
print(#s)
s = "好"
print(#s)

--  \转义字符
print("123\n123")

--多行打印字符串
s = [[我在
学习
lua
]]
print(s)

-- ..拼接字符串
print("123" .. "456")
--不同类型的也能拼接
s1 = "aaa"
s2 = 666
print(s1 .. s2)

--[[
%d 与数字拼接
%a 与任何字符拼接
%s 与字符配对
]]
print(string.format("我在学习lua第%d课", 3))

--别的类型转字符串
a = true
print(tostring(a))

--string提供的公共方法，生成了新的字符串
--lua里的字符串下标从1开始
--小写转大写
print(string.upper(str))
--大写转小写
print(string.lower(str))
--反转字符串
print(string.reverse(str))
--查找字符串，返回起始位置和结束位置，查找失败返回nil
print(string.find(str, "ad"))
--截取字符串
print(string.sub(str, 2, 3))
print(string.sub(str, 2))
--字符串重复,重复拼接
print(string.rep(str, 2))
--字符串修改,返回修改的字符串，和修改次数
print(string.gsub(str, "ad", "**"))
print(str)

--字符转 ASCII码,1是指定的下标位置
a = string.byte("LUA", 1)
print(a)
--ASCII码转字符
print(string.char(a))
