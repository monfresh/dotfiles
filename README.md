# dotfiles

These dotfiles are managed by [chezmoi](https://www.chezmoi.io/).

To set up a new Mac:

1. Install all macOS updates.

2. Sign into the Mac App Store, otherwise installing apps via [mas](https://github.com/mas-cli/mas) won’t work.

3. Install 1Password and sign in.

4. Download `.laptop.local`:
```shell
cd ~
curl --remote-name https://raw.githubusercontent.com/monfresh/dotfiles/master/dot_laptop.local
mv dot_laptop.local .laptop.local
```
5. Quit Terminal, and give it full disk access in System Preferences -> Security & Privacy -> Privacy tab -> Full Disk Access

6. Relaunch Terminal, and run the laptop script:
```shell
bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)
```
When prompted by chezmoi for email, enter the email you want to use for Git.
When prompted for location, enter `home` or `work`, so that the appropriate apps
and aliases are installed based on whether this is a home computer or work computer.
See [Brewfile.local.tmpl](https://github.com/monfresh/dotfiles/blob/master/Brewfile.local.tmpl) for an example.
When prompted for the github_token, get it from 1Password and paste it in.
This will allow us to authenticate to GitHub with the `gh` cli tool.

7. Restart the computer.

8. Read `~/.laptop.manual.md` for additional manual setup instructions:
```shell
bat ~/.laptop.manual.md
```
