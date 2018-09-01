#!/usr/bin/perl
use strict; 

# Checks output from a neural net against original training set
# Originally written for a list of birds, hence the birdy var names

# New list of exciting possibly novel words/phrases
my $newb = $ARGV[0];
open(my $nfh, $newb);
my @newbirds = <$nfh>;
close $nfh;

# Old list of real things
#my $oldb = 'sibley1993_training.txt';

#my $oldb = 'words.txt';
#my $oldb = '/usr/share/dict/words';
my $oldb = 'words_plus_dict_and_cracklib.txt';

open (my $ofh, $oldb);
my @oldbirds = <$ofh>;
close $ofh;

#my %oldcommon;
#my %oldlatin;

my %oldwords;

foreach my $word (@oldbirds){
    $oldwords{$word} = 1;
}

#use Data::Dumper;
#print Dumper(\%oldwords); die;

foreach my $new (@newbirds){
#    chomp $new;
    print "Checking $new...\n";
    if ($oldwords{$new}){
        print "NOPE! $new is real.\n";
    } else { 
        print $new, "\n";
    }
}

