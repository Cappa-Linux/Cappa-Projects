<div align="center">
 <h2><strong>---- 🐸Welcome to core of Cappa Linux!🐸 ----</strong></h2>
 <img src="./Screenshots/1.png" alt="Screenshots images">
</div>

### Note:
- This repo in now is maintained by me lol. I'm not really sure about other laptop and pc but it's run perfects with my potato laptop without any errors.
- Fun fact: My first intention when creating this linux distro was to run it as a Live ISO then plug it into a potato school computer and windows 7 in greek times but then I abandoned that idea because for some reason it would overload anytime if i playing on Live ISO minecraft which was integrated in the ISO xd and some how idk why i can make this distro that can install on my laptop xd (don't worry because Minecraft will not inside this iso now lol).
- Also here is some information about Cappa Linux:
<div align="center">
 
| Information Inside Cappa Linux         | Defaults                                |
|:---------------------------------------|-----------------------------------------|
| <strong>Kernel</strong>                | <strong>Zen Kernel (linux-zen)</strong> |
| <strong>Audio</strong>                 | <strong>Pipewire</strong>               |
| <strong>Installer App</strong>         | <strong>Calamares (offline)</strong>    |
| <strong>Platform</strong>              | <strong>X11</strong>                    |
| <strong>Window Manager</strong>        | <strong>Awesome WM (git)                |
| <strong>Display Managers</strong>      | <strong>Ly TUI</strong>                 |

</div>

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

### Building a ISO
<details>
 <summary>Step by step</summary>
 
1. Install some packages before build
 
```
sudo pacman -Sy --needed archiso
```
2. Create a directory for building

```
mkdir -p ~/Projects && cd Projects
```
3. Git clone

```
https://github.com/Cappa-Linux/Cappa-Projects/
```
4. Setup projects folder for building an ISO

```
cd Cappa-Projects && ./deploy.sh
```
> [!CAUTION]
> Before build make sure you change username of path repo in relang/pacman.conf. If no when building ISO will fail and got errors cant sync custom-repo.

5. Move packages and build database of packages

```
cd Scripts/
```
6. Run scripts follow a arrows

```
./move... .sh --> ./make... .sh --> ./build-iso.sh
```
7. Wait and when done check in ~/Projects/Cappa-Projects/BUILD/Templates-Built/out/   <--- ISO will appear here when done!
</details>
