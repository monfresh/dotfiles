# monfresh new mac setup

This repo contains all the scripts I use to set up a new Mac, and to keep my dotfiles in sync across my computers. I use [chezmoi](https://www.chezmoi.io/) to manage the dotfiles. Read my [step-by-step detailed guide](https://www.moncefbelyamani.com/automating-the-setup-of-a-new-mac-with-all-your-apps-preferences-and-development-tools/).

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

### Deactivate licenses/Sign out
- Dropbox
- Gemini 2
- Screenflow
- Tower
- Apple TV, Music

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

6. Run the [Ruby on Mac](https://www.rubyonmac.dev) Prime script.

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
