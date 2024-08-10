# 🖥️ Docker XFCE VNC

An XFCE desktop environment and VNC server for remote access. Built upon a configured [Ubuntu base image](https://github.com/dbushell/docker-ubuntu). Designed from browser testing.

[Why does this exists?](https://dbushell.com/2021/03/01/docker-xfce-vnc-remote-desktop-browser-testing/)

## Usage

Default passwords are same as user name.

Connect VNC client to `localhost:5901` (default password: `password`).

## Install Browsers

Run in terminal from the user home directory.

**Firefox:**

```sh
./firefox.sh
fireox
```

**Brave:**

```sh
./brave.sh
brave-browser
```

**Edge:**

```sh
./edge.sh
microsoft-edge-dev
```

* * *

[MIT License](/LICENSE) | Copyright © 2021 [David Bushell](https://dbushell.com)
