=head1 NAME

Acme::FamilyTree - tracks People and their parent/child relationships

=head1 SYNOPSIS

  use Acme::FamilyTree;

=head1 DESCRIPTION


=cut

package Acme::FamilyTree;

use 5.10.0;
use strict;
use warnings;

use Acme::Person;

our $VERSION = '0.01';

=head2 load_people($filename)

A class method, given a path to a file with a comma-separate list of person 
attributes, will return a list of Acme::Person objects.

=cut

sub load_people {
	my ($class, $filename) = @_;

	open (my $fh, '<', $filename) || die "can't open $filename $!";

	my @people = ();

	while (<$fh>){

		s/#.+//;  

		/\S/ || next; 

		my @fields = split(',');

		my $person = Acme::Person->new(@fields);

		push @people, $person;
	}

	return @people;
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
