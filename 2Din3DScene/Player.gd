extends KinematicBody2D

export var player_speed : float = 1000

onready var _desired_position : Vector2 = global_position

func _ready() -> void:
	set_process_input(true)
	set_process_unhandled_input(true)
	set_process_unhandled_key_input(true)

# getting called each frame all is good
func _process(delta: float) -> void:
	var _x : float = Input.get_action_strength("player_move_right") - Input.get_action_strength("player_move_left")
	var _y : float = Input.get_action_strength("player_move_down") - Input.get_action_strength("player_move_up")
	global_position += Vector2(_x, _y) * player_speed * delta

#not getting called
func _input(event: InputEvent) -> void:
	print(str("Handled : ", event))

#not getting called
func _unhandled_input(event: InputEvent) -> void:
	print(str("Unhandled : ", event))

#not getting called
func _unhandled_key_input(event: InputEventKey) -> void:
	print(str("Unhandled Key : ", event))
	
