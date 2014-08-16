--这是一个Lua的语句 单行注释

print("hello world")
print("Hello Lua")

--[[这是注释吗
是的 是多行注释
]]

a = "im a"
print(a)
a =999
print(a)
--[[
1.数字类型
2.字符串类型
3.thread类型 线程
4.function
5.table 数组 酷炫的混合体
6.其他类型
]]

 a = function( var )
	print("XXX"..var)
end

a("Immmm")



myTable = {
	12,
	13
}

for  k,v in pairs(myTable)do
	print(k,v)
end
--如果在一个function函数中创建的变量也是global(没有使用local)



--if语句
num = 999
if  num==999 then
	print("num = "..num)
end
num = "xxxx"
print(num)


--lua中条件判断的特殊符号组合
--[[ == >= <= ~= ]]

local function  myfunc1( ... )
	print("myfunc1")
end

myfunc1()

local function  myfunc2( a )
	print(a)
end

myfunc2("shasha")

local function  myfunc3( a )
	return a
end

print(myfunc3(88))

local function  myfunc4()
	return 1,2
end
local a,b = myfunc4()
print(a)
print(b)

local function  myfunc5( ... )
	local  myTable = {...} 
	for i,v in ipairs(myTable) do
		print(i,v)
	end
	print(myTable[1])
end

myfunc5("12",135,"hahahhahh") 



print("hello shabi")

--Lua只有falseh和nil为假
--and连接的，如果第一个为假则返回第一个数，反之返回第二个
print(false and 1)
print(2 and 1)
--or连接的，如果第一个为真则返回第一个，反之返回第二个
print(true or 123)
print(false or 123)
--not连接的，返回的只有true 和 false
print(not 110)
print(not nil)

--循环语句
--while循环
m_table = {1,2,3,4,5}
local i = 1
while m_table[i] do
	print(m_table[i])
	i = i+1
end

--repeat 相当于其他语言的do  while
local x = 1
repeat
	
	x = x+1
    print(x)
until x == 10

--for
for i=1,#m_table do
	print(m_table[i])
end

for i = 10,100,10 do
	print(i)
end


