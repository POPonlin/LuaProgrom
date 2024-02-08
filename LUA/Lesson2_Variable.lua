--[[
简单变量类型：
	nil string number boolean
复杂变量类型：
	函数	function 
	协同程序（线程）	thread 
	数据结构	table 
	表	userdate
]]

--lua中不用指明变量类型，可以自动识别
--使用没有声明过的变量不会报错，属于nil类型，默认值是nil
print(b)

--nil类似于c#的null
a = nil
print(a)
--a的类型为nil，type（）获得变量类型
print(type(a))
--type（）的返回值为字符串
print(type(type(a)))

--number 所有的数值都是number
a = 2
c = 3.5
print(a)
print(c)
print(type(a))
print(type(c))

--[[
字符串声明，使用单引号或者双引号
lua里没有char
]]
a = "Hello World"
b = 'Hello World'
print(a)
print(type(a))
print(b)
print(type(b))

--boolean
a = true
print(true)
print(type(a))
a = false
print(a)


