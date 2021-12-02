local file = "./input.txt"
local nums = {}

for num in io.lines(file) do
  table.insert(nums, tonumber(num))
end

function Count(input, batch)
  local count = 0
  for i=1, #input do
    local x = batch + i
    if input[x] ~= nil and input[x] > input[i] then
      count = count + 1
    end
  end
  return count
end

print(Count(nums, 1)) -- part 1
print(Count(nums, 3)) -- part 2
