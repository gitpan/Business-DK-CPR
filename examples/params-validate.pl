#!/usr/bin/perl -w

# $Id: params-validate.pl 6941 2010-02-02 21:47:57Z jonasbn $

use strict;
use warnings;
use Params::Validate qw(:all);
use Business::DK::CPR qw(validateCPR);

eval {
    check_cpr(cpr => 1501721111);
};

if ($@) {
    print "CPR is not valid - $@\n";
}

eval {
    check_cpr(cpr => 1501720000);
};

if ($@) {
    print "CPR is not valid - $@\n";
}

sub check_cpr {
    validate( @_,
    { cpr =>
        { callbacks =>
            { 'validate_cpr' => sub { validateCPR($_[0]); } } } } );
    
    print $_[1]." is a valid CPR\n";

}
