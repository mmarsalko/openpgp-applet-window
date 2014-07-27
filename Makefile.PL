#!/usr/bin/env perl
use strict;
use warnings;
use inc::Module::Install;

name 			'OpenPGP_Applet';
license			'gpl,artistic';
all_from 		'script/openpgp-applet';

requires		'Any::Moose';
requires		'Carp';
requires		'DateTime';
requires		'Encode';
requires		'File::ShareDir';
requires		'Glib';
requires		'Gtk2';
requires		'Gtk2::Gdk::Keysyms';
requires		'Gtk2::SimpleList';
requires		'I18N::Langinfo';
requires		'IO::Handle';
requires		'List::MoreUtils';
requires		'Locale::gettext';
requires		'namespace::autoclean';
requires		'POSIX';
requires		'Switch';


install_script 		'openpgp-applet';
install_share 		'share';
auto_manifest;


WriteAll;

