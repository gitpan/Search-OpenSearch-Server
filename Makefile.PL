use strict;
use warnings;
use inc::Module::Install;
use 5.008003;

name 'Search-OpenSearch-Server';
perl_version '5.8.3';
all_from 'lib/Search/OpenSearch/Server.pm';
requires 'Test::More'         => 0;
requires 'Search::OpenSearch' => '0.400';
requires 'Plack'              => 0;
requires 'JSON'               => 0;
requires 'Try::Tiny'          => 0;
requires 'Type::Tiny'         => 0;
requires 'Moose'              => 0;

recommends 'Catalyst::Runtime'            => 0;
recommends 'Catalyst::Action::RenderView' => 0;

license 'http://dev.perl.org/licenses/';
homepage 'https://github.com/karpet/search-opensearch-server';
bugtracker
    'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Search-OpenSearch-Server';
repository 'http://github.com/karpet/search-opensearch-server';

WriteMakefile(
    PL_FILES => {},
    dist     => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Search-OpenSearch-Server-* dezi.index' },
);
