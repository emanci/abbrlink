print(1 .. 20)
print(type(1 .. 20))
print("10" + 8)


-- random output, there is no order
local tab = {iphone = 1, android = 2, wp = 3}

for k, v in pairs(tab) do
    print(k .. '=' .. v)
end
