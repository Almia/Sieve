return function (str)
  local s, m = {}, {}
  function pop() local r=s[#s] s:remove(#s) return r end
  function push(v) s[#s+1]=v end
  
  local dl, dc = 0, 1
  function dw() dl=0 dc=-1 end
  function de() dl=0 dc=1 end
  function ds() dl=1 dc=0 end
  function dn() dl=-1 dc=0 end
  local cl, cc = 1, 1
  function up() cl=cl+dl cc=cc+dc end
  
end
