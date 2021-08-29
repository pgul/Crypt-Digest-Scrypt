package Crypt::Digest::Scrypt;
use strict;
use warnings;

our $VERSION = '0.01';

use Exporter qw(import);
our @EXPORT_OK = qw(scrypt);

require XSLoader;
XSLoader::load('Crypt::Digest::Scrypt', $VERSION);

1;
__END__

=head1 NAME

Crypt::Digest::Scrypt - Perl extension for Scrypt key deviation function

=head1 SYNOPSIS

  ### Functional interface:
  use Crypt::Digest::Scrypt qw(scrypt);

  # calculate digest from string/buffer
  $scrypt_raw = scrypt('data string');

  ### OO interface:
  use Crypt::Digest::Scrypt;
  $d = Crypt::Digest::Scrypt->new;
  $result_raw  = $d->digest;     # raw bytes

=head1 DESCRIPTION

  Provides an interface to the Scrypt digest algorithm compatible with Litecoin
  Written in XS.

=head1 FUNCTIONS

=over

=item B<scrypt>

=back

=head1 METHODS

=over

=item B<new($text)>

=back

=cut
