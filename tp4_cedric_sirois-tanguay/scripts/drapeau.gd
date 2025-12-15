extends Area2D


#teleporter le joeur vers l'écrans suivant
func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://scenes/main_2.tscn")
		$AudioStreamPlayer2D.play()
