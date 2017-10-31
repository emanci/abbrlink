
-- assert
local function add(a, b)
    assert(type(a) == "number", "a 不是一个数字")
    assert(type(b) == "number", "b 不是一个数字")
    return a + b
end

--[[print(add(1, 3))
print(add('a', 'b'))--]]


-- error
local function update(id, data)
    print("--- before ---")
    error('出错啦', 1)
    print("--- after ---")
end

-- update(1, 'name')


-- pcall
if pcall(function(i) print(i) end, 10) then
    -- true
    print("没有出错")
else
    -- false
    print("出错啦")
end

if pcall(
function(i) 
    print(i)
    error("这里有错")
end, 30) then
    -- true
    print("没有出错")
else
    -- false
    print("出错啦")
end

-- xpcall
xpcall(function(i) print(i) error('error..') end, function() print(debug.traceback()) end, 33)


-- demo2
n = 10
function myfunction ()
   --n = n/nil
   n = n/10
end

function myerrorhandler( err )
   print( "ERROR: ", err )
end

status = xpcall(myfunction, myerrorhandler)
print( status)

