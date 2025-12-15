extends Node2D

#main menu 
#pour commencer la partie
func _on_start_pressed() -> void:
	$click.play()
	get_tree().change_scene_to_file("res://scenes/main.tscn")
#pour fermer le jeu
func _on_quit_pressed() -> void:
	get_tree().quit()
