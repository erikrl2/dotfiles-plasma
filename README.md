# Dotfiles

## Usage

Create alias `config=git --git-dir=$HOME/.dotfiles --work-tree=$HOME`

```sh
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/erikrl2/dotfiles-plasma.git dotfiles-tmp
```

Then move files to `$HOME` and delete `dotfiles-tmp`.

## Configuration

```sh
config config status.showUntrackedFiles no
```

## Examples

```sh
config status
config add .example
config commit -m 'Message'
config push

```

## (How this setup was created)

```sh
git init --bare ~/.dotfiles
config remote add origin https://github.com/erikrl2/dotfiles-plasma.git
```

