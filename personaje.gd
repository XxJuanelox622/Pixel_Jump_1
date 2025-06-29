extends CharacterBody2D

var velocidad = 200
var brinco = -400
var gravedad = 1000

func _ready():
	add_to_group("jugador")

func _physics_process(delta):
	var direccion = Input.get_axis("ui_left","ui_right")
	velocity.x = direccion * velocidad
	
	if not is_on_floor():
		velocity.y += gravedad * delta
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = brinco
	move_and_slide()

@warning_ignore("unused_parameter")
func _on_reset_area_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()

@warning_ignore("unused_parameter")
func _on_reset_area_3_body_exited(body: Node2D) -> void:
	get_tree().reload_current_scene()

# portales ( Siguiente Nivel )
@warning_ignore("unused_parameter")
func _on_Portal_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level1.tscn")
	pass # Replace with function body.

func _on_portal1_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level2.tscn")
	pass # Replace with function body.

func _on_portal_2_body_exited(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level0.tscn")
	pass # Replace with function body.
	
@warning_ignore("unused_parameter")
func _on_reset_area_2_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.




func _on_reset_area_3_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.
