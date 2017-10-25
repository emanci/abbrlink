
-- read
file = io.open("data.lua", "r")

io.input(file)

print(io.read())

io.close(file)



-- append
file = io.open("test.lua", "a")

io.output(file)

io.write("--  test.lua 文件末尾注释")

io.close(file)



