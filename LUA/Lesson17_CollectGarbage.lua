table = {1, 2, 3}

--collectgarbage 垃圾回收关键字
--count，返回当前lua占用的内存数，大小为K字节。
--返回值*1024就是具体占用的内存字节数
print(collectgarbage("count"))

--删除该表，等于产生了垃圾
table = nil

--collect完整回收一次垃圾
collectgarbage("collect")

print(collectgarbage("count"))

--lua中有自动GC的机制，但在热更新开发中尽量手动释放，不要自动GC