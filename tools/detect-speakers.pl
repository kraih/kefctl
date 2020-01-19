#!/usr/bin/perl
#
# Copyright (C) 2020, Sebastian Riedel.
#
# This program is free software, you can redistribute it and/or modify it under
# the terms of the Artistic License version 2.0
#
use strict;
use warnings;
use 5.10.1;

# You need to install these two modules from CPAN yourself
use Net::UPnP::ControlPoint;
use URI;

# Detect speakers with UPnP
my $upnp = Net::UPnP::ControlPoint->new;
for my $dev ($upnp->search(st => 'upnp:rootdevice', mx => 3)) {
  my $type = $dev->getdevicetype;
  next unless $type =~ /urn:schemas-upnp-org:device:MediaRenderer/;

  my $location = $dev->getlocation         || '';
  my $host     = URI->new($location)->host || 'Unknown';

  my $friendly     = $dev->getfriendlyname     || 'Unknown';
  my $manufacturer = $dev->getmanufacturer     || 'Unknown';
  my $model        = $dev->getmodeldescription || 'Unknown';

  say "$host: $friendly ($manufacturer $model)";
}
