
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Generate function (and its Rinci metadata) to access table data",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Perinci-Sub-Gen-AccessTable",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Perinci::Sub::Gen::AccessTable",
  "PREREQ_PM" => {
    "Data::Clone" => 0,
    "Data::Sah" => 0,
    "Lingua::EN::Numbers" => 0,
    "Lingua::ID::Nums2Words" => 0,
    "Log::Any" => 0,
    "Moo" => 0,
    "Perinci::CmdLine" => 0,
    "Perinci::Object::Metadata" => 0,
    "Perinci::Sub::Gen" => 0,
    "Perinci::Sub::GetArgs::Argv" => "0.13",
    "Perinci::Sub::Util" => "0.32",
    "Rinci" => "v1.1.13",
    "SHARYANTO::Role::I18NMany" => "0.17",
    "SHARYANTO::String::Util" => 0,
    "experimental" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => "0.96"
  },
  "VERSION" => "0.25",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



