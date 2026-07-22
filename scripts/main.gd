extends Node

var passengers: Array[Passenger]

@onready var entity_root: Node2D = $World/EntityRoot

func _ready() -> void:
	var destination = get_destination()
	print(destination)
	create_passengers(10)
	for passenger in passengers:
		print(passenger.stats)
	pass

func get_destination() -> String:
	# Todo: Create a random destination
	return "Alaska"

func create_passengers(num: int) -> void:
	for i in range(num):
		var passenger = Passenger.new()
		passenger.setup()
		passengers.append(passenger)
		entity_root.add_child(passenger)
	pass
