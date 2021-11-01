## Turn off resp. on during suspend resp. wake (if your OS uses systemd)

1. Open `kefwakesus.sh` in text editor, replace username and path to `kefctl` script 
2. Move `kefwakesus.sh` to `/usr/lib/systemd/system-sleep/`
3. Make the script executable

## Turn on after logging in (if your your OS has a bash shell)

1. Open `~/.bash_profile` in text editor
2. Add line `/bin/perl /home/alex/.local/share/kefctl -w`


