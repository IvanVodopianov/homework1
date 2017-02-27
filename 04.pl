#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Поиск номера первого не нулевого бита.

=head1 run ($x)

Функция поиска первого ненулевого бита в 32-битном числе (кроме 0).
Печатает номер первого ненулевого бита в виде "$num\n"

Примеры: 

run(1) - печатает "0\n".

run(4) - печатает "2\n"

run(6) - печатает "1\n"

=cut

sub run {
    my ($x) = @_;
    my $num = 0;

    # ...
    # Вычисление номера первого ненулевого бита 
    # ...

	# 9876543210 bits
	# 1110010100 binary number

	$num = firstNonZeroBit($x) ;

    print "$num\n";
}

sub firstNonZeroBit {
	my ($x) = shift ;
	my $num = 0 ;

	my ($bin) = 0 ;
	my @bits = () ;

	$bin = sprintf ("%b", $x) ;
	@bits = split (//, $bin) ;

	while (!$bits[ -1 - $num ]) { $num++ ;}

	return $num ;

}
#run(1);
#run(4);
#run(6);

1;
