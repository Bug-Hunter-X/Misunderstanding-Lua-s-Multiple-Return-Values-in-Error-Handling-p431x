local function foo(a, b)
  if a == nil then
    return nil, "a is nil"
  end
  if b == nil then
    return nil, "b is nil"
  end
  return a + b
end

local result, err = foo(10, nil)

if err then
  print("Error:", err)  -- Output: Error: b is nil
else
  print("Result:", result) 
end

result, err = foo(nil, 20)

if err then
  print("Error:", err)  -- Output: Error: a is nil
else
  print("Result:", result) 
end

--Example with a function that might legitimately return nil
local function bar(x)
  if x < 0 then
    return nil
  else
    return x * 2
  end
end

local result = bar(5)
print("Result of bar(5):", result) --Output: Result of bar(5): 10

result = bar(-5)
print("Result of bar(-5):", result) --Output: Result of bar(-5): nil