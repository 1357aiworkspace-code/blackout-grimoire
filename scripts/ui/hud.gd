extends CanvasLayer

@onready var condition_label: Label = $ConditionLabel
@onready var objective_text: Label = $ObjectiveText
@onready var interaction_prompt: Label = $InteractionPrompt
@onready var status_popup: Label = $StatusPopup
@onready var drunk_vignette: ColorRect = $DrunkVignetteOverlay

func _process(_delta: float) -> void:
	objective_text.text = "Objective: " + ObjectiveManager.current_objective
	match GameState.player_condition:
		GameState.ConditionState.SOBER:
			condition_label.text = "Condition: SOBER"
			drunk_vignette.color.a = 0.0
		GameState.ConditionState.DRUNK:
			condition_label.text = "Condition: DRUNK"
			drunk_vignette.color.a = 0.18
		GameState.ConditionState.HUNGOVER_PREVIEW:
			condition_label.text = "Condition: HUNGOVER"
			drunk_vignette.color.a = 0.08

func set_interaction_prompt(text: String) -> void:
	interaction_prompt.text = text

func set_status_popup(text: String) -> void:
	status_popup.text = text
