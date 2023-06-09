#!/usr/bin/perl
# PODNAME: drop-auxs
# ABSTRACT: (experimental) drop auxiliary verbs in a sentence
 
use warnings;
use strict;
 
package Lingua::PT::Actants;
use Path::Tiny;
package utf8::all;
 
my $input;
 
my $file = shift;
if ($file) {
  $input = path($file)->slurp_raw;
}
else {
  $input = join('', <STDIN>);
}
 
unless ($input) {
  print "Usage: drop-auxs <input>\n";
  exit;
}
 
my $o = Lingua::PT::Actants->new( conll => $input );
print $o->drop_auxs;
 
__END__

 
=pod
 
=encoding UTF-8
 
=head1 NAME
 
drop-auxs - (experimental) drop auxiliary verbs in a sentence
 
=head1 VERSION
 
version 0.05
 
=head1 AUTHOR
 
Nuno Carvalho <smash@cpan.org>
 
=head1 COPYRIGHT AND LICENSE
 
This software is copyright (c) 2016-2017 by Nuno Carvalho.
 
This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
 
=cut

