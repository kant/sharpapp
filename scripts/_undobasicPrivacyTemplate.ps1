########## Enable telemetry in Windows 10 ##########
New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name AllowTelemetry -Value 3 -Force
New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name MaxTelemetryAllowed -Value 3 -Force
# Stop and Enable Diagnostic Tracking Service
New-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\DiagTrack" -Name Start -Value 2 -Force
Start-Service -Name DiagTrack
Set-Service -Name DiagTrack -StartupType Auto
# Stop and Enable dmwappushservice Service
New-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\dmwappushsvc" -Name Start -Value 2 -Force
Start-Service -Name dmwappushservice
Set-Service -Name dmwappushservice -StartupType Auto

########## Enable suggestions and automatic Installation of apps #########
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name ContentDeliveryAllowed -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name OemPreInstalledAppsEnabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name PreInstalledAppsEnabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name reInstalledAppsEverEnabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name SilentInstalledAppsEnabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name SubscribedContent-338387Enabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name SubscribedContent-338388Enabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name ubscribedContent-338389Enabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name SubscribedContent-353698Enabled -Value 1 -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name SystemPaneSuggestionsEnabled -Value 1 -Force
If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null}
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name DisableWindowsConsumerFeatures -Value 0 -Force

########## Enable web search in start menu ########## 
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name ConnectedSearchUseWeb -Value 1 -Force

########## Enable Location tracking ##########
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name Value -Value Allow -Force
 
########## Turn on Advertising ID for Relevant Ads ##########
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name Enabled -Value 1 -Force

########## Turn on help Microsoft improve typing and writing ########## 
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" -Name AllowInputPersonalization -Value 1 -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" -Name RestrictImplicitInkCollection -Value 0 -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" -Name RestrictImplicitTextCollection -Value 0 -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" -Name PreventHandwritingErrorReports -Value 0 -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\TabletPC" -Name PreventHandwritingDataSharing -Value 0 -Force

########## Show feedback notifications ########## 
Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Siuf\Rules" -Name PeriodInNanoSeconds
Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Siuf\Rules" -Name NumberOfSIUFInPeriod

########## Enable Clipboard history  ########## 
New-ItemProperty -Path "HKCU:\Software\Microsoft\Clipboards" -Name EnableClipboardHistory -Value 1 -Force

########## Enable Timeline history  ########## 
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name EnableActivityFeed -Value 1 -Force

########## Enable off Wi-Fi Sense ########## 
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Name AutoConnectAllowedOEM -Value 1 -Force

########## Enable Customer Experience Improvement Program ########## 
Get-ScheduledTask -TaskPath "\Microsoft\Windows\Customer Experience Improvement Program\" | Enable-ScheduledTask

########## Enable Windows Error Reporting ########## 
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name Disabled -Value 0 -Force
Get-ScheduledTask -TaskName "QueueReporting" | Enable-ScheduledTask

########## Allow using diagnostic data ########## 
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Privacy" -Name TailoredExperiencesWithDiagnosticDataEnabled -Value 1 -Force
