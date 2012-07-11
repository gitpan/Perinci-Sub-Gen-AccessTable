
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => "0.96"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Generate function (and its Rinci metadata) to access table data",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-Sub-Gen-AccessTable",
  "dist_version" => "0.13",
  "license" => "perl",
  "module_name" => "Perinci::Sub::Gen::AccessTable",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Clone" => 0,
    "Data::Sah" => 0,
    "Lingua::EN::Numbers" => 0,
    "Lingua::ID::Nums2Words" => 0,
    "Moo" => 0,
    "Perinci::Sub::GetArgs::Argv" => "0.13",
    "Rinci" => "1.1.13",
    "SHARYANTO::Role::I18NMany" => "0.17",
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
