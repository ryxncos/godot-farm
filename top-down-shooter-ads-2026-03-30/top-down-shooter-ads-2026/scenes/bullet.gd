extends Area2D

var speed = 40 #velocidade do lancamento
var direction 

func _ready():
	#Definir a direção
	direction = Vector2.RIGHT.rotated(rotation)
	pass

func _physics_process(delta: float) -> void: #Melhor para controlar animação
	var velocity = direction * speed * delta #Vetor que direiona pra onde o objeto anda na física
	position += velocity
	pass
	


func _on_timer_timeout() -> void:
	print("Removeu tiro")
	queue_free()
	pass # Replace with function body.
