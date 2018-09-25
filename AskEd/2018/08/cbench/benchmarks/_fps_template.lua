-- =============================================================
-- Copyright Roaming Gamer, LLC. 2009-2013
-- =============================================================
local benchtype = "fps" -- Measures Raw Operations Per Second
local name = "FPS Test"
local benchOuter = 120 -- Times to run benchmark
local benchInner = 10000 -- Number of innner loops to run

local mRand = math.random

-- Any prep work you need to do before starting the benchmark  (not measured)
local function prep( group )
	local w = w - 10
	local h = h - 10

	for i = 1, 1000 do
		local x = mRand( 10, w )
		local y = mRand( 10, h )
		tmp = display.newCircle( group, x, y, 20 )
		tmp:setFillColor( mRand(),mRand(),mRand() )
	end

end

-- Any cleanup work you need to do after the benchmark (not measured)
local function cleanup( group )
end

-- The actual benchmark (measured)
local  lastTime = -1
local function bench( time, numOps )
	-- DO ANY WORK HERE
end

-- DO NOT EDIT BELOW THIS LINE
local public = {}
public.benchtype = benchtype
public.name = name
public.prep = prep
public.cleanup = cleanup
public.bench = bench
public.iterations = benchOuter
public.numOps = benchInner

return public