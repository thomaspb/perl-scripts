#!usr/bin/perl
# sequence scrambler

use strict; use warnings;

print "Everyday I'm sequence shuffling\n";

my ($sequence) = @ARGV; #write your sequence into the command line following "perl sequencescrambler.pl"
	my $length = length $sequence;
		print "Length of sequence to scramble is $length mer\n";
			print "Original nucleotide sequence: $sequence\n";
				die "add nucleotide sequence to command line you gimp\n" unless ($length >= 2); #this kills the scriptpyth it if the sequence is 2 or less
					die "what kind of effective nucleotide sequence is less than 15 nucleotides you cowboy sonofabitch\n" unless ($length > 15);
my @split = split ('', $sequence);

#to scramble nucleotide sequences
for (my $i = 0; $i < $length; $i++){
	my $rand_index_1 = int rand ($length); #do not want any decimal places, therefore "int" = integer number
		my $rand_index_2 = int rand ($length);
			splice (@split, $rand_index_1, 1, $split [$rand_index_2]);
}

my $rand_sequence = join("", @split);
	print "Scrambled nucleotide sequence: $rand_sequence\n";
		die "Sequence shuffled is the same as the original sequence\n" unless ($rand_sequence ne $sequence);
		

print "Input new scrambled nucleotide sequence into BLAST (http://blast.ncbi.nlm.nih.gov/Blast.cgi)\n"; 

################ END OF SCRIPT ##################



