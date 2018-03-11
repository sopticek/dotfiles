# Conky

My configuration files for the [Conky](https://github.com/brndnmtthws/conky) system monitoring tool. On my desktop, it looks like this:

[![Screenshot: Conky on Gentoo](screenshot-gentoo.png)](screenshot-gentoo.png)

## Installation

* Create the `$HOME/.conky` directory.

### System Monitoring

* Choose one of `.conky/.conkyrc-gentoo` or `.conky/.conkyrc-arch`, depending on your preferences. There are minor differences between these configuration files. The Gentoo one shows portage status like last portage synchronization, current progress of running `emerge`, current package that is emerged, current status of `emerge`, and Gentoo Linux Security Advisories (GLSA). You can see it [here](screenshot-gentoo.png). The Arch configuration file shows more detailed network information instead, as you can see [here](screenshot-arch.png).
* If you chose `.conky/.conkyrc-gentoo`, copy the following files into `$HOME/.conky/`:
	* `.conky/.conkyrc-gentoo`
	* `.conky/emerge-current.sh`
	* `.conky/emerge-progress.sh`
	* `.conky/emerge-status.sh`
	* `.conky/lastsync.pl`
* Otherwise, if you chose `.conky/.conkyrc-arch`, copy the following file into `$HOME/.conky/`:
	* `.conky/.conkyrc-arch`
* To preview, run `conky -c $HOME/.conky/.conkyrc-gentoo` or `conky -c $HOME/.conky/.conkyrc-arch`.
* To start `conky` automatically, add the above command to your window-manager startup file.

### Calendar

* Copy `.conky/.conkyrc-calendar` into `$HOME/.conky/`.
* To preview, run `conky -c $HOME/.conky/.conkyrc-calendar`.
* To start `conky` automatically, add the above command to your window-manager startup file.

### Quotes

* Install [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)). For example, in Gentoo, you need to emerge [fortune-mod](https://packages.gentoo.org/packages/games-misc/fortune-mod), and in Arch, install [fortune-mod](https://www.archlinux.org/packages/?name=fortune-mod), too.
* Copy the following files into `$HOME/.conky/`:
	* `.conky/.conkyrc-quote`
	* `.conky/quotes`
* Modify `$HOME/.conky/quotes` to your liking. You can add new qoutes to this file or delete the ones you do not like.
* Run `strfile $HOME/.conky/quotes` to create an index file suitable for use with the `fortune` program.
* To preview, run `conky -c $HOME/.conky/.conkyrc-quote`.
* To start `conky` automatically, add the above command to your window-manager startup file.
