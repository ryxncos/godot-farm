extends Node2D
@onready var soil: TileMapLayer = $Map/Soil
@onready var player: Player = $Player


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("click"):
		var mouse = get_global_mouse_position() #Posição do mouse
		var tile = soil.local_to_map(mouse)
		soil.set_cell(tile, 0, Vector2i(3,14))
		print(mouse) 
	pass
	
