local file = os.getenv("PWD") .. "/2021/2/input"

function Score(with_aim)
  local pos = {
    x = 0,
    y = 0,
    z = 0
  }
  for line in io.lines(file) do
    for k, v in line:gmatch("(%w+)%s+(%w+)") do
      if k == "forward" then
        pos.x = pos.x + v
        if with_aim then
          pos.y = pos.y + (pos.z * v)
        end
      end
      if k == "down" then
        if with_aim then
          pos.z = pos.z + v
        else
          pos.y = pos.y + v
        end
      end
      if k == "up" then
        if with_aim then
          pos.z = pos.z - v
        else
          pos.y = pos.y - v
        end
      end
    end
  end
  return pos.x * pos.y
end
print("Part 1: ", Score(false))
print("Part 2: ", Score(true))
