# Milestone 1 — Walkable Room

Branch: `agent/milestone-1-walkable-room`

## What this branch adds

- Godot scaffold files for the first runnable prototype branch.
- Runtime WASD input setup in `scripts/player/player_controller.gd`.
- Mouse look and mouse capture/release behavior.
- A simple enclosed `PrototypeTower.tscn` test room with floor, four walls, collision, lighting, and a visible marker cube.
- Basic HUD and dialogue scaffold files.

## Current limitation

`project.godot` was not added by the GitHub connector during this push. Keep using your local `project.godot` for now, or copy the one from the local scaffold zip. The scene/script files are what matter for this milestone.

## Test target

Run `scenes/main/Main.tscn` with the existing local project config.

Expected:

- Player spawns in an enclosed room.
- WASD moves.
- Mouse looks.
- Escape releases mouse.
- Clicking the game window captures mouse again.
