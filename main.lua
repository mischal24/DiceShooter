local player = require ( "player" )

function love.load()
end

function love.update()
    move_player()
end

function love.draw()
    love.graphics.setBackgroundColor( 0.5, 0.5, 0.5, 1 )
    draw_player()
end