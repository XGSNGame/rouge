class_name Grid
extends Object

const tile_size = Vector2i(16 * 3, 16 * 3)

static func grid_to_world(grid_pos: Vector2i) -> Vector2i:
	var world_pos: Vector2i = grid_pos * tile_size
	return world_pos
	
static func world_to_gird(world_pos: Vector2i) -> Vector2i:
	var grid_pos: Vector2i = world_pos / tile_size
	return grid_pos
