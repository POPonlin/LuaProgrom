print("******************自带库")
print("******************时间")
print(os.time())

print(os.time({year = 2077, month = 10, day = 1}))

local nowT = os.date("*t")
for k,v in pairs(nowT) do
	print(k, v)
end
print(nowT.hour)

print("******************数学运算")
--绝对值
print(math.abs(-1))
--弧度转角度
print(math.deg(math.pi))
--三角函数，传角度
print(math.cos(math.pi))
--向下取整
print(math.floor(2.6))
--向上取整
print(math.ceil(5.2))
--取最大值
print(math.max(1, 2))
--取最小值
print(math.min(1, 2))
--拆分整数部分和小数部分
print(math.modf(1.2))
--幂运算
print(math.pow(2, 5))

--随机数，要先设置随机数种子
--第一次随机受随机数种子影响，不会变，只有种子改变了才会变
--第二次随机不受影响
--如果不设置随机数种子，每次随机出来的值都会一样
math.randomseed(os.time())
print(math.random(5))
print(math.random(100))
print(math.sqrt(4))

print("******************路径")
--lua脚本的加载路径
print(package.path)
--添加新路径，路径通过；隔开
--package.path = path .. ";C:\\"
--print(package.path)
