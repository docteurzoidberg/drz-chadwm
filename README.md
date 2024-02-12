# drz-dwm

Forked from Sideduck's [chadwm](https://github.com/siduck/chadwm) <3

# Patches

## patchs i installed and config i've done

- signals
- cool autostart

## patches from chadwm

- barpadding 
- bottomstack
- cfacts
- dragmfact 
- dragcfact (took from [bakkeby's build](https://github.com/bakkeby/dwm-flexipatch))
- fibonacii
- gaplessgrid
- horizgrid
- movestack 
- vanity gaps
- colorful tags
- statuspadding 
- status2d
- underline tags
- notitle
- winicon
- [preserveonrestart](https://github.com/PhyTech-R0/dwm-phyOS/blob/master/patches/dwm-6.3-patches/dwm-preserveonrestart-6.3.diff). This patch doesnt let all windows mix up into tag 1 after restarting dwm.
- shiftview

# Requirement

- dash (shell)
- imlib2 
- xsetroot package (status2d uses this to add colors on dwmbar)
- JetbrainsMono Nerd Font or any nerd font but dont forget to set it in config.def.h
- Make sure to setup your terminal's theme accordingly do chadwm's theme such as nord, onedark etc...

## Other requirements
- picom
- feh
- acpi
- rofi

# Install

```shell
git clone https://github.com/docteurzoidberg/drzdwm --depth 1  ~/.config/drzdwm
cd ~/.config/drzdwm/
./install
cd src
sudo make install
```

(Note: chmod +x all of the scripts)

# Run drzdwm

## With startx

```shell
startx ~/.config/cdrzdwm/scripts/drzrun.sh
```

(Make an alias for this :v)

```shell
alias drzdwm='startx ~/.config/drzdwm/scripts/drzrun.sh'
```

## With Display Manager

A desktop entry is creted by the install script and copied over /usr/share/xsessions

# Recompile

You need to recompile dwm after every change you make to its source code.

```
cd ~/.config/drzdwm/src
make clean
sudo make install
```
# Change themes

- Bar  : in bar.sh (line 9) and config.def.h (line 35)
- rofi : in config.rasi (line 15)

- [wallpaper](https://github.com/siduck/chadwm/blob/screenshots/screenshots/chad.png)

# Credits

- Sideduck's [chadwm](https://github.com/siduck/chadwm) !!! a good base to start 

# Credits from chadwm

- HUGE THANKS to [eProTaLT83](https://www.reddit.com/user/eProTaLT83). I wanted certain features in dwm like tabbar in monocle, tagpreview etc and he implemented my ideas and created patches for me! I can't even count the number of times he has helped me :v
- @fitrh helped with [colorful tag patch](https://github.com/fitrh/dwm/issues/1)
- [6gk](https://github.com/6gk/fet.sh), eww's pure posix fetch functions taken from here
- [mafetch](https://github.com/fikriomar16/mafetch), modified version of this was used as fetch in the screenshots

