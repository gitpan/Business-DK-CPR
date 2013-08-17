# $Id: changes.t 8213 2013-08-11 09:51:43Z jonasbn $

use strict;
use warnings;

use Test::More;
eval 'use Test::CPAN::Changes';
plan skip_all => 'Test::CPAN::Changes required for this test' if $@;
changes_ok();