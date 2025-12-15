extends Control


#pour diriger vers le menu principale
func _on_continuer_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
