cdls() {
        local dir="$1"
        local dir="${dir:=$HOME}"
        if [[ -d "$dir" ]]; then
                cd "$dir" >/dev/null; ls -aCF --color=always
        else
                echo "bash: cdls: $dir: Directory not found"
        fi
}

alias cd="cdls"
