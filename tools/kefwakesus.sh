#!/bin/sh
if [ "${1}" == "pre" ]; then
  sudo -u username /bin/perl /path/to/kefctl -W

elif [ "${1}" == "post" ]; then
  sudo -u username /bin/perl /path/to/kefctl -w
fi
