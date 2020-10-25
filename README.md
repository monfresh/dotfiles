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
4. Create `~/.config/chezmoi/chezmoi.toml` and add machine-specific variables:
```shell
[data]
  email = "moncef@example.com"
  location = "home"
```
This allows conditionally excluding or including things based on a work vs home
machine, for example.
4. Install chezmoi and apply the dotfiles:
```shell
curl -sfL https://git.io/chezmoi | sh
chezmoi init --apply --verbose https://github.com/monfresh/dotfiles.git
```
5. Give Terminal full disk access in System Preferences -> Security & Privacy -> Privacy tab -> Full Disk Access
7. Run laptop script:
```shell
bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)
```
8. Restart the computer.
9. Read the end of `~/.laptop.local` for additional manual setup instructions.
