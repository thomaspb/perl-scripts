#!/usr/bin/perl

# matching.pl
use strict; use warnings;

#my ($rnaseq, $gapdh) = @ARGV; 
my $sequence = "GAATTC";
# my $gene = @ARGV;
#if ($rnaseq =~ m/gapdh/i) {print "gapdh found\n";}
#else {print "no gapdh site found\n";}

############## substituting #################

$sequence =~ s/A/adenine/g;
print "$sequence\n";