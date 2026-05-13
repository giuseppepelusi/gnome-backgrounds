# **gnome-backgrounds**

Adaptive and time-of-day dynamic backgrounds for GNOME.

### **Install**

To install you can use the quick install script:

```sh
curl -fsSL https://raw.githubusercontent.com/giuseppepelusi/gnome-backgrounds/refs/heads/main/install.sh | bash
```

Or follow these steps to install manually:

1. **Clone the repository:**
   ```sh
   git clone https://github.com/giuseppepelusi/gnome-backgrounds.git
   ```

   or

   ```sh
   git clone git@github.com:giuseppepelusi/gnome-backgrounds.git
   ```

2. **Move to the repository directory:**
	 ```sh
	 cd gnome-backgrounds
	 ```

3. **Install with make:**
	 ```sh
	 make install
   ```

### **Usage**

To apply the backgrounds, navigate to `Settings > Appearance`. You will find the backgrounds available in two formats:
- **Theme-Adaptive:** Selecting the background with a split-preview will automatically switch between light and dark versions based on your system theme.
- **Time-of-Day (Dynamic):** Look for the version marked with a clock icon. This version transitions smoothly throughout the day based on your local time.

### **Uninstall**

To uninstall:

- **Uninstall with make:**
   ```sh
   make uninstall
   ```

- **Or manually remove the files:**
   ```sh
   rm -rf ~/.local/share/backgrounds/<background-name>
   rm -f ~/.local/share/gnome-background-properties/<background-name>.xml
   ```

### **Credits**
Firewatch: [Firewatch 4k Wallpapers](https://wallpapercave.com/firewatch-4k-wallpapers)

Mojave: [MacOS-Mojave-Minimal-Dynamic-Wallpaper](https://www.behance.net/gallery/176464495/MacOS-Mojave-Minimal-Dynamic-Wallpaper)
