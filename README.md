# yazi-zoxide-zsh-wrapper
This plugin for [zsh](https://www.zsh.org) adds just one shortcut, but unfolds the magic of both [Zoxide](https://github.com/ajeetdsouza/zoxide) and [yazi](https://github.com/sxyazi/yazi/) 🧙

Without arguments, `y` just opens yazi. If you supply an argument that is a directory, yazi is opened in that directory. But if you supply anything else as an argument, `zoxide` is called with the argument and `yazi` is opened there.

This fork also adds the functinality suggested from <https://yazi-rs.github.io/docs/quick-start/#shell-wrapper>. So use `y` instead of yazi to start, and press `q` to quit, you'll see the CWD changed. Sometimes, you don't want to change, press `Q` to quit.

## Installation
Install the zsh plugin using your favorite plugin manager.

## History
This is shamelessly/efficiently copied from [ranger-zoxide](https://github.com/fdw/ranger-zoxide), which was also just an interation of [ranger-autojump](https://github.com/fdw/ranger-autojump).
