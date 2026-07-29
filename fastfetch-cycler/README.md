# Fastfetch Logo Cycler

A lightweight bash script to automatically cycle the logo image in `fastfetch` every time it runs. This script switches the displayed image sequentially using files placed in your images directory.

This serves almost zero purpose other than ricing Linux a little more and flexing on skids.

## Features
* Automatically cycles through your favorite images or GIFs sequentially.
* Lightweight and runs instantly before `fastfetch` loads.
* *Note: This current version only cycles forward and does not have a function to go backwards.*

---

## Prerequisites & Dependencies
* **fastfetch** (Required)
* **kitty** terminal emulator (Optional, but highly recommended for superior image/GIF rendering)

---

## Installation & Setup

### 1. Configure Fastfetch
Open your fastfetch configuration file:
```bash
nano ~/.config/fastfetch/config.jsonc
```
Paste your custom configuration file contents into this file, ensuring the image source path points to your setup, then save and exit.

### 2. Create the Image Directory
Create the folder where your logos will live and add your images:
```bash
mkdir -p ~/.config/fastfetch/images
```
Place your desired image files inside this new `images/` directory.
* **Note:** You must upload **at least 2 images** for the cycling effect to work. GIF formats work excellently!

### 3. Run the Cycler Script
Make your script executable and run it to set the initial image:
```bash
chmod +x cycle_logo.sh
bash cycle_logo.sh
```

---

## Usage
Open your preferred terminal emulator (like `kitty`), and type:
```bash
fastfetch
```
Every time you run the command, the script will automatically swap out and cycle through your selected images!

---

## tested on:
                               
                               (VM)
                               OS: Debian GNU/Linux 13 (trixie) x86_64
                               Host: KVM/QEMU Standard PC (i440FX + PIIX, 1996) (pc-i440fx-9.2)
                               Kernel: Linux 6.12.96+deb13-amd64
                               Shell: bash 5.2.37
                               DE: KDE Plasma 6.3.6
                               WM: KWin (X11)
                               Terminal: kitty 0.48.1
                               CPU: QEMU Virtual version 2.5+ (4) @ 3.69 GHz
                               GPU: RedHat Virtio 1.0 GPU
                               Memory: 3.70 GiB / 5.79 GiB (64%)



## Demo Videos
Check out the script in action below:

https://github.com/user-attachments/assets/e3382c47-1211-4ee4-9212-ed2335d16865


https://github.com/user-attachments/assets/3a067a4b-5ecb-4a8b-b605-d31e83d1ad39


