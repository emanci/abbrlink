
local tab = {"apple", "orange", "banana"}

for k, v in pairs(tab) do
    print(k, v)
end

print(tab[2])

print(tab[1])

-- print(tab.3)     ----> error



local tab2 = { a = apple, o = "orange", b = "banana"}

for k, v in pairs(tab2) do
    print(k, v)
end

print(type(tab2.a))

print(tab2.o)
print(type(tab2.o))


words = {}
words["key"] = "babababb"

print(words["key"])
print(words.key)

