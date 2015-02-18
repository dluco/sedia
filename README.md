Sedia
=====

Sedia is a simple dialog written in pure Bash to select the window manager session on login. It was created to serve as a replacement to large and complex login-managers such as SLiM and LightDM. This program is based on / inspired by cdm, The Console Display Manager.

Usage
-----

Invocation: $ sedia [config file]

Sedia is designed to be run automatically upon login into a virtual terminal (tty1 by default). The user can then select and launch the desired window manager session. Similar to display managers such as SLiM or GDM, logging out of the session will return the user to the login screen.

Sedia will source a config file at runtime from the following locations (in order):

- [command line]
- $HOME/.sediarc
- /etc/sediarc

To start Sedia automatically on login to tty1, copy the contents of sedia-profile.sh to the end of your ~/.bash_profile file. It is important to put the call to Sedia at the end of the file because the calling process (the shell) will be replaced with Sedia and execution of the file will stop at that line.

Customization
-------------

The color and other aspects of Sedia can be changed by specifying a theme file in the config using the "dialog_rc" option. A fully commented example can be generated with:
$ dialog --create-rc "file"

See /usr/share/sedia/themes for the default themes.

Dependencies
------------

Sedia depends only on bash and dialog, both of which should be included by default in any distribution.

Copying
-------

Copyright (C) 2014, David J. Luco <davidjluco@gmail.com>

Licensed under GPLv2+

Credits
-------

cdm (https://github.com/ghost1227/cdm)
