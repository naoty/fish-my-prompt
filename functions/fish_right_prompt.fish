function fish_right_prompt
    set -l pwd_info (pwd_info "/")
    set -l color (set_color $fish_color_normal)

    if git_is_repo
        set -l git_color (set_color green)
        set -l branch_name (git_branch_name)

        if git_is_touched
            set git_color (set_color yellow)
        end

        if git_is_dirty
            set git_color (set_color red)
        end

        echo "[$git_color$branch_name$color] "
    end

    echo "["

    if pwd_is_home
        echo "~/"
    else
        echo "/"
    end

    if test ! -z "$pwd_info[2]"
        echo "$pwd_info[2]/"
    end

    if test ! -z "$pwd_info[1]"
        echo "$pwd_info[1]"
    end

    echo "]"
end
