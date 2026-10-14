for brew in /opt/homebrew/bin/brew /usr/local/bin/brew /home/linuxbrew/.linuxbrew/bin/brew
    if test -x $brew
        $brew shellenv | source
        break
    end
end

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/dmn58364/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
