# $Id$

use strict;
use warnings;

my @boilerplates = qw(critic.t);

use SVN::Client;
my $ctx = new SVN::Client(
    auth => [
        SVN::Client::get_simple_provider(),
        SVN::Client::get_simple_prompt_provider( \&simple_prompt, 2 ),
        SVN::Client::get_username_provider()
    ]
);

foreach my $file (@boilerplates) {
	if (-e $file) {
		$ctx->diff_summarize()
		
	}
}

