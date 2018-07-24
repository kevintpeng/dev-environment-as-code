# dev environment as code
This repo contains both my dotfiles and also ansible scripts to install my setup in an idempotent way. The ideas behind this repository were inspired by some of my learnings working in infrastructure and seeing the benefits of infrastructure as code. One of my motivations behind this setup has been from repeatedly setting up new macbooks for internships, where simple backups are not sufficient for retaining configuration. Being able to idempotently run this playbook while making changes to my setup at work and at home has given me a good system to always keep my dev environment up to date.

The following instructions serve both as a guide if you want to try using my setup and also a TODO list for automation of tasks. **WARNING**: this configuration is intended to bring the state of my computer to how I like it. As a result, there are changes made by ansible that can be destructive to your current configuration. I have this open sourced mostly as a template for you to use to configure your own environment.

1. install ansible
2. install pip, npm, bundler, and associated languages
2. `sudo ansible-pull -U https://github.com/kevintpeng/dotfiles.git --extra-vars username=$(whoami)`
- *note: `devup` is aliased to the above command, can be used to update after being installed*
