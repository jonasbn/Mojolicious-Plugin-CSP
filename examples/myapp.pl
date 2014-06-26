#!/usr/bin/env perl
use Mojolicious::Lite;

use FindBin;
use lib "$FindBin::Bin/../lib";
use Cwd; #getcwd

plugin 'Mojolicious::Plugin::CSP' => { enable_builtin_csp_report_parser => 1 };

get '/' => sub {
  my $self = shift;

  $self->render('index');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
Welcome to the Mojolicious real-time web framework!

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
