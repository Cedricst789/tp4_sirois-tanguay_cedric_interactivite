extends CharacterBody2D
#vitesse du joueur
const speed = 350
var direction = "none"
#pour les collision
func _ready():
	add_to_group("player")
#pour le mouvement
func _physics_process(delta):
	player_movement(delta)
	#le movement en entier
func player_movement(delta):
	
	if Input.is_action_pressed("ui_right"):
		direction = "right"
		play_anim(1)
		velocity.x = speed
		velocity.y = 0
		
	elif Input.is_action_pressed("ui_left"):
		direction = "left"
		play_anim(1)
		velocity.x = -speed
		velocity.y = 0
		
	elif Input.is_action_pressed("ui_down"):
		direction = "down"
		play_anim(1)
		velocity.y = speed
		velocity.x = 0
		
	elif Input.is_action_pressed("ui_up"):
		direction = "up"
		play_anim(1)
		velocity.y = -speed
		velocity.x = 0
	else:
		play_anim(0)
		velocity.x = 0
		velocity.y = 0
	move_and_slide()
	#Animation du movement
func play_anim(movement):
	var anim = $AnimatedSprite2D
	var direc = direction
	
	if direc == "right":
		anim.flip_h = false
		if movement == 1:
			anim.play("walk")
		elif movement == 0:
			anim.play("idle")
			
	if direc == "left":
		anim.flip_h = true
		if movement == 1:
			anim.play("walk")
		elif movement == 0:
			anim.play("idle")
			
	if direc == "down":
		anim.flip_h = false
		if movement == 1:
			anim.play("walk")
		elif movement == 0:
			anim.play("idle")
			
	if direc == "up":
		anim.flip_h = true
		if movement == 1:
			anim.play("walk")
		elif movement == 0:
			anim.play("idle")
