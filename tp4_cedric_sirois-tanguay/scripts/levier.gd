extends Node2D
var activated: bool = false

#pour activer la porte quadn le jouer touche
func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player") and not activated:
		activated = true
		$active_levier.frame = 1
		var door = get_parent().get_node("door") 
		door.open_door()
		$levier_activer.play()
