# dotfiles

These dotfiles are managed by [chezmoi](https://www.chezmoi.io/).

To set up a new Mac:

1. Install all macOS updates.

2. Sign into the Mac App Store, otherwise installing apps via [mas](https://github.com/mas-cli/mas) won’t work.

3. Install 1Password and sign in.

4. Grab the GitHub token from 1Password and put it in `~/.github_token.txt`:
```shell
touch ~/.github_token.txt
echo "token_from_1Password" >> ~/.github_token.txt
```
This will allow us to authenticate to GitHub with the `gh` cli tool.

5. Download `.laptop.local`:
```shell
cd ~
curl --remote-name https://raw.githubusercontent.com/monfresh/dotfiles/master/dot_laptop.local
mv dot_laptop.local .laptop.local
```
6. Quit Terminal, and give it full disk access in System Preferences -> Security & Privacy -> Privacy tab -> Full Disk Access

7. Relaunch Terminal, and run the laptop script:
```shell
bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)
```
When prompted by chezmoi for email, enter the email you want to use for Git.
When prompted for location, enter `home` or `work`, so that the appropriate apps
and aliases are installed based on whether this is a home computer or work computer.
See [Brewfile.local.tmpl](https://github.com/monfresh/dotfiles/blob/master/Brewfile.local.tmpl) for an example.

8. Restart the computer.

9. Read `~/.laptop.manual.md` for additional manual setup instructions:
```shell
bat ~/.laptop.manual.md
```
