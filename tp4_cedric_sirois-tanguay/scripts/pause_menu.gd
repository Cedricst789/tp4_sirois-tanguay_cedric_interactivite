extends Control

@onready var main = $"../"
#pour retourner au jeu
func _on_resume_pressed() -> void:
	main.pauseMenu()

#pour retourner au menu principale
func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
