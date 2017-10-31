

-- co
co = coroutine.create(function (a)
    local r = coroutine.yield(a+1)       -- yield()返回a+1给调用它的resume()函数，即2
    print("r=" ..r)                      -- r的值是第2次resume()传进来的，100
end)

status, r = coroutine.resume(co, 1)      -- resume()返回两个值，一个是自身的状态true，一个是yield的返回值2
print(status, r)
coroutine.resume(co, 100)


-- co2
co2 = coroutine.create(function (a, b)
    local s = coroutine.yield(a+b)
    print("now value = " .. s)
end)


status, r = coroutine.resume(co2, 3, 2)
print(status, r)
coroutine.resume(co2, 200)


-- co3
co3 = coroutine.create(function (a, b)
    local s = coroutine.yield(a+b)
    print("now value = " .. s)
end)

status, r = coroutine.resume(co3, 3, 2)
print(status, r)
coroutine.resume(co3, 500, 300)


