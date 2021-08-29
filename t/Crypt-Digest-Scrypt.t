#! /usr/bin/perl
use strict;
use warnings;

use Test::More tests => 2;
BEGIN { use_ok('Crypt::Digest::Scrypt', qw(scrypt)) };

my $s = scrypt("123");
print "result: [$s]\n";

ok(1);
