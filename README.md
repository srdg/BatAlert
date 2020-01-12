# BatAlert

See what I did there?  
Anyway, this is a repository where you will find scripts to show a notification if the battery of your laptop is below a threshold percentage. Most ubuntu distros don't come up with a timely notification setting and there is no way you can set it except for running custom scripts on startup, so, here you go! 

## Usage
```
git clone https://github.com/srg/BatAlert.git
cd BatAlert
sudo chmod +xxx desktop/*.desktop 
sudo mv desktop/*.desktop $HOME/.config/autostart
```

## Using single script
Instead of running all the scripts on startup, you can also run a single script (in fact, it's better, since the scripts are written in accordance with the distribution versions). The distro is denoted by the `xx` in `ubuntuxx.batalert.sh` in the `sh` directory. Replace the `*.desktop` in the installation commands with the appropriate `*.desktop` file, which follows the same naming conventions as the `sh` scripts.
