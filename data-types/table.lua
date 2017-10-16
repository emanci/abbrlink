local tbl1 = {}

print(tbl1)

local tbl2 = {"apple", "pear", "orange", "grape"}


for k, v in pairs(tbl2) do
    print(k..':'..v)
end



a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end


local tbl = {"apple", "pear", "orange", "grape"}

for key, val in pairs(tbl) do
    print("Key", key)
    print("val", val)
end

