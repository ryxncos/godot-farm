extends AnimatedSprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		play("open")
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		play("close")
	pass # Replace with function body.
