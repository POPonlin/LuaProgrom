print("**************特殊用法")
print("**************多变量赋值")
a, b, c = 1, 2, "abc"
print(a)
print(b)
print(c)
--如果后面的值不够，自动补nil
a, b, c = 1, 2
print(a)
print(b)
print(c)
--如果后边的值多了，多的自动省略
a, b, c = 1, 2, 3, 4, 5
print(a)
print(b)
print(c)

print("**************多返回值")
function F()
	return 1, 2, 3, 4, 5
end
--多返回值，返回多了，多的自动省略
a, b, c = F()
print(a)
print(b)
print(c)
--返回少了，不够的自动补nil
function F2()
	return 1, 2
end
a, b, c = F2()
print(a)
print(b)
print(c)

print("**************and or")
--逻辑与， 逻辑或
--and or 任何都西都可以链接
--在lua中 只有nil 和 false 才认为是假
--支持短路，对于and有假则假，对于or有真则真
--如果第一个满足条件，就会停止计算
print(1 and 2)
print(nil and 1)
print(false and 2)
print(true and 3)

print(true or 1)
print(nil or 1)
print(nil or false)
print(false and 2)

print("*********模拟三目运算符")
x = "w"
y = "a"

local res = (x > y) and x or y
print(res)

