extends Label

var temps = 0.0

func _process(delta: float) -> void:
	if $"../chrono".is_stopped() == false:
		temps += delta
		text = str(round(2))
