# Settings

## Setup
```bash
cd ~/
git init
git remote add origin git@github.com:kaa4ever/settings.git
git fetch origin
git checkout -b master --track origin/master
git pull
```

## Configuration
Add `source ~/zshalias` to the ~/.zshrc file.

## Tools
https://github.com/sindresorhus/quick-look-plugins/blob/master/readme.md

## iTerm jump words
To enable jumping words in iTerm by clicking `option + left` and `option + right` do the following:
- Go to __Preferences__ in iTerm
- Go to __Profile__
- Go to __Keys__
- Go to __Key Mappings__
- Add new mapping by click __+__
- Set the Keyboard shortcut
- Set __Action__ to __Send Escape Sequence__
- Set to `f` for jumping forward and `b` for jumping backwards.
