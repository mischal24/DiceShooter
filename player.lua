local vec2 = require ( "vec2" )

local player_speed = 3

local player_position = vec2:new()

function get_dir( bool_a, bool_b )
    
    local a = 0
    local b = 0

    if bool_a then a = 1 else a = -1 end
    if bool_b then b = 1 else b = -1 end

    return a - b
end

function move_player()
    player_position.x = player_position.x - (get_dir(love.keyboard.isDown( "a" ), love.keyboard.isDown( "d" ))) * player_speed
    player_position.y = player_position.y - (get_dir(love.keyboard.isDown( "w" ), love.keyboard.isDown( "s" ))) * player_speed
end

function draw_player()
    love.graphics.circle( "fill", player_position.x, player_position.y, 25 )
end