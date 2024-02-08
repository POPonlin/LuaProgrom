print("********************面向对象")
print("********************封装")
Object = {}
Object.id = 1

function Object:Test()
	print(self.id)
end

--因为成员函数无法直接调用成员变量
--用__index索引的方法在元表内寻找
function Object:new()
	local obj = {}
	print(obj)
	self.__index = self
	setmetatable(obj, self)
	return obj
end

--模拟创建类的过程
local myObj = Object:new()
--可以看出myObj和obj是同一张表
print(myObj)
--在myObj里查找不到，所以通过索引查找到Object中
print(myObj.id)

--这样写可能会导致问题，如下
myObj.id = 2
print(myObj.id)
--因为这时给myObj创建了新的id变量，访问的时候就优先访问自己的而不是其元表中的了


print("********************继承")
--在父表中新增一个模拟子类继承方法
--因为想要通过传类名的方式直接创建表，所以与new方法不同，还需要利用_G表
--参数为字符串类型
function Object:SubClass(className)
	_G[className] = {}
	local obj = _G[className]
	self.__index = self
	--这步操作是用来记住父类，以便调用父类内容
	obj.base = self
	setmetatable(obj, self)
end

Object:SubClass("Person")
print(Person.id)

--按OOP思想来写的话
--这里的p1其实和new中的obj指向的是同一张表
--因为Person中没有new（），所以去元表Object中找，因为是以：形式调用，Person是参数
local p1 = Person:new()
--p1中没有，找元表Person，new中Person的元表是Person，嵌套元表，SubClass中Person元表是Object，所以找到Object中的id
print(p1.id)

Object:SubClass("Saber")
local s1 = Saber:new()
print(s1.id)


print("********************多态")
--同一种行为的不同表现方式
--同一种方法的不同实现

Object:SubClass("GameObject")
GameObject.posX = 0;
GameObject.posY = 0;
function GameObject:Move()
	self.posX = self.posX + 1
	self.posY = self.posX + 1
	print("posX: " .. self.posX .. " posY: " .. self.posY)
end

GameObject:SubClass("Player")
--重写，实际上只是在Player表中创建了该方法
function Player:Move()
	--print("重写Move方法")

	--如果涉及数据修改，一定要以base.方法（self）形式调用
	--此处的base是GameObiect，base:调用会把GameObject传进去
	--GameObject只有一个，所以后续调用此方法修改的都是一份数据
	self.base.Move(self)

end

local p1 = Player:new()
p1:Move()
p1:Move()

local p2 = Player:new()
p2:Move()
p2:Move()

