#!/bin/sh
if [ "${1}" == "pre" ]; then
  sudo -u username /bin/perl /path/to/kefctl -B

elif [ "${1}" == "post" ]; then
  sudo -u username /bin/perl /path/to/kefctl -b
fi
