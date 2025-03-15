![image](https://github.com/user-attachments/assets/428854bd-558e-4501-9b28-361b4d92aa3a)

# bspwm dotfiles

Includes picom, sxhkd, bspwm, dunst, rofi, and nitrogen

### Needed packages:
```
bspwm picom sxhkd dunst rofi polybar kitty lxsession nitrogen ranger xclip scrot thunar
```
bspwm, picom, sxhkd, dunst, rofi, polybar, and lxsession are the main packages needed.

kitty, nitrogen, ranger, xclip, scrot, and thunar can be changed out for your preferred package. Just make sure to update the shortcuts within sxhkd

### Fonts

Some font packages are also needed for polybar to display the config correctly. These can be installed or changed within the polybar config file.

**Fonts**
```
ttf-jetbrains-mono ttf-jetbrains-mono-nerd
```
The Togalite font is also needed for the Katakana workspace labels. It is included in the **.fonts** directory.

### To install

If you want to install everything, run the **fullinstall.sh** script. If you prefer the bare minimum, run the **bareinstall.sh** script.

For a manual install, clone the directory and move the config files you want over to your current config.

***Note:***
If the install scripts are not working, make sure to run ```chmod +x``` on the script you are trying to run
