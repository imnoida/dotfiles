# dotfiles

## Installation

### Download nerd fonts (JetBrainsMono Nerd Font)

[https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip]

### Setup dotfiles

If you are using PowerShell, by default it will not load commands from the current location.
Replace with `.\dotter`

1. Edit powershell profile
Location `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
Append this command `ls ~\.config\powershell\*.ps1|%{&$_}`
1. Clone this repository
`git clone https://github.com/imnoida/dotfiles.git`
1. Rename global.toml (e.g. bak_global.toml)
1. Create default files
`dotter init`
1. Overwrite the newly created global.toml with the renamed global.toml (e.g. bak_global.toml).
1. Make sure there are no errors.
`dotter deploy -d`
1. Let's deploy (Back up your own files if necessary as they may be overwritten)
`dotter deploy -f`

### How to undeploy?

`dotter undeploy -y`

### app
- vscode
- nushell
- neovim
- powershell
- wezterm

### commandline
- starship
- fzf
- zoxide
- ripgrep
- scoop-completion