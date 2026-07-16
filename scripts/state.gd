## Virtual base class for all states
## Extend this class and override its methods to implement a state
class_name State extends Node

## Emitted when the state finishes and wants to transition to another state
signal finished(next_state_path: String, data: Dictionary)

## Called by the State Machine when receiving unhandled input events.
func handle_input(_event: InputEvent) -> void:
	pass

## Called by the State Machine on the engine's main loop tick
func update(_delta: float) -> void:
	pass
	
## Called by the State Machine on the engine's physics update tick
func physics_update(_delta: float) -> void:
	pass
	
## Called by the State Machine upon changing the active state. The 'data' parameter
## is a dictionary with arbitrary data the state can use to initialize itself
func enter(previous_state_path: String, data := {}) -> void:
	pass

## Called by the State Machine before changing the active state. Use this function
## to clean up the state
func exit() -> void:
	pass
