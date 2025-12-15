extends Node2D
var time
var seconds : int

func _process(delta: float) -> void:
	time = $declencheur/chrono.time_left
	seconds = int(time) % 60
	$declencheur/timer_label.text = "%02d" % [seconds]
	


func _on_chrono_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")




func _on_drapeau_2_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://scenes/menufin.tscn")
