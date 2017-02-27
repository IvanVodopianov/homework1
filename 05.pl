#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Поиск количества вхождений строки в подстроку.

=head1 run ($str, $substr)

Функция поиска количества вхождений строки $substr в строку $str.
Печатает количество вхождений в виде "$count\n"
Если вхождений нет - печатает "0\n".

Примеры: 

run("aaaa", "aa") - печатает "2\n".

run("aaaa", "a") - печатает "4\n"

run("abcab", "ab") - печатает "2\n"

run("ab", "c") - печатает "0\n"

=cut

sub run {
    my ($str, $substr) = @_;
    my $num = 0;

    # ...
    # Вычисление количества вохождений строки $substr в строку $str,
    # ...

	while ($str =~ $substr) {
	$str =~ s/$substr// ;
	$num++ ;
	}

    print "$num\n";
}
#run ("aaaa","aa") ;
#run("aaaa", "a") ;
#run("abcab", "ab") ;
#run("ab", "c") ;
1;
