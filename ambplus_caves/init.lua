local dripping_sound_status = 1


minetest.register_abm({
  nodenames = {"default:stone"},
  neighbors = {"default:air"},
  interval = 10,
  chance = 500,
  catch_up = false,
  action = function(pos, node, active_object_count, active_object_count_wider)
    if dripping_sound_status == 0 then
		return
	end
	

	local ppos
	for _,player in ipairs(minetest.get_connected_players()) do
		ppos = player:getpos()
	end
	
	if ppos.y > -10 then
		return
	end
	
	if vector.distance(pos,ppos) > 20 then
		return
	end
	
	if math.random(0,3) > 0 then
		dripping_sound_status = 0
        minetest.after(2,  function()
            dripping_sound_status = 1
        end) -- minetest.after() end
	
		return
	end
	print("play dripping")
	minetest.sound_play("ambplus_caves_dripping", {
	  pos = pos,
	  max_hear_distance = 40,
	  gain = 1 --0.2+1/#path*5,
	})
	
	dripping_sound_status = 0
    
      minetest.after(5,  function()

          dripping_sound_status = 1
        end) -- minetest.after() end
	

  end,
})


local ambiance_sound_status = 1


minetest.register_abm({
  nodenames = {"default:stone"},
  neighbors = {"default:air"},
  interval = 15,
  chance = 500,
  catch_up = false,
  action = function(pos, node, active_object_count, active_object_count_wider)
    if ambiance_sound_status == 0 then
		return
	end
	

	local ppos
	for _,player in ipairs(minetest.get_connected_players()) do
		ppos = player:getpos()
	end
	
	if ppos.y > -10 then
		return
	end
	
	if vector.distance(pos,ppos) > 20 then
		return
	end
	
	if math.random(0,2) > 0 then
		ambiance_sound_status = 0
        minetest.after(2,  function()
            ambiance_sound_status = 1
        end) -- minetest.after() end
	
		return
	end
	print("play ambiance")
	minetest.sound_play("ambplus_caves_ambiance", {
	  pos = pos,
	  max_hear_distance = 40,
	  gain = 1 --0.2+1/#path*5,
	})
	
	ambiance_sound_status = 0
    
      minetest.after(5,  function()

          ambiance_sound_status = 1
        end) -- minetest.after() end
	

  end,
})


local water_sound_status = 1


minetest.register_abm({
  nodenames = {"default:water_source"},
  neighbors = {"default:air"},
  interval = 25,
  chance = 10,
  catch_up = false,
  action = function(pos, node, active_object_count, active_object_count_wider)
    if water_sound_status == 0 then
		return
	end
	

	local ppos
	for _,player in ipairs(minetest.get_connected_players()) do
		ppos = player:getpos()
	end
	
	if ppos.y > -10 then
		return
	end
	
	if vector.distance(pos,ppos) > 40 then
		return
	end
	

	print("play water")
	minetest.sound_play("ambplus_caves_water", {
	  pos = pos,
	  max_hear_distance = 40,
	  gain = 1 --0.2+1/#path*5,
	})
	
	water_sound_status = 0
    
      minetest.after(5,  function()

          water_sound_status = 1
        end) -- minetest.after() end
	

  end,
})

local waterflowing_sound_status = 1


minetest.register_abm({
  nodenames = {"default:water_flowing"},
  neighbors = {"default:air"},
  interval = 12,
  chance = 10,
  catch_up = false,
  action = function(pos, node, active_object_count, active_object_count_wider)
    if waterflowing_sound_status == 0 then
		return
	end
	

	local ppos
	for _,player in ipairs(minetest.get_connected_players()) do
		ppos = player:getpos()
	end
	
	if ppos.y > -10 then
		return
	end
	
	if vector.distance(pos,ppos) > 40 then
		return
	end
	

	print("play waterflowing")
	minetest.sound_play("ambplus_caves_water_flowing", {
	  pos = pos,
	  max_hear_distance = 40,
	  gain = 1 --0.2+1/#path*5,
	})
	
	waterflowing_sound_status = 0
    
      minetest.after(5,  function()

          waterflowing_sound_status = 1
        end) -- minetest.after() end
	

  end,
})

