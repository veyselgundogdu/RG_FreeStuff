-- =============================================================
-- main.lua
-- =============================================================
local composer 	= require "composer" 

---------------------------------------------------------------------
--Initialization
----------------------------------------------------------------------
require "scripts.init"

----------------------------------------------------------------------
-- Execution
----------------------------------------------------------------------
-- Start Soundtrack
post( "onSound", { sound = "soundtrack", loops = -1, fadein = 3000 } )

composer.gotoScene( "scenes.splash" )
--composer.gotoScene( "scenes.playGUI" )