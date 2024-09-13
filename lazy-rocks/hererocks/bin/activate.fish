if functions -q deactivate-lua
    deactivate-lua
end

function deactivate-lua
    if test -x '/home/pratham/.local/share/nvim/lazy-rocks/hererocks/bin/lua'
        eval ('/home/pratham/.local/share/nvim/lazy-rocks/hererocks/bin/lua' '/home/pratham/.local/share/nvim/lazy-rocks/hererocks/bin/get_deactivated_path.lua' --fish)
    end

    functions -e deactivate-lua
end

set -gx PATH '/home/pratham/.local/share/nvim/lazy-rocks/hererocks/bin' $PATH
