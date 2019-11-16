# kefctl - a command line application for controlling KEF speakers

  This application only requires Perl 5.10.1 or newer to be installed and has no
  other dependencies. So it should run pretty much everywhere without too much
  trouble, especially on Linux.

  To my knowledge there is no documentation about the KEF control protocol. So
  every feature in kefctl had to be reverse engineered by capturing network
  traffic generated by the KEF Control mobile application talking to **KEF LSX**
  speakers (Firmware version 4.1). Most features should also work fine with the
  **KEF LS50 Wireless**, but that has not been tested.

## Features

  * Turn speakers on and off
  * Change input source
  * Change volume
  * Mute speakers
  * Standby modes
  * Inverse L/R speakers
  * Check current speaker status

```
Usage: kefctl [OPTIONS]

    kefctl -S
    kefctl -v 70
    kefctl --off
    kefctl -i optical
    kefctl -i bluetooth -s 20 -I
    kefctl -H 192.168.179.52 -p 50001 -i aux
    kefctl -r 5330819b0b

  Options:
    -h, --help                  Show this summary of available options
    -H, --host <host>           Speaker host, defaults to 192.169.178.52
    -i, --input <source>        Set input source to aux, bluetooth, optical or
                                wifi
    -I, --inverse               Inverse L/R speakers, this option can only be
                                used together with the --input option
    -m, --mute                  Mute speakers, the speakers can be unmuted by
                                setting a new volume with the --volume option
    -o, --off                   Turn speakers off, the KEF LSX can be turned
                                back on by setting an input source with the
                                --input option
    -p, --port <port>           Speaker port, defaults to 50001
    -r, --request <hex>         Send raw request in hex format and show response
                                (very useful for testing speaker features)
    -s, --standby <minutes>     Set standby time to 20, 60 or 0 (to turn standby
                                off), this option can only be used together with
                                the --input option
    -S, --status                Show current speaker status
    -v, --volume <percentage>   Set volume to a percentage value of 0-100, be
                                aware that every input source has its own volume
                                setting

  You can also set the KEFCTL_DEBUG environment variable to get diagnostics
  information printed to STDERR.
  ```

## Copyright and License

  Copyright (C) 2019, Sebastian Riedel.

  This program is free software, you can redistribute it and/or modify it under
  the terms of the Artistic License version 2.0
