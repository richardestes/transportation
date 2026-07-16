class_name GameState extends State

const STATE_ONE = "State One"
const STATE_TWO = "State Two"
const STATE_THREE = "State Three"

var player: Player

func _ready() -> void:
	await owner.ready
	player = owner as Player
	assert(player != null, "The GameState state type must be used only in the
	player scene. It needs the owner to be a Player node.")
