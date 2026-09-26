#!/usr/bin/env bash

dict=(" " "▂" "▃" "▄" "▅" "▆" "▇" "█")

cava -p ~/.config/cava/config | while read -r line; do
    lines=$(echo "$line" | tr ';' ' ')
    output=""
    has_sound=0

    for val in $lines; do
        if [ "$val" -gt 0 ]; then
            has_sound=1
        fi
        if [ "$val" -gt 7 ]; then val=7; fi
        if [ "$val" -lt 0 ]; then val=0; fi
        output="${output}${dict[$val]}"
    done

    # Se houver som, adiciona o separador na ponta
    echo "${output}  |"
done