Set-ExecutionPolicy RemoteSigned
$SEInstPath = "${env:ProgramFiles(x86)}\Server-Eye"
Set-Location $SEInstPath
.\triggerPatchRun.cmd force
Start-Service -Name "SE3Recovery"