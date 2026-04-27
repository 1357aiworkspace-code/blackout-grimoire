extends Node

signal dialogue_started(speaker, line)
signal dialogue_finished

var active_lines: Array = []
var active_index: int = -1

func start_lines(lines: Array) -> void:
	active_lines = lines
	active_index = 0
	_emit_current()

func continue_dialogue() -> void:
	if active_index == -1:
		return
	active_index += 1
	if active_index >= active_lines.size():
		active_index = -1
		emit_signal("dialogue_finished")
		return
	_emit_current()

func _emit_current() -> void:
	if active_index >= 0 and active_index < active_lines.size():
		var entry = active_lines[active_index]
		emit_signal("dialogue_started", entry.get("speaker", "Unknown"), entry.get("line", ""))
