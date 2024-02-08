--[[
	声明类的基本格式
	只是用表来进行模拟的
	成员变量和成员函数
]]

--在表的内部申明
person = {
	name = "wang",
	age = 21,

	up = function() 
		print("day day up")
	end,

	show = function() 
		print("w")
	end,

	--成员函数不能直接调用成员变量，需要知道来自哪里
	--方式1，通过将自身传入，来调用成员变量
	text = function(t)
		print(t.name)

		--方式2，通过表名. 方式调用成员变量
		print(person.name)
	end
}

--在表的外部申明
person.id = 123456
person.speak = function()
	print("welcom to the world of the number")
end

--在外部申明成员函数的第二种方法
function person.speak2()
	print("Oh, here you are")
end
--利用：申明，等价于 function person.speak3(t) ... end
function person:speak3()
	--方式3，self表示默认传入的第一个参数
	print(self.name .. "hello")
end



--传入自身，调用成员变量
person.text(person)

--通过：调用成员函数，默认将调用者作为参数传递进去
--属于person.text(person)的语法糖
person:text()


