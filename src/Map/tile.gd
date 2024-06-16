class_name Tile
extends Sprite2D

var _definition: TileDefinition

func _init(grid_pos: Vector2i, tile_def: TileDefinition) -> void:
	centered = false
	position = Grid.grid_to_world(grid_pos)
	set_tile_type(tile_def)
	
	scale = Vector2(3, 3)
	texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	
func set_tile_type(tile_def: TileDefinition) -> void:
	_definition = tile_def
	texture = tile_def.texture
	modulate = _definition.color_dark
	
func is_walkable() -> bool:
	return _definition.is_walkable
	
func is_transparent() -> bool:
	return _definition.is_transparent
