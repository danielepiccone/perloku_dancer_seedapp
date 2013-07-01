#!/usr/bin/env perl
use Dancer;

get '/' => sub {
    "Hello World!"
};

dance;

