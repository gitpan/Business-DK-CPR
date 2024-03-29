# Build.PL for Business-DK-CPR

# $Id$

use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
	dist_author        => 'Jonas B. Nielsen, (jonasbn) <jonasbn@cpan.org>',
	module_name        => 'Business::DK::CPR',
	dist_version_from  => 'lib/Business/DK/CPR.pm',
	license            => 'artistic',
    #REF: http://logicLAB.jira.com/wiki/display/OPEN/Module-Build#Module-Build-AutogeneratetheMakefile.PLforbackwardscompatibility
	create_makefile_pl => 'traditional',
	create_readme      => 1,
	recursive_test_files => 1,
	requires => {
	    'Exporter'          => '0', #core
		'Carp'              => '0', #core
		'Business::DK::CVR' => '0.01',
		'Date::Calc'        => '0',
		'Tie::IxHash'       => '0',
		'Class::InsideOut'  => '0',
        'Readonly'          => '0',
		'Params::Validate'  => '0',
		'perl'              => '5.10.0',
	},
    build_requires       => {
        'Test::More' => '0',    #core
        'Test::Exception' => '0',
		'Test::Kwalitee' => '0',
		'Test::Perl::Critic' => '0',
		'Test::Prereq::Build' => '0',
    },
    meta_merge => {
        resources => {
            homepage => 'http://logiclab.jira.com/wiki/display/BDKCPR/Home',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Business-DK-CPR',
            repository => 'https://github.com/jonasbn/bdkcpr',
            ProjectChangelog =>
                'http://logiclab.jira.com/browse/BDKCPR#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel',
            ProjectSite => 'http://logicLAB.jira.com/browse/BDKCPR',
            ProjectWiki => 'http://logiclab.jira.com/wiki/display/BDKCPR/Home',
        }
    },
);
$build->create_build_script();

__END__

=pod

=head1 SEE ALSO

=over

=item * L<http://logicLAB.jira.com/wiki/display/OPEN/Module-Build#Module-Build-AutogeneratetheMakefile.PLforbackwardscompatibility>

=back

=cut
