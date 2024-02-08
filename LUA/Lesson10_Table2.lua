print("表中的公共方法")

a = {{1, 2, 3}, {name = "li", age = 21, id = 123}}

b = {seed = 5, sex = 5, power = 5}

print(a[2].name)

--插入，被插入的表，插入的内容
table.insert(a, b)
print(#a)

for i = 1, #a do
	for j,k in pairs(a[i]) do
		print(j .. " " .. k)
	end
end

--删除，每次删除最后一个
table.remove(a)
print(#a)

--删除，第一个为表，第二个为删除内容的索引
table.remove(a, 1)
print(#a)
print(a[1].name)

--排序
c = {1, 85, 4 ,6, 2, 6}
table.sort(c)
for _,v in pairs(c) do
	print(v)
end

--排序，按自定规则
table.sort(c, function(a, b)
	if a > b then
		return true
	end
end)
for _,v in pairs(c) do
	print(v)
end

--拼接，返回值是字符串
d = {"wfdw","we"}
str = table.concat(d, "And")
print(str)