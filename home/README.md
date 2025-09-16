<div align="center">
    <h3>System Configuration Guide</h3>
</div>

<br>
<br>

## Table of Contents
- Getting Started
    - System Setup
    - Configuring Gnome.Mutter
    - Installing Vim Plug

## Getting Started
Run an update on your system,
```sh
    sudo apt update && sudo apt upgrade -y
```

Once done, reboot your system.
```sh
    sudo reboot
```

After reboot, set ufw &  install these package.
```sh
    sudo ufw enable
    sudo ufw default allow outgoing
    sudo ufw default deny incoming
    sudo ufw logging on
```

```sh
    sudo apt install wget curl vim git openvpn fonts-firacode
```

### System Setup
Setup your ssh keys, create your workspace directories, clone this repo and cp your configs over to home.
```sh
    ssh-keygen -t ed25519 -C '229901212+Futsec@users.noreply.github.com'
```

```sh
    mkdir -pv ~/workspace/local ~/workspace/repo/personal ~/workspace/repo/study ~/workspace/repo/work
```

```sh
    cd ~/workspace/repo/personal && git clone git@github.com:Futsec/futsec.git
```

```sh
    cp -v futsec/home/.* ~
```

### Configuring Gnome.Mutter
Configure gsettings to not auto-maximize & to center your windows, allowing you to have a predetermined sizes & center start ups.
```sh
    gsettings set org.gnome.mutter auto-maximize false && gsetting set org.gnome.mutter center-new-windows true
```


### Installing Vim Plug
Install your plugin manager for vim, and make to grab the colors dir from futsec and place that in `.vim/`.
```sh
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
