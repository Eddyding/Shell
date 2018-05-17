# ! /bin/bash
lsc() (
    [[ -z $1 ]] && set .
    for path
    do
        [[ -d $path ]] || { ls -CF --color "$path"; echo; continue; }
        (( $#  > 1 )) && printf '%s:\n' "$path" 
        find "$path" -maxdepth 1 -mindepth 1 ! -iname '.*' -printf "%y %p\0" |
        while IFS= read -d '' -r entry
        do
            ftype="${entry:0:1}"
            fname="${entry:2}"
            [[ $ftype == f && -x $fname ]] && ftype=x
            printf "$ftype $fname\0"
        done | sort -z -k1 | 
        sed -z 's/^. //; s:.*/::' |
        xargs -0 bash -c 'cd "$0"; ls -CFUd --color -1 "$@"' "$path"
        (( $#  > 1 )) && echo
    done
)

lsc
