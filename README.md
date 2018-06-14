# dotfiles
This repo contains both my dotfiles and also ansible scripts to install my setup in an idempotent way.

The following instructions serve both as a guide if you want to try using my setup and also a TODO list for automation of tasks.

1. install ansible
2. modify hardcoded username if needed
3. `sudo ansible-pull -U https://github.com/kevintpeng/dotfiles.git`
4. link dotfiles using hard links in dir `~`
