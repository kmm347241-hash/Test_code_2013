extends Area2D

export var speed = 400 # 픽셀수/시간
var screen_size # 게임창어쩌구

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	pass # Replace with function body.

func _process(delta):
	var velocity = Vector2.ZERO # 플레이어 무브먼트 백터
	if Input.is_action_just_pressed("move_right"):
		velocity.x +=1
	if Input.is_action_just_pressed("move_left"):
		velocity.x -=1
	if Input.is_action_just_pressed("move_down"):
		velocity.y +=1
	if Input.is_action_just_pressed("move_up"):
		velocity.y -=1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()	
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
