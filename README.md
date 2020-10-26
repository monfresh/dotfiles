# dotfiles

These dotfiles are managed by [chezmoi](https://www.chezmoi.io/).

To set up a new Mac:

1. Install all macOS updates.
1. Sign into the Mac App Store, otherwise installing apps via [mas](https://github.com/mas-cli/mas) won’t work.
2. Install 1Password and sign in.
3. Grab the GitHub token from 1Password and put it in `~/.github_token.txt`:
```shell
touch ~/.github_token.txt
echo "token_from_1Password" >> ~/.github_token.txt
```
This will allow us to authenticate to GitHub with the `gh` cli tool. See this
line in `dot_laptop.local`:
```shell
gh auth login --with-token < ~/.github_token.txt`
```
4. Create `~/.config/chezmoi/chezmoi.toml` and add machine-specific variables:
```shell
[data]
  email = "moncef@example.com"
  location = "home"
```
This allows conditionally excluding or including things based on a work vs home
machine. See [Brewfile.local.tmpl](https://github.com/monfresh/dotfiles/blob/master/Brewfile.local.tmpl) for an example.

5. Give Terminal full disk access in System Preferences -> Security & Privacy -> Privacy tab -> Full Disk Access
6. Download `.laptop.local`:
```shell
cd ~
curl --remote-name https://raw.githubusercontent.com/monfresh/dotfiles/master/dot_laptop.local
mv dot_laptop.local .laptop.local
```
7. Run laptop script:
```shell
bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)
```
8. Restart the computer.
9. Read `~/.laptop.manual.md` for additional manual setup instructions:
```shell
bat ~/.laptop.manual.md
```
