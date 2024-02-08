Object = {}

function Object:new()
	local obj = {}
	self.__index = self
	setmetatable(obj, self)
	return obj
end

function Object:SubClass(className)
	_G[className] = {}
	local obj = _G[className]
	self.__index = self
	obj.base = self
	setmetatable(obj, self)
end

Object:SubClass("GameObject")

GameObject.x = 0
GameObject.y = 0
function GameObject:Move()
	self.x = self.x + 1
	self.y = self.y + 1
	print(self.x)
	print(self.y)
end

GameObject:SubClass("Person")
function Person:Move()
	self.base.Move(self)
end

local p1 = Person:new()
p1:Move()
p1:Move()

local p2 = Person:new()
p2:Move()
p2:Move()