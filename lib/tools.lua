local M = {}

M.dump = function (o)
  if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
      if type(k) ~= 'number' then k = '"'..k..'"' end
      s = s .. '['..k..'] = ' .. M.dump(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

M.sum = function (t)
  local sum = 0
  for k,v in pairs(t) do
    sum = sum + v
  end
  return sum
end

return M
