if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    exit
}

$videoControllers = Get-CimInstance -ClassName Win32_VideoController | 
    Where-Object { $_.PNPDeviceID -like "PCI\VEN_*" }

foreach ($controller in $videoControllers) {
    $pnpDeviceId = $controller.PNPDeviceID
    
    try {
        $driverPath = "HKLM:\SYSTEM\ControlSet001\Enum\$pnpDeviceId"
        $driverValue = Get-ItemProperty -Path $driverPath -Name "Driver" -ErrorAction Stop
        
        if ($driverValue.Driver -match '\{[^}]+\}') {
            $driverGuid = $driverValue.Driver
            
            $classPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Class\$driverGuid"
        
            Set-ItemProperty -Path $classPath -Name "DisableDynamicPstate" -Value 1 -Type DWord -Force
        }
    }
    catch {
        # Silent error
    }
}