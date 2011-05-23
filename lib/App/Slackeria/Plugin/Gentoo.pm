package App::Slackeria::Plugin::Gentoo;

use strict;
use warnings;
use 5.010;

use parent 'App::Slackeria::Plugin::Whohas';

our $VERSION = '0.1';

sub check {
	my ($self) = @_;

	return $self->run_whohas( 'gentoo', $self->{conf}->{name} );
}

1;

__END__

=head1 NAME

App::Slackeria::Plugin::Gentoo - Check project version in Gentoo

=head1 SYNOPSIS

In F<slackeria/config>

    [Gentoo]

=head1 VERSION

version 0.1

=head1 DESCRIPTION

This plugin queries a project and its version in Gentoo using whohas(1).

=head1 CONFIGURATION

None.

=head1 SEE ALSO

slackeria(1)

=head1 AUTHOR

Copyright (C) 2011 by Daniel Friesel E<lt>derf@finalrewind.orgE<gt>

=head1 LICENSE

  0. You just DO WHAT THE FUCK YOU WANT TO.
