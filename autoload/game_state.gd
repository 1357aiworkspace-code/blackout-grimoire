extends Node

enum ConditionState { SOBER, DRUNK, HUNGOVER_PREVIEW }

var player_condition: int = ConditionState.SOBER
var notes_burned: bool = false
var has_fire_lance: bool = false
var has_wizards_brandy: bool = false
var unlocked_triple_fireball: bool = false
var cleared_first_combat: bool = false
var spoke_to_quill: bool = false

func set_condition(new_condition: int) -> void:
	player_condition = new_condition

func is_drunk() -> bool:
	return player_condition == ConditionState.DRUNK

func is_sober() -> bool:
	return player_condition == ConditionState.SOBER
