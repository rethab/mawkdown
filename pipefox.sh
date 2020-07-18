#!/bin/bash

# from stackoverflow (Snowball): https://unix.stackexchange.com/a/86897/39897
firefox "data:text/html;base64,$(base64 -w 0 <&0)"
