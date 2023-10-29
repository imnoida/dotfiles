# dotfiles

## Installation

### Make symbolic link (for Windows)

Launch cmd with administrator.

```bash
mklink /d %userprofile%\.config %appdata%
```

### Download nerd fonts (JetBrainsMono Nerd Font)

[https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip]

### Setup dotfiles

If you are using PowerShell, by default it will not load commands from the current location.
Replace with `.\dotter`

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
