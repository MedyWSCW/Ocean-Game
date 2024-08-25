extends CharacterBody2D

@export var group_name : String

var positions: Array
var temp_positions : Array
var current_positions : Marker2D

var directions : Vector2 = Vector2.ZERO

func _ready():
	posistions = get_tree()

