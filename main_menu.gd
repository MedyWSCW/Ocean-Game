class_name MainMenu
extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/Exit_Button as Button  # Fixed extra space in the path
@onready var start_level = preload("res://node_2d.tscn")

func _ready():
	# Connect the pressed signal to the correct functions
	start_button.button_down.connect("on_start_pressed")
	exit_button.button_down.connect("button_exit_pressed")

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_exit_pressed() -> void:
	get_tree().quit()
