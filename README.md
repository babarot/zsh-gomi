[![](https://raw.githubusercontent.com/b4b4r07/screenshots/master/gomi/logo.png)][gomi]

[![](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]

`zsh-gomi` is a simple trash tool that works on CLI.

## Description

The concept of the trashcan does not exist in Command-line interface ([CLI](http://en.wikipedia.org/wiki/Command-line_interface)). If you have deleted an important file by mistake with the `rm` command, it would be difficult to restore. Then, it's this `gomi`. Unlike `rm` command, it is possible to easily restore deleted files because `gomi` have the trashcan for the CLI. It is also possible to work with trashcan for Graphical user interface ([GUI](http://en.wikipedia.org/wiki/Graphical_user_interface)).

***DEMO:***

[![DEMO](https://raw.githubusercontent.com/b4b4r07/screenshots/master/zsh-gomi/demo.gif)][gomi]

## Features

- Easy to restore
- Quick preview feature
- Interacts nicely with [`Trash`](http://en.wikipedia.org/wiki/Trash_(computing))
- Supports [`Put Back`](http://www.mac-fusion.com/trash-tip-how-to-put-files-back-to-their-original-location/)

### Quick Look

Before you restore a file that was discarded from the trashcan, `gomi` has a function that browse the contents of the file. It is almost the same as the [Quick Look](http://en.wikipedia.org/wiki/Quick_Look) of OS X.
If the discarded file is a directory, it is recursively scan its contents and make the files and subdirectories list.

### Put Back

`gomi` supports [`Put Back`](http://www.mac-fusion.com/trash-tip-how-to-put-files-back-to-their-original-location/). Because it is possible to combine the GUI trashcan with `gomi`, it is possible to restore the discard file from the GUI menu. Currently it has supported OS X only.

## Usage

```console
$ gomi --help
usage: gomi [OPTIONS] files...
  gomi delete files like rm command
  but unlike rm, files are moved to trash box

options:
  -h, --help     show this help message
  -r, --restore  restore discarded files
  -s, --system   remove files to system trash box
```

Basic usage is...

1. **Remove!** Throw away the trash :package:

		$ gomi files

2. **Restore!** Scavenge the trash :mag:

		$ gomi -r

It is able to replace `rm` with `gomi`. However, on the characteristics of it, it dosen't have options such as `-f` and `-i` at all. The available option is `-r`.

To specify the location where you want to restore:

	$ gomi -r .

In the above example, it's restored to the current directory.

For more information, see `gomi --help`.

### Keymap

These are extended keybinds below.

| Keys | Actions |
|------|-------|
| Enter    | Restore the file under the cursor or selected files |
| C-v | Quick view (with `pygmentize` if available) |
| C-x(C-x) | Remove selected files really with `rm` command |

And about more keybinds see `man fzf`.

## Installation

### Using [zplug](https://github.com/b4b4r07/zplug)

```zsh
# Install zsh-gomi(If fzf is already installed)
zplug "b4b4r07/zsh-gomi", if:"which fzf"
```

zsh-gomi requires [fzf](https://github.com/junegunn/fzf) to work properly. If you don't have fzf in the `$PATH`, you should install fzf with zsh-gomi.

```zsh
# Install zsh-gomi with fzf
zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    rename-to:"fzf", \
    frozen:1

zplug "b4b4r07/zsh-gomi", \
    as:command, \
    use:bin/gomi, \
    on:junegunn/fzf-bin
```

## V.S.

- [andreafrancia/trash-cli](https://github.com/andreafrancia/trash-cli)

	> Command line interface to the freedesktop.org trashcan.

- [sindresorhus/trash](https://github.com/sindresorhus/trash)

	> Cross-platform command-line app for moving files and directories to the trash - A safer alternative to `rm`

:do_not_litter: Do not use litter, use [zsh-gomi][gomi].

## License

[MIT][license] © BABAROT (a.k.a. [b4b4r07](http://tellme.tokyo))

[license]: http://b4b4r07.mit-license.org
[gomi]: https://github.com/b4b4r07/zsh-gomi
