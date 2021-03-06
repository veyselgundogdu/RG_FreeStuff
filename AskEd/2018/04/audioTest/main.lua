io.output():setvbuf("no")
display.setStatusBar(display.HiddenStatusBar)
-- =====================================================
-- =====================================================

local track = audio.loadStream( "Discovery Hit.mp3" )

local channel = audio.findFreeChannel(1)

audio.reserveChannels( channel )

audio.play( track, { loops = -1, channel = channel } )

timer.performWithDelay( 2000, 
	function()
		audio.setVolume(0, { channel = channel })
	end )
