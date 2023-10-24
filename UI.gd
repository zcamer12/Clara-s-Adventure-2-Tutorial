extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	note_trigger.connect("show_note", self, "on_show_note")

func on_show_note():
	$Panel.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
export(NodePath) onready var note_trigger = get_node(note_trigger) as Node
