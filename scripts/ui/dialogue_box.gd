extends CanvasLayer

@onready var panel: Panel = $Panel
@onready var speaker_name: Label = $Panel/SpeakerName
@onready var line_text: Label = $Panel/LineText

func _ready() -> void:
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_finished.connect(_on_dialogue_finished)

func _input(event: InputEvent) -> void:
	if panel.visible and event.is_action_pressed("ui_accept"):
		DialogueManager.continue_dialogue()

func _on_dialogue_started(speaker: String, line: String) -> void:
	panel.visible = true
	speaker_name.text = speaker
	line_text.text = line

func _on_dialogue_finished() -> void:
	panel.visible = false
