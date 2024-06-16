class_name Entity
extends Sprite2D

var grid_position: Vector2i:
	set(value):
		grid_position = value
		position = Grid.grid_to_world(grid_position)
		
func _init(start_position: Vector2i, entity_definition: EntityDefinition):
	
	centered = false
	grid_position = start_position
	texture = entity_definition.texture
	modulate = entity_definition.color
	
	scale = Vector2(3, 3)
	texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	
func move(move_offset: Vector2i) -> void:
	grid_position += move_offset
