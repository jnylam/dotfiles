function fish_prompt
    echo
    set_color $fish_color_cwd
    echo -n '❯❮ (*❯   '(prompt_pwd)
    echo
    set_color normal
    # echo -n  ' ❯ '
    # echo -n  ' ▶◀▷ '
    echo -n  '~ '
end
