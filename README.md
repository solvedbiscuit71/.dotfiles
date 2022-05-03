# Dotfiles

To use the dotfiles you need the appropriate program that we are configuring.Also the dependencies that the program requires.

__Note__:
The following installation are done assuming that you are using `macOS`. There may be some changes if you are using a `Linux`

# Installing dependencies

## Xcode Command Line Tools (only for macOS)

Xcode Command Line Tools comprised of development tools such as __git__ and many more.

```sh
xcode-select --install
```

## Homebrew

Homebrew is a package manager used for managing and installing packages

```sh
curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
```

## Terminal Emulator

A Terminal Emulator is a software that is used for accessing the shell such as __bash__ and __zsh__

use kitty,
```sh
brew install --cask kitty
```

or alacritty,
```sh
brew install --cask alacritty
```

## Oh My Zsh

oh my zsh is a framework for managing your zsh configuration & plugins

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

For more info: [https://github.com/ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

### Patched Font

Patched fonts includes many symbol which are used by other terminal program.
Here, we are using [JetBrains Mono](https://www.jetbrains.com/lp/mono/)

### Auto suggestion & Syntax Highlighting

Auto suggestion goes through your previous command and show suggestion based on that.

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

Syntax Highlighting provides nice highlights with commands.

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

### Dracula theme

To install Dracula theme,
1. Download using the [GitHub .zip download](https://github.com/dracula/zsh/archive/master.zip) option and unzip them.
2. Move `dracula.zsh-theme` to `~/.oh-my-zsh/themes`.
3. Move `/lib` to `~/.oh-my-zsh/themes`.

For more info : [https://draculatheme.com](https://draculatheme.com)

## Neovim

Check neovim's GitHub page, [https://github.com/neovim/neovim](https://github.com/neovim/neovim)

```sh
brew install neovim
```

### +python3 support

+python3 support is essential for plugins like UltiSnips,vimspector,.

```sh
brew install python3
pip3 install neovim
```

__Note__:  
comment the line `require'mysnippets'` in `init.lua` to avoid **module not found** error.

## Stow

Stow is a __symlink manager__ which is used to manager the dotfiles via creating symlink in there respected locations.

```sh
brew install stow
```

# Setting .dotfiles

After installing all of the dependencies. Clone the repository by,

```sh
git clone https://github.com/solvedbiscuit71/.dotfiles.git ~/.dotfiles
```

Before running the install script add user privileges for executing.

```sh
cd ~/.dotfiles/
chmod +x install.sh remove.sh clear_env.sh
./install.sh
```

Then, restart your terminal for the changes to take effect.

__Note__:
if configuration files already exist, it's move to `~/.dotfiles_backup/`
