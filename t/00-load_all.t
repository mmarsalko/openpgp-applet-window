use Test::Most;

use Module::Pluggable::Object;

# progs
ok(system("perl -c bin/openpgp-applet") eq 0);

# libs
my $finder = Module::Pluggable::Object->new(
               search_path => [ 'Crypt::OpenPGP_Applet' ],
             );
foreach my $class (grep !/\.ToDo/,
                   sort do { local @INC = ('lib'); $finder->plugins }) {
  use_ok($class);
}

done_testing();
