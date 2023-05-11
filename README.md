# Dotfiles

*Important*: Create alias `config=git --git-dir=$HOME/.dotfiles --work-tree=$HOME`

## Get Started

```sh
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/erikrl2/dotfiles-plasma dotfiles-tmp
```

Then move files to `$HOME` and delete `dotfiles-tmp`.

## Configuration

```sh
config config status.showUntrackedFiles no
```

## Usage

```sh
config status
config add .example
config commit -m 'Message'
config push

```

## How to create such setup?

```sh
git init --bare ~/.dotfiles
config remote add origin https://github.com/user/repo.git
```

