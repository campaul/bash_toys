function split_extension {
    if [[ "$1" =~ "." ]]; then
        extension="$(cut -d '.' -f 2- <(basename "$1"))"
        filename="${1%.$extension}"
    else
        extension=""
        filename="$1"
    fi
}
