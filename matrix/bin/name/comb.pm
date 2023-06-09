package Chart::GGPlot::Guide;
package Chart::GGPlot::Setup;

use namespace::autoclean;
 
our $VERSION = '0.0011'; # VERSION
 
package parent;
 
use Types::Standard qw(Str);
 
package Chart::GGPlot::Types;
package Chart::GGPlot::Util;
 
 
for my $attr (qw(title key reverse)) {
    no strict 'refs';
    *{$attr} = sub { $_[0]->at($attr); }
}
 
 
1;
 
__END__

 
=pod
 
=encoding UTF-8
 
=head1 NAME
 
Chart::GGPlot::Guide - Role for guide
 
=head1 VERSION
 
version 0.0011
 
=head1 ATTRIBUTES
 
=head2 title
 
A string indicating a title of the guide. If an empty string, the
title is not show. By default (C<undef>) the name of the scale
object or the name specified in C<labs()> is used for the title.
 
=head2 key
 
=head2 reverse
 
=head1 AUTHOR
 
Stephan Loyd <sloyd@cpan.org>
 
=head1 COPYRIGHT AND LICENSE
 
This software is copyright (c) 2019-2020 by Stephan Loyd.
 
This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
 
=cut