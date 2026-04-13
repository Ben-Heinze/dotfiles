# dotfiles for getting my linux setup on a new computer

## Instructions

To get the setup on a fresh computer, 
1. Clone this repo to home: `git clone ~/git@github.com:Ben-Heinze/dotfiles.git`
2. install stow if necessary: `sudo apt install stow`
3. Use `cd ~/dotfiles` to enter the repo files
4. `stow */` will sync the contents of /dotfiles to the home directory.

This will add the configuration for emacs, xmodmap, ~/.config/awesome/rc.lua, which controls the top bar (wibar), keybinds for utilies like rofi, and other stuff. 

5. To active the rebinded text cursor speed and caps lock config (hold for CTRL, press for ESC), you have to manually copy mawesome.desktop to xsessions: `sudo cp ~/dotfiles/mawsome.desktop /usr/share/xsessions/`. 

6. You may need to manually change the path inside mawesome.desktop's Exec: `Exec=/home/NAME/scripts/launch-awesome` by substituting `NAME` to the user's login name.

7. Open the permissions to resetKeyboard to ensure these script files actually run: `chmod +x ~/scripts/launch-awesome ~/scripts/resetKeyboard`

8. Finally, log out of the ubuntu desktop, and click the gear button in the bottom right after choosing your profile, but before logging in, then choose `mawesome` for the wm.

Use `feh --bg-fill (or --bg-scale) ~/Downloads/wallpaper.png` to add a wallpaper. The rc.lua file has code that will maintain this wallpaper on reset.

## install.sh

Remind me to make an install.sh in the future
