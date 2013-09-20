
=head1 NAME

Acme::Person - A class representing a single person.

=head1 SYNOPSIS

  use Acme::Person;
  my $person = Acme::Person->new($name, $birth_year, $mother, $father);

=head1 DESCRIPTION


=cut

package Acme::Person;

use 5.10.0;
use strict;
use warnings;

our $VERSION = '0.01';

=head2 new($name, $birth_year, $mother, $father)

=cut

sub new {
	my ($class, $name, $birth_year, $mother, $father) = @_;

	my $self = {
		name       => $name,
		birth_year => $birth_year,
		mother     => $mother,
		father     => $father,
	};

	return bless $self, $class;
}
		

1;
__END__
=head1 SEE ALSO

=head1 AUTHOR

Kevin Goess <lt>kgoess@bepress.com<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by bepress

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
