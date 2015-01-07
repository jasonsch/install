function prompt
{
    # Set Window Title
    $host.UI.RawUI.WindowTitle = "$ENV:USERNAME@$ENV:COMPUTERNAME - $(Get-Location)"

    # Set Prompt
    Write-Host "$ENV:USERNAME@$ENV:COMPUTERNAME" -NoNewline -ForegroundColor Yellow
    Write-Host " :: " -NoNewline -ForegroundColor DarkGray
    Write-Host $(get-location) -ForegroundColor Green
}

# exit with Ctrl+D
iex "function $([char]4) { exit }"
