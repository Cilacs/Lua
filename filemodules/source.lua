local m = {}
function m:isfile(name)
  local file = false
  local s, m = pcall(function()
        local f = io.open(name,"r")
        if(f)then
          file = true
        end
    end)
  return file
  --// cannot return value in pcall
end
function m:readfile(name)
  if(m:isfile(name))then
    local f = io.open(name,"r")
    local output = ""
    local lines = f:lines()
    for i in lines do
      output = output .. i .. "\n"
    end
    output = output:sub(1,output:len()-1)
    f:close()
    return output
  end
end
function m:delfile(name)
  if(m:isfile(name))then
    os.remove(name)
  end
end
function m:writefile(name,...)
  local args = {...}
  local content = ""
  for _, i in next, args do
    content = content .. tostring(i)
  end
  local f = io.open(name,"w")
  f:write("")
  f:close()
  f = io.open(name,"a")
  f:write(content)
  f:close()
end
function m:appendfile(name,...)
  local args = {...}
  local content = ""
  for _, i in next, args do
    content = content .. tostring(i) .. " "
  end
  if(m:isfile(name))then
    local f = io.open(name,"a")
    f:write(content)
    f:close()
  end
end
function m:isfolder(name)
  --// still figuring out a way to detect folders
  return m:isfile(name)
end
function m:makefolder(name)
  if not(m:isfolder(name))then
    os.execute("mkdir " .. name)
  end
end
function m:delfolder(name)
  if(m:isfolder(name))then
    os.remove(name)
  end
end
return m
