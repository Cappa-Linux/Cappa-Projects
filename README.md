
### Welcome to core of Cappa Linux!

<details>
  <summary>Tree of this repo</summary>

```
.
├── BUILD
│   └── Storages  <--- This folder for storages local packages.
│       ├── calamares-installer-packages
│       ├── calla-depend-packages
│       └── enchance-color-screen-and-audio-tool-packages
├── ISO-Builder  <--- This folder for the setting and config the distro linux.
│   └── Cappa-Linux
│       └── releng <--- Here is where config of distro was born.
│           ├── airootfs
│           │   ├── etc
│           │   │   ├── default
│           │   │   ├── mkinitcpio.conf.d
│           │   │   ├── mkinitcpio.d
│           │   │   ├── modprobe.d
│           │   │   ├── pacman.d
│           │   │   │   └── hooks
│           │   │   ├── polkit-1
│           │   │   │   └── rules.d
│           │   │   ├── skel
│           │   │   │   └── CappaLinux-Scripts
│           │   │   │       └── Storages
│           │   │   │           └── fix-amdgpu-tearing
│           │   │   ├── ssh
│           │   │   │   └── sshd_config.d
│           │   │   ├── sudoers.d
│           │   │   ├── systemd
│           │   │   │   ├── journald.conf.d
│           │   │   │   ├── logind.conf.d
│           │   │   │   ├── network
│           │   │   │   ├── networkd.conf.d
│           │   │   │   ├── resolved.conf.d
│           │   │   │   ├── system
│           │   │   │   │   ├── cloud-init.target.wants
│           │   │   │   │   ├── getty@tty1.service.d
│           │   │   │   │   ├── multi-user.target.wants
│           │   │   │   │   ├── network-online.target.wants
│           │   │   │   │   ├── reflector.service.d
│           │   │   │   │   ├── sockets.target.wants
│           │   │   │   │   ├── sound.target.wants
│           │   │   │   │   ├── sysinit.target.wants
│           │   │   │   │   └── systemd-networkd-wait-online.service.d
│           │   │   │   └── system-generators
│           │   │   └── xdg
│           │   │       └── reflector
│           │   ├── root
│           │   └── usr
│           │       └── local
│           │           ├── bin
│           │           └── share
│           │               └── livecd-sound
│           ├── efiboot
│           │   └── loader
│           │       └── entries
│           ├── grub
│           └── syslinux
└── Scripts   <--- This folder for storages some scripts that helping easily to build there config to cappalinux.iso

```
</details>
