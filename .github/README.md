Dotfiles
========
My Linux / MacOS dotfiles setup.

The approach was taken from a [Medium article by Flavio Wuensche
](https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b) which in turn is based on [Hacker News solution proposed by StreakyCobra](https://news.ycombinator.com/item?id=11070797)

# Setup environment on a new computer
Clone the GIT repository
```bash
git clone --bare git@github.com:MarcelBochtler/dotfiles.git $HOME/.dotfiles
```

Define the alias in the current shell's scope
```bash
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```
Checkout content from the git repository to your `$HOME`
```bash
dot checkout
```

Get zsh plugins as submodules
```bash
dot submodule update --init --recursive
```

Configure the repositories' default behavior
```bash
dot config pull.rebase false
dot config pull.ff only
dot config --local status.showUntrackedFiles no
```

# Usage
## Update submodules
```bash
dot up
```

## Add new files
```bash
dot add .vimrc
dot commit -m "Add vimrc"
dot push
# Add new plugin
dot submodule add https://github.com/user/project .zsh/project
# And source the *.zsh script in .zshrc
```

# License
MIT License

Copyright (c) 2021 Marcel Bochtler

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.