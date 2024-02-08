a = {[-1] = -1, [0] = 0, 2, 3, [4] = 5, 6}
--ipairs迭代器遍历，键值都会遍历
--先遍历非自定义索引，如果自定义索引的序号能和非自定义索引连接上，则继续遍历，直到索引断开
for i,j in ipairs(a) do
	print("i:"..i.."j:"..j)
end
--均能正常遍历，因为自定义索引的序号是连续的
b = {[1] = 1, [2] = 2, [3] = 3}
for i,j in ipairs(b) do
	print("i:"..i.."j:"..j)
end
c = {[4]="hello",2,[5]=3,4,5,[7] = 9}
for i,j in ipairs(c) do
	print("i:"..i.."j:"..j)
end
print("***********************")

--pairs迭代器遍历
--可以只遍历键
--不会忽略负数索引和显示指定索引
for i,j in pairs(a) do
	print("i:"..i.."j:"..j)
end

for i in pairs(a) do
	print("i:"..i)
end 