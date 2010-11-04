
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Your personal Twitter b...... lalalala',
  'AUTHOR' => 'Torsten Raudssus <torsten@raudssus.de>',
  'BUILD_REQUIRES' => {
    'Test::More' => '0.96'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'App-Twitch',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'App::Twitch',
  'PREREQ_PM' => {
    'Data::Dumper' => '0',
    'DateTime' => '0',
    'IO::All' => '0',
    'JSON' => '0',
    'Moose' => '1.15',
    'MooseX::Getopt' => '0',
    'MooseX::LogDispatch' => '0',
    'MooseX::POE' => '0.208',
    'Net::Twitter' => '0',
    'POE' => '0',
    'POE::Component::RSSAggregator' => '0',
    'POSIX' => '0',
    'String::Truncate' => '0',
    'Text::Trim' => '0',
    'URI' => '0',
    'WWW::Shorten' => '0',
    'WWW::Shorten::Bitly' => '0',
    'utf8' => '0'
  },
  'VERSION' => '0.002',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



