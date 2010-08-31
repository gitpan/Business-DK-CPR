#!/usr/bin/perl -w

# $Id: get_number.t 6656 2009-09-30 13:39:23Z jonasbn $

use strict;
use warnings;
use Test::More tests => 1;

use Class::Business::DK::CPR;

my $cpr = Class::Business::DK::CPR->new(1501729996);

is($cpr->get_number(), 1501729996);
