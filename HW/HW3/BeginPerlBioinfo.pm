sub addACGT {
    my($dna) = @_;

    $dna .= 'ACGT';
    return $dna;
}



sub A_to_T {
    my($input) = @_;

    $dna = $input;

    $dna =~ s/A/T/g;

    return $dna;
}





sub codon2aa {

my($codon) = @_;
    
       if ( $codon =~ /TCA/i )    { return 'S' }    # Serine
    elsif ( $codon =~ /TCC/i )    { return 'S' }    # Serine
    elsif ( $codon =~ /TCG/i )    { return 'S' }    # Serine
    elsif ( $codon =~ /TCT/i )    { return 'S' }    # Serine
    elsif ( $codon =~ /TTC/i )    { return 'F' }    # Phenylalanine
    elsif ( $codon =~ /TTT/i )    { return 'F' }    # Phenylalanine
    elsif ( $codon =~ /TTA/i )    { return 'L' }    # Leucine
    elsif ( $codon =~ /TTG/i )    { return 'L' }    # Leucine
    elsif ( $codon =~ /TAC/i )    { return 'Y' }    # Tyrosine
    elsif ( $codon =~ /TAT/i )    { return 'Y' }    # Tyrosine
    elsif ( $codon =~ /TAA/i )    { return '_' }    # Stop
    elsif ( $codon =~ /TAG/i )    { return '_' }    # Stop
    elsif ( $codon =~ /TGC/i )    { return 'C' }    # Cysteine
    elsif ( $codon =~ /TGT/i )    { return 'C' }    # Cysteine
    elsif ( $codon =~ /TGA/i )    { return '_' }    # Stop
    elsif ( $codon =~ /TGG/i )    { return 'W' }    # Tryptophan
    elsif ( $codon =~ /CTA/i )    { return 'L' }    # Leucine
    elsif ( $codon =~ /CTC/i )    { return 'L' }    # Leucine
    elsif ( $codon =~ /CTG/i )    { return 'L' }    # Leucine
    elsif ( $codon =~ /CTT/i )    { return 'L' }    # Leucine
    elsif ( $codon =~ /CCA/i )    { return 'P' }    # Proline
    elsif ( $codon =~ /CCC/i )    { return 'P' }    # Proline
    elsif ( $codon =~ /CCG/i )    { return 'P' }    # Proline
    elsif ( $codon =~ /CCT/i )    { return 'P' }    # Proline
    elsif ( $codon =~ /CAC/i )    { return 'H' }    # Histidine
    elsif ( $codon =~ /CAT/i )    { return 'H' }    # Histidine
    elsif ( $codon =~ /CAA/i )    { return 'Q' }    # Glutamine
    elsif ( $codon =~ /CAG/i )    { return 'Q' }    # Glutamine
    elsif ( $codon =~ /CGA/i )    { return 'R' }    # Arginine
    elsif ( $codon =~ /CGC/i )    { return 'R' }    # Arginine
    elsif ( $codon =~ /CGG/i )    { return 'R' }    # Arginine
    elsif ( $codon =~ /CGT/i )    { return 'R' }    # Arginine
    elsif ( $codon =~ /ATA/i )    { return 'I' }    # Isoleucine
    elsif ( $codon =~ /ATC/i )    { return 'I' }    # Isoleucine
    elsif ( $codon =~ /ATT/i )    { return 'I' }    # Isoleucine
    elsif ( $codon =~ /ATG/i )    { return 'M' }    # Methionine
    elsif ( $codon =~ /ACA/i )    { return 'T' }    # Threonine
    elsif ( $codon =~ /ACC/i )    { return 'T' }    # Threonine
    elsif ( $codon =~ /ACG/i )    { return 'T' }    # Threonine
    elsif ( $codon =~ /ACT/i )    { return 'T' }    # Threonine
    elsif ( $codon =~ /AAC/i )    { return 'N' }    # Asparagine
    elsif ( $codon =~ /AAT/i )    { return 'N' }    # Asparagine
    elsif ( $codon =~ /AAA/i )    { return 'K' }    # Lysine
    elsif ( $codon =~ /AAG/i )    { return 'K' }    # Lysine
    elsif ( $codon =~ /AGC/i )    { return 'S' }    # Serine
    elsif ( $codon =~ /AGT/i )    { return 'S' }    # Serine
    elsif ( $codon =~ /AGA/i )    { return 'R' }    # Arginine
    elsif ( $codon =~ /AGG/i )    { return 'R' }    # Arginine
    elsif ( $codon =~ /GTA/i )    { return 'V' }    # Valine
    elsif ( $codon =~ /GTC/i )    { return 'V' }    # Valine
    elsif ( $codon =~ /GTG/i )    { return 'V' }    # Valine
    elsif ( $codon =~ /GTT/i )    { return 'V' }    # Valine
    elsif ( $codon =~ /GCA/i )    { return 'A' }    # Alanine
    elsif ( $codon =~ /GCC/i )    { return 'A' }    # Alanine
    elsif ( $codon =~ /GCG/i )    { return 'A' }    # Alanine
    elsif ( $codon =~ /GCT/i )    { return 'A' }    # Alanine
    elsif ( $codon =~ /GAC/i )    { return 'D' }    # Aspartic Acid
    elsif ( $codon =~ /GAT/i )    { return 'D' }    # Aspartic Acid
    elsif ( $codon =~ /GAA/i )    { return 'E' }    # Glutamic Acid
    elsif ( $codon =~ /GAG/i )    { return 'E' }    # Glutamic Acid
    elsif ( $codon =~ /GGA/i )    { return 'G' }    # Glycine
    elsif ( $codon =~ /GGC/i )    { return 'G' }    # Glycine
    elsif ( $codon =~ /GGG/i )    { return 'G' }    # Glycine
    elsif ( $codon =~ /GGT/i )    { return 'G' }    # Glycine
    else {
        print STDERR "Bad codon \"$codon\"!!\n";
        exit;
    }
}

sub codon2aa2 {
     my($codon) = @_;
  
        if ( $codon =~ /GC./i)        { return 'A' }    # Alanine
     elsif ( $codon =~ /TG[TC]/i)     { return 'C' }    # Cysteine
     elsif ( $codon =~ /GA[TC]/i)     { return 'D' }    # Aspartic Acid
     elsif ( $codon =~ /GA[AG]/i)     { return 'E' }    # Glutamic Acid
     elsif ( $codon =~ /TT[TC]/i)     { return 'F' }    # Phenylalanine
     elsif ( $codon =~ /GG./i)        { return 'G' }    # Glycine
     elsif ( $codon =~ /CA[TC]/i)     { return 'H' }    # Histidine
     elsif ( $codon =~ /AT[TCA]/i)    { return 'I' }    # Isoleucine
     elsif ( $codon =~ /AA[AG]/i)     { return 'K' }    # Lysine
     elsif ( $codon =~ /TT[AG]|CT./i) { return 'L' }    # Leucine
     elsif ( $codon =~ /ATG/i)        { return 'M' }    # Methionine
     elsif ( $codon =~ /AA[TC]/i)     { return 'N' }    # Asparagine
     elsif ( $codon =~ /CC./i)        { return 'P' }    # Proline
     elsif ( $codon =~ /CA[AG]/i)     { return 'Q' }    # Glutamine
     elsif ( $codon =~ /CG.|AG[AG]/i) { return 'R' }    # Arginine
     elsif ( $codon =~ /TC.|AG[TC]/i) { return 'S' }    # Serine
     elsif ( $codon =~ /AC./i)        { return 'T' }    # Threonine
     elsif ( $codon =~ /GT./i)        { return 'V' }    # Valine
     elsif ( $codon =~ /TGG/i)        { return 'W' }    # Tryptophan
     elsif ( $codon =~ /TA[TC]/i)     { return 'Y' }    # Tyrosine
     elsif ( $codon =~ /TA[AG]|TGA/i) { return '_' }    # Stop
     else {
         print STDERR "Bad codon \"$codon\"!!\n";
         exit;
     }
 }


sub codon2aa3 {
    my($codon) = @_;

    $codon = uc $codon;
 
    my(%genetic_code) = (
    
    'TCA' => 'S',    # Serine
    'TCC' => 'S',    # Serine
    'TCG' => 'S',    # Serine
    'TCT' => 'S',    # Serine
    'TTC' => 'F',    # Phenylalanine
    'TTT' => 'F',    # Phenylalanine
    'TTA' => 'L',    # Leucine
    'TTG' => 'L',    # Leucine
    'TAC' => 'Y',    # Tyrosine
    'TAT' => 'Y',    # Tyrosine
    'TAA' => '_',    # Stop
    'TAG' => '_',    # Stop
    'TGC' => 'C',    # Cysteine
    'TGT' => 'C',    # Cysteine
    'TGA' => '_',    # Stop
    'TGG' => 'W',    # Tryptophan
    'CTA' => 'L',    # Leucine
    'CTC' => 'L',    # Leucine
    'CTG' => 'L',    # Leucine
    'CTT' => 'L',    # Leucine
    'CCA' => 'P',    # Proline
    'CCC' => 'P',    # Proline
    'CCG' => 'P',    # Proline
    'CCT' => 'P',    # Proline
    'CAC' => 'H',    # Histidine
    'CAT' => 'H',    # Histidine
    'CAA' => 'Q',    # Glutamine
    'CAG' => 'Q',    # Glutamine
    'CGA' => 'R',    # Arginine
    'CGC' => 'R',    # Arginine
    'CGG' => 'R',    # Arginine
    'CGT' => 'R',    # Arginine
    'ATA' => 'I',    # Isoleucine
    'ATC' => 'I',    # Isoleucine
    'ATT' => 'I',    # Isoleucine
    'ATG' => 'M',    # Methionine
    'ACA' => 'T',    # Threonine
    'ACC' => 'T',    # Threonine
    'ACG' => 'T',    # Threonine
    'ACT' => 'T',    # Threonine
    'AAC' => 'N',    # Asparagine
    'AAT' => 'N',    # Asparagine
    'AAA' => 'K',    # Lysine
    'AAG' => 'K',    # Lysine
    'AGC' => 'S',    # Serine
    'AGT' => 'S',    # Serine
    'AGA' => 'R',    # Arginine
    'AGG' => 'R',    # Arginine
    'GTA' => 'V',    # Valine
    'GTC' => 'V',    # Valine
    'GTG' => 'V',    # Valine
    'GTT' => 'V',    # Valine
    'GCA' => 'A',    # Alanine
    'GCC' => 'A',    # Alanine
    'GCG' => 'A',    # Alanine
    'GCT' => 'A',    # Alanine
    'GAC' => 'D',    # Aspartic Acid
    'GAT' => 'D',    # Aspartic Acid
    'GAA' => 'E',    # Glutamic Acid
    'GAG' => 'E',    # Glutamic Acid
    'GGA' => 'G',    # Glycine
    'GGC' => 'G',    # Glycine
    'GGG' => 'G',    # Glycine
    'GGT' => 'G',    # Glycine
    );

    if(exists $genetic_code{$codon}) {
        return $genetic_code{$codon};
    }else{

            print STDERR "Bad codon \"$codon\"!!\n";
            exit;
    }
}


sub get_file_data {

    my($filename) = @_;

    use strict;
    use warnings;

    my @filedata = (  );
    unless( open(GET_FILE_DATA, $filename) ) {
       print STDERR "Cannot open file \"$filename\"\n\n";
       exit;
      }

     @filedata = <GET_FILE_DATA>;
     close GET_FILE_DATA;
     return @filedata;
 }



sub extract_sequence_from_fasta_data {

    my(@fasta_file_data) = @_;

    use strict;
    use warnings;

    my $sequence = '';

    foreach my $line (@fasta_file_data) {

        if ($line =~ /^\s*$/) {
            next;

        } elsif($line =~ /^\s*#/) {
            next;

        } elsif($line =~ /^>/) {
            next;

        } else {
            $sequence .= $line;
        }
    }

    $sequence =~ s/\s//g;

    return $sequence;
}




sub print_sequence {

    my($sequence, $length) = @_;

    use strict;
    use warnings;

    for ( my $pos = 0 ; $pos < length($sequence) ; $pos += $length ) {
        print substr($sequence, $pos, $length), "\n";
    }
}


sub dna2peptide {

    my($dna) = @_;

    use strict;
    use warnings;
    use BeginPerlBioinfo;     # see Chapter 6 about this module
   
   my $protein = '';

    for(my $i=0; $i < (length($dna) - 2) ; $i += 3) {
        $protein .= codon2aa( substr($dna,$i,3) );
    }

    return $protein;
}


sub translate_frame {

    my($seq, $start, $end) = @_;
    my $protein;

    unless($end) {
        $end = length($seq);
    }

return dna2peptide(substr ($seq,$start - 1, $end-$start + 1));
}


sub revcom {
    my($dna) = @_;
    my $revcom = reverse $dna;
    $revcom =~ tr/ACGTacgt/TGCAtgca/; # A->T, T->A, C->G, G->C
    return $revcom;
}





1;


