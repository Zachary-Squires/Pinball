extends RigidBody3D

@export var rotatePower : float
@export var hJoint : HingeJoint3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("up"):
		hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, rotatePower+10)
		hJoint.set_param(HingeJoint3D.PARAM_MOTOR_MAX_IMPULSE, rotatePower+10)
	else:
		hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, -rotatePower)
		hJoint.set_param(HingeJoint3D.PARAM_MOTOR_MAX_IMPULSE, rotatePower)
	pass
