extends Area2D

var jugador_cerca = false

func _on_body_entered(body):
	if body.name == "jugador":
		body.pickup_mon()
		queue_free()

func _on_body_exited(body):
	if body.name == "jugador":
		jugador_cerca = false
