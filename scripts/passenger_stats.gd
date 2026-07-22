class_name PassengerStats
extends Resource

@export var name : String
@export var age : int
@export var temperament : String

func _init(p_name = "", p_age = 0, p_temperament = ""):
	name = p_name
	age = p_age
	temperament = p_temperament

func _to_string() -> String:
	return "Name: %s, Age: %d, Temperament: %s" % [name, age, temperament]
