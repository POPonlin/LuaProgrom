print("多脚本执行")
print("全局变量和本地变量")
--直接写的变量均为全局变量,在循环语句中声明仍然是
--在变量前加local关键字，成为局部变量
local a = "a"
print(a)

function F1()
	local b = 3
	c = 6
end
print(b)
print(c)
for i = 1,2 do
	d = 7
	local e = 9
end
print(d)
print(e)

print("多脚本执行")
--require("文件名")，不同目录下需要写明地址
--首先会执行一遍该文件，然后获取到该文件中全部的全局变量
require("Test")
print(textA)
print(textB)

--package.loaded["文件名"] 返回Boolean，判断是否执行过该文件
print(package.loaded["Test"])

print("脚本卸载")
--将加载过的文件赋nil
package.loaded["Test"] = nil

p = require("Test")
--require检查如果有返回值，则返回true。需要把局部变量添加进表中，然后返回表，才能使用
print(p)


print("大G表")
-- _G表是一个总表，将声明过的全局变量都存储在其中
--  _G 为固定写法
for k,v in pairs(_G) do
	print(k,v)
end 
--本地变量不会加入到大_G表中