#!/usr/bin/env/perl

use strict;
use warnings qw(all);

use Test::More;

unless ( $ENV{RELEASE_TESTING} ) {
    plan( skip_all => "Author tests not required for installation" );
}

eval "use Test::CheckManifest 0.9";
plan skip_all => "Test::CheckManifest 0.9 required" if $@;
#ok_manifest( { filter => [ qr'\.bak$', qr'\.svn/', qr'\.swp$' ] } );
ok_manifest();
