#!/usr/bin/perl -w
use strict;

my (@files, $filename);
@files = glob "*"; # Change to match fewer files if desired
foreach $filename (@files)
{
  # Skip the two special files (don't know how the rename
  # would affect these...)
  next if ($filename eq '.') || ($filename eq '..');
  rename $filename, lc($filename);
}
