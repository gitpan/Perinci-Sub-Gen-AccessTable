
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Generate function (and its Rinci metadata) to access table data",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-Sub-Gen-AccessTable",
  "dist_version" => "0.20",
  "license" => "perl",
  "module_name" => "Perinci::Sub::Gen::AccessTable",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
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
    "experimental" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [],
  "test_requires" => {
    "Test::More" => "0.96"
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
