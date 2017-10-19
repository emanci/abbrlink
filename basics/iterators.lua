
array = {"Lua", "Tutorial"}

for key,value in ipairs(array) do
   print(key, value)
end


array = {"Lua", "Tutorial"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   -- 闭包函数
   return function ()
      index = index + 1
      if index <= count then
         --  返回迭代器的当前元素
         return collection[index]
      end
   end
end

for element in elementIterator(array) do
   print(element)
end



local tabFiles = {
        [1] = "test2",
        [6] = "test3",
        [4] = "test1"
    }

for k, v in ipairs(tabFiles) do    --输出"test2",在key等于2处断开
    print(k, v)
end


local tabFiles = {
    [2] = "test2",
    [6] = "test3",
    [4] = "test1"
}

for k, v in pairs(tabFiles) do  --输出2 test2, 6 test3, 4 test1
    print(k, v)
end




