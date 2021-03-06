#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Вычисление корней квадратного уравнения a*x**2+b*x+c=0.

=head1 run ($a_value, $b_value, $c_value)

Функция вычисления корней квадратного уравнения.
Принимает на вход  коэфиценты квадратного уравнения $a_value, $b_value, $c_value.
Вычисляет корни в переменные $x1 и $x2.
Печатает результат вычисления в виде строки "$x1, $x2\n".
Если уравнение не имеет решания должно быть напечатано "No solution!\n"

Примеры: 

run(1, 0, 0) - печатает "0, 0\n"

run(1, 1, 0) - печатает "0, -1\n"

run(1, 1, 1) - печатает "No solution!\n"

=cut

sub run {
    my ($a_value, $b_value, $c_value) = @_;

    my $x1 = undef;
    my $x2 = undef;

    #...
    #Вычисление корней
    #...

	my $D = undef;


	#unless equation is not linear:
	unless ($a_value == 0.0) {

	$D = $b_value * $b_value - 4.0 * $a_value * $c_value ;

	if ($D  < 0.0) {
		#print "Discriminat is less than zero!\n";
		print "No solution!\n";
	}

	if ($D == 0.0) {
		#print "Discriminat is zero!\n";
		$x1 = -0.5 * $b_value / $a_value;
		$x2 = $x1
	}

	if ($D  > 0.0) {
		#print "Discriminat is greather than zero!\n";
		$x1 = ( -1.0 * $b_value + sqrt($D) ) / $a_value / 2.0;
		$x2 = ( -1.0 * $b_value - sqrt($D) ) / $a_value / 2.0;

	}

	unless ($D  < 0.0) { print "$x1, $x2\n"; }
	}
	else {
	print "No solution!\n";	
	}
}
#run(1,0,0);
#run(1,1,0); 
#run(-2,0,128);  

1;
