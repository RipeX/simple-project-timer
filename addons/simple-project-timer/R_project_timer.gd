tool
extends EditorPlugin

var widget

func _enter_tree():
	widget = preload("res://addons/simple-project-timer/R_timer_widget.tscn").instance()
	add_control_to_container(CONTAINER_TOOLBAR, widget)
	widget.get_parent().move_child(widget, widget.get_index() - 3)
	widget.initialize()

func _exit_tree():
	widget.queue_free()

