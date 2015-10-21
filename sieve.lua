return function (str)
  --[[
    Convert the string to a char map
  ]]--
  cm = {}
  i = 1 l = 1 r=0
  while(i <= str:len()) do
    s = str:sub(i, i)
    n = 1
    cm[l] = {}
    while(s ~= "\n") do
      cm[l][n] = s
      n = n + 1
      i = i + 1
      s = str:sub(i, i)
    end
    r = math.max(r, n - 1)
    l = l + 1
  end
  for k, v in ipairs(cm) do
  end
end
