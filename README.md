# monfresh new mac setup

This repo contains all the scripts I use to set up a new Mac, and to keep my dotfiles in sync across my computers. I use [chezmoi](https://www.chezmoi.io/) to manage the dotfiles. A step-by-step detailed guide will be coming soon on my [blog](https://www.moncefbelyamani.com). [Subscribe](https://moncefbelyamani.us2.list-manage.com/subscribe/post?u=fb7ab0f9baca19944778d96a7&id=10c076d42d) to be the first to know when it's released.

## Before setting up a new Mac
### Export App preferences from existing main Mac
- Quit Moom and Bear
- Export [Moom prefs](https://manytricks.com/osticket/kb/faq.php?id=53):
```shell
defaults export com.manytricks.Moom ~/Dropbox/Moom/Moom.plist
```
- Export Bear prefs:
```shell
defaults export net.shinyfrog.bear ~/Dropbox/Bear/Bear.plist
```

## Set up new Mac

1. Sign in to iCloud and App Store

1. Install all macOS updates.

2. Launch App Store and sign in, otherwise installing apps via [mas](https://github.com/mas-cli/mas) won’t work.

3. Install 1Password and sign in.

4. Quit Terminal (if it's running), and give it full disk access in System Preferences -> Security & Privacy -> Privacy tab -> Full Disk Access

5. Download `.laptop.local`:
```shell
cd ~
curl --remote-name https://raw.githubusercontent.com/monfresh/dotfiles/master/dot_laptop.local
mv dot_laptop.local .laptop.local
```

6. Run the laptop script:
```shell
bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)
```
When prompted by chezmoi for email, enter the email you want to use for Git.
When prompted for location, enter `home` or `work`, so that the appropriate apps
and aliases are installed based on whether this is a home computer or work computer.
See [Brewfile.local.tmpl](https://github.com/monfresh/dotfiles/blob/master/Brewfile.local.tmpl) for an example.
When prompted for the various tokens, get them from 1Password and paste them in.

7. Restart the computer.

8. Read `~/.laptop.manual.md` for additional manual setup instructions:
```shell
bat ~/.laptop.manual.md
```
