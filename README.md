# WinBox

## Create a Vagrant Box

There are some resources online to do this (http://huestones.co.uk/node/305). What I did was:
* clean installation of Win10 VM with vagrant/vagrant as username/password
* install VirtualBox Guest Additions
* disable UAC from Control Panel plus `reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /d 0 /t REG_DWORD /f /reg:64`
* enable WinRM service with:
```
winrm quickconfig -q
winrm set winrm/config/winrs @{MaxMemoryPerShellMB="512"}
winrm set winrm/config @{MaxTimeoutms="1800000"}
winrm set winrm/config/service @{AllowUnencrypted="true"}
winrm set winrm/config/service/auth @{Basic="true"}
sc config WinRM start= auto
```
* allow remote connection
* install available updates
* `vagrant package --base NAMEOFTHEVM --output $(pwd)/basebox/winbox.box --vagrantfile $(pwd)/basebox/Vagrantfile`
* `vagrant box add $(pwd)/basebox/winbox.box --name WinBox`

Now the Windows VM should be available wherever you want with the usual Vagrantfile mechanism.

# Use VM

Just do a `vagrant up` followed by `vagrant rdp` should log you in the VM.
