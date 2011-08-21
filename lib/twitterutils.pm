use strict;
use warnings;
use utf8;

package twitterutils;
use Net::Twitter::Lite;

sub init {
    die "Missing config.pl. Please run twitter-oauth command first" unless -f 'config.pl';
    my $config = do 'config.pl' or die "Cannot load config.pl. Plase re-run twitter-oauth command\n";
    return Net::Twitter::Lite->new(%$config);
}

1;

