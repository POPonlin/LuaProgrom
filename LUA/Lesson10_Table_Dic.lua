print("表模拟字典")
--基本构成就是键值对
--利用自定义索引来实现
a = {["1"] = 5, ["名字"] = "小明", ["年龄"] = 21, ["id_1"] = 1999}

--访问字典信息的两种格式
print(a["1"])
print(a["名字"])
print(a["年龄"])
--正确格式的键可以通过 表名.的方式访问
print(a.id_1)

--修改
a["1"] = 6
print(a["1"])

--新增，直接声明新的键，赋初始值
a["成绩"] = 100
print(a["成绩"])
a["size"] = 10
print(a.size)

--删除，直接赋nil
a.size = nil
print(a.size)

--遍历，通过pairs实现，注意ipairs无法遍历，因为会忽略全部值
--可以打印多个值，不止键值
for i, j in pairs(a) do
	print("key: "..i.."value:"..j)
	print(i, j, 1, 2)
end

--此种写法依然得到键值，_只是键名
for _, j in pairs(a) do
	print(j)
end