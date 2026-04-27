extends CharacterBody2D

class_name Enemy
@onready var nav: NavigationAgent2D = $NavigationAgent2D

var speed = 50
var target

func _ready():
	#Pega o alvo, no caso, nosso player
	target = get_tree().get_first_node_in_group("player")
	nav.target_position = target.global_position
	
func _physics_process(delta: float) -> void:
	if target:
		nav.target_position = target.global_position
		
		if !nav.is_target_reached():
			var next_point = nav.get_next_path_position()
			var direction = (next_point - global_position).normalized()
			velocity = direction * speed
			move_and_collide(velocity * delta)
	


func _on_timer_timeout() -> void:
	pass # Replace with function body.
