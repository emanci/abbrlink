
string1 = "双引号间的字符"
print("\"字符串 1 是\"",string1)

string2 = '单引号间的字符'
print("字符串 2 是",string2)

string3 = [[字符的奇怪表示方法]]
print("字符串 3 是",string3)
print("字符串 3 是",type(string3))


name = 'zhengchaopu'
print("name upper = " .. string.upper(name))

city = 'CHENGDU'
print([[city = ]] .. string.lower(city))

str, num = string.gsub("aaaa","a","z",2)
print('new str = ' .. str, 'num = ' .. num)


-- format

--[[
    format test
--]]

print(string.format('97 is equal to %c', 97))
print(string.format('97 equals %c', 97))

