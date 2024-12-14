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
  print(err)  -- Output: b is nil
else
  print(result)  -- Output: Nothing is printed
end

result, err = foo(nil, 20)

if err then
  print(err)  -- Output: a is nil
else
  print(result)  -- Output: Nothing is printed
end