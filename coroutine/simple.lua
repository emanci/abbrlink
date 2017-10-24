
-- test
co = coroutine.create(
    function(i)
        print(i);
    end
)

coroutine.resume(co, 1)
print(coroutine.status(co))


print("----------")
 
co = coroutine.wrap(
    function(i)
        print(i);
    end
)
 
co(1)

print("----------")

co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)
 
print("------ 1 ----")
coroutine.resume(co2) --1

print("------ 2 ----")
coroutine.resume(co2) --2

print("------ 3 ----")
coroutine.resume(co2) --3
 
print("------ ---- ----")
print(coroutine.status(co2))   -- suspended
print(coroutine.running())
 
print("----------")

coroutine.resume(co2)




