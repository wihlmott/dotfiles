# Aliases
Set-Alias cat bat

# Better navigation
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# FZF
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# FZF helpers
function ff {
    nvim (fd | fzf)
}

function cdff {
    cd (fd -t d | fzf)
}

# Remove default ls
Remove-Item alias:ls -ErrorAction SilentlyContinue
# Modern ls
function ls {
    eza --icons --group-directories-first --git
}

function ll {
    eza -l --icons --group-directories-first --git
}
