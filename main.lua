
local Object  = require ("Object");

local testObj = Object:new();

function love.load(arg)
  print("Width : " , testObj:getWidth());
end
