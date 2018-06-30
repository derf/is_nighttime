#!/usr/bin/env perl

use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
	build_requires => {
		'Test::Compile' => 0,
		'Test::Pod' => 0,
	},
	dist_name => 'is_nighttime',
	dist_version_from => 'bin/is_nighttime',
	license => 'perl',
	requires => {
		'perl' => '5.20.0',
		'File::Slurp' => 0,
		'Getopt::Long' => 0,
		'Net::MQTT::Simple' => 0,
		'Time::HiRes' => 0,
	},
	sign => 1,
);
$build->create_build_script();
