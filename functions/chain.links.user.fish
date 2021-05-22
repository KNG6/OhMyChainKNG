function chain.links.user
        set -l suffix ""
        if test -f $SSH_CONNECTION
                set suffix ""
        else
                set suffix "@$hostname"
        end
        echo cyan
        echo "$USER$suffix"
end