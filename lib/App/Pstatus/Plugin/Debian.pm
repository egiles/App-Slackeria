package App::Pstatus::Plugin::Debian;

use strict;
use warnings;
use 5.010;

use parent 'App::Pstatus::Plugin::Whohas';

sub check {
	my ($self, $res) = @_;

	$self->run_whohas('debian', $self->{conf}->{name});
}

1;
