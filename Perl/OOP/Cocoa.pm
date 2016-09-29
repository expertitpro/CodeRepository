#!/usr/bin/perl
use strict;
use warnings;

package Cocoa;
#
# Put "require" statements in for all required,imported packages
#
#
# Just add code here
#
#sub new {
#  my $this = {}; # Create an anonymous hash, and #self points to it.
#  bless $this; # Connect the hash to the package Cocoa.
#  return $this; # Return the reference to the hash.
#}

sub new {
  my $this = {}; # Create an anonymous hash, and #self points to it.
  print "\n /* \n ** Created by Cocoa.pm \n ** Use at own risk";
  print "\n ** Did this code even get pass the javac compiler? ";
  print "\n **/ \n";
  bless $this;  # Connect the hash to the package Cocoa.
return $this;   # Return the reference to the hash.
}

push (@INC,'pwd');
use Cocoa;

#$cup = new Cocoa;
#$cup = Cocoa::new();
$cup = Cocoa->new();


1; # terminate the package with the required 1;