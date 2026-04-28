extends Node2D

signal tile_selected(tile_pos)

@export var tilemap_layer: TileMapLayer

var tile = Vector2i(-9999, -9999)

func _process(delta:float) -> void:
	var mouse = get_local_mouse_position()
	var cell = tilemap_layer.local_to_map(mouse)
	
	if cell != tile:
		tile = cell
		queue_redraw()
		
func _draw() -> void:
	var cell_local_pos = tilemap_layer.map_to_local(tile) #Chamado sempre pra desenhar no mapa=
	var tile_size = tilemap_layer.tile_set.tile_size
	
	var rect = Rect2(
		cell_local_pos - Vector2(tile_size) / 2.0,
		Vector2(tile_size)
	)
	
	draw_rect(rect, Color(1,1,0,0.4))
	
