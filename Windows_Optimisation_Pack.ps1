$Host.UI.RawUI.WindowTitle = "Windows_Optimisation_Pack"
$WindowsVersion = (Get-WmiObject -class Win32_OperatingSystem).Caption
if (!(Test-Path $env:temp\Windows_Optimisation_Pack)) {New-Item -Path $env:temp\Windows_Optimisation_Pack -ItemType Directory}
$ScriptFolder = "$env:temp\Windows_Optimisation_Pack"

function WindowsTweaks_Services{
Stop-Service "WpcMonSvc"
Stop-Service "SharedRealitySvc"
Stop-Service "Fax"
Stop-Service "autotimesvc"
Stop-Service "wisvc"
Stop-Service "SDRSVC"
Stop-Service "MixedRealityOpenXRSvc"
Stop-Service "WalletService"
Stop-Service "SmsRouter"
Stop-Service "SharedAccess"
Stop-Service "MapsBroker"
Stop-Service "PhoneSvc"
Stop-Service "ScDeviceEnum"
Stop-Service "icssvc"
Stop-Service "edgeupdatem"
Stop-Service "edgeupdate"
Stop-Service "MicrosoftEdgeElevationService"
Stop-Service "RetailDemo"
Stop-Service "MessagingService"
Stop-Service "PimIndexMaintenanceSvc"
Stop-Service "OneSyncSvc"
Stop-Service "UnistoreSvc"
Stop-Service "DiagTrack"
Stop-Service "dmwappushservice"
Stop-Service "diagnosticshub.standardcollector.service"
Stop-Service "diagsvc"
Stop-Service "WerSvc" 
Stop-Service "wercplsupport" 
Set-Service "WpcMonSvc" -StartupType Disabled
Set-Service "SharedRealitySvc" -StartupType Disabled
Set-Service "Fax" -StartupType Disabled
Set-Service "autotimesvc" -StartupType Disabled
Set-Service "wisvc" -StartupType Disabled
Set-Service "SDRSVC" -StartupType Disabled
Set-Service "MixedRealityOpenXRSvc" -StartupType Disabled
Set-Service "WalletService" -StartupType Disabled
Set-Service "SmsRouter" -StartupType Disabled
Set-Service "SharedAccess" -StartupType Disabled
Set-Service "MapsBroker" -StartupType Disabled
Set-Service "PhoneSvc" -StartupType Disabled
Set-Service "ScDeviceEnum" -StartupType Disabled
Set-Service "TabletInputService" -StartupType Disabled
Set-Service "icssvc" -StartupType Disabled
Set-Service "edgeupdatem" -StartupType Disabled
Set-Service "edgeupdate" -StartupType Disabled
Set-Service "MicrosoftEdgeElevationService" -StartupType Disabled
Set-Service "RetailDemo" -StartupType Disabled
Set-Service "MessagingService" -StartupType Disabled 
Set-Service "PimIndexMaintenanceSvc" -StartupType Disabled 
Set-Service "OneSyncSvc" -StartupType Disabled
Set-Service "UnistoreSvc" -StartupType Disabled
Set-Service "DiagTrack" -StartupType Disabled
Set-Service "dmwappushservice" -StartupType Disabled
Set-Service "diagnosticshub.standardcollector.service" -StartupType Disabled
Set-Service "diagsvc" -StartupType Disabled 
Set-Service "WerSvc" -StartupType Disabled
Set-Service "wercplsupport" -StartupType Disabled }

function WindowsTweaks_Registry{
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "SmoothMouseXCurve" ([byte[]](0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xCC, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00,
0x80, 0x99, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x66, 0x26, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x33, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00))
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "SmoothMouseYCurve" ([byte[]](0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00))
New-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSensitivity" -Type "DWORD" -Value 10 -Force
New-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Type "DWORD" -Value 0 -Force
New-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseTrails" -Type "DWORD" -Value 0 -Force
New-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Type "DWORD" -Value 0 -Force
New-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Type "DWORD" -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" -Name "Value" -Value "Deny" -Force
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\DiagTrack" -Name "Start" -Type "DWORD" -Value 4 -Force 
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\dmwappushservice" -Name "Start" -Type "DWORD" -Value 4 -Force 
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" -Name "Start" -Type "DWORD" -Value 4 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Value 0 -Type "DWORD" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type "DWORD" -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type "DWORD" -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "LimitEnhancedDiagnosticDataWindowsAnalytics" -Type "DWORD" -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type "DWORD" -Value 0 -Force 
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" -Name "HideInsiderPage" -Type "DWORD" -Value "1" -Force }
        
function WindowsTweaks_Tasks{
Get-ScheduledTask -TaskName Consolidator | Disable-ScheduledTask -ErrorAction SilentlyContinue
Get-ScheduledTask -TaskName UsbCeip | Disable-ScheduledTask -ErrorAction SilentlyContinue
Get-ScheduledTask -TaskName DmClient | Disable-ScheduledTask -ErrorAction SilentlyContinue
Get-ScheduledTask -TaskName DmClientOnScenarioDownload | Disable-ScheduledTask -ErrorAction SilentlyContinue
Get-ScheduledTask -TaskPath "\Microsoft\Windows\Customer Experience Improvement Program\" | Disable-ScheduledTask
schtasks /change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
schtasks /change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
schtasks /change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE }
function WindowsTweaks_Features{
dism /Online /Disable-Feature /FeatureName:"TelnetClient" /NoRestart
dism /Online /Disable-Feature /FeatureName:"WCF-TCP-PortSharing45" /NoRestart
dism /Online /Disable-Feature /FeatureName:"SmbDirect" /NoRestart
dism /Online /Disable-Feature /FeatureName:"TFTP" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-All" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Management-Clients" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Tools-All" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Management-PowerShell" /NoRestart }
            
function WindowsTweaks_Index{
Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='C:'" | Set-WmiInstance -Arguments @{IndexingEnabled=$False}
Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='D:'" | Set-WmiInstance -Arguments @{IndexingEnabled=$False}
Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='E:'" | Set-WmiInstance -Arguments @{IndexingEnabled=$False}
Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='F:'" | Set-WmiInstance -Arguments @{IndexingEnabled=$False} }

function TakeOwnership{
New-Item "HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership" -force -ea SilentlyContinue
New-Item "HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership\command" -force -ea SilentlyContinue
New-Item "HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership" -force -ea SilentlyContinue
New-Item "HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership\command" -force -ea SilentlyContinue
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership' -Name '(default)' -Value 'Take Ownership' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership' -Name 'HasLUAShield' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership' -Name 'NoWorkingDirectory' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership' -Name 'Position' -Value 'middle' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership\command' -Name '(default)' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList ''/c takeown /f \"%1\" && icacls \"%1\" /grant *S-1-3-4:F /c /l'' -Verb runAs' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\*\shell\TakeOwnership\command' -Name 'IsolatedCommand' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList ''/c takeown /f \"%1\" && icacls \"%1\" /grant *S-1-3-4:F /c /l'' -Verb runAs' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership' -Name '(default)' -Value 'Take Ownership' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership' -Name 'AppliesTo' -Value 'NOT (System.ItemPathDisplay:="C:\Users" OR System.ItemPathDisplay:="C:\ProgramData" OR System.ItemPathDisplay:="C:\Windows" OR System.ItemPathDisplay:="C:\Windows\System32" OR System.ItemPathDisplay:="C:\Program Files" OR System.ItemPathDisplay:="C:\Program Files (x86)")' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership' -Name 'HasLUAShield' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership' -Name 'NoWorkingDirectory' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership' -Name 'Position' -Value 'middle' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership\command' -Name '(default)' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList ''/c takeown /f \"%1\" /r /d y && icacls \"%1\" /grant *S-1-3-4:F /c /l /q'' -Verb runAs' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\Directory\shell\TakeOwnership\command' -Name 'IsolatedCommand' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList ''/c takeown /f \"%1\" /r /d y && icacls \"%1\" /grant *S-1-3-4:F /c /l /q'' -Verb runAs' -PropertyType String -Force -ea SilentlyContinue;}
                
function SophiaScript{
Clear-Host
IF($WindowsVersion -eq "Microsoft Windows 11 Home" -Or $WindowsVersion -eq "Microsoft Windows 11 Pro") {
Start-BitsTransfer -Source "https://github.com/farag2/Sophia-Script-for-Windows/releases/download/6.2.3/Sophia.Script.for.Windows.11.v6.2.3.zip" -Destination $env:temp\Sophia.zip
Expand-Archive $env:temp\Sophia.zip $env:temp -force
Move-Item -Path $env:temp\"Sophia_Script*" -Destination $ScriptFolder\Sophia_Script\
Start-BitsTransfer -Source "https://raw.githubusercontent.com/Marvin700/Windows_Optimisation_Pack/main/config/Sophia_Win11.ps1" -Destination "$ScriptFolder\Sophia_Script\Sophia.ps1" }
else { IF($WindowsVersion -eq "Microsoft Windows 10 Home" -Or $WindowsVersion -eq "Microsoft Windows 10 Pro") {
Start-BitsTransfer -Source "https://github.com/farag2/Sophia-Script-for-Windows/releases/download/6.2.3/Sophia.Script.for.Windows.10.v5.14.3.zip" -Destination $env:temp\Sophia.zip
Expand-Archive $env:temp\Sophia.zip $env:temp -force
Move-Item -Path $env:temp\"Sophia_Script*" -Destination $ScriptFolder\Sophia_Script\
Start-BitsTransfer -Source "https://raw.githubusercontent.com/Marvin700/Windows_Optimisation_Pack/main/config/Sophia_Win10.ps1" -Destination "$ScriptFolder\Sophia_Script\Sophia.ps1" } }
Powershell.exe -executionpolicy Bypass $ScriptFolder\Sophia_Script\Sophia.ps1
REG ADD "HKLM\SOFTWARE\Windows_Optimisation_Pack\" /V "Sophia_Script" /T REG_DWORD /D 1 /F } 

function ooShutup{
Start-BitsTransfer -Source "https://raw.githubusercontent.com/Marvin700/Windows_Optimisation_Pack/main/config/ooshutup10.cfg" -Destination "$ScriptFolder\ooshutup10.cfg"
Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination $ScriptFolder\OOSU10.exe
Set-Location $ScriptFolder
.\OOSU10.exe ooshutup10.cfg /quiet }

function SystemPoint{
vssadmin delete shadows /all /quiet
Enable-ComputerRestore -Drive "C:\"
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V "SystemRestorePointCreationFrequency" /T REG_DWORD /D 0 /F
Checkpoint-Computer -Description "Windows_Optimisation_Pack" -RestorePointType MODIFY_SETTINGS
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V "SystemRestorePointCreationFrequency" /F }

function Tests{
IF(!($WindowsVersion -eq "Microsoft Windows 11 Home" -Or $WindowsVersion -eq "Microsoft Windows 11 Pro")) {
IF(!($WindowsVersion -eq "Microsoft Windows 10 Home" -Or $WindowsVersion -eq "Microsoft Windows 10 Pro")) {
Write-Warning " No supported operating system! Windows 10 or Windows 11 required"
Write-Warning " The script will be closed in 20 seconds"
Start-Sleep 20;exit}} 
if ((Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\RebootPending")){
Write-Warning " Reboot Pending !"
Write-Warning " The script will be closed in 20 seconds"
Start-Sleep 20;exit}
If (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")){
Write-Warning " No admin rights available"
Write-Warning " The script will be closed in 20 seconds"
Start-Sleep 20;exit} 
if ((Test-Path "HKLM:\SOFTWARE\Windows_Optimisation_Pack")){
Write-Warning " The system has already been optimised by the Windows_Optimisation_Pack"
"Do you really want to continue?"
$weitermachen = Read-Host "Ja oder Nein ?"
IF(!($weitermachen -eq "Ja" -Or $weitermachen -eq "j" -Or $weitermachen -eq "JA" -Or $weitermachen -eq "y" -Or $weitermachen -eq "yes")) {         
Write-Warning " The script will be closed in 20 seconds"
Start-Sleep 20;exit}} }

function Autoruns{
Start-BitsTransfer -Source "https://download.sysinternals.com/files/Autoruns.zip" -Destination $env:temp\Autoruns.zip
Expand-Archive $env:temp\Autoruns.zip  $env:temp
Start-Process $env:temp\Autoruns64.exe }

function WindowsCleanup{
Clear-Host
gpupdate.exe /force 
Get-ChildItem -Path $ENV:userprofile\AppData\Local\Temp *.* -Recurse | Remove-Item -Force -Recurse 
Get-ChildItem -Path $env:windir\Prefetch *.* -Recurse | Remove-Item -Force -Recurse 
Get-ChildItem -Path $env:ProgramData\Microsoft\Windows\RetailDemo\* -Recurse -Force -ErrorAction SilentlyContinue | Remove-Item -Recurse 
Remove-Item -Path $env:windir\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
Clear-BCCache -Force -ErrorAction SilentlyContinue
lodctr /r
lodctr /r
Cleanmgr /sagerun:65535
Cleanmgr /sagerun:1221 }
          
function Runtime{
winget source update
winget install --id=Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements
winget install --id=Microsoft.VCRedist.2015+.x86 --exact --accept-source-agreements
winget install --id=Microsoft.dotNetFramework --exact --accept-source-agreements
winget install --id=Microsoft.DotNet.DesktopRuntime.6 --architecture x64 --exact --accept

function AutoActions{
Start-BitsTransfer -Source "https://github.com/Codectory/AutoActions/releases/download/1.9.19/Release_AutoActions_1.9.19_x64.zip" -Destination $env:temp\AutoActions.zip 
Expand-Archive $env:temp\AutoActions.zip "C:\Program Files\AutoActions" -force
Remove-Item -Path $env:temp\AutoActions.zip  -Force -Recurse
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\AutoActions.lnk")
$Shortcut.TargetPath = "C:\Program Files\AutoActions\AutoActions.exe"
$Shortcut.Save() }
    
function Controller{
Start-BitsTransfer -Source "https://github.com/Ryochan7/DS4Windows/releases/download/v3.1.9/DS4Windows_3.1.9_x64.zip" -Destination "$env:temp\DS4Windows.zip "
Expand-Archive $env:temp\DS4Windows.zip "C:\Program Files\" -force
Remove-Item -Path $env:temp\DS4Windows.zip  -Force -Recurse
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Controller.lnk")
$Shortcut.TargetPath = "C:\Program Files\DS4Windows\DS4Windows.exe"
$Shortcut.Save() }
    
function Process_Lasso{
Start-BitsTransfer -Source "https://dl.bitsum.com/files/processlassosetup64.exe" -Destination $env:temp\ProcesslassoSetup64.exe
Start-Process -FilePath "$env:temp\ProcesslassoSetup64.exe" -ArgumentList "/S /language=German" }t-source-agreements
winget install --id=Microsoft.DotNet.DesktopRuntime.6 --architecture x86 --exact --accept-source-agreements
winget install --id=Microsoft.DirectX --exact --accept-source-agreements }

function HDD_Name{Label C: Windows}

function Winrar{winget install --id=RARLab.WinRAR --exact --accept-source-agreements}

function Finish{
REG ADD "HKLM\SOFTWARE\Windows_Optimisation_Pack\" /V "Successful" /T REG_DWORD /D 1 /F
Clear-Host
" Your system has been successfully optimised by the Windows_Optimisation_Pack"
""
Write-Warning " The computer will restart automatically in 60 seconds !!!!"
Start-Sleep 60
Restart-Computer }

function GUI {
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
$handler_button_Click= {   
if ($BOX_SophiaScript.Checked)                {$SophiaScript = "true"}    
if ($BOX_ooShutup.Checked)                    {$ooShutup = "true"}    
if ($BOX_WindowsTweaks_Registry.Checked)      {$WindowsTweaks_Registry = "true"}    
if ($BOX_WindowsTweaks_Tasks.Checked)         {$WindowsTweaks_Tasks = "true"}       
if ($BOX_WindowsTweaks_Features.Checked)      {$WindowsTweaks_Features = "true"}    
if ($BOX_WindowsTweaks_Services.Checked)      {$WindowsTweaks_Services = "true"}    
if ($BOX_Runtime.Checked)       {$Runtime = "true"}    
if ($BOX_TakeOwnership.Checked)               {$TakeOwnership = "true"}    
if ($BOX_Winrar.Checked)                      {$Winrar = "true"}    
if ($BOX_AutoActions.Checked)                 {$AutoActions = "true"}    
if ($BOX_Controller.Checked)                  {$Controller = "true"}    
if ($BOX_Process_Lasso.Checked)               {$Process_Lasso = "true"} $Form.Close()}
$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object Drawing.Point 370,410
$form.text = "Windows_Optimisation_Pack"
$Titel = New-Object Windows.Forms.Label
$Titel.Location = New-Object Drawing.Point 90,15
$Titel.Size = New-Object Drawing.Point 200,15
$Titel.text = "Windows_Optimisation_Pack"
$Titel_Tweaks = New-Object Windows.Forms.Label
$Titel_Tweaks.Size = New-Object Drawing.Point 135,25
$Titel_Tweaks.Location = New-Object Drawing.Point 50,55
$Titel_Tweaks.text = "Tweaks"
$Titel_Extras = New-Object Windows.Forms.Label
$Titel_Extras.Size = New-Object Drawing.Point 135,25
$Titel_Extras.Location = New-Object Drawing.Point 220,55
$Titel_Extras.text = "Extras"
$BOX_SophiaScript = New-Object System.Windows.Forms.CheckBox
$BOX_SophiaScript.Size = New-Object Drawing.Point 135,25
$BOX_SophiaScript.Location = New-Object Drawing.Point 27,88
$BOX_SophiaScript.Text = "Sophia Script"
$BOX_SophiaScript.Checked = $true    
$BOX_ooShutup = New-Object System.Windows.Forms.CheckBox
$BOX_ooShutup.Size = New-Object Drawing.Point 135,25
$BOX_ooShutup.Location = New-Object Drawing.Point 27,119
$BOX_ooShutup.Text = "O&O ShutUp10++"
$BOX_ooShutup.Checked = $true
$BOX_WindowsTweaks_Registry = New-Object System.Windows.Forms.CheckBox
$BOX_WindowsTweaks_Registry.Size = New-Object Drawing.Point 135,25
$BOX_WindowsTweaks_Registry.Location = New-Object Drawing.Point 27,181
$BOX_WindowsTweaks_Registry.Text = "Registry Tweaks"
$BOX_WindowsTweaks_Registry.Checked = $true
$BOX_WindowsTweaks_Tasks = New-Object System.Windows.Forms.CheckBox
$BOX_WindowsTweaks_Tasks.Size = New-Object Drawing.Point 135,25
$BOX_WindowsTweaks_Tasks.Location = New-Object Drawing.Point 27,212
$BOX_WindowsTweaks_Tasks.Text = "Deaktivate Tasks"
$BOX_WindowsTweaks_Tasks.Checked = $true
$BOX_WindowsTweaks_Features = New-Object System.Windows.Forms.CheckBox
$BOX_WindowsTweaks_Features.Size = New-Object Drawing.Point 135,25
$BOX_WindowsTweaks_Features.Location = New-Object Drawing.Point 27,243
$BOX_WindowsTweaks_Features.Text = "Disable Features"
$BOX_WindowsTweaks_Features.Checked = $true
$BOX_WindowsTweaks_Services = New-Object System.Windows.Forms.CheckBox
$BOX_WindowsTweaks_Services.Size = New-Object Drawing.Point 135,25
$BOX_WindowsTweaks_Services.Location = New-Object Drawing.Point 27,274
$BOX_WindowsTweaks_Services.Text = "Disable Services"
$BOX_WindowsTweaks_Services.Checked = $true    
$BOX_Runtime = New-Object System.Windows.Forms.CheckBox
$BOX_Runtime.Size = New-Object Drawing.Point 135,25
$BOX_Runtime.Location = New-Object Drawing.Point 200,88
$BOX_Runtime.Text = "Runtime Comonents"
$BOX_Runtime.Checked = $true  
$BOX_TakeOwnership = New-Object System.Windows.Forms.CheckBox
$BOX_TakeOwnership.Size = New-Object Drawing.Point 135,25
$BOX_TakeOwnership.Location = New-Object Drawing.Point 200,119
$BOX_TakeOwnership.Text = "TakeOwnership"
$BOX_TakeOwnership.Checked = $true    
$BOX_Winrar = New-Object System.Windows.Forms.CheckBox
$BOX_Winrar.Size = New-Object Drawing.Point 135,25
$BOX_Winrar.Location = New-Object Drawing.Point 200,181
$BOX_Winrar.Text = "Install Winrar"
$BOX_Winrar.Checked = $true  
$BOX_AutoActions = New-Object System.Windows.Forms.CheckBox
$BOX_AutoActions.Size = New-Object Drawing.Point 135,25
$BOX_AutoActions.Location = New-Object Drawing.Point 200,212
$BOX_AutoActions.Text = "Install AutoActions"
$BOX_AutoActions.Checked = $false   
$BOX_Controller = New-Object System.Windows.Forms.CheckBox
$BOX_Controller.Size = New-Object Drawing.Point 135,25
$BOX_Controller.Location = New-Object Drawing.Point 200,243
$BOX_Controller.Text =  "Install PS4 Controller"
$BOX_Controller.Checked = $false  
$BOX_Process_Lasso = New-Object System.Windows.Forms.CheckBox
$BOX_Process_Lasso.Size = New-Object Drawing.Point 135,25
$BOX_Process_Lasso.Location = New-Object Drawing.Point 200,274
$BOX_Process_Lasso.Text = "Install Process Lasso"
$BOX_Process_Lasso.Checked = $false  
$button = New-Object System.Windows.Forms.Button
$button.Text = "Start"
$button.Size = New-Object Drawing.Point 75,24
$button.Location = New-Object Drawing.Point 135,320
$button.add_Click($handler_button_Click)
$form.controls.add($Titel)
$form.controls.add($Titel_Tweaks)
$form.controls.add($Titel_Extras)
$form.Controls.Add($BOX_SophiaScript)
$form.Controls.Add($BOX_ooShutup)
$form.Controls.Add($BOX_WindowsTweaks_Registry)
$form.Controls.Add($BOX_WindowsTweaks_Tasks)
$form.Controls.Add($BOX_WindowsTweaks_Features)
$form.Controls.Add($BOX_WindowsTweaks_Services)
$form.Controls.Add($BOX_Runtime)
$form.Controls.Add($BOX_TakeOwnership)
$form.Controls.Add($BOX_Winrar)
$form.Controls.Add($BOX_AutoActions)
$form.Controls.Add($BOX_Controller)
$form.Controls.Add($BOX_Process_Lasso)
$form.Controls.Add($button)
$form.ShowDialog() | Out-Null } 

function Choice{
if ($SophiaScript = "true"){SophiaScript}
if ($ooShutup = "true"){ooShutup}
if ($WindowsTweaks_Registry = "true"){WindowsTweaks_Registry}
if ($WindowsTweaks_Tasks = "true"){WindowsTweaks_Tasks}
if ($WindowsTweaks_Features = "true"){WindowsTweaks_Features}
if ($WindowsTweaks_Services = "true"){WindowsTweaks_Services}
if ($Runtime = "true"){Runtime}
if ($TakeOwnership = "true"){TakeOwnership}
if ($Winrar = "true"){Winrar}
if ($AutoActions = "true"){AutoActions}
if ($Controller = "true"){Controller}
if ($Process_Lasso = "true"){Process_Lasso} }

Tests
GUI
SystemPoint
HDD_Name
Choice
Autoruns
WindowsCleanup
Finish
# SIG # Begin signature block
# MIIFiwYJKoZIhvcNAQcCoIIFfDCCBXgCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU5gbpN1bDlno8n0j6pgB/tPoj
# YZ2gggMcMIIDGDCCAgCgAwIBAgIQJBEmIU6B/6pL+Icl+8AGsDANBgkqhkiG9w0B
# AQsFADAkMSIwIAYDVQQDDBlXaW5kb3dzX09wdGltaXNhdGlvbl9QYWNrMB4XDTIy
# MTAwMzA5NTA0MloXDTMwMTIzMTIyMDAwMFowJDEiMCAGA1UEAwwZV2luZG93c19P
# cHRpbWlzYXRpb25fUGFjazCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
# AMqbrd2/6x589A5LablKK+Ed5zN+CoIBO/0DtWoJ7mxT+4IWA+0d5kWYTUW/MI7Y
# BHS5r7kuUe1SX2E90CVKVKk7HVrbMCv707M+PWWQs+D0Q9vrXqMEcuEmoRcrQH7j
# kTzs+Y4kKAkD/8Je1+5uBpyu6H1FTH9290no+h9bgvCp5UrhzzFJkVyRjCXJLlbV
# NgLEWPDFa0mMEVNoXxa7m9AwnCNSCUMGEVhPzIMameK0W9jEKPTxfPdXhRWTu4lz
# 7vzp5HBvn3XdutyJhH1+txCgc6uNJe/kxZENvHTObRWxkMotq8x3GqjuvNpY3t3O
# MndeMCYiI84GBuixSXeaXf0CAwEAAaNGMEQwDgYDVR0PAQH/BAQDAgWgMBMGA1Ud
# JQQMMAoGCCsGAQUFBwMDMB0GA1UdDgQWBBSOhOkyv1Z+aPC/kWeVNpKwbI3omjAN
# BgkqhkiG9w0BAQsFAAOCAQEAku31A0acjtrpBqJn7nwifNv5EmiryXeGZm0RCflv
# /JRIyvjHMDvo7Mb9p4VTRciZt2kyIDzefda1XU597frO4TgNlBgH816TxMJ4qZlb
# ScZXc/zhBOu51oA53gt641h0zhp5dJpP/gE8VFhBUV0IVTBPnunEK1hpYmGLftAe
# 3FjiDRQ+b+q/zT0uUbrFdyYHnlyL40bPl3XVDwVaJhDGW7At/s1K4ZA96Xej5Wxa
# ffqIOiTEjscTmVeXLCf44EiyxZ0vF20BWwvCosONptr1MyQXFI5azArQOU9BfhYL
# rJXoqIvVp1G2GWcfqZGLAoxnidVEN1ndnbkEFCpWeNcAkzGCAdkwggHVAgEBMDgw
# JDEiMCAGA1UEAwwZV2luZG93c19PcHRpbWlzYXRpb25fUGFjawIQJBEmIU6B/6pL
# +Icl+8AGsDAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZ
# BgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYB
# BAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU/3dhEng5J5HmSBTMd2+E2g1H9twwDQYJ
# KoZIhvcNAQEBBQAEggEAhbDbyWy75zyPdSJY4daHQuKIG7ThKn6Lkhbu3C9HQjTb
# 36kvDf87Z91Pvmn3BjJpQDBIhqDFXHHbNDB6JIpQ29BugeSubEyiBNQsN6g/3gwb
# KR/L4dSSxGh6XVTCQZ4MbwCjQtAvl9Waa0dVf5kxYO3Sksk0PcdUUM104McCcz3R
# WoamUNSNZwCHAwQm15WXoy5bRGGv5i+HbvG4cWrQhzhtpx+NAI6v6Hf5QoQvXYi6
# VNw2qHxbahxObDl842K3FdFCDFKSX08et81ABXqd9dT9Gd6W+0BvZnQIYJJCrUOe
# qn/tcyvcSp8eOngwZ+3htxMv/Yr6IasjMrOD7M67OQ==
# SIG # End signature block