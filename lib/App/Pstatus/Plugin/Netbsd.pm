package App::Pstatus::Plugin::Netbsd;

use strict;
use warnings;
use 5.010;

use parent 'App::Pstatus::Plugin::Whohas';

sub check {
	my ($self, $res) = @_;

	$self->run_whohas('NetBSD', $self->{conf}->{name});
}

1;

__END__

=head1 NAME

B<App::Pstatus::Plugin::Netbsd> - Check project version in NetBSD

=head1 SYNOPSIS

In F<pstatus/config>

    [netbsd]

=head1 DESCRIPTION

This plugin queries a project and its version in the latest NetBSD version
using L<whohas>.

=head1 CONFIGURATION

None.

=head1 SEE ALSO

L<pstatus>

=head1 AUTHOR

Copyright (C) 2011 by Daniel Friesel E<lt>derf@finalrewind.orgE<gt>

=head1 LICENSE

  0. You just DO WHAT THE FUCK YOU WANT TO.
