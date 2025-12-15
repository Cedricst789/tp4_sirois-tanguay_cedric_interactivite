extends Node2D

@export var key_name: String = "cle_jaune"
signal key_collected(key_name)

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == "Player":
		body._on_key_collected(key_name)
		print(" Le joueur touche la clé :", key_name)
		queue_free() 
