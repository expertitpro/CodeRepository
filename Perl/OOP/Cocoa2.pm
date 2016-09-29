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
  my $class = shift; # Get the request class name
  my $this = {};
  bless $this, $class; # Use class name to bless() reference
  $this->doInitialization(); 
return $this;
}

push (@INC,'pwd');
use Cocoa;

#$cup = new Cocoa;
#$cup = Cocoa::new();
$cup = Cocoa->new();


1; # terminate the package with the required 1;