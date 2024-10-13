#!/usr/bin/perl

use strict;
use warnings;

use utf8;

use Shlomif::Screenplays::EPUB ();

my $gfx = 'who-is-qoheleth.svg.png';

my @images = ( $gfx, );

my $obj = Shlomif::Screenplays::EPUB->new(
    {
        images => { ( map { $_ => "images/$_", } @images ), },
    }
);

$obj->run;

{
    my $epub_basename = 'Queen-Padme-Tales';
    $obj->epub_basename($epub_basename);

    $obj->output_json(
        {
            data => {
                filename => $epub_basename,
                title    => q{Queen Padmé Tales},
                authors  => [
                    {
                        name => "Shlomi Fish",
                        sort => "Fish, Shlomi",
                    },
                ],
                contributors => [
                    {
                        name => "Shlomi Fish",
                        role => "oth",
                    },
                ],
                cover  => "images/$gfx",
                rights => "Creative Commons Attribution Unported (CC-by-4.0)",
                publisher  => 'http://www.shlomifish.org/',
                language   => 'en-GB',
                subjects   => [ 'FICTION/Humorous', 'Judaism', 'Bible', ],
                identifier => {
                    scheme => 'URL',
                    value  =>
                        'https://www.shlomifish.org/humour/Queen-Padme-Tales/',
                },
            },
        },
    );
}
