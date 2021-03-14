pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
--it is a simple code sample
--that an enemy shot a bullet
--at the player.

p={--player axis
	x=flr(rnd(127)),
	y=flr(rnd(127))
}
e={--enemy axis
	x=flr(rnd(127)),
	y=flr(rnd(127))
}
--radian
r=atan2(p.x-e.x,p.y-e.y)
--timer
t=0

::_::--repeat from
cls()
circfill(p.x,p.y,2,12)
circfill(e.x,e.y,2,8)
t+=1
x=flr(cos(r)*t)+e.x
y=flr(sin(r)*t)+e.y
pset(x,y,7)--sraw a bullet
flip()
goto _
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
