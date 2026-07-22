class_name Passenger
extends Node

@export var stats : PassengerStats

func setup() -> void:
	stats = PassengerStats.new()
	stats.name = "Test Name" + str(randi_range(0,10))
	stats.age = randi_range(18,80)
	stats.temperament = "Random Temperament"
