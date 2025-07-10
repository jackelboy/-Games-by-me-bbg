extends Node2D

const speed = 60
@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castleft: RayCast2D = $RayCastleft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


var direction = 1
func _ready():
	animated_sprite.play("slimybirth")
	await animated_sprite.animation_finished
	animated_sprite.play("default")

func _process(delta):
	if ray_castright.is_colliding():
		direction = -1
		animated_sprite.flip_h = true

	if ray_castleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false

	position.x += speed * delta * direction
