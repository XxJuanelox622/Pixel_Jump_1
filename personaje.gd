extends CharacterBody2D

var velocidad = 200
var brinco = -400
var gravedad = 1000
var jugador_cerca = false
var puntaje = 0
func _ready():
	add_to_group("jugador")

func _physics_process(delta):
	var direccion = Input.get_axis("ui_left","ui_right")
	velocity.x = direccion * velocidad
	
	if not is_on_floor():
		velocity.y += gravedad * delta
		
	if jugador_cerca and Input.is_action_just_pressed("recoger_objeto"):
		queue_free()
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = brinco
	move_and_slide()

@warning_ignore("unused_parameter")
func _on_reset_area_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()

@warning_ignore("unused_parameter")
func _on_reset_area_3_body_exited(body: Node2D) -> void:
	get_tree().reload_current_scene()
	
func pickup_mon():
	puntaje += 1
	get_node("/root/world/HUB").update_count(puntaje)


func _on_Portal_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level1.tscn")
	pass # Replace with function body.


func _on_reset_area_2_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
