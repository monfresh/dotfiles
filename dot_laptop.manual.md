## Dropbox
First, setup Dropbox, and wait for it to sync everything.

## Sync app prefs
```
sh ~/.laptop.app_prefs
```

## Sublime Text
View -> Hide Minimap

Might need to install Package control first for all the other packages to sync.

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

## Alfred
To [sync Alfred settings](https://www.alfredapp.com/help/advanced/sync/):

On Primary Mac:
1. Launch Alfred's preferences to the Advanced tab.
2. In the bottom right, you will see the Syncing settings. Click on "Set preferences folder…"
3. Choose a location within Dropbox where you want to sync your settings (e.g. ~/Dropbox/Alfred/) and click "Set folder and restart Alfred"
4. Alfred will relaunch, using the settings location you've just set on Dropbox
5. You'll see the Dropbox spinning arrows as it syncs your settings to your online account. Allow Dropbox to sync fully before starting setup on your second Mac.

On other Macs:
**Before you start, ensure that Dropbox is fully up-to-date and has synced all previously changed files from your other Mac.**

1. Check that Dropbox has synced your newly added settings file from your online account. You should see an Alfred.alfredpreferences file in the Dropbox folder you picked, and the Dropbox icon should no longer be showing spinning arrows.
2. Launch Alfred's preferences to the Advanced tab and click on the "Set preferences folder…"
3. Find the Dropbox folder in which your first Mac's Alfred.alfredpreferences file is located and click "Set folder and restart Alfred"
4. Once Alfred has restarted, you'll be using your synced settings.

## Safari
- View -> Show status bar

## Mail
- Set up Fastmail

## Dash
- Download Docsets. Look into automating this:
- https://github.com/Kapeli/feeds
- http://lucasg.github.io/2017/02/05/Downloading-Dash-docsets/
- https://gist.github.com/lucasg/174e04125391f6e24b6f1070fc489a8d
- Remember there's an Alfred integration

## Slack
- Sign in to workspaces. Is there a way to automate this?

## Other
- Turn on FileVault
- Set up the printer via system prefs. It should automatically find it in the network.

## Security & Privacy System Preferences
### Full Disk Access
Grant full disk access to these apps:
* Backblaze
* Alfred4
* Bookmacster
* iTerm

### Screen Recording
* Screenflow
* Zoom

### Duplicate Detective 2
Email support. The download link in email confirmation doesn't work, and you can't download the app from their site without buying it again.
https://fiplab.com/apps/duplicated-detective-2-for-mac
