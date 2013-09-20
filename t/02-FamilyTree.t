

use strict;
use warnings;

use Test::More tests => 5;
use FindBin qw/$Bin/;
use Data::Dump qw/dump/;

use Acme::FamilyTree;


my @people = Acme::FamilyTree->load_people("$Bin/../samples/bruno-tree.csv");

#dump \@people;

is scalar(@people), 12, "12 people loaded from bruno-tree.csv";

is $people[0]{name}, 'Frank Giordano';
is $people[0]{birth_year}, 1999;

is $people[11]{name}, 'Michael Giordano';
is $people[11]{mother}, 'Jeanette Mobley';

