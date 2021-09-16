-- Constants
local ROWS = 100
local COLLUMNS = 100
local RANGE = 10

-- Randomize offsets
local offset_x = math.random(-1000, 1000)
local offset_y = math.random(-1000, 1000)

-- Spawn a part
local function spawnPart(x, y, alpha)
	local randomsize = math.random(4, 12)
	local part = Instance.new("Part")
	part.BrickColor = BrickColor.Random()
	part.Anchored = true
	part.Size = Vector3.new(10, 10, 10)
	part.Position = Vector3.new(x, alpha * RANGE, y)
	part.Material = Enum.Material.Neon
	part.Parent = workspace
end

for y = 1, COLLUMNS do
	for x = 1, ROWS do
		local makeNoise = math.noise(x/ROWS, y/COLLUMNS, 0) --  + offset_x or  + offset_y
		spawnPart(x * 10, y * 10, makeNoise)
	end
end
