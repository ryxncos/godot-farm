extends CharacterBody2D


@onready var weapon: Node2D = $Weapon

@export var bullet_scene:PackedScene

var speed = 150

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("walk_left", "walk_right", "walk_up", "walk_down")
	velocity = direction * speed
	
	var mouse = get_global_mouse_position()
	weapon.look_at(mouse)
	
	if Input.is_action_just_pressed("shoot"):
		fire()
	
	move_and_collide(velocity * delta)
	

func fire():
	print("lá ele")
	var bullet = bullet_scene.instantiate()
	bullet.global_position = weapon.global_position
	bullet.rotation_degrees = weapon.rotation_degrees
	get_tree().root.add_child(bullet)
	pass
