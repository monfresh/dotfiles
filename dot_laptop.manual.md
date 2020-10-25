## Dropbox
First, setup Dropbox, and wait for it to sync everything.

## Sublime Text 3
To [sync Sublime Text 3 settings](https://packagecontrol.io/docs/syncing) with Dropbox,
open Sublime Text to populate Application Support, then run:
```shell
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Sublime/User
```

## Moom
To set up [Moom prefs](https://manytricks.com/osticket/kb/faq.php?id=53), run:
```shell
defaults import com.manytricks.Moom ~/Dropbox/Moom/Moom.plist
```

## Keyboard Maestro
To [sync Keyboard Maestro macros](https://wiki.keyboardmaestro.com/Syncing_Macros_Between_Macs):
Select File->Start Syncing, select Open Existing, read the dialog,
then select the sync file in `~/Dropbox/Keyboard Maestro`, then import unique macros if any.

## Algo
To [add Algo profiles](https://github.com/trailofbits/algo#adding-or-removing-users):
1. On the source Mac, update the `users` list in `config.cfg`
2. `cd` to the algo directory, and `source .env/bin/activate`
3. Run `./algo update-users`
4. Put the new profile in Dropbox
5. On the [target Mac](https://github.com/trailofbits/algo#apple-devices), open WireGuard, click on it in the menu bar and open the
profile via `Import tunnel from file`.

## Heroku
To set up [Heroku auth](https://devcenter.heroku.com/articles/git#http-git-authentication), run `heroku login`.
This will automatically create a token in `~/.netrc`

## iTerm2
To [sync iTerm prefs](https://iterm2.com/documentation-preferences-general.html):
1. On the source Mac, create a folder in Dropbox to store the prefs.
2. Go to Preferences->General->Preferences.
3. Check `Load preferences from a custom folder or URL`
4. Click Browse and select the Dropbox folder.
5. Click Save Current Settings to Folder
6. On one Mac only, check `Save changes to folder when iTerm2 quits`.
7. On the target Mac, repeat steps 2-4

## Other
- Turn on FileVault
- Set up the printer via system prefs. It should automatically find it in the network.
