extends Area2D

@onready var contador : Node = get_node("/root/GameContador")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		contador.incrementa_un_punto()
		queue_free()
	pass 
