
--[[
while(true) do
    print("循环将永远执行下去")
end
]]


for var=1, 10, 1 do
    print("循环" .. var)
end


local a = {"aa", "bb", "cc"}
for i,v in ipairs(a)  do 
    print(i, v) 
end

