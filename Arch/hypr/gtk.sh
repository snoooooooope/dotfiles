#!/bin/sh

gnome_schema="org.gnome.desktop.interface"

gsettings set "$gnome_schema" gtk-theme "Breeze-Dark"

gsettings set org.gnome.desktop.interface color-scheme prefer-dark
