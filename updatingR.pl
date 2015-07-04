#!usr/bin/perl

#updating R software

use warnings; use strict;
#to install R on your computer   
if(!require(installr)) {
install.packages("installr"); require(installr)}