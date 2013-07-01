Dancer seed app for Perloku
=======

Dancer version a sample Perl app deployed on Heroku with [Perloku](https://github.com/judofyr/perloku) buildpack 

## App.pl

```perl
#!/usr/bin/env perl
use Dancer;

get '/' => sub {
    "Hello World!"
};

dance;
```


## Makefile.PL

```perl
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'app.pl',
  VERSION      => '1.0',
  AUTHOR       => 'Daniele Piccone <mail@danielepiccone.com>',
  EXE_FILES    => ['app.pl'],
  PREREQ_PM    => {'Dancer' => '1.0'},
  test         => {TESTS => 't/*.t'}
);
```


## Perloku

```perl
#!/bin/sh
./app.pl daemon --port=$PORT
```

