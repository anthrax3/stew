#!/bin/sh

cpanm -n --pp --installdeps . -L local
cpanm -n --pp Pod::Find Pod::Usage -L local

cpanm -n --pp App::FatPacker::Simple -L perl5
perl -Mlocal::lib=perl5 perl5/bin/fatpack-simple script/stew
