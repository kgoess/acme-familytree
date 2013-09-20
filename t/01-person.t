
use strict;
use warnings;

use Test::More tests => 4;

use Acme::Person;

my $person = Acme::Person->new('Bob Smith', 1923, 'Mary Jones', 'John Smith');

is $person->{name}, 'Bob Smith';
is $person->{birth_year}, '1923';
is $person->{mother}, 'Mary Jones';
is $person->{father}, 'John Smith';
