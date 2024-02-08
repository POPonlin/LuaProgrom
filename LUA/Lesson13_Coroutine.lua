print("***********协同程序")
--协同程序本质上是一个线程对象

function F1()
	i = 1
	while true do
		print(i)
		i = i + 1
		print(coroutine.status(a))
		print(coroutine.running())
		coroutine.yield(i)
	end
end

print("***********携程的创建")
--方式1  coroutine.create(函数名)
--返回的是一个线程对象，thread
a = coroutine.create(F1)
print(type(a))

--方式2 coroutine.wrap(函数名)
--返回的是一个函数，function
b = coroutine.wrap(F1)
print(type(b))

print("***********携程的运行")
--方式1，对应create
--并不是重复调用函数，而是继续执行线程
coroutine.resume(a)
coroutine.resume(a)
coroutine.resume(a)

--方式2，对应wrap
b()
b()
b()

print("***********携程的挂起")
-- coroutine.yield()
-- yield(a) a作为返回值 

--获取返回值方法1，对应resume
--会默认先返回一个布尔值，表示携程是否启动成功，后边返回的值才是真正的值
isOk = coroutine.resume(a)
print(isOk)
isOk, value = coroutine.resume(a)
print(isOk, value)

--方法2，对应用wrap创建
--这种方法，直接返回值，不会再返回布尔值
print("返回值：" .. b())

print("***********携程的状态")
--coroutine.status(携程对象)
--dead 结束
--suspended 暂停
-- running 进行中
--coroutine.running() 打印当前运行的携程的线程号
--需要在进行携程的地方使用