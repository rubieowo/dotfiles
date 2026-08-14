#!/usr/bin/env bash

if ! playerctl -p spotify status >/dev/null 2>&1; then
	echo ""
	exit 0
fi


echo "$(playerctl -p spotify metadata --format '{{ artist }} - {{ title }} [{{ duration(position) }}/{{ duration(mpris:length) }}}' 2>/dev/null)    "
