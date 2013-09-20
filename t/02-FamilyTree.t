use strict;
use warnings;

use Test::More tests => 7;
use FindBin qw/$Bin/;
use Data::Dump qw/dump/;

use Acme::FamilyTree;


my @people = Acme::FamilyTree->load_people("$Bin/../samples/bruno-tree.csv");

#dump \@people;

is scalar(@people), 12, "12 people loaded from bruno-tree.csv";

Acme::FamilyTree->link_children(@people);


my $michael = $people[11];
my $children_of_michael = $michael->{children};
is scalar(@$children_of_michael), 3;
is ref($children_of_michael->[0]), 'Acme::Person';
is $children_of_michael->[0]{name}, 'Kevin Giordano';


my $kevin = $people[7];
my $children_of_kevin = $kevin->{children};
is scalar(@$children_of_kevin), 1;
is ref($children_of_kevin->[0]), 'Acme::Person';
is $children_of_kevin->[0]{name}, 'Frank Giordano';




	
