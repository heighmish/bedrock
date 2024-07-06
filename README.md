# Dotfiles Using GNU Stow

## Requirements

Gnu stow

## Using

Clone repo to home directory, stow will default to relative targeting when symlinking files.

Run stow commands directly or use Makefile

### Stow Commands (mostly for my reference)

Symlink all files in current dir: `stow .` | `make stow`

Clean/Delete symlinks: `stow -D .` | `make clean`

Use the argument `-n` to simulate running the command without making any real filesystem changes
