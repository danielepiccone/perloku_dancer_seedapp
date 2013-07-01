use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'app.pl',
  VERSION      => '1.0',
  AUTHOR       => 'Magnus Holm <judofyr@gmail.com>',
  EXE_FILES    => ['app.pl'],
  PREREQ_PM    => {'Dancer' => '1.0'},
  test         => {TESTS => 't/*.t'}
);

