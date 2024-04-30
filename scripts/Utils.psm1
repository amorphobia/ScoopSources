#Requires -Version 5.1
Set-StrictMode -Version 3.0

function Initialize-VsDevShell {
    switch ($env:PROCESSOR_ARCHITECTURE) {
        "AMD64" { $DevCmdArguments = "-arch=x64 -host_arch=x64" }
        "ARM64" { $DevCmdArguments = "-arch=arm64 -host_arch=arm64" }
        Default { $DevCmdArguments = "-arch=x86 -host_arch=x86" }
    }

    $VsPath = &(Join-Path ${env:ProgramFiles(x86)} "\Microsoft Visual Studio\Installer\vswhere.exe") -Latest -Products * -Requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -Property InstallationPath
    Import-Module (Join-Path $VsPath "Common7\Tools\Microsoft.VisualStudio.DevShell.dll")
    Enter-VsDevShell -VsInstallPath $VsPath -SkipAutomaticLocation -DevCmdArguments $DevCmdArguments
}

Export-ModuleMember -Function Initialize-VsDevShell
