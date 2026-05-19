# Simulate process injection attack using PowerShell

$Payload = "calc.exe"

Write-Host "[*] Starting host process (cmd.exe)..." -ForegroundColor Yellow
$process = Start-Process "cmd.exe" -WindowStyle Hidden -PassThru

Start-Sleep -Seconds 2

Write-Host "[*] Simulating process injection by spawning $Payload from the host process..." -ForegroundColor Yellow
$process | ForEach-Object { 
    Start-Process $Payload -ArgumentList $_.Id
}

Start-Sleep -Seconds 2
Write-Host "[*] Process Injection attack simulation executed. Cleaning up host process..." -ForegroundColor Green
Stop-Process -Id $process.Id -Force -ErrorAction SilentlyContinue
