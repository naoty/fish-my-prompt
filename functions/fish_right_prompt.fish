function fish_right_prompt
    set -l pwd_info (pwd_info "/")

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
