# nvim
## How to use

make sure you have a g++ and gcc compiler

make sure u have the latest version of nvim (at least 0.5.x)

clone this repository into the Folder  ~/.config/
or just run the following command inside a terminal
``` 
git clone https://github.com/mavonarx/nvim.git ~/.config/nvim
```

use a font in your terminal that supports icons (nerd fonts)

lauch nvim 

``` 
nvim <filename.ext> (replace this with the actual file name)
```

#Hints

You can see the file tree with ctrl-n and search for files with ctrl-p
You can close the editor with :wqa (closes all open tabs and saves them)


to enable it also for the root user (and sudo)
```
sudo mkdir /root/.config/
sudo ln -s ~/.config/nvim /root/.config/nvim
```
