#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Вычисление простых чисел

=head1 run ($x, $y)

Функция вычисления простых чисел в диапазоне [$x, $y].
Печатает все положительные простые числа в формате "$value\n"
Если простых чисел в указанном диапазоне нет - ничего не печатает.

Примеры: 

run(0, 1) - ничего не печатает.

run(1, 4) - печатает "2\n" и "3\n"

=cut

sub run {
    my ($x, $y) = @_;
    for (my $i = $x; $i <= $y; $i++) {

        # ...
        # Проверка, что число простое
        # ...
		#print "from run: i = $i\n" ;

		if ( isPrime($i) and $i > 1 ) { print "$i\n" ; }

    }
}
sub isPrime ($) {
	my $x = shift;
	my $primeFlag = 1 ;

	for (my $i = $x - 1; $i > 1; $i--) {

		unless ( $x % $i ) { $primeFlag = 0 ;} 
	}

	if ( $primeFlag ) { return 1 ; }
	else { return 0 ; }
}
#run(0,1);
#run(1,4);
#run(20,30);
1;
