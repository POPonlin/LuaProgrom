--[[
声明函数有两种方法
function 函数名（）
	代码块
end

变量名 = function()
	代码块
end
]]

function F1()
	print("F1")
end

f2  = function()
	print("F2")
end

F1()
f2()

--[[
有参数,无返回值
function 函数名 (变量名)
	代码块
end

调用函数时传的参数不匹配，多了丢弃，少了就赋值为nil
]]

function F3(a,b)
	print(b)
end

F3(6)
F3(6, 7, 8)

--[[
	无参数，有返回值
	返回多个值时，有几个接收的变量就返回几个值
	如果接收变量不够，剩余的就丢弃
]]

function F4()
	return 4, 5, 6
end

f4a, f4b = F4()
print("f4a" .. f4a)

--[[
	函数的类型就是function
]]
print(type(F3))

--[[
	lua不支持函数重载
	函数重载要求参数列表长度不同或类型不同
	根据上一点可推断不支持
]]

--[[
	函数的变长参数,使用表实现
	括号内 ...
]]

function F5(...)
	f5 = {...}
	for i = 1, #f5 do
		print(i)
	end
end

F5(1, 2, 3, 4, 5)

--[[
	函数嵌套，lua是从外层函数开始执行的
	在函数里声明函数，返回的是函数
]]
function F6(a)
	return function(b)
		return a + b
	end
end

f6 = F6(10)
print(f6(5))

function F7()
	return function()
		print("嵌套")
	end
end

f7 = F7()
f7()

--[[
	闭包：改变变量的生命周期
]]