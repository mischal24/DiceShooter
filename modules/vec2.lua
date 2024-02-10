local Vec2 = {}

function Vec2:new( x, y )
	local value = {}

    value.x = x or 0
    value.y = y or 0

    return value
end

return Vec2