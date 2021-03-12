use 5.030000;
use strict;
use warnings;
use utf8;
use ExtUtils::MakeMaker 7.12; # for XSMULTI option
use ExtUtils::PkgConfig;

my $package = "augeas";
my %pkg_info = ExtUtils::PkgConfig->find ($package);
say "augeas modversion:  $pkg_info{modversion}";
say "augeas cflags:      $pkg_info{cflags}";
say "augeas libs:        $pkg_info{libs}";

WriteMakefile(
  NAME          => 'My::Augeas',
  VERSION_FROM  => 'lib/My/Augeas.pm',
  PREREQ_PM     => { 'ExtUtils::MakeMaker' => '7.12' },
  ABSTRACT_FROM => 'lib/My/Augeas.pm',
  AUTHOR        => 'Håkon Hægland <hakon.hagland@gmail.com>',
  OPTIMIZE      => '',
  XSMULTI       => 0,
  LICENSE       => 'perl',
  LIBS          => [$pkg_info{libs}],
  DEFINE        => '',
  INC           => $pkg_info{cflags},
);

