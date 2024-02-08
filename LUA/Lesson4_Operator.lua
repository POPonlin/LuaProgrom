--[[
算数运算符：+ - * / ^
没有++ --
没有复合运算符+= -= /= *= %=
字符串可以进行算数运算符操作，会自动转成number
]]
print("加法运算" .. 1 + 2)

print("12.3" + 1)
print(1 - 2)
print(1 * 2)
-- 1 / 2为0.5，因为lua只有一种数据类型
print(1 / 2)
print(1 % 2)
-- ^ 幂运算
print(2 ^ 5)

--[[
条件运算符：> < >= <= == ~=
]]
-- ~= 不等于
print(3 ~= 1)

--[[
逻辑运算符
and -> && 
or -> ||
not -> !
]]
print(true and false)
print(true and true)
print(true or true)
print(false or false)
print(not true)

--支持短路，前边为false，后边不执行
print(false and print("123"))

--打印了123，因为print不返回任何值，所以又打印了个nil
print(true and print("123"))

--没有三目运算符和位运算符
