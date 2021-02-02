# Utilities for Gentoo Linux

## Quick Start

To install, download the file 'gentoo_utils.sh' and put into `/etc/profile.d/`.

## Usage

### Aliases

* `ll` - list files in long listing format
* `today` - show current date in 'yyyy-mm-dd' format
* `now` - show current time in 'yyyymmddHHMMSS' format
* `top` - use 'htop' instead of 'top' if available

In addition, '-i' was added to command 'cp', 'mv' and 'rm', in order to avoid wrongly overwriting.

#### Functions

* `emerge_sync` - download latest portage tree of gentoo
* `emerge_upgrade` - upgrade all packages in system
* `emerge_monitor` - monitor emerge log files
* `emerge_log` - show history (with date) of emerge
* `emerge_cleanup` - clean up old packages
