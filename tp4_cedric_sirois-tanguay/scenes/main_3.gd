extends Node2D

@onready var dialogue_label = $DialogueLabel
@onready var next_button = $NextButton

var dialogue_index := 0
var button_press_count := 0
var lever1_active := false
var lever2_active := false

var dialogues = [
	"Ah… te voilà enfin.",
	"Es-tu prêt pour ton dernier défi?",
	"Veux-tu sauver ta femme ou ton fils ?",
	"HAHAHA !",
	"...",
	"..",
	"...",
	".",
	"..",
	"...",
	"...",
	".",
	"..",
	"...",
	"..",
	"...",
	"...",
	"...",
	"..",
	".",
	"...",
	"..",
	"...",
	".",
	"..",
	"...",
	"...",
	".",
	"..",
	"...",
	"..",
	"...",
	"...",
	"...",
	"..",
	".",
	"...",
	"..",
	".",
	"..",
	"...",
	"..",
	".",
	"Mais qu'es que tu fais?",
	"....",
	"...",
	"..",
	"...",
	".",
	"..",
	"...",
	"...",
	".",
	"..",
	"...",
	"Arrête",
	"...",
	"...",
	"...",
	"..",
	".",
	"...",
	"Aaaaahhh",
	"...",
	".",
	"..",
	"...",
	"...",
	".",
	"..",
	"...",
	"..",
	"...",
	"ARRÊTE",
	"...",
	"..",
	".",
	"...",
	"..",
	".",
	"..",
	"...",
	"...",
	"STOOOOP",
	"...",
	"..",
	"...",
	".",
	"...",
	".",
	"...",
	".",
	"..",
	".",
	"...",
	"NOOOOOOOONN",
	".",
	"..",
	".",
	"Bravo Micky tu es content ?",
]

func _ready():
	dialogue_label.text = dialogues[dialogue_index]

func _unhandled_input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE:
		_on_next_button_pressed()

func _on_next_button_pressed():
	dialogue_index += 1
	button_press_count += 1
	
	check_conditions()
	
	if dialogue_index < dialogues.size():
		dialogue_label.text = dialogues[dialogue_index]

func check_conditions():
	if button_press_count >= 100 and lever1_active and lever2_active:
		$drapeau_3.visible = true


func _on_levier_femme_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player") and not lever1_active:
		lever1_active = true
		$levier_femme/levier_femme.frame = 1
		$levier_femme/levier_activer.play()
		check_conditions()
		

func _on_levier_enfant_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player") and not lever2_active:
		lever2_active = true
		$levier_enfant/levier_enfant.frame = 1
		$levier_enfant/levier_activer.play()
		check_conditions()
