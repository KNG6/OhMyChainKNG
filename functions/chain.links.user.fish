function chain.links.user
        set -l suffix ""
        if test -f $SSH_CONNECTION
                set suffix ""
        else
                set suffix "@$hostname"
        end
        if test (id -u $USER) -eq 0
                return
        else
                echo cyan
                echo "$USER$suffix"
        end
end
