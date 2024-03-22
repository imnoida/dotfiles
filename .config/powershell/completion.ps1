# scoop-completion
# enable completion in current shell, use absolute path because PowerShell Core not respect $env:PSModulePath
Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"
# create profile if not exist
if (!(Test-Path $profile)) { New-Item -Path $profile -ItemType "file" -Force }

# WinGet Command Line Tab Completion
# https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md
# ( https://astherier.com/blog/2021/08/winget-usage-2/ )
Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}

# github cli completion
Invoke-Expression -Command $(gh completion -s powershell | Out-String)
