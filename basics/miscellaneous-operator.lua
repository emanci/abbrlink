
a = true
b = true

if ( a and b ) then
    print("a and b - 条件为 true" )
else
    print("a and b - 条件之一为 false" )
end


a = false
b = true

if ( a and b ) then
   print("a and b - 条件为 true" )
else
   print("a and b - 条件为 false" )
end

if ( not( a and b) ) then
   print("not( a and b) - 条件为 true" )
else
   print("not( a and b) - 条件为 false" )
end



a = 20
b = 10
c = 15
d = 5

e = (a + b) * c / d;-- ( 30 * 15 ) / 5
print("(a + b) * c / d 运算值为  :",e )

e = ((a + b) * c) / d; -- (30 * 15 ) / 5
print("((a + b) * c) / d 运算值为 :",e )

e = (a + b) * (c / d);-- (30) * (15/5)
print("(a + b) * (c / d) 运算值为 :",e )

e = a + (b * c) / d;  -- 20 + (150/5)
print("a + (b * c) / d 运算值为   :",e )

