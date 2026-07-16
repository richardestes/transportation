extends Node

func _ready() -> void:
	var destination = get_destination()
	print(destination)
	var passengers = get_passengers(5)
	print(passengers)
	pass

func get_destination() -> String:
	return "Alaska"

func get_passengers(num: int) -> Dictionary:
	var passengers: Dictionary
	for i in range(num):
		var name: String = "Name" + str(i)
		var age = randi_range(18, 80)
		passengers.set(name, age)
	return passengers
