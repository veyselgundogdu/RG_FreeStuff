-- =============================================================
-- Copyright Roaming Gamer, LLC. 2008-2017 (All Rights Reserved)
-- =============================================================
--  scenes/splash.lua
-- =============================================================
local composer       = require( "composer" )
local scene          = composer.newScene()

----------------------------------------------------------------------
-- Forward Declarations
----------------------------------------------------------------------
local onTouch

----------------------------------------------------------------------
-- Locals
----------------------------------------------------------------------

----------------------------------------------------------------------
-- scene:create( event ) - Called on first scene open ONLY (unless
-- the scene has been manually or automatically destroyed.)
----------------------------------------------------------------------
function scene:create( event )
   local sceneGroup = self.view

   scene.rect1 = display.newRect( sceneGroup, display.contentCenterX, display.contentCenterY, 180, 180 )
   scene.rect1.touch = onTouch
   scene.rect1:addEventListener("touch")

   scene.rect2 = display.newRect( sceneGroup, display.contentCenterX - 50, display.contentCenterY + 175, 80, 80 )
end

----------------------------------------------------------------------
-- scene:willShow( event ) - Replaces the scene:show() method.  This
-- method is called during the "will" phase of scene:show().
----------------------------------------------------------------------
function scene:willShow( event )
   local sceneGroup = self.view
end

----------------------------------------------------------------------
-- scene:didShow( event ) - Replaces the scene:show() method.  This
-- method is called during the "did" phase of scene:show().
----------------------------------------------------------------------
function scene:didShow( event )
   local sceneGroup = self.view
end

----------------------------------------------------------------------
-- scene:willHide( event ) - Replaces the scene:hide() method.  This
-- method is called during the "will" phase of scene:hide().
----------------------------------------------------------------------
function scene:willHide( event )
   local sceneGroup = self.view
end

----------------------------------------------------------------------
-- scene:didHide( event ) - Replaces the scene:hide() method.  This
-- method is called during the "did" phase of scene:hide().
----------------------------------------------------------------------
function scene:didHide( event )
   local sceneGroup = self.view
end
----------------------------------------------------------------------
-- scene:destroy( event ) - Called automatically by Composer scene library
-- to destroy the contents of the scene (based on settings and memory constraints):
-- https://docs.coronalabs.com/daily/api/library/composer/recycleOnSceneChange.html
--
-- Also called if you manually call composer.removeScene()
-- https://docs.coronalabs.com/daily/api/library/composer/removeScene.html
----------------------------------------------------------------------
function scene:destroy( event )
   local sceneGroup = self.view
end

----------------------------------------------------------------------
--          Custom Scene Functions/Methods
----------------------------------------------------------------------
onTouch = function( event )
   local params = { from = scene }
   composer.showOverlay( "scene2", { time = 500, isModal = true, effect = "slideRight", params = params } )
end


---------------------------------------------------------------------------------
-- Scene Dispatch Events, Etc. - Generally Do Not Touch Below This Line
---------------------------------------------------------------------------------

-- This code splits the "show" event into two separate events: willShow and didShow
-- for ease of coding above.
function scene:show( event )
   local sceneGroup  = self.view
   local willDid  = event.phase
   if( willDid == "will" ) then
      self:willShow( event )
   elseif( willDid == "did" ) then
      self:didShow( event )
   end
end

-- This code splits the "hide" event into two separate events: willHide and didHide
-- for ease of coding above.
function scene:hide( event )
   local sceneGroup  = self.view
   local willDid  = event.phase
   if( willDid == "will" ) then
      self:willHide( event )
   elseif( willDid == "did" ) then
      self:didHide( event )
   end
end
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
---------------------------------------------------------------------------------
return scene