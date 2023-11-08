# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Setup Starship
Invoke-Expression (&starship init powershell)

# Setup zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
