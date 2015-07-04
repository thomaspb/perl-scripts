#!user/bin/perl

use warnings; use strict;

my $sequence = "AACTAGCGGAATTCCGACCGT";
$sequence =~ s/GAATTC/gaattc/;
print "$sequence\n";
$sequence =~ s/A/adenine/;
print "$sequence\n";
$sequence =~ s/C//;
print "$sequence\n";
$sequence =~ s/C//g; #add "g" on the end to specify a global operation. ie substitutes all the C's
print "$sequence\n";

my $protein = "MVGGKKKTKICDKVSHEEDRISQLPEPLISEILFHLSTKDLWQSVPGLD";
print "Protein contains proline\n" if ($protein =~ m/p/i);
else {print "babow\n"}




if ($sequence =~ m/GAATTC/) {print "EcoRI site found\n"}
else {print "no EcoRI site found\n"}