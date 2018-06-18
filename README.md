# dotfiles
This repo contains both my dotfiles and also ansible scripts to install my setup in an idempotent way.

The following instructions serve both as a guide if you want to try using my setup and also a TODO list for automation of tasks. **WARNING**: this configuration is intended to bring the state of my computer to how I like it. As a result, there are minor changes made by ansible that can be destructive to your current configuration. I have this open sourced mostly as a template for you to use to configure your own environment.

1. install ansible
2. install pip, npm, bundler, and associated languages
2. `sudo ansible-pull -U https://github.com/kevintpeng/dotfiles.git --extra-vars username=$(whoami)`

### Final manual configurations
1. `base16_default-dark`
2. `mackup restore`

### Macbook Preferences
1. `^ up` to pull up Mission Control, create 5 desktops
2. `Keyboard > Shortcuts > Mission Control`
  - setup desktop switching `^ x` to switch to desktop x
  - uncheck application windows
3. `Keyboard > Shortcuts > Launchpad & Dock`
  - un check dock hiding
4. `Keyboard > Shortcuts > Keyboard`, change "Move focus to menu bar" to `^Space`
5. `System Preferences > General`
  - check "use dark menu bar and Dock"
  - check "automatically hide and show the menu bar"
  - highlight color purple
  - sidebar icons size: small
  
### iTerm setup
*This documentation is now obselete. Mackup handles synchronization.*
- General
  - Selection
    - Applications in terminal may access clipboard
- Appearance
  - Tabs
    - Theme = Dark
    - Tab bar location = Bottom
  - Window
    - Hide scrollbar
    - don't show line under title bar
- Profile
  - Text
    - Font = Hack Nerd Font 14pt
    - Use different font for non-ASCII = Hack Nerd Font 14pt
