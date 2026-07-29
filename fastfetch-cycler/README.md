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

## Demo Videos
Check out the script in action below:

| Preview 1 | Preview 2 |
| :---: | :---: |
| <video src="fastfetch-cycler/video1.mp4" width="400" controls></video> | <video src="fastfetch-cycler/video2.mp4" width="400" controls></video> |
