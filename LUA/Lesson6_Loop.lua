print("循环语句")

num = 0

print("while语句")
--while 条件 do ... end
while num < 5 do
	print(num)
	num = num + 1
end

print("do while语句")
-- repeat ... until 条件（结束条件）
num = 0
repeat
	print(num)
	num = num + 1
until num > 5 

print("for语句")
-- for 变量 = 起始值,结束值,增值 do ... end
-- 默认递增，i会加一，起始值和终止值
for i = 1, 5 do
	print(i)
end

-- 自定义增量，继续往后写数，一次加2
for i = 1, 5, 2 do
	print(i)
end

-- 这个是递减，每次减一
for i = 5, 1, -1 do
	print(i)
end