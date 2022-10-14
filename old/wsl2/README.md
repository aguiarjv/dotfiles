# WSL 2

Here I'll be updating my configurations file for WSL 2 that I use on my Windows Setup.


### Activating and Deactivating WSL2

In order to activate/deactivate WSL2 run these lines on Windows PowerShell as admin (restart needed):

#### Deactivating

```
bcdedit /set hypervisorlaunchtype off

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 0 /f

Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Hypervisor
```

#### Activating

```
bcdedit /set hypervisorlaunchtype auto

DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V
```
