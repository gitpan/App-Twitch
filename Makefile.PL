use inc::Module::Install;

name 'App-Twitch';

perl_version '5.010';
all_from 'lib/App/Twitch.pm';

requires 'DateTime';
requires 'JSON';
requires 'Moose' => 1.15;
requires 'POE';
requires 'URI';
requires 'IO::All';
requires 'String::Truncate';
requires 'MooseX::POE' => 0.208;
requires 'MooseX::LogDispatch';
requires 'MooseX::Getopt';
requires 'POE::Component::RSSAggregator';
requires 'WWW::Shorten';
requires 'WWW::Shorten::Bitly';
requires 'Text::Trim';
requires 'Net::Twitter';

test_requires 'Test::More';

auto_install;

WriteAll;
