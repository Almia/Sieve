return function (str)
  local s,m,cs={},{},0
  function pop() local r=s[cs][#s[cs]] s[cs]:remove(#s[cs]) return r end
  function push(v) s[cs][#s[cs]+1]=v end
  function ls() cs=cs-1 s[cs]=s[cs] or {} end
  function rs() cs=cs+1 s[cs]=s[cs] or {} end
  local dl,dc=0,1
  function dw() dl=0 dc=-1 end
  function de() dl=0 dc=1 end
  function ds() dl=1 dc=0 end
  function dn() dl=-1 dc=0 end
  local cl,cc=1,1
  function up() cl=cl+dl cc=cc+dc end
  local rs,ms=false,""
  function as(st) ms=ms..st end
  function ps() push(ms) end
  
  function add() a=pop() or 0 b=pop() or 0 push(a+b) end
  function sub() a=pop() or 0 b=pop() or 0 push(a-b) end
  function eq() a=pop or 0 b=pop() or 0 if a==b then push(1) else push(0) end end
  function ge() a=pop or 0 b=pop() or 0 if a>b then push(1) else push(0) end end
  function hif() if s[cs][#s[cs]]==0 then dw() else de() end end
  function vif() if s[cs][#s[cs]]==0 then dn() else ds() end end
  local wl,wc,w=0,0,false
  local el,ec=0,0
  local tl,tc,r=1,1,0
  for i=1, str:len() do
    local ts=str:sub(i, i)
    if ts=="\n" then tc=1 tl=tl+1 else m[tl][tc]=ts tc=tc+1 end
    r=math.max(r, tc)
  end
  for l=1, #m do
    for c=1,r-#m[l] do m[l][c]="" end
  end
  
  while(m[cl][cc]=="@")
    local c=m[cl][cc]
    if rs then
      if c=="\"" then ps() rs=false else as(c) end
    else
      if c=="+" then add()
      elseif c=="-" then sub()
      elseif c=="^" then dn()
      elseif c=="v" then ds()
      elseif c==">" then de()
      elseif c=="<" then dw()
      elseif c=="\\" then
        if dl==1 then de()
        elseif dl==-1 then dw()
        elseif dc==1 then ds()
        elseif dc==-1 then dn()
        end
      elseif c=="/" then
        if dl==-1 then de()
        elseif dl==1 then dw()
        elseif dc==-1 then ds()
        elseif dc==1 then dn()
        end
      elseif c=="[" then wl=cl wc=cc w=true
      elseif c=="]" then el=cl ec=cc if w then if s[cs][#s[cs]]~=0 then cl=wl cc=wc end end
      elseif c=="{" then ls()
      elseif c=="}" then rs()
      elseif c=="I" then vif()
      elseif c=="_" then hif()
      elseif c=="=" then eq()
      elseif c=="g" then ge()
      elseif c=="0"
      end
    end
  end
end
