


-- tmpfile
file2 = io.tmpfile()
io.input(file2)
file2:write("aaa--bbb\r\n")
file2:write("ccc--ddd")
file2:seek("set")
print(file2:read('*a'))
io.close(file2)


-- file:function_name
file = io.open("test.lua", "r")

file:seek("end", -14)
print(file:read("*a"))

file:seek("set", 30)
print(file:read("*a"))

file:close()
