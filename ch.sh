#!/bin/bash

stringcolor="#ffffff"
function get_layout_icon {
	layout_icon="󰌌 "
}
function get_current_layout {
	xkblayout-state print %n
}
function show_layout_notif {
	get_layout_icon
	current_layout=$(get_current_layout)
	dunstify -t 1000 -r 2593 -u normal "$layout_icon $current_layout"
}

show_layout_notif
