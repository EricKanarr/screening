#!/usr/bin/perl -s
use strict;
use warnings;

use DBI;

my @table_data = ( { first_name => 'Rose',
                     last_name  => 'Tyler',
                     home       => 'Earth' },
                   { first_name => 'Zoe',
                     last_name  => 'Heriot',
                     home       => 'Space Station W3'},
                   { first_name => 'Jo',
                     last_name  => 'Grant',
                     home       => 'Earth'},
                   { first_name => 'Leela',
                     last_name  => '',
                     home       => 'Unspecified'},
                   { first_name => 'Romana',
                     last_name  => '',
                     home       => 'Gallifrey'},
                   { first_name => 'Clara',
                     last_name  => 'Oswald',
                     home       => 'Earth'},
                   { first_name => 'Adric',
                     last_name  => '',
                     home       => 'Alzarius'},
                   { first_name => 'Susan',
                     last_name  => 'Foreman',
                     home       => 'Gallifrey'} );

my $dbh = DBI->connect('dbi:SQLite:dbname=test.sqlite','','',{AutoCommit=>1,RaiseError=>1,PrintError=>0});
