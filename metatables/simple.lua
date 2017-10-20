
mytable = {"aa"}     -- 普通表 
mymetatable = {"bb"}     -- 元表
setmetatable(mytable,mymetatable)     -- 把 mymetatable 设为 mytable 的元表 

--[[
setmetatable({},{})
]]

getmetatable(mytable);


other = { foo = 3 }
t = setmetatable({}, other) 
print(t.foo)
t = setmetatable({}, { __index = other }) 
print(t.foo)

t = setmetatable({ bar = 100 }, other) 
print(t.bar)


print('------------------------------')

mytable = setmetatable({key1 = "value1"}, {
  __index = function(mytable, key)
    if key == "key2" then
      return "metatablevalue"
    else
      return nil
    end
  end
})

print(mytable.key1,mytable.key2)


print('------------------------------')

mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey,mymetatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1,mymetatable.key1)

mytable.key2 = "key2 in mymetatable"
print(mytable.key2,mymetatable.key2)




