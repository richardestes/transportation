extends Node

@onready var button: Button = $HudLayer/HudRoot/Background/HSplitContainer/PanelContainer/VBoxContainer/Button
@onready var label: Label = $HudLayer/HudRoot/Background/HSplitContainer/VBoxContainer/Label

func _ready() -> void:
	button.pressed.connect(_button_pressed)

func _button_pressed() -> void:
	label.text = str("Button Pressed")

# TODO: Implement state machine
# https://www.gdquest.com/tutorial/godot/design-patterns/finite-state-machine/
