# dev environment as code
This repo contains both my dotfiles and also ansible scripts to install my setup in an idempotent way. The ideas behind this repository were inspired by some of my learnings working in infrastructure and seeing the benefits of infrastructure as code. One of my motivations behind this setup has been from repeatedly setting up new macbooks for internships, where simple backups are not sufficient for retaining configuration. Being able to idempotently run this playbook while making changes to my setup at work and at home has given me a good system to always keep my dev environment up to date.

### Installation

1. install homebrew
1. install ansible: `brew install ansible`
1. install pip, npm, bundler, and associated languages
1. TODO, initialize mackup
1. `sudo ansible-pull -U https://github.com/kevintpeng/dotfiles.git --extra-vars username=$(whoami)`
1. Manually import touchbar presets
1. run `devup` to pull updates
