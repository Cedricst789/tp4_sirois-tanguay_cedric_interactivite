extends Area2D


var deja_active = false

func _on_body_entered(body: Node2D) -> void:
	if body.name == "joueur" and not deja_active:
		deja_active = true 
		$timer_label.visible = true
		$BlablaMechant.visible = true
		$speech.visible = true
		$chrono.start()
		$MusiqueMenu.play()
