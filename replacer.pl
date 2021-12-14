#!/usr/bin/perl

$word_find=$ARGV[0];

$word_replace=$ARGV[1];

$input_file=$ARGV[2];


if ( $word_find eq "" || $word_replace eq "" || $input_file eq "" ) {
	print "# Three inline variables are required: word_find word_replace input_file_path\n";
	print "# Example: text_block_replacer.pl two cats in.txt\n";
	exit();
}




open (DATAFILE, $input_file);


while(<DATAFILE>) {

	$line = $_;

	$line =~ s/$word_find/$word_replace/g;

	print "$line";
}







