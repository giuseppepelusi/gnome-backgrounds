# **gnome-backgrounds**

Dynamic backgrounds port for gnome.

### **Install**

To install you can use the quick install script:

```sh
curl -fsSL https://raw.githubusercontent.com/giuseppepelusi/gnome-backgrounds/refs/heads/main/install.sh | bash
```

Or follow these steps to install manually:

1. **Clone the repository:**
   ```sh
   git clone https://github.com/giuseppepelusi/gnome-wallpapers.git
   ```

   or

   ```sh
   git clone git@github.com:giuseppepelusi/gnome-wallpapers.git
   ```

2. **Move to the repository directory:**
	 ```sh
	 cd gnome-wallpapers
	 ```

3. **Run the installer script:**
	 ```sh
	 make install
   ```

### **Usage**

To apply the wallpapers, navigate to `Settings > Appearance`. You will find the wallpapers available in two formats:
- **Theme-Adaptive:** Selecting the wallpaper with a split-preview will automatically switch between light and dark versions based on your system theme.
- **Time-of-Day (Dynamic):** Look for the version marked with a clock icon. This version transitions smoothly throughout the day based on your local time.

### **Uninstall**

To uninstall:

- **Run the uninstaller script:**
   ```sh
   make uninstall
   ```

- **Or manually remove the files:**
   ```sh
   rm -rf ~/.local/share/backgrounds/[wallpaper]
   rm -f ~/.local/share/gnome-background-properties/[wallpaper.xml]
   ```

### **Credits**
Firewatch: [Firewatch 4k Wallpapers](https://wallpapercave.com/firewatch-4k-wallpapers)
Mojave: [MacOS-Mojave-Minimal-Dynamic-Wallpaper](https://www.behance.net/gallery/176464495/MacOS-Mojave-Minimal-Dynamic-Wallpaper)
