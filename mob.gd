extends RigidBody2D


func _ready() -> void:
	var sprite_frames: SpriteFrames = $AnimatedSprite2D.sprite_frames
	var mob_types: Array = sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])


func _process(delta) -> void:
	pass


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
