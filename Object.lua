local class  = require ("middleclass");
local Object  = class("Object");

local Width = 240; -- Simulates drawable:getWidth()
local Height = 240; -- Simulates drawable:getHeight()

function Object:initialize(ObjName, ObjImg , x , y)
  -- Coordinates in parent
	self.x = x
	self.y = y
	-- Scale
	self.sx = 1
	self.sy = 1
	-- Rotation
	self.rot = 0

	-- Center
	self.px = 0
	self.py = 0

	-- Offset
	self.ox = 0
	self.oy = 0

  -- Object's distance from camera, default value 100
  -- if > 100 the object gets closer to the camera
  self.distance = 100
end


function Object:getWidth()
  return Width * (self.distance/100);
end

function Object:getHeight()
  return Width * (self.distance/100);
end



return Object;
